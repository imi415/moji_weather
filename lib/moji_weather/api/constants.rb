module MojiWeather
    module Api
        module ApiType
            ALERT = 'alert'
            AQI = 'aqi'
            CONDITION = 'condition'
            FORECAST_24HRS = 'forecast24hours'
            FORECAST_6DAYS = 'briefforecast6days'
            FORECAST_15DAYS = 'forecast15days'
            LIFE_INDEX = 'index'
            LIMIT = 'limit'
        end

        module Constants
            API_TOKENS = {
                MojiWeather::Api::ApiType::ALERT => {
                    city_id: '7ebe966ee2e04bbd8cdbc0b84f7f3bc7',
                    location: 'd01246ac6284b5a591f875173e9e2a18'
                },
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
                },
                MojiWeather::Api::ApiType::LIMIT => {
                    city_id: '27200005b3475f8b0e26428f9bfb13e9',
                    location: 'c712899b393c7b262dd7984f6eb52657'
                },
                MojiWeather::Api::ApiType::LIFE_INDEX => {
                    city_id: '5944a84ec4a071359cc4f6928b797f91',
                    location: '42b0c7e2e8d00d6e80d92797fe5360fd'
                },
                MojiWeather::Api::ApiType::FORECAST_6DAYS => {
                    city_id: '073854b56a84f8a4956ba3e273f6c9d7',
                    location: '0f9d7e535dfbfad15b8fd2a84fee3e36',
                },
                MojiWeather::Api::ApiType::FORECAST_15DAYS => {
                    city_id: 'f9f212e1996e79e0e602b08ea297ffb0',
                    location: '7538f7246218bdbf795b329ab09cc524'
                }
            }
        end
    end
end
