class StoresController < ApplicationController
  
  def index
    @data = Shop.all
    @q = Shop.ransack(params[:q])
    @shops = @q.result(distinct: true)
  end
  
  
  
  
end
