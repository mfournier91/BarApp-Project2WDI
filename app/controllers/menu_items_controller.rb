class MenuItemsController < ApplicationController

def index
  @bar = Bar.find(params[:bar_id])
  @happyhour = Happyhour.find(params[:happyhour_id])
  @menu_items = @happyhour.menu_items
end

end
