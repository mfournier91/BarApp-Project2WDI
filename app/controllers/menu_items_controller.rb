class MenuItemsController < ApplicationController

  def index
    @bar = Bar.find(params[:bar_id])
    @happyhour = Happyhour.find(params[:happyhour_id])
    @menu_items = @happyhour.menu_items
  end

  def new
    @bar = Bar.find(params[:bar_id])
    @happyhour = Happyhour.find(params[:happyhour_id])
    @menu_item = @happyhour.menu_items.build
  end

  def create
    @bar = Bar.find(params[:bar_id])
    @happyhour = Happyhour.find(params[:happyhour_id])
    @menu_item = @happyhour.menu_items.new(menu_item_params)
    if @menu_item.save
      flash[:notice] = "Menu item successfully created"
      redirect_to bar_happyhour_menu_items_path(@bar, @happyhour)
    else
      render 'new'
    end
  end

  def edit
    @bar = Bar.find(params[:bar_id])
    @happyhour = Happyhour.find(params[:happyhour_id])
    @menu_item = MenuItem.find(params[:id])
  end

  def update
    @bar = Bar.find(params[:bar_id])
    @happyhour = Happyhour.find(params[:happyhour_id])
    @menu_item = MenuItem.find(params[:id])
    if @menu_item.update(menu_item_params)
      flash[:notice] = "Menu Item successfully updated"
      redirect_to bar_happyhour_menu_items_path(@bar, @happyhour)
    else
     render 'edit'
   end
  end

  def destroy
    @bar = Bar.find(params[:bar_id])
    @happyhour = Happyhour.find(params[:happyhour_id])
    @menu_item = MenuItem.find(params[:id])
    @menu_item.destroy
    redirect_to bar_happyhour_menu_items_path(@bar, @happyhour)
  end




private
  def menu_item_params
    params.require(:menu_item).permit(:name, :price)
  end
end
