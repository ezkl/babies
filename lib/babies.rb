require 'faraday'
require 'faraday_middleware'

require "babies/version"
require 'babies/request'
require 'babies/requests/search'

require "babies/item"

module Babies  
  def self.search(search_query)
    Search.new(search_query)
  end
end
