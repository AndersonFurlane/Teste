class User < ActiveRecord::Base
  attr_accessible :email, :first_name, :last_name
  #nao permite valores nil

  has_many :posts, foreign_key: "author_id" # User pode ter varios post
  #mas o post so pode ter 1 author/User

  validates_presence_of :email, :first_name, :last_name
  #so permite um unico email
  validates_uniqueness_of :email
  #validação do formato de  email, :llow_blank permite vazio
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z
    ]{2,})\Z/i, :allow_blank => true

  def full_name
    "#{first_name} #{last_name}".titleize
  end

end
