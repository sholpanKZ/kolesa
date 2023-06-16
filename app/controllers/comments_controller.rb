class CommentsController < ApplicationController

  before_action :authenticate_user!

  def create
    @car = Car.find(params[:car_id])
    @comment = Comment.new(comment_params)
    @comment.car = @car
    @comment.author = current_user
    @comment.save
    redirect_to car_path(@car)
  end

   def destroy
    @car = Car.find(params[:car_id])
    @comment = @car.comments.find(params[:id])
    authorize @comment
    @comment.destroy
    redirect_to car_path(@car), status: :see_other
  end

  private
    def comment_params
      params.require(:comment).permit(:body, :status)
    end
end
