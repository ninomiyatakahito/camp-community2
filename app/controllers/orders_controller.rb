class OrdersController < ApplicationController
  def index
    @order_address = OrderAddress.new
    @event = Event.find(params[:event_id])
  end
  
  def create
  end

  private

  def purchase_params
    params.require(:purchase_address).permit(:post_code, :prefecture_id, :city, :street, :building_name, :phone_number, :order).merge(user_id: current_user.id, item_id: params[:item_id])
  end
end
