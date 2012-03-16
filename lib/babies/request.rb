module Babies
  class Request
    attr_accessor :req
    attr_reader :path, :params, :parse_json, :user_agent
    
    def initialize(base_uri, path = "/", params = {},  headers = {}, parse_json = false)
      @path         = path
      @params       = params
      @parse_json   = parse_json
      @headers      = headers
            
      @req = Faraday.new base_uri do |conn|
        if @parse_json
          conn.request  :json
          conn.response :json
        end
        
        conn.adapter Faraday.default_adapter
      end
    end
    
    def get
      @req.get do |req|
        req.url @path
        req.params  = @params
        req.headers = @headers
      end
    end
  end
end