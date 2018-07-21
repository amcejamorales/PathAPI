require "test_helper"

describe Node do
  require "test_helper"
  let(:node) { Node.new(graph: graphs(:graph_one)) }

    describe "validations" do

      it "must have a 'built_on' field" do
        node.order = 1
        node.forward_opening = true
        node.left_opening = true
        node.right_opening = true
        node.distance_from_start = 10.0
        node.wont_be :valid?
      end

      it "must have an 'order' field" do
        node.built_on = DateTime.now
        node.forward_opening = true
        node.left_opening = true
        node.right_opening = true
        node.distance_from_start = 10.0
        node.must_be_instance_of Node
        node.wont_be :valid?
      end

      it "must have a 'forward_opening' field" do
        node.built_on = DateTime.now
        node.order = 1
        node.left_opening = true
        node.right_opening = true
        node.distance_from_start = 10.0
        node.wont_be :valid?
      end

      it "must have a 'left_opening' field" do
        node.built_on = DateTime.now
        node.order = 1
        node.forward_opening = true
        node.right_opening = true
        node.distance_from_start = 10.0
        node.wont_be :valid?
      end

      it "must have a 'right_opening' field" do
        node.built_on = DateTime.now
        node.order = 1
        node.forward_opening = true
        node.left_opening = true
        node.distance_from_start = 10.0
        node.wont_be :valid?
      end

      it "must have a 'distance_from_start' field" do
        node.built_on = DateTime.now
        node.order = 1
        node.forward_opening = true
        node.left_opening = true
        node.right_opening = true
        node.wont_be :valid?
      end

      it "is valid with the necessary fields" do
        node.built_on = DateTime.now
        node.order = 1
        node.forward_opening = true
        node.left_opening = true
        node.right_opening = true
        node.distance_from_start = 10.0
        node.must_be :valid?
      end

    end # validations

    describe "relations" do

      it "responds to graph" do
        node.graph
      end

      it "has many arcs" do
        node.arcs
      end

    end # relations

end
