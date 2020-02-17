class QuestionsControllerController < ApplicationController
  ANSWERS = {
    work: 'Great!',
    question: 'Silly question, get dressed and go to work!',
    general: "I don't care, get dressed and go to work!"
  }

  def ask
  end

  def answer
    @question = params[:question]
    if @question == 'I am going to work'
      @answer = ANSWERS[:work]
    elsif !@question.nil? && @question.last == '?'
      @answer = ANSWERS[:question]
    else
      @answer = ANSWERS[:general]
    end
  end
end
