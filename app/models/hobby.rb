class Hobby
    include MongoMapper::EmbeddedDocument
  
    key :name,    String
    key :description,String
    belongs_to :user
  end