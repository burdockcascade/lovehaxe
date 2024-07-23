del target\output.hl
del target\example.lua

@REM Compile the code
haxe -p src --main Generate --hl target\output.hl

@REM Run the code
hl .\target\output.hl

@REM Test the code
haxe -p lib --main Main --lua test\main.lua -D lua-vanilla