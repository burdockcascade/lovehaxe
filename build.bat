del target\output.hl
del target\example.lua

@REM Compile the code
haxe lovehaxe.hxml

@REM Test the code
haxe -p lib --main Main --lua test\main.lua -D lua-vanilla