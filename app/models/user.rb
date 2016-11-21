class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,:confirmable
  validates :name, :phone_no, presence: true
  validates :email, uniqueness: true 
  #validates :terms_of_service, acceptance: { accept: 'yes' }      
  has_many :orders
end
