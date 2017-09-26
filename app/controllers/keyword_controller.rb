class KeywordController < ApplicationController
    def index
        @keywordsNumber = Keyword.count
        @keywords = Keyword.all.order(id: :desc)
    end
    
end
