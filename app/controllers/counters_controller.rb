class CountersController < ApplicationController

  def index
    @counters = Counter.all
    render json: CounterSerializer.new(@counters).to_serialized_json
  end

  def show
    @counter = Counter.find(params[:id])
    render json: CounterSerializer.new(@counter).to_serialized_json
  end

end
