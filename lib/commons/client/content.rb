module Commons
  class Client
    module Content
      # Use this query to get the information about one product
      #
      # @param id [String] The id for the product number
      # @param options [Hash] A customizable set of options.
      # @return [Array<Hashie::Mash>]
      # @see http://www.civiccommons.org/api
      # @example
      #   Comments.content("13351")
      def content(id,options={})
        get("node/#{id}.json", options)
      end
    end
  end
end
