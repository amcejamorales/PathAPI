require "test_helper"

describe Graph do

  describe "validations" do
    let(:graph) { Graph.new }

    it "must have a 'built_on' field" do
      graph.must_be_instance_of Graph
      graph.wont_be :valid?
    end

    it "is valid with a 'built_on' field" do
      graph.built_on = Date.today
      graph.must_be :valid?
    end

  end # validations

  describe "relations" do
    it "has many arcs" do
      graph = Graph.first
      graph.arcs
    end
  end # relations

end
