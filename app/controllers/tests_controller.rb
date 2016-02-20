class TestsController < ApplicationController
  def index
    @tests = Test.all
    @questions = Question.all
    @answers = Answer.all
  end

  def edit
    @test = Test.find(params[:id])
  end

  def show
    @test = Test.find(params[:id])
    @tests = Test.all
    @questions = Question.all
  end

  def create_question_with_test
    @question = Question.new
    @test = Test.find(params[:id])
  end

  def new
    @test = Test.new
  end

  def create
    @test = Test.new(test_params)

    if @test.save
      redirect_to @test
    else
      render 'new'
    end
  end

  def destroy
    @test = Test.find(params[:id])

  end

  def update
    @test = Test.find(params[:id])
  end

  private
  def test_params
    params.require(:test).permit(:name, :description)
  end

end
