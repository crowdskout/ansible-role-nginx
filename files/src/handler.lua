
local function process()
  local res = ngx.location.capture("*")

  local http_status = ngx.status

  if res.status >= 500 then
      ngx.exit(res.status)
  end
  ngx.status = res.status
  ngx.say(res.body)
end

return process