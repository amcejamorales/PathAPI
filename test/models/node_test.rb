require "test_helper"

describe Node do
  require "test_helper"

    describe "validations" do
      let(:node) { Node.new }

      it "must have an 'order' field" do
        node.forward_opening = true
        node.left_opening = true
        node.right_opening = true
        node.distance_from_start = 10.0
        node.must_be_instance_of Node
        node.wont_be :valid?
      end

      it "must have a 'forward_opening' field" do
        node.order = 1
        node.left_opening = true
        node.right_opening = true
        node.distance_from_start = 10.0
        node.wont_be :valid?
      end

      it "must have a 'left_opening' field" do
        node.order = 1
        node.forward_opening = true
        node.right_opening = true
        node.distance_from_start = 10.0
        node.wont_be :valid?
      end

      it "must have a 'right_opening' field" do
        node.order = 1
        node.forward_opening = true
        node.left_opening = true
        node.distance_from_start = 10.0
        node.wont_be :valid?
      end

      it "must have a 'distance_from_start' field" do
        node.order = 1
        node.forward_opening = true
        node.left_opening = true
        node.right_opening = true
        node.wont_be :valid?
      end

      it "is valid with the necessary fields" do
        node.order = 1
        node.forward_opening = true
        node.left_opening = true
        node.right_opening = true
        node.distance_from_start = 10.0
        node.must_be :valid?
      end

    end # validations

    describe "relations" do

      it "has many arc_nodes" do
        node = Node.first
        node.arc_nodes
      end

    end # relations

end
