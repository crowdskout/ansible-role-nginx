
-- Require Library
local resty_dogstatsd = require('resty_dogstatsd')

-- Initialize
local dogstatsd = resty_dogstatsd.new({
  statsd = {
    host = "127.0.0.1",
    port = 8125,
    namespace = "nginx_lua",
  },
  tags = {
    "environment:develop",
    "application:lua",
  },
})