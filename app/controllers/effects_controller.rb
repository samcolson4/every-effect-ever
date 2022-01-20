class EffectsController < ApplicationController
  def index
    @effects = Effect.all
  end
end
