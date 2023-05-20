class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @question = params[:question]
    if @question.blank?
      @answer = "I can't hear you!"
    elsif params[:question].include?('?')
      @answer = 'Silly question, get dressed and go back to work!'
    elsif params[:question].include?('I am going to work')
      @answer = 'Great!'
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end

# 2. Possibility to solve it:

#   def answer
#     @question = params[:question]
#     if @question.blank?
#       @answer = "I can't hear you!"
#     elsif @question =~ /i am going to work/i
#       @answer = "Great!"
#     elsif @question.ends_with?("?")
#       @answer = "Silly question, get dressed and go to work!"
#     else
#       @answer = "I don't care, get dressed and go to work!"
#     end
#   end
# end
