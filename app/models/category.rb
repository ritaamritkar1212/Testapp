class Category
  include Mongoid::Document
  field :name
  has_many :posts, dependent: :delete
end