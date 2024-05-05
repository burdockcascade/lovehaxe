@REM Compile the code
del target\output.hl
haxe -p src --main Generate --hl target\output.hl
hl .\target\output.hl

@REM Run the generated code
haxe -p lib --main Main --hl target\output.hl