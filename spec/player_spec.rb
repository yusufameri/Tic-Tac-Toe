require "spec_helper"

module TicTacToe
  describe Player do
    context "#initialize" do

      it "initializes exception when initialse with {}" do
        expect { Player.new({}) }.to raise_error
      end
      it "does not raise an exception when initialized with a valid input hash" do
        input = {color: "X", name: "Jeff"}
        expect {Player.new(input)}.to_not raise_error
      end

    end

    context "#color" do
      it "returns the color" do
        input = {color: "X", name: "Jeff"}
        jeff = Player.new(input)
        expect(jeff.color).to eq "X"
      end
    end

    context "#name" do
      it "returns the name" do
        input = {color: "X", name: "Jeff"}
        jeff = Player.new(input)
        expect(jeff.name).to eq "Jeff"
      end
    end
  end
end