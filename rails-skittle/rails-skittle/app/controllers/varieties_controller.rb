class VarietiesController < ApplicationController
  def index
    @varieties = Variety.all
    render json: @varieties
  end

end