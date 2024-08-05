class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @user_input = params[:answer]
    case @user_input
    when 'I am going to work'
      @answer = 'Great!'
    when @user_input.include?('?')
      @answer = 'Silly question, get dressed and go to work !'
    else
      @answer = "I don't care, get dressed and go to work!"
    end
    @answer
  end
end
