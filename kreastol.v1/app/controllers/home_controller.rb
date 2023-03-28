class HomeController < ApplicationController
  def index
    @events = Event.all.order(start_at: :asc)
  end

  def about
  end

  def admin

  end
end
