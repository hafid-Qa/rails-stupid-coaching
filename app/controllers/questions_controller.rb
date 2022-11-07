# frozen_string_literal: true

# class for asking the coach
class QuestionsController < ApplicationController
  def ask
   
  end

  def answer;
   
  private

  def coach_answer(question)
    if question.include? '?'
      "Silly question, get dressed and go to work!"
    else
      "I don't care, get dressed and go to work!"
    end
  end
  end
  # end of class QuestionsController
end
