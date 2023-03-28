require "rspec"
require "./lib/jungle_beat"
require "./lib/linked_list"
require "./lib/node"

RSpec.describe JungleBeat do
  it "exists" do
    jb = JungleBeat.new

    expect(jb).to be_a(JungleBeat)
    expect(jb.list.head).to eq(nil)
  end

  it "Can append, call nodes, and count" do
    jb = JungleBeat.new

    expect(jb.append("deep doo ditt")).to eq("deep doo ditt")
    expect(jb.list.head.data).to eq("deep")
    expect(jb.list.head.next_node.data).to eq("doo")
    expect(jb.append("woo hoo shu")).to eq("woo hoo shu")
    expect(jb.count).to eq(6)
  end
  
  it "Adds play method" do
    jb = JungleBeat.new

    expect(jb).to be_a(JungleBeat)
    expect(jb.append("deep doo ditt woo hoo shu")).to eq("deep doo ditt woo hoo shu")
    expect(jb.count).to eq(6)
    expect(jb.list.count).to eq(6)
    jb.play
    #=> plays the sounds deep doo ditt woo hoo shu
  end

end