class User
  include Mongoid::Document
  field :admin, :type => Boolean, :default => false
end
