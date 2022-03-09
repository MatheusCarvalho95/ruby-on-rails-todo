class Task < ApplicationRecord
  enum state: {
    initial: 0,
    started: 1,
    done: 3
  }
  default_scope { where('deleted_at IS NULL') }
end
