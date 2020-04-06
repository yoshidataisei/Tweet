class ProblemsController < ApplicationController
  def create
    @put = Put.find(params[:put_id])
    @put.problems.create(problem_params)
    redirect_to put_path(@put)
  end
  
  private
  
  def problem_params
    params.require(:problem).permit(:content)
  end
end
