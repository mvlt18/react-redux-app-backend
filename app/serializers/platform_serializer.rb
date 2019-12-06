class PlatformSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :url, :image
  has_many :courses
end
