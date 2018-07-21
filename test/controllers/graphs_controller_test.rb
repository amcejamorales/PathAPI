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

end
