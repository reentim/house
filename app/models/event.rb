class Event < ApplicationRecord
  belongs_to :job

  enum kind: {
    completion: 0,
  }
end
