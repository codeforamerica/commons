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
        node.title.should == "YouTown"
      end
    end
  end

  describe "#taxonomy_term" do
    before do
      stub_get("/taxonomy_term/91.json").
        to_return(:status => 200, :body => fixture("taxonomy_term.json"))
    end

    it "should return the correct taxonomy term" do
      result = @client.taxonomy_term('91')
      result.name.should == "BSD"
    end
  end
end
