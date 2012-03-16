module Babies
  class Search < Request
    attr_accessor :search_query
    attr_reader   :encoded_query
    
    attr_accessor :request
    attr_reader   :page
    attr_reader   :total_pages
    
    attr_accessor :items
    
    
    def initialize(search_query)
      @search_query   = search_query
      @encoded_query  = URI.encode(search_query)
      @page           = 1
      @total_pages    = 1
      @items          = []
      
      while @total_pages and @page <= @total_pages do
        setup_request
        
        if (response = perform!).success?
          @page += 1
          @total_pages = response.body['totalPages']
          
          response.body['itemsArray'].each do |item|
            @items.push item['title']
          end
          
        else
          @total_pages = 0
          raise "Request Error!"
        end
      end
    end
    
    def setup_request
      @request = Request.new("http://s.m.taobao.com", "/search.htm", default_params, default_headers, true)
    end
    
    def perform!
      @request.get
    end
    
    def default_params
      { 
        "_wapprepay"     => 1,
        "page"           => @page,
        "q"              => @encoded_query,
        "ttid"           => "201200@taobao_iphone_1.5.0",
        "sid"            => "if5768e20902cb87",
        "vm"             => "nw",
        "forbidPic"      => 0,
        "_input_charset" => "utf-8",
        "n"              => 40
      }
    end
    
    def default_headers
      {
        "User-Agent"     => "iPhone"
      }
    end
  end
end