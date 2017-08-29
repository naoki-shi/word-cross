class WordsController < ApplicationController

    def index
        @wordsNumber = Word.count
        @words = Word.all.order(id: :desc)
    end
    
    def create
        @word = Word.new(content:params[:content])
        @word.save
        
        redirect_to '/settings/words'
    end
    
end
