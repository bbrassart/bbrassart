class Blog
  include Mongoid::Document
  field :title, type: String
  field :intro, type: String
  field :text, type: String
  field :author, type: String
  field :author_logo, type: String
  field :date, type: Date
  field :tags, type: Array
  field :image, type: String
  field :image_caption, type: String
  field :currentIndex, type: Integer
end
