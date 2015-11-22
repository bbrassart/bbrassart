class Year
  include Mongoid::Document
  field :title, type: Integer
  embeds_many :experiences
end
