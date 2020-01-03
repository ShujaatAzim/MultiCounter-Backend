class TagsController < ApplicationController

  def index
    @tags = Tag.all
    render json: TagSerializer.new(@tags.includes(:counters)).to_serialized_json
  end

  def show
    @tag = Tag.find(params[:id])
    render json: TagSerializer.new(@tag.includes(:counters)).to_serialized_json
  end

  def create
    @tag = Tag.create(name: params[:name])
    render json: TagSerializer.new(@tag).to_serialized_json
    # ask marcus about significance of rendering the freshly created instance as json
  end

  def update
    @tag = Tag.find(params[:id])
    @tag.update(name: params[:name])
    @tag.save
  end

  def destroy
    @tag = Tag.find(params[:id])
    @tag.delete
  end

end
