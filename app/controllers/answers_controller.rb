class AnswersController < ApplicationController
  before_action :find_question, only: [:create, :edit, :destroy]
  before_action :find_answer, only: [:destroy]

  def new

  end

  def create
    @answer = @question.answers.new(answer_params)
    @answer.user_id = current_user.id
    if @answer.save
      redirect_to question_path(@question)
    else
      render "questions/show"
    end
  end

  def destroy
    @answer.delete
    redirect_to question_path(@question)
  end

  private

  def find_answer
    @answer = Answer.find(params[:id])
  end

  def find_question
    @question = Question.find(params[:question_id])
  end

  def answer_params
    params.require(:answer).permit(:body)
  end
end
