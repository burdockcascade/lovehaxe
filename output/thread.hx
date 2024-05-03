// DO NOT EDIT THIS FILE
// GENERATED ON 2024-05-04 00:35:19

package love.thread;

import haxe.extern.Rest;
import lua.Table;
import lua.UserData;

@:native("love.thread")
extern class Thread {

	public static function getChannel(name:String): Dynamic;

	public static function newChannel(): Dynamic;

	@:overload
	public static function newThread(filename:String): Dynamic;

	@:overload
	public static function newThread(fileData:Dynamic): Dynamic;

	@:overload
	public static function newThread(codestring:String): Dynamic;

}

extern class Channel extends Object {

	public static function clear(): Void;

	@:overload
	public static function demand(): Dynamic;

	@:overload
	public static function demand(timeout:Float): Dynamic;

	public static function getCount(): Float;

	public static function hasRead(id:Float): Bool;

	public static function peek(): Dynamic;

	public static function performAtomic(func:Dynamic, arg1:Dynamic, ...:Dynamic): PerformAtomic;

	public static function pop(): Dynamic;

	public static function push(value:Dynamic): Float;

	@:overload
	public static function supply(value:Dynamic): Bool;

	@:overload
	public static function supply(value:Dynamic, timeout:Float): Bool;

}

extern class Thread extends Object {

	public static function getError(): String;

	public static function isRunning(): Bool;

	@:overload
	public static function start(): Void;

	@:overload
	public static function start(arg1:Dynamic, arg2:Dynamic, ...:Dynamic): Void;

	public static function wait(): Void;

}

