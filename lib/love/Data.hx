/*
 * This file was generated by the LOVE2D Haxe bindings generator for Love2D v11.5.
 * Do not modify this file directly.
 * 2024-05-12 18:21:25
 */

package love;

import lua.Table;
import lua.UserData;
import love.Love2D.Object;
import love.Love2D.Data;

extern class ByteData extends Object {

}

extern class CompressedData extends Data {

	function getFormat():CompressedDataFormat;

}

extern class DataModule {

	@:overload(function (container:ContainerType, format:CompressedDataFormat, rawstring:String, level:Float):String {})
	public static function compress(container:ContainerType, format:CompressedDataFormat, data:Data, level:Float):String;

	@:overload(function (container:ContainerType, format:EncodeFormat, sourceString:String):String {})
	public static function decode(container:ContainerType, format:EncodeFormat, sourceData:Data):String;

	@:overload(function (container:ContainerType, compressedData:CompressedData):String {})
	@:overload(function (container:ContainerType, format:CompressedDataFormat, compressedString:String):String {})
	public static function decompress(container:ContainerType, format:CompressedDataFormat, data:Data):String;

	@:overload(function (container:ContainerType, format:EncodeFormat, sourceString:String, linelength:Float):String {})
	public static function encode(container:ContainerType, format:EncodeFormat, sourceData:Data, linelength:Float):String;

	public static function getPackedSize(format:String):Float;

	@:overload(function (hashFunction:HashFunction, string:String):String {})
	public static function hash(hashFunction:HashFunction, data:Data):String;

	@:overload(function (datastring:String):ByteData {})
	@:overload(function (Data:Data, offset:Float, size:Float):ByteData {})
	public static function newByteData(size:Float):ByteData;

	public static function newDataView(data:Data, offset:Float, size:Float):Data;

	public static function pack(container:ContainerType, format:String, v1:String, ...varargs:String):String;

	@:overload(function (format:String, datastring:String, pos:Float):UnpackResult {})
	public static function unpack(format:String, data:Data, pos:Float):UnpackResult;

}

@:multiReturn
extern class UnpackResult {

	public var v1:String;
	// Skipping field ... of type String.
	public var index:Float;
}

extern enum ContainerType {
	DATA;
	STRING;
}

extern enum EncodeFormat {
	BASE64;
	HEX;
}

extern enum HashFunction {
	MD5;
	SHA1;
	SHA224;
	SHA256;
	SHA384;
	SHA512;
}

extern enum CompressedDataFormat {
	LZ4;
	ZLIB;
	GZIP;
	DEFLATE;
}

