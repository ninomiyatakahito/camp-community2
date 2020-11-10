class TagsController < ApplicationController
  def index
      @tags = Tag.find(1)
      @tagss = Tag.find(20)
      @tagsss = Tag.find(21)
      @tagssss = Tag.find(22)

  end

  def show
    @tags = Tag.find(params[:id])
    @event = Event.new
    @events = @tags.events
  end

  private

  def event_params
    params.require(:event).permit(:concept, :place, :period, :image, tag_ids: []).merge(user_id: current_user.id)
  end
end

