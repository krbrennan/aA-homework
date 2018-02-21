require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
      let(:chef) { double("chef", name:"Charlie") }
      let(:jelly_beans) { Dessert.new("jelly beans", 42, chef)}
#       :type => "Jelly Beans",
#       :quantity => 42,
#       :chef => "Charlie Kelly",
#       :ingredients => ["jelly beans", "milk steak", "magnets"]
#     )
#     Dessert.new
# end
# allow(book).to receive(:title) { "The RSpec Book" }


  describe "#initialize" do
    it "sets a type" do
      expect(jelly_beans.type).to eq("jelly beans")
    end

    it "sets a quantity" do
      expect(jelly_beans.quantity).to eq(42)
      expect(jelly_beans.quantity).to be_a(Integer)
    end

    it "starts ingredients as an empty array" do
      expect(jelly_beans.ingredients).to be_a(Array)
    end

    it "raises an argument error when given a non-integer quantity" do
      expect(jelly_beans.quantity).to be_a(Integer)
    end
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do
      expect{Dessert.new('whatever','wood',"mustafa").to raise_error(ArgumentError)}
    end
  end

  describe "#mix!" do
    it "shuffles the ingredient array" do
      jelly_beans.add_ingredient("ghouls")
      expect{jelly_beans.ingredients.include?("ghouls")}
    end
  end

  describe "#eat" do
    it "subtracts an amount from the quantity"

    it "raises an error if the amount is greater than the quantity"
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name"
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in"
  end
end
