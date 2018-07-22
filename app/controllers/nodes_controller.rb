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
    node = Node.new(node_params)
    puts node_params
    if node.save
      render json: {id: node.id }, status: :ok
    else
      render json: {
        errors: {
          data: ["Could not create new graph; invalid data input."]
        }
      }, status: :bad_request
    end
  end

  private
  def node_params
    return params.permit(:built_on, :graph_id, :order, :forward_opening, :left_opening, :right_opening, :distance_from_start)
  end

end
