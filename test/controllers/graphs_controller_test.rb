require "test_helper"

describe GraphsController do

  describe "index" do
    it "returns a json array" do
      get graphs_url
      must_respond_with :success
      response.header['Content-Type'].must_include 'json'
      body = JSON.parse(response.body)
      body.must_be_kind_of Array
    end
  end # index

  describe "show" do
    it "can retrieve an existing graph" do
      graph = Graph.first
      get graph_path(graph.id)
      must_respond_with :success

      response.header['Content-Type'].must_include 'json'
      body = JSON.parse(response.body)
      body.must_be_kind_of Hash
      body['id'].must_equal graph.id
    end

    it "returns not found for a graph that doesn't exist" do
      graph_id = Graph.last.id + 1
      get graph_path(graph_id)
      must_respond_with :not_found
    end
  end # show

  describe "create" do
    it "can create a valid graph" do
      old_graph_count = Graph.count
      post graphs_url, params: { built_on: DateTime.now }
      must_respond_with :success
      Graph.count.must_equal old_graph_count + 1
    end

    it "returns an error for invalid graph data" do
      old_graph_count = Graph.count
      post graphs_url
      must_respond_with :bad_request
      Graph.count.must_equal old_graph_count
    end
  end # create

end
