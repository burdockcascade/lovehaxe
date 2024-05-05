/*
 * This file was generated by the LOVE2D Haxe bindings generator for Love2D v11.4.
 * Do not modify this file directly.
 * 2024-05-06 00:46:03
 */

package love;

import lua.Table;

extern class SystemModule {
	public static function getClipboardText():String;
	public static function getOS():String;
	public static function getPowerInfo():PowerInfo;
	public static function getProcessorCount():Float;
	public static function hasBackgroundMusic():Bool;
	public static function openURL(url:String):Bool;
	public static function setClipboardText(text:String):Void;
	public static function vibrate(seconds:Float):Void;
}

extern class PowerInfo {
	public var state:PowerState;
	public var percent:Float;
	public var seconds:Float;
}

extern enum PowerState {
	UNKNOWN;
	BATTERY;
	NOBATTERY;
	CHARGING;
	CHARGED;
}

