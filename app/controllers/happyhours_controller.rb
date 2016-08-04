class HappyhoursController < ApplicationController
  def index
    @bar = Bar.find(params[:bar_id])
    @happyhours = @bar.happyhours
  end

end
