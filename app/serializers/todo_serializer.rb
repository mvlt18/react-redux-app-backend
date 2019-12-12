class TodoSerializer < ActiveModel::Serializer
    attributes :content, :due_date
    belongs_to :course
end
