require "spec_helper"

module TicTacToe
  describe Array do
    context "#all_empty" do
      it "returns true if all elements in the array are empty" do
        expect(["","",""].all_empty?).to be_true
      end

      it "returns false if some of the elements in the array are empty" do
        expect(["","filled",""].all_empty?).to be_false
      end

      it "returns true for an empty array" do
        expect([].all_empty?).to be_true
      end
    end

    context "#all_same" do
      it "returns true if all elements in the array are the same" do
        expect(["1","1","1"].all_same?).to be_true
      end

      it "returns false if some of the elements in the array are not the same" do
        expect(["filled","filled","0",Object.new,:a].all_same?).to be_false
      end

      it "returns true for an empty array" do
        expect([].all_same?).to be_true
      end
    end

    context "#any_empty" do
      it "returns true if all elements in the array are the empty" do
        expect(["","",""].any_empty?).to be_true
      end

      it "returns true if some of the elements in the array are empty" do
        expect(["","","0",Object.new,:a].any_empty?).to be_true
      end

      it "returns false for a filled array" do
        expect(["1","1","1"].any_empty?).to be_false
      end

      # it "returns true for an empty array" do
      #   expect([].any_empty?).to be_true
      # end
    end

    context "#none_empty" do
      it "returns false if all elements in the array are empty" do
        expect(["","",""].none_empty?).to be_false
      end

      it "returns true if none of the elements in the array are empty" do
        expect(["1","1","1"].none_empty?).to be_true
      end

      it "returns false if some of the elements in the array are empty" do
        expect(["","filled",""].none_empty?).to be_false
      end

      # it "returns true for an empty array" do
      #   expect([].none_empty?).to be_true
      # end
    end

  end

end