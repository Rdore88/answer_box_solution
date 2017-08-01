class AnswersController < ApplicationController
  before_action :find_question, only: [:create, :edit, :destroy]
  def create

  end

  private

  def find_question
    @qestion = Question.find(params[:question_id])
  end
end
