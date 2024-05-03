// DO NOT EDIT THIS FILE
// GENERATED ON 2024-05-04 00:35:19

package love.mouse;

import haxe.extern.Rest;
import lua.Table;
import lua.UserData;

@:native("love.mouse")
extern class Mouse {

	public static function getCursor(): Dynamic;

	public static function getPosition(): Position;

	public static function getRelativeMode(): Bool;

	public static function getSystemCursor(ctype:Dynamic): Dynamic;

	public static function getX(): Float;

	public static function getY(): Float;

	public static function isCursorSupported(): Bool;

	public static function isDown(button:Float, ...:Float): Bool;

	public static function isGrabbed(): Bool;

	public static function isVisible(): Bool;

	@:overload
	public static function newCursor(imageData:Dynamic, hotx:Float = 0, hoty:Float = 0): Dynamic;

	@:overload
	public static function newCursor(filename:String, hotx:Float = 0, hoty:Float = 0): Dynamic;

	@:overload
	public static function newCursor(fileData:Dynamic, hotx:Float = 0, hoty:Float = 0): Dynamic;

	@:overload
	public static function setCursor(cursor:Dynamic): Void;

	@:overload
	public static function setCursor(): Void;

	public static function setGrabbed(grab:Bool): Void;

	public static function setPosition(x:Float, y:Float): Void;

	public static function setRelativeMode(enable:Bool): Void;

	public static function setVisible(visible:Bool): Void;

	public static function setX(x:Float): Void;

	public static function setY(y:Float): Void;

}

extern public class Position {
	public var x:Float;
	public var y:Float;
}

extern class Cursor extends Object {

	public static function getType(): Dynamic;

}

enum abstract CursorType {
	var Image = "image";
	var Arrow = "arrow";
	var Ibeam = "ibeam";
	var Wait = "wait";
	var Waitarrow = "waitarrow";
	var Crosshair = "crosshair";
	var Sizenwse = "sizenwse";
	var Sizenesw = "sizenesw";
	var Sizewe = "sizewe";
	var Sizens = "sizens";
	var Sizeall = "sizeall";
	var No = "no";
	var Hand = "hand";
}

