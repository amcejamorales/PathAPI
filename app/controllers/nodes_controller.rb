class NodesController < ApplicationController

  def index
    nodes = Node.all
    render json: nodes.as_json(
      except: [:created_at, :updated_at],
      status: :ok
    )
  end

  def show
  end

  def create
  end

end
