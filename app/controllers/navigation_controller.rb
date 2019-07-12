class NavigationController < ApplicationController

  def about
  end

  def contact
  	@prospect = Prospect.new
  end

  def services
  end

  def taxes
  end
end
