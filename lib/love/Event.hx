/*
 * This file was generated by the LOVE2D Haxe bindings generator for Love2D v11.5.
 * Do not modify this file directly.
 * 2024-05-12 20:41:35
 */

package love;

import lua.Table;
import lua.UserData;

@:native("love.event")
extern class EventModule {

	@:overload(function (exitstatus:Float):Void {})
	public static function quit('restart':String):Void;

	public static function push(n:Event, a:Dynamic, b:Dynamic, c:Dynamic, d:Dynamic, e:Dynamic, f:Dynamic, ...varargs:Dynamic):Void;

	public static function pump():Void;

	public static function wait():EventWaitResult;

	public static function poll():Dynamic;

	public static function clear():Void;

}

@:multiReturn
extern class EventWaitResult {

	public var b:Dynamic;
	public var c:Dynamic;
	public var d:Dynamic;
	public var e:Dynamic;
	// Skipping field ... of type Dynamic.
	public var f:Dynamic;
	public var n:Event;
	public var a:Dynamic;
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

