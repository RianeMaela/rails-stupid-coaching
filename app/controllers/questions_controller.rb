class QuestionsController < ApplicationController
  def ask

  end

  def answer
    @answer1 = "Great!"
    @answer2 = "Silly question, get dressed and go to work!"
    @answer3 = "I don't care, get dressed and go to work!"

    if params[:questions] == 'I am going to work'
      @answer = @answer1
    elsif params[:questions][-1] == '?'
      @answer = @answer2
    else
      @answer = @answer3
    end

  end


end
