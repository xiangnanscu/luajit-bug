local function jcopy(o)
  local function copy(v)
    if type(v) == "table" then
      local cv = {}
      for key, value in pairs(v) do
        cv[key] = copy(value)
      end
      return cv
    else
      return v
    end
  end

  return copy(o)
end

local function main()
  local n = 0
  for i = 1, 100, 1 do
    local c = jcopy { cond = { { "you shouldn't see this via index -1" } } }
    if c.cond[-1] then
      if n == 0 then
        -- print for the first time
        print(c.cond[-1][1])
      end
      n = n + 1
    end
  end
  if n > 0 then
    print("-1 index happends:" .. n)
  end
end

main()
