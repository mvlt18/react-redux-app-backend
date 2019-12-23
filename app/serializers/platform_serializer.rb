class PlatformSerializer < ActiveModel::Serializer
    attributes :id, :name, :url, :image, :courses
    has_many :courses

end
