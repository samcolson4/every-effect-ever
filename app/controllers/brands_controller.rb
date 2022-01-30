class BrandsController < ApplicationController
  def index
    @brands = Brand.all
  end

  def create
    @brand = Brand.new(brand_params)

    if hasName(@brand)
      @brand.save
      redirect_to "/contribute/thank-you", notice: "#{@brand.name} added to the database."
    else
      redirect_to "/brands/contribute", alert: "Error adding brand.\n Ensure all required fields are filled and the brand is not already in the database."
    end

  end

  private
    def brand_params
      params.require(:brand).permit(:name, :website_link, :logo_image_link, :year_founded, :country_founded, :area_founded, :parent_company, :notes)
    end

    def hasName(object)
      object.name != ""
    end
end
