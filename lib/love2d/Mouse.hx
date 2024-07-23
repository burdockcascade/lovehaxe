/*
 * This file was generated by the LOVE2D Haxe bindings generator for Love2D v11.5.
 * Do not modify this file directly.
 * 2024-07-24 00:28:14
 */

package love2d;

import lua.Table;
import lua.UserData;
import love2d.Love.Object;
import love2d.Image.ImageData;
import love2d.FileSystem.FileData;

@:multiReturn
extern class MousePosition {

	public var y:Float;
	public var x:Float;

}

@:native("love.mouse")
extern class LoveMouse {


	public static function setY(y:Float):Void;

	public static function setX(x:Float):Void;

	public static function setVisible(visible:Bool):Void;

	public static function setRelativeMode(enable:Bool):Void;

	public static function setPosition(x:Float, y:Float):Void;

	public static function setGrabbed(grab:Bool):Void;

	@:overload(function (cursor:Dynamic):Void {})
	public static function setCursor():Void;

	@:overload(function (imageData:ImageData, hotx:Float, hoty:Float):Dynamic {})
	@:overload(function (filename:String, hotx:Float, hoty:Float):Dynamic {})
	public static function newCursor(fileData:FileData, hotx:Float, hoty:Float):Dynamic;

	public static function isVisible():Bool;

	public static function isGrabbed():Bool;

	public static function isDown(button:Float, ...varargs:Float):Bool;

	public static function isCursorSupported():Bool;

	public static function getY():Float;

	public static function getX():Float;

	public static function getSystemCursor(ctype:Dynamic):Dynamic;

	public static function getRelativeMode():Bool;

	public static function getPosition():MousePosition;

	public static function getCursor():Dynamic;

}

extern class Cursor extends Object {


	function new():Void;

	function getType():Dynamic;

}

extern enum CursorType {
	IMAGE;
	ARROW;
	IBEAM;
	WAIT;
	WAITARROW;
	CROSSHAIR;
	SIZENWSE;
	SIZENESW;
	SIZEWE;
	SIZENS;
	SIZEALL;
	NO;
	HAND;
}

