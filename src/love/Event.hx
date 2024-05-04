// DO NOT EDIT THIS FILE
// GENERATED ON 2024-05-04 09:34:57

package love;

import lua.Table;
@:native("love.event")
extern class Event {

	public static function clear(): Void;

	public static function poll(): Dynamic;

	public static function pump(): Void;

	public static function push(n:Event, a:Dynamic = nil, b:Dynamic = nil, c:Dynamic = nil, d:Dynamic = nil, e:Dynamic = nil, f:Dynamic = nil, ...:Dynamic = nil): Void;

	@:overload
	public static function quit(exitstatus:Float = 0): Void;

	@:overload
	public static function quit('restart':String): Void;

	public static function wait(): Wait;

}

extern class Wait {
	public var n:Event;
	public var a:Dynamic;
	public var b:Dynamic;
	public var c:Dynamic;
	public var d:Dynamic;
	public var e:Dynamic;
	public var f:Dynamic;
	public var ...:Dynamic;
}

enum Event {
	Focus;
	Joystickpressed;
	Joystickreleased;
	Keypressed;
	Keyreleased;
	Mousepressed;
	Mousereleased;
	Quit;
	Resize;
	Visible;
	Mousefocus;
	Threaderror;
	Joystickadded;
	Joystickremoved;
	Joystickaxis;
	Joystickhat;
	Gamepadpressed;
	Gamepadreleased;
	Gamepadaxis;
	Textinput;
	Mousemoved;
	Lowmemory;
	Textedited;
	Wheelmoved;
	Touchpressed;
	Touchreleased;
	Touchmoved;
	Directorydropped;
	Filedropped;
	Jp;
	Jr;
	Kp;
	Kr;
	Mp;
	Mr;
	Q;
	F;
}

