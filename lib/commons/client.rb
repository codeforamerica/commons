require 'commons/connection'
require 'commons/request'

require 'commons/client/content'

module Commons
  class Client
    attr_accessor(*Configuration::VALID_OPTIONS_KEYS)

    def initialize(options={})
      options = Commons.options.merge(options)
      Configuration::VALID_OPTIONS_KEYS.each do |key|
        send("#{key}=", options[key])
      end
    end

    include Commons::Connection
    include Commons::Request

    include Commons::Client::Content

  end
end
