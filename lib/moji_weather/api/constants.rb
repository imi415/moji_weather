module MojiWeather
    module Api
        module ApiType
            CONDITION = 'condition'
            FORECAST_24HRS = 'forecast24hours'
            AQI = 'aqi'
        end

        module Constants
            API_TOKENS = {
                MojiWeather::Api::ApiType::CONDITION => {
                    city_id: '50b53ff8dd7d9fa320d3d3ca32cf8ed1',
                    location: 'ff826c205f8f4a59701e64e9e64e01c4'
                },
                MojiWeather::Api::ApiType::FORECAST_24HRS => {
                    city_id: '008d2ad9197090c5dddc76f583616606',
                    location: '1b89050d9f64191d494c806f78e8ea36'
                },
                MojiWeather::Api::ApiType::AQI => {
                    city_id: '8b36edf8e3444047812be3a59d27bab9',
                    location: '6e9a127c311094245fc1b2aa6d0a54fd'
                }
            }
        end
    end
end