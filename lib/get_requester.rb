# Write your code here
require 'open-uri'
require 'net/http'
require 'json'
require 'awesome_print'
require 'pry'


class GetRequester
    attr_accessor :uri, :url
    def initialize(url)
        @url = url           
        @uri = URI.parse(url)
    end

    def get_response_body
        response = Net::HTTP.get_response(self.uri)
        response.body
    end    

    def parse_json
        JSON.parse(get_response_body)
    end
end

binding.pry
0