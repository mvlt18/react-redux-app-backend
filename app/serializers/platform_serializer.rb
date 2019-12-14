class PlatformSerializer < ActiveModel::Serializer
    attributes :id, :name, :url, :image
    has_many :courses
end
