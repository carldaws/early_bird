module EarlyBird
  class SubmissionsController < ApplicationController
    def show 
      @submission = Submission.find(params[:id])
    end

    def new
      @submission = Submission.new
    end

    def create
      @submission = Submission.find_or_initialize_by(submission_params)
      if @submission.save
        redirect_to @submission
      else
        render 'new', status: :unprocessable_entity
      end
    end

    private 

    def submission_params
      params.require(:submission).permit(:email)
    end
  end
end
