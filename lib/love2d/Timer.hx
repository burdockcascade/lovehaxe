/*
 * This file was generated by the LOVE2D Haxe bindings generator for Love2D v11.5.
 * Do not modify this file directly.
 * 2024-07-24 00:28:14
 */

package love2d;

import lua.Table;
import lua.UserData;

@:native("love.timer")
extern class LoveTimer {


	public static function step():Float;

	public static function sleep(s:Float):Void;

	public static function getTime():Float;

	public static function getFPS():Float;

	public static function getDelta():Float;

	public static function getAverageDelta():Float;

}

