require 'moji_weather/api/constants'

module MojiWeather
    module Api
        class RestClient
            def initialize(options = {})
                if options[:app_code].nil?
                    raise MojiWeather::ClientError.new("AppCode not provided.")
                end
                @app_code = options[:app_code]

                @cityid_base   = "http://aliv18.data.moji.com/whapi/json/alicityweather"
                @location_base = "http://aliv8.data.moji.com/whapi/json/aliweather"
            end

            def query(api_type, options = {})
                if !options[:city_id].nil? then
                    response = cityid_request(api_type, city_id: options[:city_id], token: MojiWeather::Api::Constants::API_TOKENS[api_type][:city_id])
                elsif !options[:location].nil? then
                    response = location_request(api_type, location: options[:location], token: MojiWeather::Api::Constants::API_TOKENS[api_type][:location])
                else
                    raise MojiWeather::ClientError.new("Invalid request: either city_id or location needs to be set.")
                end
    
                response
            end

            private
            def cityid_request(api_uri, options = {})
                conn = Faraday.new do |f|
                    f.request :url_encoded
                    f.response :json
                    f.response :raise_error
                end

                begin
                    response = conn.post("#{@cityid_base}/#{api_uri}") do |req|
                        req.body = {"cityId" => options[:city_id], "token" => options[:token]}
                        req.headers["Authorization"] = "APPCODE #{@app_code}"
                    end
                rescue Faraday::ClientError => e
                    raise MojiWeather::ClientError.new("API client error, code: #{response.status}, msg: #{response.body}")
                rescue Faraday::ServerError => e
                    raise MojiWeather::ServerError.new("API server error, code: #{response.status}, msg: #{response.body}")
                end

                response.body
            end

            def location_request(api_uri, options = {})
                conn = Faraday.new do |f|
                    f.request :url_encoded
                    f.response :json
                    f.response :raise_error
                end

                begin
                    response = conn.post("#{@location_base}/#{api_uri}") do |req|
                        req.body = {"lat" => options[:location][:lat], "lon" => options[:location][:lon], "token" => options[:token]}
                        req.headers["Authorization"] = "APPCODE #{@app_code}"
                    end
                rescue Faraday::ClientError => e
                    raise MojiWeather::ClientError.new("API client error, code: #{response.status}, msg: #{response.body}")
                rescue Faraday::ServerError => e
                    raise MojiWeather::ServerError.new("API server error, code: #{response.status}, msg: #{response.body}")
                end

                response.body
            end
        end
    end
end