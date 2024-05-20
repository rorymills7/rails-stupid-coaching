class QuestionsController < ApplicationController
  def ask
  end
  def answer
    @answerOne = "Hello"
    @answerTwo = "Goodbye"
    @search = params["answer"].downcase
    if @search == "hello"
      @answer = "Oh hello there!!!"
    elsif @search == "what time is it?"
      @answer = "The time now is #{Time.now.strftime("%I:%M:%S")}"
    elsif @search == "i am going to work"
      @answer = "Great!"
    elsif @search[-1] == '?'
      @answer = "Silly question, get dressed and go to work!"
    else
      @answer = "I don't care, get dressed and go to work!"
     end
  end
end
