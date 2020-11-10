class TagsController < ApplicationController
  def index
    @event_tag = EventTag.all
  end

end
