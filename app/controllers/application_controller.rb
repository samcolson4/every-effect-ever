class ApplicationController < ActionController::Base
  before_action :initialize_brand
  def initialize_brand
    @brand = Brand.new
  end
end
