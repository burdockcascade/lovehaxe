/*
 * This file was generated by the LOVE2D Haxe bindings generator for Love2D v11.4.
 * Do not modify this file directly.
 * 2024-05-06 00:46:03
 */

package love;

import lua.Table;

extern class Version {
	public var major:Float;
	public var minor:Float;
	public var revision:Float;
	public var codename:String;
}

extern class Love2DModule {
	public static function getVersion():Version;
	public static function hasDeprecationOutput():Bool;
	public static function isVersionCompatible(version:String):Bool;
	public static function isVersionCompatible(major:Float, minor:Float, revision:Float):Bool;
	public static function setDeprecationOutput(enable:Bool):Void;
}

extern class Object {
	public static function release():Bool;
	public static function type():String;
	public static function typeOf(name:String):Bool;
}

extern class Data extends Object {
	public static function clone():Data;
	public static function getFFIPointer():Cdata;
	public static function getPointer():Light userdata;
	public static function getSize():Float;
	public static function getString():String;
}
