# frozen_string_literal: true

# class for asking the coach
class QuestionsController < ApplicationController
  def ask; end

  def answer
    question = params[:question]
    answer = 'I am going to work right now!'
    coach_answer = if question == answer
                     'Great!'
                   elsif question == question.upcase
                     "I can feel your motivation! #{coach_answer(question)}"
                   else
                     coach_answer(question)
                   end
    @final_answer = { 'You' => question, 'Your Coach' => coach_answer }
  end

  private

  def coach_answer(question)
    if question.include? '?'
      'Silly question, get dressed and go to work!'
    else
      "I don't care, get dressed and go to work!"
    end
  end

  # end of class QuestionsController
end
