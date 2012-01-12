require 'commons/connection'
require 'commons/request'


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
    include Commmons::Request


  end
end
