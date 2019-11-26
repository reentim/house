class DashboardsController < ApplicationController
  def show
    @feed = [
      Entry.where('created_at > ?', 1.week.ago).to_a,
      Event.where('created_at > ?', 1.week.ago).to_a
    ].flatten
      .sort_by(&:created_at)
  end
end
