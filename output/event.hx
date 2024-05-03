// DO NOT EDIT THIS FILE
// GENERATED ON 2024-05-04 00:04:23

package love.event;

import haxe.extern.Rest;
import lua.Table;
import lua.UserData;

@:native("love.event")
extern class Event {

	public static function clear(): Void;

	public static function poll(): Dynamic;

	public static function pump(): Void;

	public static function push(n:Dynamic, a:Dynamic = null, b:Dynamic = null, c:Dynamic = null, d:Dynamic = null, e:Dynamic = null, f:Dynamic = null, ...:Dynamic = null): Void;

	@:overload
	public static function quit(exitstatus:Float = Dynamic): Void;

	@:overload
	public static function quit('restart':String): Void;

	public static function wait(): WaitResult;

}

extern public class WaitResult {
	public var n:Dynamic;
	public var a:Dynamic;
	public var b:Dynamic;
	public var c:Dynamic;
	public var d:Dynamic;
	public var e:Dynamic;
	public var f:Dynamic;
	public var ...:Dynamic;
}

enum abstract Event {
	var Focus = "focus";
	var Joystickpressed = "joystickpressed";
	var Joystickreleased = "joystickreleased";
	var Keypressed = "keypressed";
	var Keyreleased = "keyreleased";
	var Mousepressed = "mousepressed";
	var Mousereleased = "mousereleased";
	var Quit = "quit";
	var Resize = "resize";
	var Visible = "visible";
	var Mousefocus = "mousefocus";
	var Threaderror = "threaderror";
	var Joystickadded = "joystickadded";
	var Joystickremoved = "joystickremoved";
	var Joystickaxis = "joystickaxis";
	var Joystickhat = "joystickhat";
	var Gamepadpressed = "gamepadpressed";
	var Gamepadreleased = "gamepadreleased";
	var Gamepadaxis = "gamepadaxis";
	var Textinput = "textinput";
	var Mousemoved = "mousemoved";
	var Lowmemory = "lowmemory";
	var Textedited = "textedited";
	var Wheelmoved = "wheelmoved";
	var Touchpressed = "touchpressed";
	var Touchreleased = "touchreleased";
	var Touchmoved = "touchmoved";
	var Directorydropped = "directorydropped";
	var Filedropped = "filedropped";
	var Jp = "jp";
	var Jr = "jr";
	var Kp = "kp";
	var Kr = "kr";
	var Mp = "mp";
	var Mr = "mr";
	var Q = "q";
	var F = "f";
}
