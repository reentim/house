class Job < ApplicationRecord
  has_many :events, dependent: :destroy

  def state
    {
      'completion' => 'completed'
    }.fetch(events.last.kind)
  end

  def completed?
    events.exists? && events.last.completed?
  end

  def complete!
    events.completed.create! unless completed?
  end
end
