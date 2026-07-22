-- Istories SDK error

local IstoriesError = {}
IstoriesError.__index = IstoriesError


function IstoriesError.new(code, msg, ctx)
  local self = setmetatable({}, IstoriesError)
  self.is_sdk_error = true
  self.sdk = "Istories"
  self.code = code or ""
  self.msg = msg or ""
  self.ctx = ctx
  self.result = nil
  self.spec = nil
  return self
end


function IstoriesError:error()
  return self.msg
end


function IstoriesError:__tostring()
  return self.msg
end


return IstoriesError
