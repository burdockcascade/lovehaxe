// DO NOT EDIT THIS FILE
// GENERATED ON 2024-05-04 01:07:02

package love.joystick;

import haxe.extern.Rest;
import lua.Table;
import lua.UserData;

@:native("love.joystick")
extern class Joystick {

	public static function getGamepadMappingString(guid:String): String;

	public static function getJoystickCount(): Float;

	public static function getJoysticks(): Table<Dynamic,Dynamic>;

	@:overload
	public static function loadGamepadMappings(filename:String): Void;

	@:overload
	public static function loadGamepadMappings(mappings:String): Void;

	@:overload
	public static function saveGamepadMappings(filename:String): String;

	@:overload
	public static function saveGamepadMappings(): String;

	@:overload
	public static function setGamepadMapping(guid:String, button:GamepadButton, inputtype:JoystickInputType, inputindex:Float, hatdir:JoystickHat = nil): Bool;

	@:overload
	public static function setGamepadMapping(guid:String, axis:GamepadAxis, inputtype:JoystickInputType, inputindex:Float, hatdir:JoystickHat = nil): Bool;

}

extern class Joystick extends Object {

	public static function getAxes(): Axes;

	public static function getAxis(axis:Float): Float;

	public static function getAxisCount(): Float;

	public static function getButtonCount(): Float;

	public static function getDeviceInfo(): DeviceInfo;

	public static function getGUID(): String;

	public static function getGamepadAxis(axis:GamepadAxis): Float;

	@:overload
	public static function getGamepadMapping(axis:GamepadAxis): GamepadMapping;

	@:overload
	public static function getGamepadMapping(button:GamepadButton): GamepadMapping;

	public static function getGamepadMappingString(): String;

	public static function getHat(hat:Float): JoystickHat;

	public static function getHatCount(): Float;

	public static function getID(): ID;

	public static function getName(): String;

	public static function getVibration(): Vibration;

	public static function isConnected(): Bool;

	public static function isDown(buttonN:Float): Bool;

	public static function isGamepad(): Bool;

	public static function isGamepadDown(buttonN:GamepadButton): Bool;

	public static function isVibrationSupported(): Bool;

	@:overload
	public static function setVibration(left:Float, right:Float): Bool;

	@:overload
	public static function setVibration(): Bool;

	@:overload
	public static function setVibration(left:Float, right:Float, duration:Float = -1): Bool;

}

enum abstract GamepadAxis {
	var Leftx = "leftx";
	var Lefty = "lefty";
	var Rightx = "rightx";
	var Righty = "righty";
	var Triggerleft = "triggerleft";
	var Triggerright = "triggerright";
}

enum abstract GamepadButton {
	var A = "a";
	var B = "b";
	var X = "x";
	var Y = "y";
	var Back = "back";
	var Guide = "guide";
	var Start = "start";
	var Leftstick = "leftstick";
	var Rightstick = "rightstick";
	var Leftshoulder = "leftshoulder";
	var Rightshoulder = "rightshoulder";
	var Dpup = "dpup";
	var Dpdown = "dpdown";
	var Dpleft = "dpleft";
	var Dpright = "dpright";
}

enum abstract JoystickHat {
	var C = "c";
	var D = "d";
	var L = "l";
	var Ld = "ld";
	var Lu = "lu";
	var R = "r";
	var Rd = "rd";
	var Ru = "ru";
	var U = "u";
}

enum abstract JoystickInputType {
	var Axis = "axis";
	var Button = "button";
	var Hat = "hat";
}

