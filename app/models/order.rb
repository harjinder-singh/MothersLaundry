class Order < ActiveRecord::Base
  belongs_to :user
  belongs_to :service
  belongs_to :status
  validates :name, :phone_no, :email, presence: true, :if => Proc.new { |order| order.quick_order }
  
end
