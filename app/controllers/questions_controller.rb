class QuestionsController < InheritedResources::Base
  def index
    @questions = Question.all
    @answer = Answer.all
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.new(question_params)

    if @question.save
      redirect_to @question
    else
      render 'new'
    end
  end

  def show
    @question = Question.find(params[:id])

  end

  def edit
    @question = Question.find(params[:id])
  end

  def update
    @question = Question.find(params[:id])
  end


  def destroy
    @question = Question.find(params[:id])
  end

  private

    def question_params
      params.require(:question).permit(:description)
    end
end

