class Post
  include Mongoid::Document
  field :category_id, type: Integer
  field :question, type: String
  validates_presence_of :question
  embeds_many :answers
  belongs_to :category
end
