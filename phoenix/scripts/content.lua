local redis = require("resty.redis")

local red = redis:new()

red:set_timeout(1000)

local ok, err = red:connect("redis", 6379)

if not ok then
  ngx.say("failed to connect: ", err)
  return
end

local ok, err = red:set("dog", "an animal")

if not ok then
  ngx.say("failed to set dog: ", err)
  return
end


local res, err = red:get("dog")

if not res then
  ngx.say("failed to get dog: ", err)
  return
end

if res == ngx.null then
  ngx.say("dog not found.")
  return
end


local ok, err = red:set_keepalive(10000, 100)

if not ok then
  ngx.say("failed to set keepalive: ", err)
  return
end
