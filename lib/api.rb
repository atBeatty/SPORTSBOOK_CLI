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
    JSON.parse(response.body)
    
        # url = URI("https://www.balldontlie.io/api/v1/players")
        # http.use_ssl = true
        # http.verify_mode = OpenSSL::SSL::VERIFY_NONE
        binding.pry
        
        request = Net::HTTP::Get.new(url)
        response = http.request(request) #response provided by API documentation

        # @json_body = JSON.parse(response.body) #returns a large output of nba league info

        # filtered_response = @json_body["response"][0]["seasons"] # returns just the seasons
        # filtered_response.each do |season|
        #     puts "#{season["season"]}"
        # end
end

# API.new