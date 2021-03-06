class MemosController < ApplicationController
    
    def index
        @memos = Memo.all.order(updated_at: :desc)
    end
    
        
    def indexu
       @memo_ids = session[:memo_ids]
       
      if @memo_ids.present?
       @memos = Memo.order(updated_at: :desc).find(@memo_ids)
      end
        
    end

    
    def create
        @memo = Memo.new(title:params[:title],word1:params[:word1],word2:params[:word2],content:params[:content])
        
        @memo.save
        
        if session[:memo_ids].blank?
            session[:memo_ids] = [@memo.id]
        else
            session[:memo_ids].push(@memo.id)
        end
        
        
        redirect_to '/memos/index'
    end
    
    def destroy
        @memo = Memo.find(params[:id])
        @memo.destroy
        
        session[:memo_ids].delete(@memo.id)
        
        redirect_to '/memos/index', notice: "メモを削除しました。"
    end
    
    def edit
        @memo = Memo.find(params[:id])
    end
    
    def update
       @memo = Memo.find(params[:id])
       @memo.assign_attributes(title:params[:title],word1:params[:word1],word2:params[:word2],content:params[:content])
       if @memo.save
           redirect_to '/memos/index' , notice: "メモを更新しました。"
       else
           render "edit"
       end
    end
        
end
