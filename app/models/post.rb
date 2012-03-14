class Post

  include Mongoid::Document

  validates_presence_of :title, :body
  validates_uniqueness_of :title

  field :title, type: String
  field :body, type: String
  field :tags, type: String

end
