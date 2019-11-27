class Event < ApplicationRecord
  belongs_to :job

  enum kind: {
    created: 0,
    pending: 1,
    completed: 2,
  }
end
