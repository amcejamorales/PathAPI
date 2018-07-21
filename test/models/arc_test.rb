require "test_helper"

describe Arc do

  describe "validations" do
    let(:arc) { Arc.new(graph: graphs(:graph_one), start: nodes(:node_one), finish: nodes(:node_two)) }

    it "must have a 'built_on' field" do
      arc.arc_distance = 5.0
      arc.direction = 'F'
      arc.must_be_instance_of Arc
      arc.wont_be :valid?
    end

    it "must have a 'direction' field" do
      arc.arc_distance = 5.0
      arc.built_on = DateTime.now
      arc.wont_be :valid?
    end

    it "must have an 'arc_distance' field" do
      arc.direction = 'F'
      arc.built_on = DateTime.now
      arc.wont_be :valid?
    end

    it "is valid with 'direction' and 'arc_distance' fields" do
      arc.direction = 'F'
      arc.arc_distance = 5.0
      arc.built_on = DateTime.now
      arc.must_be :valid?
    end

  end # validations

  describe "relations" do
    let(:arc) { Arc.new }

    it "responds to graph" do
      arc.graph
    end

    it "responds to start (node)" do
      arc.start = nodes(:node_one)
      arc.start.must_be_instance_of Node
    end

    it "responds to finish (node)" do
      arc.finish = nodes(:node_two)
      arc.finish.must_be_instance_of Node
    end

  end # relations

end
