
local target = "example:3000"

local headers = ngx.req.get_headers()

local host = headers['Host']

ngx.var.target = "http://" .. target .. "/posts"