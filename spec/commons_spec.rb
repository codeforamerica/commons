require 'helper'

describe Commons do
  describe ".new" do
    it "should return a Commons::Client" do
      Commons.new.should be_a Commons::Client
    end
  end
end
