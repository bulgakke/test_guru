class QuestionsController < ApplicationController

  before_action :find_test, only: %i[index new create]
  before_action :find_question, only: %i[show destroy]

  rescue_from ActiveRecord::RecordNotFound, with: :rescue_with_question_not_found

  def index
    @questions = @test.questions
    @questions_list = @questions.map do |question| 
      question.body.concat("\n")
    end
    render inline: "<p>Test name: <%=@test.title%></p> <p>Test questions list: <%= @questions_list.join %> </p>"
  end

  def show
    render inline: "<p>Question №<%=params[:id]%> for the test '<%=@question.test.title%>': <%=@question.body%> </p>"
  end

  def destroy
    @question.destroy

    render plain: "The question has been destroyed."
  end

  def create
    @question = @test.questions.new(question_params)

    if @question.save
      redirect_to @question
    else
      render plain: "The quesion hasn't passed the validations"
    end
  end

  def new
    
  end

  private

  def question_params
    params.require(:question).permit(:body)
  end
  
  def find_test
    @test = Test.find(params[:test_id])
  end

  def find_question
    @question = Question.find(params[:id])
  end

  def rescue_with_question_not_found
    render plain: 'There is no such question'
  end
end
