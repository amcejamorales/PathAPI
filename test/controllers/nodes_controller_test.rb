require "test_helper"

describe NodesController do
  describe "index" do
    it "returns a json array" do
      get nodes_url
      must_respond_with :success
      response.header['Content-Type'].must_include 'json'
      body = JSON.parse(response.body)
      body.must_be_kind_of Array
    end
  end # index

  describe "show" do
    it "can retrieve an existing node" do
      node = Node.first
      get node_path(node.id)
      must_respond_with :success
      response.header['Content-Type'].must_include 'json'
      body = JSON.parse(response.body)
      body.must_be_kind_of Hash
    end

    it "returns not found for a node that doesn't exist" do
      node_id = Node.last.id + 1
      get node_path(node_id)
      must_respond_with :not_found 
    end
  end # show

  describe "create" do
  end # create

end
