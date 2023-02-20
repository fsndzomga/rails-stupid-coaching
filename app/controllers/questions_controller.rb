class QuestionsController < ApplicationController
  def ask

  end

  def answer
    @question = params[:user_question]

    text_question = 'Silly question, get dressed and go to work!'
    text_noquestion = "I don't care, get dressed and go to work!"

    if !@question.include?("?") && @question.downcase.include?("am going to work")
      @answer = ''
    elsif @question == @question.upcase
      @answer = "I can feel your motivation! #{@question.include?('?') ? text_question : text_noquestion}"
    else
      @answer = @question.include?('?') ? text_question : text_noquestion
    end
  end
end
