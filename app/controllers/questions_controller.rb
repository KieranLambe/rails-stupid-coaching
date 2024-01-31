class QuestionsController < ApplicationController
  def ask
  end
  def answer
    @question
    if params[:question].include?("?")
        # coach answers stupid question, go to work
        @answer = "Stupid question, go back to work!"
    elsif params[:question].include?("I am going to work")
        # coach answers yes, that's the spirit
        @answer = "Yes! That's the spirit!"
    else
        #coach answers I don't care, go back to work
        @answer = "I don't care! Go back to work!"
    end
  end
end