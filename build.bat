del target\output.hl
del target\example.lua

@REM Compile the code
haxe -p src --main Generate --hl target\output.hl
hl .\target\output.hl
