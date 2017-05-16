class Answer
  include Mongoid::Document
  field :content, type: String
  embedded_in :post, :inverse_of => :answers
end
