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
    @happyhour = @bar.happyhours.new(happyhour_params)
    if @happyhour.save
      flash[:notice] = "Happyhour successfully created"
      redirect_to bar_happyhours_path(@bar)
    else
      render 'new'
    end
  end

  def edit
    @bar = Bar.find(params[:bar_id])
    @happyhour = Happyhour.find(params[:id])
  end

  def update
    @bar = Bar.find(params[:bar_id])
    @happyhour = Happyhour.find(params[:id])
    if @happyhour.update(happyhour_params)
      flash[:notice] = "Happyhour successfully edited"
      redirect_to bar_happyhours_path(@bar)
    else
      render 'edit'
    end
  end

  def destroy
    @bar = Bar.find(params[:bar_id])
    @happyhour = Happyhour.find(params[:id])
    @happyhour.destroy
    redirect_to bar_happyhours_path(@bar)
  end

  private
  def happyhour_params
    params.require(:happyhour).permit(:hours, :weekday)
  end

end
