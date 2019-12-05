class Course < ApplicationRecord
  belongs_to :platform
  has_many :todos
end
