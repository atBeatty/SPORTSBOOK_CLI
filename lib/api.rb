puts "Hello"

class API 
puts "New API"
    attr_accessor :json_response

    def initialize
        @json_response = {}
    end
    
    url = "https://www.balldontlie.io/api/v1/players"
    uri = URI.parse(url)
    response = Net::HTTP.get_response(uri)
    response.body
    puts json_body = JSON.parse(response.body)
    binding.pry
    
end

# API.new