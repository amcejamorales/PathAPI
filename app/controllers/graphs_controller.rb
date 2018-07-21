class GraphsController < ApplicationController

  def index
    graphs = Graph.all
    render json: graphs.as_json(except: [:created_at, :updated_at], status: :ok)
  end

  def show
  end

  def create
  end

end
