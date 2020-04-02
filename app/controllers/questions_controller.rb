class QuestionsController < ApplicationController

  before_action :find_test, only: %i[index]

  def index
    @questions = @test.questions
    @questions_list = @questions.map do |question| 
      question.body.concat("\n")
    end
    render inline: "<p>Test name: <%= @test.title %></p> <p>Test questions list: <%= @questions_list.join %> </p>"
  end

  private
  
  def find_test
    @test = Test.find(params[:test_id])
  end
end
