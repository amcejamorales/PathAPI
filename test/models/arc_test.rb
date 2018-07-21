require "test_helper"

describe Arc do
  let(:arc) { Arc.new(start: arc_nodes(:arc_node_one), finish: arc_nodes(:arc_node_two)) }

  describe "validations" do

    it "must have a 'direction' field" do
      arc.arc_distance = 5.0
      arc.must_be_instance_of Arc
      arc.wont_be :valid?
    end

    it "must have an 'arc_distance' field" do
      arc.direction = 'F'
      arc.wont_be :valid?
    end

    it "is valid with 'direction' and 'arc_distance' fields" do
      arc.direction = 'F'
      arc.arc_distance = 5.0
      arc.graph = graphs(:graph_one)
      arc.must_be :valid?
    end

  end # validations

  describe "relations" do

    it "responds to graph" do
      arc.graph
    end

    it "has many arc_nodes" do
      arc.arc_nodes
    end

    it "has a start arc_node" do
      arc.start.node.order.must_equal 1
    end

    it "has a finish arc_node" do
      arc.finish.node.order.must_equal 2
    end

    it "has many nodes (through arc_nodes)" do
      arc.nodes
    end

  end # relations

end
