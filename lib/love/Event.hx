/*
 * This file was generated by the LOVE2D Haxe bindings generator.
 * Do not modify this file directly.
 * 2024-05-04 23:35:05
 */

package love;

@:native("love.event")
extern class Event {

	public static function clear():Void;

	public static function poll():Function;

	public static function pump():Void;

	public static function push(n:Event, a:Variant, b:Variant, c:Variant, d:Variant, e:Variant, f:Variant, ...:Variant):Void;

	public static function quit(exitstatus:Float):Void;

	public static function quit('restart':String):Void;

	public static function wait():WaitResult;

}

extern enum Event {
	FOCUS;
	JOYSTICKPRESSED;
	JOYSTICKRELEASED;
	KEYPRESSED;
	KEYRELEASED;
	MOUSEPRESSED;
	MOUSERELEASED;
	QUIT;
	RESIZE;
	VISIBLE;
	MOUSEFOCUS;
	THREADERROR;
	JOYSTICKADDED;
	JOYSTICKREMOVED;
	JOYSTICKAXIS;
	JOYSTICKHAT;
	GAMEPADPRESSED;
	GAMEPADRELEASED;
	GAMEPADAXIS;
	TEXTINPUT;
	MOUSEMOVED;
	LOWMEMORY;
	TEXTEDITED;
	WHEELMOVED;
	TOUCHPRESSED;
	TOUCHRELEASED;
	TOUCHMOVED;
	DIRECTORYDROPPED;
	FILEDROPPED;
	JP;
	JR;
	KP;
	KR;
	MP;
	MR;
	Q;
	F;
}

extern class WaitResult {

	public var n:Event;
	public var a:Variant;
	public var b:Variant;
	public var c:Variant;
	public var d:Variant;
	public var e:Variant;
	public var f:Variant;
	public var ...:Variant;

}

