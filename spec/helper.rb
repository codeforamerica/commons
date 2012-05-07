unless ENV['CI']
  require 'simplecov'
  SimpleCov.start
end
require 'commons'
require 'rspec'
require 'webmock/rspec'

def a_get(url)
  a_request(:get, commons_url(url))
end

def stub_get(url)
  stub_request(:get, commons_url(url))
end

def fixture_path
  File.expand_path("../fixtures", __FILE__)
end

def fixture(file)
  File.new(fixture_path + '/' + file)
end

def commons_url(url)
  "http://civiccommons.org/api/v1#{url}"
end
