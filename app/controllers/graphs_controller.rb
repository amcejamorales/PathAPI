class GraphsController < ApplicationController

  def index
    graphs = Graph.all
    render json: graphs.as_json(
      except: [:created_at, :updated_at],
      status: :ok
    )
  end

  def show
    graph = Graph.find_by(id: params[:id])

    unless graph
      render json: {errors: {
        id: ["No graph with ID #{params[:id]}"]
      }
      }, status: :not_found
    else
      render json: graph.as_json(
        except: [:created_at, :updated_at],
        status: :ok
      )
    end
  end

  def create
  end

end
