class QuestionsController < ApplicationController
  def ask
    # @ask = 'I am going to work'
  end

  def answer
    # @answer = ["Great!", "Silly question, get dressed and go to work!", "I don't care, get dressed and go to work!"]
    # @answer = ""

    if params[:question].end_with?('?')
      puts params[:question]
      @answer = 'Silly question, get dressed and go to work!'
    elsif params[:question] == 'I am going to work'
      puts params[:question]
      @answer = 'Great!'
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
