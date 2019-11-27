class CountersController < ApplicationController

  def index
    @counters = Counter.all
    render json: @counters.to_json()
  end

  def show
    @counter = Counter.find(params[:id])
    render json: @counter.to_json()
  end

end
