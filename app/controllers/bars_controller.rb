class BarsController < ApplicationController

  def index
    @bars = Bar.all
  end

  def show
    @bar = Bar.find(params[:id])
  end

  def new
    @bar = Bar.new
  end

  def edit
    @bar = Bar.find(params[:id])
  end

  def create
    @bar = Bar.new bar_params
    if @bar.save
      redirect_to @bar
    end
  end

  def update
    @bar = Bar.find(params[:id])

    if @bar.update(bar_params)
      redirect_to @bar
    else
      render 'edit'
    end
  end

  private
  def bar_params
    params.require(:bar).permit(:name, :address, :img_url)
  end

end
