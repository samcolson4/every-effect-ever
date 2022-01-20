class ClonesController < ApplicationController
  def index
    @clones = Clone.all
  end
end
