module MojiWeather
    # Exception bash class.
    class Error < StandardError; end

    class ClientError < Error; end
    class ServerError < Error; end
end