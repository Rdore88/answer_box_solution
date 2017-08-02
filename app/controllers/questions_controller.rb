class QuestionsController < ApplicationController
  before_action :authorize!, except: [:index]
  before_action :find_question, only: [:show, :destroy]

  def index
    @questions = Question.all.page params[:page]
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.new(question_params)
    @question.user_id = session[:user_id]
    if @question.save
      redirect_to question_path(@question)
    else
      render "new"
    end
  end

  def answer
    @answer = Answer.new
  end

  def show
    @question
    @answer = Answer.new
  end

  def destroy
    #code
  end

  private

  def question_params
    params.require(:question).permit(:title, :question)
  end

  def find_question
    @question = Question.find(params[:id])
  end
end
