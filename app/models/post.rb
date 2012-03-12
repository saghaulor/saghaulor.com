class Post
  include CouchPotato::Persistence

  property :title
  property :body
  property :tags

  validates_presence_of :title, :body

  def save!
    CouchPotato.database.save_document
  end
end
