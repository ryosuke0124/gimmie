class Place < ApplicationRecord
  has_many :likes
  enum variation: {
    course: 0,
    driving_range: 1,
    shop: 2,
  }
end
