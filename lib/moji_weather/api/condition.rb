require 'moji_weather/api/rest_client'

module MojiWeather
    module Api
        class Condition < MojiWeather::Api::RestClient
            def query(options = {})
                if !options[:city_id].nil? then
                    response = cityid_request('condition', city_id: options[:city_id], token: '50b53ff8dd7d9fa320d3d3ca32cf8ed1')
                elsif !options[:location].nil? then
                    response = location_request('condition', location: options[:location], token: 'ff826c205f8f4a59701e64e9e64e01c4')
                else
                    raise MojiWeather::ClientError.new("Invalid request: either city_id or location needs to be set.")
                end

                response
            end
        end
    end
end