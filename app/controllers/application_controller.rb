class ApplicationController < ActionController::Base
  before_action :initialize_brand, :initialize_effect
  def initialize_brand
    @brand = Brand.new
  end

  def initialize_effect
    @effect = Effect.new
  end
end
