class Post < ActiveRecord::Base

  attr_accessible :body, :excerpt, :title, :author_id, :category_ids,
  :slug, :draft
  #nao permite valores nil nos objetos na hora de criar ou alterar um post

  validates_presence_of :title, :body, :author, :slug
  validates_associated :author
  validates_inclusion_of :draft, in: [true, false]

  has_many :comments, :dependent => :destroy
  belongs_to :author, class_name: "User", foreign_key: "author_id"
  has_and_belongs_to_many :categories

end
