class ReviewsController < ApplicationController
  before_action :set_review, only: [:show, :edit, :update, :destroy]

  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end


  def create
    @review = Review.new(review_params)
        @restaurant = Restaurant.find(params[:restaurant_id])

    @review.restaurant = @restaurant
      if @review.save
        redirect_to restaurant_path(@restaurant)
      else
        render :new
    end
  end


  private
    def set_review
      @review = Review.find(params[:id])
    end

    def review_params
      params.require(:review).permit(:content, :rating)
    end
end





























# def create
#     # @restaurant = Restaurant.find(params[:restaurant_id])
#     @review = Review.new(review_params)
#     respond_to do |format|
#       if @review.save
#         # format.html { redirect_to @review, notice: 'Review was successfully created.' }
#         # format.json { render :show, status: :created, location: @review }
#         redirect_to restaurant_path
#       else
#         render :new
#         # format.html { render :new }
#         # format.json { render json: @review.errors, status: :unprocessable_entity }
#       end
#     end
#   end

# def update
#     respond_to do |format|
#       if @review.update(review_params)
#         format.html { redirect_to @review, notice: 'Review was successfully updated.' }
#         format.json { render :show, status: :ok, location: @review }
#       else
#         format.html { render :edit }
#         format.json { render json: @review.errors, status: :unprocessable_entity }
#       end
#     end
#   end


# def destroy
#   @review.destroy
#   respond_to do |format|
#     format.html { redirect_to reviews_url, notice: 'Review was successfully destroyed.' }
#     format.json { head :no_content }
#   end
# end
