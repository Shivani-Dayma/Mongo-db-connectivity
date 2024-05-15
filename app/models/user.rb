class User
    include MongoMapper::Document
  
    key :name, String,:required => true, :unique => true
    key :age,  Integer,:required => true, :unique => true
    many :hobbies
  end