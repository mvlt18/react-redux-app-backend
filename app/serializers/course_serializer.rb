class CourseSerializer < ActiveModel::Serializer
    attributes :id, :name, :url, :start_date, :end_date, :status
    belongs_to :platform
    has_many :todos
end
