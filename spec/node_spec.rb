require "rspec"
require "./lib/node"

RSpec.describe Node do
  it "exists" do
    node = Node.new("plop")

    expect(node).to be_a(Node)
  end

  it "returns the data inside the node" do
    node = Node.new("plop")

    expect(node.data).to eq ("plop")
  end

end