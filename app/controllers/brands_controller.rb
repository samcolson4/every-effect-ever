class BrandsController < ApplicationController
  def index
    @brands = Brand.all
  end

  def create
    @brand = Brand.new(brand_params)
    @brand.save
    redirect_to "/contribute/thank-you"
  end

  private
    def brand_params
      params.permit(:name, :year_founded, :location_founded, :website_link, :parent_company, :notes)
    end
end
