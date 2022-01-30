class ApplicationController < ActionController::Base
  before_action :initialize_brand, :initialize_effect, :initialize_version

  def initialize_brand
    @brand = Brand.new
  end

  def initialize_effect
    @effect = Effect.new
  end

  def initialize_version
    @version = Version.new
  end
end
