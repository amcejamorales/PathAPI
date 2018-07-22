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
  end # show

  describe "create" do
  end # create

end
