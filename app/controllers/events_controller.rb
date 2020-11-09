class EventsController < ApplicationController


  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    if @event.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @event = Event.find(params[:id])
  end

  def edit
    @event = Event.find(params[:id])
    unless current_user.id == @event.user.id
      redirect_to action: :index 
    end 
  end

  def update
    if event = Event.find(params[:id])
      event.update(event_params)
      redirect_to event_path (event.id), method: :get
    else
      render 'edit'
    end
  end

  def destroy
    event = Event.find(params[:id])
    event.destroy
    redirect_to root_path
  end

  private

  def event_params
    params.require(:event).permit(:concept, :place, :period, :image, tag_ids: []).merge(user_id: current_user.id)
  end
end

