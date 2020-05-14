class ConglomeratesController < ApplicationController
  def index
    @conglomerates = Conglomerate.all
  end

  def show
    @conglomerate = Conglomerate.find(params[:id])
    @companies = @conglomerate.companies
  end
end
