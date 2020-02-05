class CountersController < ApplicationController

  def index
    @counters = Counter.all
    render json: CounterSerializer.new(@counters).to_serialized_json
  end

  def show
    @counter = Counter.find(params[:id])
    render json: CounterSerializer.new(@counter).to_serialized_json
  end

  def create
    @counter = Counter.create(name: params[:name], amount: params[:amount], description: params[:description])
    params[:tags].each { |t| @counter.tags << Tag.find_by(name: t[:name]) }
    render json: CounterSerializer.new(@counter).to_serialized_json
  end

  def update
    @counter = Counter.find(params[:id])
    @counter.update(name: params[:name], amount: params[:amount], description: params[:description], tags: params[:tags])
    @counter.save
    render json: CounterSerializer.new(@counter).to_serialized_json
  end

  def destroy
    @counter = Counter.find(params[:id])
    @counter.delete
  end

end
