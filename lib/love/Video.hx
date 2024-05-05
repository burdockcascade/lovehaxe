/*
 * This file was generated by the LOVE2D Haxe bindings generator for Love2D v11.4.
 * Do not modify this file directly.
 * 2024-05-06 00:46:03
 */

package love;

import lua.Table;
import love.Filesystem.File;
import love.Love2D.Object;

extern class VideoStream extends Object {
	public static function getFilename():String;
	public static function isPlaying():Bool;
	public static function pause():Void;
	public static function play():Void;
	public static function rewind():Void;
	public static function seek(offset:Float):Void;
	public static function tell():Float;
}

extern class VideoModule {
	public static function newVideoStream(filename:String):VideoStream;
	public static function newVideoStream(file:File):VideoStream;
}

