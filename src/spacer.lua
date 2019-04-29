local function printUsage()
    print("Usage")
    print("  lua spacer.lua <string>")
    print("  lua spacer.lua <string> <number-of-chars>")
end

if 0 == #arg then
    printUsage()
    return
elseif 1 == #arg then
    mod = 4
else
    mod = tonumber(arg[2])
end

local text = arg[1]

result = ''
i = 0
for c in text:gmatch(".") do
    i = i + 1
    result = result .. c
    if (i % mod == 0) then result = result .. ' ' end
end

print(result)
