class TagsController < ApplicationController

  def index
    @tags = Tag.all
    render json: TagSerializer.new(@tags.includes(:counters)).to_serialized_json
  end

  def show
    @tag = Tag.find(params[:id])
    render json: TagSerializer.new(@tag.includes(:counters)).to_serialized_json
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def delete
  end

end
