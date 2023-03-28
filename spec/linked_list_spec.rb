require "rspec"
require "./lib/linked_list"
require "./lib/node"

RSpec.describe LinkedList do
  it "exists" do
    list = LinkedList.new

    expect(list).to be_a(LinkedList)
  end

  it "adds append, count, and to string methods(Iteration 1)" do
    list = LinkedList.new
    expect(list.head).to eq (nil)
    
    expect(list.append("doop")).to eq ("doop")
    expect(list).to be_a(LinkedList)
    expect(list.head).to be_a(Node)
    expect(list.head.next_node).to eq (nil)
    
    expect(list.append("deep")).to eq ("deep")
    expect(list.count).to eq(2)
    expect(list.to_string).to eq("doop deep")
  end

 it "adds prepend, insert methods(Iteration 2)" do
  list = LinkedList.new
  expect(list.append("plop")).to eq("plop")
  
  expect(list.to_string).to eq("plop")
  expect(list.append("suu")).to eq("suu")
  expect(list.prepend("dop")).to eq("dop")
  expect(list.to_string).to eq("dop plop suu")
  expect(list.count).to eq(3)
  expect(list.insert(1, "woo")).to eq("woo")
  expect(list.to_string).to eq("dop woo plop suu")
 end

 it "adds methods for find, includes?, and pop(Iteration 2)" do
  list = LinkedList.new
  list.append("deep")
  list.append("woo")
  list.append("shi")
  list.append("shu")
  list.append("blop")

  expect(list.find(2, 1)).to eq("shi")
  expect(list.find(1, 3)).to eq("woo shi shu")
  
  expect(list.includes?("deep")).to eq(true)
  expect(list.includes?("dep")).to eq(false)
  
  expect(list.pop).to eq("blop")
  expect(list.pop).to eq("shu")
  expect(list.to_string).to eq("deep woo shi")
 end
end