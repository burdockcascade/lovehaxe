// DO NOT EDIT THIS FILE
// GENERATED ON 2024-05-04 00:04:23

package love.data;

import haxe.extern.Rest;
import lua.Table;
import lua.UserData;

@:native("love.data")
extern class Data {

	@:overload
	public static function compress(container:Dynamic, format:Dynamic, rawstring:String, level:Float = Dynamic): Dynamic;

	@:overload
	public static function compress(container:Dynamic, format:Dynamic, data:Dynamic, level:Float = Dynamic): Dynamic;

	@:overload
	public static function decode(container:Dynamic, format:Dynamic, sourceString:String): Dynamic;

	@:overload
	public static function decode(container:Dynamic, format:Dynamic, sourceData:Dynamic): Dynamic;

	@:overload
	public static function decompress(container:Dynamic, compressedData:Dynamic): Dynamic;

	@:overload
	public static function decompress(container:Dynamic, format:Dynamic, compressedString:String): Dynamic;

	@:overload
	public static function decompress(container:Dynamic, format:Dynamic, data:Dynamic): Dynamic;

	@:overload
	public static function encode(container:Dynamic, format:Dynamic, sourceString:String, linelength:Float = Dynamic): Dynamic;

	@:overload
	public static function encode(container:Dynamic, format:Dynamic, sourceData:Dynamic, linelength:Float = Dynamic): Dynamic;

	public static function getPackedSize(format:String): Float;

	@:overload
	public static function hash(hashFunction:Dynamic, string:String): String;

	@:overload
	public static function hash(hashFunction:Dynamic, data:Dynamic): String;

	@:overload
	public static function newByteData(datastring:String): Dynamic;

	@:overload
	public static function newByteData(Data:Dynamic, offset:Float = Dynamic, size:Float = Dynamic): Dynamic;

	@:overload
	public static function newByteData(size:Float): Dynamic;

	public static function newDataView(data:Dynamic, offset:Float, size:Float): Dynamic;

	public static function pack(container:Dynamic, format:String, v1:Dynamic, ...:Dynamic): Dynamic;

	@:overload
	public static function unpack(format:String, datastring:String, pos:Float = Dynamic): UnpackResult;

	@:overload
	public static function unpack(format:String, data:Dynamic, pos:Float = Dynamic): UnpackResult;

}

extern public class UnpackResult {
	public var v1:Dynamic;
	public var ...:Dynamic;
	public var index:Float;
}

extern public class UnpackResult {
	public var v1:Dynamic;
	public var ...:Dynamic;
	public var index:Float;
}

extern class ByteData extends Object {

}

extern class CompressedData extends Data {

	public static function getFormat(): Dynamic;

}

enum abstract CompressedDataFormat {
	var Lz4 = "lz4";
	var Zlib = "zlib";
	var Gzip = "gzip";
	var Deflate = "deflate";
}

enum abstract ContainerType {
	var Data = "data";
	var String = "string";
}

enum abstract EncodeFormat {
	var Base64 = "base64";
	var Hex = "hex";
}

enum abstract HashFunction {
	var Md5 = "md5";
	var Sha1 = "sha1";
	var Sha224 = "sha224";
	var Sha256 = "sha256";
	var Sha384 = "sha384";
	var Sha512 = "sha512";
}
