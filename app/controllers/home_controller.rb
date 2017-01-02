class HomeController < ApplicationController
  skip_before_action :authenticate_user!
  
  def index
  end
  
  def pricing
  end
  
  def faqs
  end
  
  def contact_us
  end
  
end
