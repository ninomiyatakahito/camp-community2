class TagsController < ApplicationController
  def index
      @tags = Tag.find(params[:tag_id])
  end

  private

  def event_params
    params.require(:event).permit(:concept, :place, :period, :image, tag_ids: []).merge(user_id: current_user.id)
  end
end
