# Moji Weather API (for Aliyun Cloud Market)

## Usage:

### Condition:

```ruby
condition = MojiWeather::Api::Condition.new app_code: "YOUR_APP_CODE"
pp condition.query location: {lat: 39.95, lon: 116.36}
pp condition.query city_id: 2
```
