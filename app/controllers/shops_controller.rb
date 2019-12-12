class ShopsController < ApplicationController
  layout 'shops'

  def index 
    @data = Shop.all
    @title = "池袋のお店"
    @q = Shop.ransack(params[:q])
    @shops = @q.result(distinct: true)
  end


  
  def show
    @msg = "ID検索結果"
    @data = Shop.find(params[:id])
  end

  def add
    if request.post? then
      Shop.create(shop_params)
      goback
    else
      @shop = Shop.new
    end
  end

  def edit
      @shop = Shop.find(params[:id])
      if request.patch? then
        @shop.update(shop_params)
        goback
      end
  end

  def delete
    obj = Shop.find(params[:id])
    obj.destroy
    goback
  end


private
  
  def shop_params
    params.require(:shop).permit(:name, :genre, :business_hours, :url, :memo)
  end

  def goback
      redirect_to '/shops'
  end



end