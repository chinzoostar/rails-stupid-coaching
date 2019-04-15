class QuestionController < ApplicationController
  def ask
  end

  def answer
    # @questions = []
    # @questions << params[:question]
    @question = params[:question]
    @answer = ''

    if @question == 'I am going to work'
      @answer = 'Great!'
    elsif @question.chars[-1] == '?'
      @answer = 'Silly question, get dressed and go to work!.'
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
