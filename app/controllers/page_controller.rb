class PageController < ApplicationController
	before_action :authenticate_user!, except: [:home]
  def home
  end

  def about
  end

  def faqs
  end

  def contact
  end
end
