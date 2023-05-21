# We are defining a class named "QuestionsController"
# It is a controller class that inherits from the "ApplicationController" class
# This class is used to handle requests related to questions
class QuestionsController < ApplicationController
  # We are defining a method named "ask" inside the "QuestionsController" class
  # This method will be executed when a request is made to the "/ask" endpoint
  def ask
  end

  def answer
    # We have a variable called "@question"
    # It is assigned the value of the "question" parameter from the request
    # The "params" variable holds information about the request parameters sent to the server
    # The value of the "question" parameter is stored in the "@question" variable
    @question = params[:question]
    # If the "@question" variable is blank (empty or contains only whitespace)
    # The "@answer" variable is set to the string "I can't hear you!"
    if @question.blank?
      @answer = "I can't hear you!"
    # If the "question" parameter contains a question mark '?'
    # The "@answer" variable is set to the string 'Silly question, get dressed and go back to work!'
    elsif params[:question].include?('?')
      @answer = 'Silly question, get dressed and go back to work!'
    # If the "question" parameter contains the phrase 'I am going to work'
    # The "@answer" variable is set to the string 'Great!'
    elsif params[:question].include?('I am going to work')
      @answer = 'Great!'
    # If none of the above conditions are met
    # The "@answer" variable is set to the string "I don't care, get dressed and go to work!"
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
