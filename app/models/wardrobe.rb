class Wardrobe < ActiveRecord::Base
  has_many :pricing, :as => :pricable
end
