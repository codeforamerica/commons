module Commons
  class Client
    module Content
      def content(id,options={})
        get("node/#{id}.json", options)
      end
    end
  end
end
