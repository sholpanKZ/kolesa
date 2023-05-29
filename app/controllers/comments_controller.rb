class CommentsController < ApplicationController
  def create
    @car = Car.find(params[:car_id])
    @comment = @car.comments.create(comment_params)
    redirect_to car_path(@car)
  end

  private
    def comment_params
      params.require(:comment).permit(:commenter, :body)
    end
end
