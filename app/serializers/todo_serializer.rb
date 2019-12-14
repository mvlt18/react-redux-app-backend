class TodoSerializer < ActiveModel::Serializer
    attributes :id, :content, :due_date
    belongs_to :course
end
