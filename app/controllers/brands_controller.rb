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
      params.require(:brand).permit(:name, :website_link, :logo_image_link, :year_founded, :country_founded, :area_founded, :parent_company, :notes)
    end
end
