class VersionsController < ApplicationController
  def index
    @versions = Version.all
  end

  def create
    @version = Version.new(version_params)
    if hasParams(@version)
      @version.save
      redirect_to "/contribute/thank-you", notice: "A new #{@version.effect_type} has been added to the database."
    else
      redirect_to "/versions/contribute", alert: "Error adding effect version.\n Ensure all required fields are filled and it is not already in the database."
    end
  end

  private
    def version_params
      params.require(:version).permit(:effect_id, :effect_type, :effect_format, :version_name, :version_iteration, :colours, :year_released, :year_discontinued, :manufacturing_location_current, :manufacturing_location_former, :length, :width, :height, :sources)
    end

    def hasParams(object)
      object.effect_type != "" && object.effect_format != ""
    end
end
