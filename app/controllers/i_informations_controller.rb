class IInformationsController < ApplicationController
  layout 'i_informations'
  
  def index
    @msg = "ラーメン屋情報を検索"
    @rinfo = IInformation.search(params[:search])
  end
     
      
     
        
      # @rfind = IInformation.where('name like ? or price like ?',
      # "% params[:検索] %","% params[:検索] %")

  
  def show
    @title = "池袋ラーメン"
    @msg = "ラーメン屋情報検索結果"
    @data = IInformation.all
  end
    
end