class KeywordController < ApplicationController
    def index
        @keywordsNumber = Keyword.count
        @keywords = Keyword.all.order(id: :desc)
    end
    
    def destroy
        @keyword = Keyword.find(params[:id])
        @keyword.destroy
        
        redirect_to '/settings/keywords', notice: "キーワードを削除しました。"
    end
    
end
