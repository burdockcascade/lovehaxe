/*
 * This file was generated by the LOVE2D Haxe bindings generator for Love2D v11.5.
 * Do not modify this file directly.
 * 2024-07-23 23:52:48
 */

package love2d;

import lua.Table;
import lua.UserData;

@:native("love")
extern class Love {

	public static var mousemoved:Void->Void;
	public static var textedited:Void->Void;
	public static var joystickreleased:Void->Void;
	public static var run:Void->Void;
	public static var load:Void->Void;
	public static var filedropped:Void->Void;
	public static var draw:Void->Void;
	public static var touchpressed:Void->Void;
	public static var touchmoved:Void->Void;
	public static var resize:Void->Void;
	public static var threaderror:Void->Void;
	public static var keypressed:Void->Void;
	public static var joystickaxis:Void->Void;
	public static var joystickremoved:Void->Void;
	public static var mousepressed:Void->Void;
	public static var joystickhat:Void->Void;
	public static var joystickadded:Void->Void;
	public static var errorhandler:Void->Void;
	public static var keyreleased:Void->Void;
	public static var textinput:Void->Void;
	public static var conf:Void->Void;
	public static var visible:Void->Void;
	public static var focus:Void->Void;
	public static var lowmemory:Void->Void;
	public static var gamepadreleased:Void->Void;
	public static var wheelmoved:Void->Void;
	public static var touchreleased:Void->Void;
	public static var directorydropped:Void->Void;
	public static var gamepadpressed:Void->Void;
	public static var quit:Void->Void;
	public static var update:Void->Void;
	public static var gamepadaxis:Void->Void;
	public static var displayrotated:Void->Void;
	public static var joystickpressed:Void->Void;
	public static var mousereleased:Void->Void;
	public static var mousefocus:Void->Void;

	public static function setDeprecationOutput(enable:Bool):Void;

	@:overload(function (version:String):Bool {})
	public static function isVersionCompatible(major:Float, minor:Float, revision:Float):Bool;

	public static function hasDeprecationOutput():Bool;

	public static function getVersion():LoveVersion;

}

@:multiReturn
extern class LoveVersion {

	public var codename:String;
	public var major:Float;
	public var revision:Float;
	public var minor:Float;

}

extern class Object {


	function type():String;

	function new():Void;

	function typeOf(name:String):Bool;

	function release():Bool;

}

extern class Data extends Object {


	function getSize():Float;

	function getFFIPointer():Dynamic;

	function new():Void;

	function clone():Data;

	function getString():String;

	function getPointer():UserData;

}

