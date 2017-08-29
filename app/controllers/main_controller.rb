class MainController < ApplicationController  
  def step1
      @keyword = params[:keyword]
  end
    
  def step2
      @answer0 = params[:answer0]
      @answer1 = params[:answer1]
      @answer2 = params[:answer2]
      @answer3 = params[:answer3]
      @answer4 = params[:answer4]
  end
end
