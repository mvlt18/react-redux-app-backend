class PlatformSerializer < ActiveModel::Serializer
    attributes :name, :url, :image, :id
    has_many :courses
end
