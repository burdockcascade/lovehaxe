/*
 * This file was generated by the LOVE2D Haxe bindings generator for Love2D v11.4.
 * Do not modify this file directly.
 * 2024-05-06 00:46:03
 */

package love;

import lua.Table;
import love.Image.ImageData;

extern class Position {
	public var x:Float;
	public var y:Float;
	public var displayindex:Float;
}

extern class FromPixelsResult {
	public var x:Float;
	public var y:Float;
}

extern class WindowModule {
	public static function close():Void;
	public static function fromPixels(pixelvalue:Float):Float;
	public static function fromPixels(px:Float, py:Float):FromPixelsResult;
	public static function getDPIScale():Float;
	public static function getDesktopDimensions(displayindex:Float):DesktopDimensions;
	public static function getDisplayCount():Float;
	public static function getDisplayName(displayindex:Float):String;
	public static function getDisplayOrientation(displayindex:Float):DisplayOrientation;
	public static function getFullscreen():Fullscreen;
	public static function getFullscreenModes(displayindex:Float):Table<Dynamic,Dynamic>;
	public static function getIcon():ImageData;
	public static function getMode():Mode;
	public static function getPosition():Position;
	public static function getSafeArea():SafeArea;
	public static function getTitle():String;
	public static function getVSync():Float;
	public static function hasFocus():Bool;
	public static function hasMouseFocus():Bool;
	public static function isDisplaySleepEnabled():Bool;
	public static function isMaximized():Bool;
	public static function isMinimized():Bool;
	public static function isOpen():Bool;
	public static function isVisible():Bool;
	public static function maximize():Void;
	public static function minimize():Void;
	public static function requestAttention(continuous:Bool):Void;
	public static function restore():Void;
	public static function setDisplaySleepEnabled(enable:Bool):Void;
	public static function setFullscreen(fullscreen:Bool):Bool;
	public static function setFullscreen(fullscreen:Bool, fstype:FullscreenType):Bool;
	public static function setIcon(imagedata:ImageData):Bool;
	public static function setMode(width:Float, height:Float, flags:Table<Dynamic,Dynamic>):Bool;
	public static function setPosition(x:Float, y:Float, displayindex:Float):Void;
	public static function setTitle(title:String):Void;
	public static function setVSync(vsync:Float):Void;
	public static function showMessageBox(title:String, message:String, type:MessageBoxType, attachtowindow:Bool):Bool;
	public static function showMessageBox(title:String, message:String, buttonlist:Table<Dynamic,Dynamic>, type:MessageBoxType, attachtowindow:Bool):Float;
	public static function toPixels(value:Float):Float;
	public static function toPixels(x:Float, y:Float):ToPixelsResult;
	public static function updateMode(width:Float, height:Float, settings:Table<Dynamic,Dynamic>):Bool;
}

extern class ToPixelsResult {
	public var px:Float;
	public var py:Float;
}

extern class Mode {
	public var width:Float;
	public var height:Float;
	public var flags:Table<Dynamic,Dynamic>;
}

extern class SafeArea {
	public var x:Float;
	public var y:Float;
	public var w:Float;
	public var h:Float;
}

extern class Fullscreen {
	public var fullscreen:Bool;
	public var fstype:FullscreenType;
}

extern class DesktopDimensions {
	public var width:Float;
	public var height:Float;
}

extern enum MessageBoxType {
	INFO;
	WARNING;
	ERROR;
}

extern enum DisplayOrientation {
	UNKNOWN;
	LANDSCAPE;
	LANDSCAPEFLIPPED;
	PORTRAIT;
	PORTRAITFLIPPED;
}

extern enum FullscreenType {
	DESKTOP;
	EXCLUSIVE;
	NORMAL;
}

