class Pricing < ActiveRecord::Base
  belongs_to :pricable, polymorphic: true 
end
