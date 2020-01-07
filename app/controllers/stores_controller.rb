class StoresController < ApplicationController
  
  def index
    @data = Shop.all
    @q1 = Shop.ransack(params[:q])
    @stores = @q1.result(distinct: true)
  end
  
  def show
    @data = Shop.find(params[:id])
  end
  

  
end
