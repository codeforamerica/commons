require 'helper'

describe Commons do
  after do
    Commons.reset
  end

  describe ".respond_to?" do
    it "should be true if method exists" do
      Commons.respond_to?(:new, true).should be_true
    end
  end

  describe ".new" do
    it "should return a Commons::Client" do
      Commons.new.should be_a Commons::Client
    end
  end
end
