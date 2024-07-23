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
import love2d.Love.Data;

extern class SoundData extends Data {


	@:overload(function (i:Float, sample:Float):Void {})
	function setSample(i:Float, channel:Float, sample:Float):Void;

	function new():Void;

	function getSampleRate():Float;

	function getSampleCount():Float;

	@:overload(function (i:Float):Float {})
	function getSample(i:Float, channel:Float):Float;

	function getDuration():Float;

	function getChannelCount():Float;

	function getBitDepth():Float;

}

@:native("love.sound")
extern class LoveSound {


	@:overload(function (filename:String):SoundData {})
	@:overload(function (file:File):SoundData {})
	@:overload(function (decoder:Decoder):SoundData {})
	public static function newSoundData(samples:Float, rate:Float, bits:Float, channels:Float):SoundData;

	@:overload(function (file:File, buffer:Float):Decoder {})
	public static function newDecoder(filename:String, buffer:Float):Decoder;

}

extern class Decoder extends Object {


	function seek(offset:Float):Void;

	function new():Void;

	function getSampleRate():Float;

	function getDuration():Float;

	function getChannelCount():Float;

	function getBitDepth():Float;

	function decode():SoundData;

	function clone():Decoder;

}

