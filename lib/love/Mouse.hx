/*
 * This file was generated by the LOVE2D Haxe bindings generator for Love2D v11.4.
 * Do not modify this file directly.
 * 2024-05-05 23:35:57
 */

package love;

import lua.Table;
import love.Love2D.Object;
import love.Filesystem.FileData;
import love.Image.ImageData;

extern class Position {
	public var x:Float;
	public var y:Float;
}

extern class Mouse {
	public static function getCursor():Cursor;
	public static function getPosition():Position;
	public static function getRelativeMode():Bool;
	public static function getSystemCursor(ctype:CursorType):Cursor;
	public static function getX():Float;
	public static function getY():Float;
	public static function isCursorSupported():Bool;
	public static function isDown(button:Float, ...:Float):Bool;
	public static function isGrabbed():Bool;
	public static function isVisible():Bool;
	public static function newCursor(imageData:ImageData, hotx:Float = 0, hoty:Float = 0):Cursor;
	public static function setCursor(cursor:Cursor):Void;
	public static function setGrabbed(grab:Bool):Void;
	public static function setPosition(x:Float, y:Float):Void;
	public static function setRelativeMode(enable:Bool):Void;
	public static function setVisible(visible:Bool):Void;
	public static function setX(x:Float):Void;
	public static function setY(y:Float):Void;
}

extern class Cursor extends Object {
	public static function getType():CursorType;
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

