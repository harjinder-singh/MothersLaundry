class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,:confirmable
  validates :name, :phone_no, presence: true
  validates :email, uniqueness: true 
  validates :terms_of_service, acceptance: { accept: 'yes' }      
  has_many :orders
  devise :omniauthable, :omniauth_providers => [:google_oauth2]
  
  def self.from_omniauth(access_token)
    data = access_token.info
    user = User.where(:email => data["email"]).first

    unless user
      user = User.new(name: data["name"],email: data["email"], password: Devise.friendly_token[0,20])
      user.save(validate: false)
    end
    user
  end
end
