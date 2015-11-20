class Blog
  include Mongoid::Document
  field :title, type: String
  field :text, type: String
  field :author, type: String
  field :date, type: Date
  field :tags, type: Array
end
