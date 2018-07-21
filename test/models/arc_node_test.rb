require "test_helper"

describe ArcNode do
  let(:arc_node) { ArcNode.new(arc: arcs(:one), node: nodes(:node_one)) }

  describe "validations" do

    it "must have a 'position' field" do
      arc_node.must_be_instance_of ArcNode
      arc_node.wont_be :valid?
    end

    it "is valid with 'position' field" do
      arc_node.position = "start"
      arc_node.must_be :valid?
    end

  end # validations

  describe "relations" do

    it "responds to node" do
      arc_node.node
    end

    it "responds to arc" do
      arc_node.arc
    end

  end # relations

end
