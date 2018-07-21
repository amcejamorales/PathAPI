require "test_helper"

describe ArcNode do

  describe "validations" do
    let(:arc_node) { ArcNode.new }

    it "must have a 'position' field" do
      arc_node.must_be_instance_of ArcNode
      arc_node.wont_be :valid?
    end

    it "is valid with 'position' field" do
      arc_node.position = "start"
      arc_node.node = nodes(:one)
      arc_node.must_be :valid?
    end

  end # validations

  describe "relations" do
    let(:arc_node) { arc_nodes(:arc_node_one) }
    it "responds to node" do
      arc_node.node
    end
  end

end
