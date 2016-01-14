class Experience
  include Mongoid::Document
  field :company_logo, type: String
  field :company_name, type: String
  field :title, type: String
  field :location, type: String
  field :starting_date, type: Date
  field :ending_date, type: Date
  field :description, type: String
  field :official_url, type: String
  field :tags, type: Array
  embedded_in :year
end
