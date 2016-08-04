class HappyhoursController < ApplicationController
  def index
    @bar = Bar.find(params[:bar_id])
    @happyhours = @bar.happyhours
  end

  def new
    @bar = Bar.find(params[:bar_id])
    @happyhour = @bar.happyhours.build
  end

  def create
    @bar = Bar.find(params[:bar_id])
    @happyhour = @bar.happyhours.create!(happyhour_params)

    redirect_to bar_happyhours_path(@bar)
  end

  private
  def happyhour_params
    params.require(:happyhour).permit(:hours, :weekday)
  end

end
