# Learning Lua

Some miscellaneous notes on my way to learn Lua

## Formatting strings

Two variants exist. I don't know yet which one is *better* or newer. The first one pleases me more I think ....

```lua
print(("It is now %s."):format("April"))
```

```lua
print(string.format("It is now %s.", "April"))
```

## Working with strings

### Splitting a string

```lua
function split(s)
    return s:match("([^,]+),([^,]+)")
end
```

... returns the first match - in this case: everything before the comma (,).


### Trimming a string

Strings often come with leading or trailing spaces. This trim function removes those spaces from a string:

```lua
function trim(s)
    return (string.gsub(s, "^%s*(.-)%s*$", "%1"))
end
```


## Scripts

### spacer

The [spacer script](src/spacer.lua) takes a string and an optional number (defaults to 4) and returns the string with spaces every n chars. I.e. for spacing credit card numbers (example: 0000111122223333 gets to 0000 1111 2222 3333).
