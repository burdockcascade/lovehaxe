// DO NOT EDIT THIS FILE
// GENERATED ON 2024-05-04 00:04:23

package love.system;

import haxe.extern.Rest;
import lua.Table;
import lua.UserData;

@:native("love.system")
extern class System {

	public static function getClipboardText(): String;

	public static function getOS(): String;

	public static function getPowerInfo(): PowerInfoResult;

	public static function getProcessorCount(): Float;

	public static function hasBackgroundMusic(): Bool;

	public static function openURL(url:String): Bool;

	public static function setClipboardText(text:String): Void;

	public static function vibrate(seconds:Float = Dynamic): Void;

}

extern public class PowerInfoResult {
	public var state:Dynamic;
	public var percent:Float;
	public var seconds:Float;
}

enum abstract PowerState {
	var Unknown = "unknown";
	var Battery = "battery";
	var Nobattery = "nobattery";
	var Charging = "charging";
	var Charged = "charged";
}

