class AnswersController < InheritedResources::Base

  def index
    @answer = Answer.all
  end

  def new
    @answer = Answer.new
  end

  def create
    @answer = Answer.new(answer_params)

    if @answer.save
      redirect_to @answer
    else
      render 'new'
    end
  end

  def show
    @answer = Answer.find(params[:id])

  end

  def edit
    @answer = Answer.find(params[:id])
  end

  def update
    @answer = Answer.find(params[:id])
  end


  def destroy
    @answer = Answer.find(params[:id])
  end

  private

    def answer_params
      params.require(:answer).permit(:description, :status)
    end
end

