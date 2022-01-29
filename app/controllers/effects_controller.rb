class EffectsController < ApplicationController
  def index
    @effects = Effect.all

    @four_random = []
    1.times {
      pedal_id = rand(@effects.length + 1)
      if pedal_id == 0
        pedal_id += 1
      end
      @four_random.append(Effect.find_by(id: pedal_id))
    }
  end

  def create
    @effect = Effect.new(effect_params)
    if hasName(@effect)
      @effect.save
      redirect_to "/versions/contribute"
    else
      redirect_to "/effects/contribute"
      #TODO flash message re: required params
    end
  end

  private
    def effect_params
      params.require(:effect).permit(:name, :brand_id, :image_link, :notes)
    end

    def hasName(object)
      object.name != ""
    end
end
