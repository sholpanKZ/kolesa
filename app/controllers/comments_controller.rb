class CommentsController < ApplicationController
  def create
    @car = Car.find(params[:car_id])
    @comment = @car.comments.create(comment_params)
    redirect_to car_path(@car)
  end

   def destroy
    @car = Car.find(params[:car_id])
    @comment = @car.comments.find(params[:id])
    @comment.destroy
    redirect_to car_path(@car), status: :see_other
  end

  private
    def comment_params
      params.require(:comment).permit(:commenter, :body, :status)
    end
end
