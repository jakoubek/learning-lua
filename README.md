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
