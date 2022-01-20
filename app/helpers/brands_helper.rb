module BrandsHelper
  def findBrand(brand_id)
    brand = Brand.find_by(id: brand_id)
    return brand
  end
end
