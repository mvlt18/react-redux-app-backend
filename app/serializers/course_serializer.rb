class CourseSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :url, :start_date, :end_date, :status
  belongs_to :platform
  has_many :todos
end
