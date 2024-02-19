class QuestionsController < ApplicationController
  def ask
  end


  def answer
    @work = "I am going to work"
    @ask = params[:ask]
    if @ask == @work
      @answer = "Great"
    elsif @ask.end_with?("?")
      @answer = "Silly question, get dressed and go to work!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
