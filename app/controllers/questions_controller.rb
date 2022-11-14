class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @answer = params[:answer]
     @display_answer = stupid_answer(@answer)
  end

  private

  def stupid_answer(answer)
    if answer.end_with?("?")
      "I don't care, get dressed and go to work!."
    elsif answer == 'Quoi'
      'Feur'
    else
      "I don't care, get dressed and go to work!"
    end
  end
end
