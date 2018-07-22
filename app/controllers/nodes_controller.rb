class NodesController < ApplicationController

  def index
    nodes = Node.all
    render json: nodes.as_json(
      except: [:created_at, :updated_at],
      status: :ok
    )
  end

  def show
    node = Node.find_by(id: params[:id])
    unless node
      render json: {
        errors: {
          id: ["No node with ID #{params[:id]}"]
        }
      }, status: :not_found
    else
      render json: node.as_json(
        except: [:created_at, :updated_at]
      ), status: :ok
    end
  end

  def create
  end

end
