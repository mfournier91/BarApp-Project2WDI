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
      flash[:notice] = "Bar successfully created"
      redirect_to @bar
    else
      render 'new'
    end
  end

  def update
    @bar = Bar.find(params[:id])

    if @bar.update(bar_params)
      flash[:notice] = "Bar successfully edited"
      redirect_to @bar
    else
      render 'edit'
    end
  end

  def add_favorite
    @bar = Bar.find(params[:id])
    @bar.favorites.create(user: current_user)
    redirect_to @bar
  end

  def remove_favorite
    @bar = Bar.find(params[:id])
    @bar.favorites.where(user: current_user).destroy_all
    redirect_to bars_path
  end

  def destroy
    @bar = Bar.find(params[:id])
    # this seems like either a feature or barrier. Also, brings into question should users be able to delete bars in general
    if @bar.favorites.length > 0
      flash[:alert] = "A user has favorited that bar. Can't delete a favorited bar."
    else
      @bar.destroy
    end
    redirect_to bars_path
  end

  private
  def bar_params
    params.require(:bar).permit(:name, :address, :img_url)
  end

end
