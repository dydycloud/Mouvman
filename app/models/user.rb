class User
  include Mongoid::Document
  attr_accessible :name, :email, :password, :password_confirmation
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :name, :presence => true, :uniqueness => true
  
  field :name



end
