/*
 * This file was generated by the LOVE2D Haxe bindings generator for Love2D v11.5.
 * Do not modify this file directly.
 * 2024-07-24 00:05:11
 */

package love2d;

import lua.Table;
import lua.UserData;
import love2d.Love.Object;
import love2d.Love.Data;

@:native("love.data")
extern class LoveData {


	@:overload(function (format:String, datastring:String, pos:Float):Array<Dynamic> {})
	public static function unpack(format:String, data:Data, pos:Float):Array<Dynamic>;

	public static function pack(container:ContainerType, format:String, v1:Dynamic, ...varargs:Dynamic):Dynamic;

	public static function newDataView(data:Data, offset:Float, size:Float):Data;

	@:overload(function (datastring:String):ByteData {})
	@:overload(function (Data:Data, offset:Float, size:Float):ByteData {})
	public static function newByteData(size:Float):ByteData;

	@:overload(function (hashFunction:HashFunction, string:String):String {})
	public static function hash(hashFunction:HashFunction, data:Data):String;

	public static function getPackedSize(format:String):Float;

	@:overload(function (container:ContainerType, format:Dynamic, sourceString:String, linelength:Float):Dynamic {})
	public static function encode(container:ContainerType, format:Dynamic, sourceData:Data, linelength:Float):Dynamic;

	@:overload(function (container:ContainerType, compressedData:CompressedData):Dynamic {})
	@:overload(function (container:ContainerType, format:Dynamic, compressedString:String):Dynamic {})
	public static function decompress(container:ContainerType, format:Dynamic, data:Data):Dynamic;

	@:overload(function (container:ContainerType, format:Dynamic, sourceString:String):Dynamic {})
	public static function decode(container:ContainerType, format:Dynamic, sourceData:Data):Dynamic;

	@:overload(function (container:ContainerType, format:Dynamic, rawstring:String, level:Float):Dynamic {})
	public static function compress(container:ContainerType, format:Dynamic, data:Data, level:Float):Dynamic;

}

extern class CompressedData extends Data {


	function new():Void;

	function getFormat():Dynamic;

}

extern class ByteData extends Object {


	function new():Void;

}

extern enum HashFunction {
	MD5;
	SHA1;
	SHA224;
	SHA256;
	SHA384;
	SHA512;
}

extern enum EncodeFormat {
	BASE64;
	HEX;
}

extern enum ContainerType {
	DATA;
	STRING;
}

extern enum CompressedDataFormat {
	LZ4;
	ZLIB;
	GZIP;
	DEFLATE;
}
