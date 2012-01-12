require 'helper'

describe Commons::Client::Content do
  before do
    @client = Commons.new
  end

  describe "#content" do
    context "get content" do
      before do
        stub_get("/node/13813.json").
          to_return(:status => 200, :body => fixture("nodes.json"))
      end

      it "should return search the correct content node" do
        node = @client.content('13813')
        node.num_records.should == "25"
      end
    end

  end
end
