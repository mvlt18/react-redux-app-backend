class TodoSerializer
  include FastJsonapi::ObjectSerializer
  attributes :content, :due_date
  belongs_to :course
end
