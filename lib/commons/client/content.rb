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
      #   Commons.content("13351")
      def content(id,options={})
        get("node/#{id}.json", options)
      end

      # Use this query to get the Taxonomy Terms
      #
      # @param id [String] The id for Taxonomy Term
      # @param options [Hash] A customizable set of options.
      # @return [Array<Hashie::Mash>]
      # @see http://www.civiccommons.org/api
      # @example
      #   Commons.content("13351")
      def taxonomy_term(id,options={})
        get("taxonomy_term/#{id}.json", options)
      end

    end
  end
end
