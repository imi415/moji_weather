# Moji Weather API (for Aliyun Cloud Market)

## Usage:

```ruby
client = MojiWeather::Api::Client.new app_code: "YOUR_APP_CODE"

result = client.query MojiWeather::Api::ApiType::AQI, location: {lat: 39.95, lon: 116.36}
result = client.query MojiWeather::Api::ApiType::AQI, city_id: 2
```
`ApiType` has the following possible values (more is WIP):
    * `MojiWeather::Api::ApiType::CONDITION`: Real-time condition
    * `MojiWeather::Api::ApiType::FORECAST_24HRS`: 24-hour forecast
    * `MojiWeather::Api::ApiType::AQI`: Air quality index(AQI)