/*
 * This file was generated by the LOVE2D Haxe bindings generator for Love2D v11.5.
 * Do not modify this file directly.
 * 2024-07-24 00:28:14
 */

package love2d;

import lua.Table;
import lua.UserData;
import love2d.Love.Object;
import love2d.FileSystem.File;

extern class VideoStream extends Object {


	function tell():Float;

	function seek(offset:Float):Void;

	function rewind():Void;

	function play():Void;

	function pause():Void;

	function new():Void;

	function isPlaying():Bool;

	function getFilename():String;

}

@:native("love.video")
extern class LoveVideo {


	@:overload(function (filename:String):VideoStream {})
	public static function newVideoStream(file:File):VideoStream;

}

