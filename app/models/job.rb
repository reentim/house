class Job < ApplicationRecord
  has_many :events, dependent: :destroy

  def state
    {
      'completion' => 'completed'
    }.fetch(events.last.kind)
  end

  def complete?
    events.last.completion?
  end

  def complete!
    events.create! kind: 'completion' unless complete?
  end
end
