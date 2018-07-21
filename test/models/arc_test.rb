require "test_helper"

describe Arc do

  describe "validations" do
    let(:arc) { Arc.new }

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
      arc.must_be :valid?
    end

  end # validations

end
