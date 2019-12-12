class PlatformSerializer < ActiveModel::Serializer
    attributes :name, :url, :image
    has_many :courses
end
