Gem::Specification.new do |s|
    s.name = 'moji_weather'
    s.version = '0.0.1'
    s.summary = "Moji Weather"
    s.description = "Moji Weather API provided by Aliyun"
    s.authors = ["imi415"]
    s.email = "imi415.public@gmail.com"
    s.files = ["lib/moji_weather.rb"]
    s.license = "MIT"

    s.add_dependency "faraday", "~> 1.4"
    s.add_dependency "faraday_middleware", "~> 1.0"
end