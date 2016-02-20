class AnswersController < InheritedResources::Base

  private

    def answer_params
      params.require(:answer).permit(:description, :status)
    end
end

