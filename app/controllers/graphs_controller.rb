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
    graph = Graph.new(graph_params)
    if graph.save
      render json: { id: graph.id }, status: :ok
    else
      render json: { errors: {
        built_on: ["Could not create new graph; invalid 'built_on' date."]
      } }, status: :bad_request
    end
  end

  private
  def graph_params
    return params.permit(:built_on)
  end

end
