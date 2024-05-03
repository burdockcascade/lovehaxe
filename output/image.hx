// DO NOT EDIT THIS FILE
// GENERATED ON 2024-05-04 00:35:19

package love.image;

import haxe.extern.Rest;
import lua.Table;
import lua.UserData;

@:native("love.image")
extern class Image {

	@:overload
	public static function isCompressed(filename:String): Bool;

	@:overload
	public static function isCompressed(fileData:Dynamic): Bool;

	@:overload
	public static function newCompressedData(filename:String): Dynamic;

	@:overload
	public static function newCompressedData(fileData:Dynamic): Dynamic;

	@:overload
	public static function newImageData(width:Float, height:Float): Dynamic;

	@:overload
	public static function newImageData(width:Float, height:Float, format:Dynamic = 'rgba8', data:String = nil): Dynamic;

	@:overload
	public static function newImageData(width:Float, height:Float, data:String): Dynamic;

	@:overload
	public static function newImageData(filename:String): Dynamic;

	@:overload
	public static function newImageData(filedata:Dynamic): Dynamic;

}

extern class CompressedImageData extends Data {

	@:overload
	public static function getDimensions(): Dimensions;

	@:overload
	public static function getDimensions(level:Float): Dimensions;

	public static function getFormat(): Dynamic;

	@:overload
	public static function getHeight(): Float;

	@:overload
	public static function getHeight(level:Float): Float;

	public static function getMipmapCount(): Float;

	@:overload
	public static function getWidth(): Float;

	@:overload
	public static function getWidth(level:Float): Float;

}

extern class ImageData extends Data {

	@:overload
	public static function encode(format:Dynamic, filename:String = nil): Dynamic;

	@:overload
	public static function encode(outFile:String): Void;

	@:overload
	public static function encode(outFile:String, format:Dynamic): Void;

	public static function getDimensions(): Dimensions;

	public static function getHeight(): Float;

	public static function getPixel(x:Float, y:Float): Pixel;

	public static function getWidth(): Float;

	public static function mapPixel(pixelFunction:Dynamic, x:Float = 0, y:Float = 0, width:Float = ImageData:getWidth(), height:Float = ImageData:getHeight()): Void;

	public static function paste(source:Dynamic, dx:Float, dy:Float, sx:Float, sy:Float, sw:Float, sh:Float): Void;

	public static function setPixel(x:Float, y:Float, r:Float, g:Float, b:Float, a:Float): Void;

	public static function getFormat(): Dynamic;

}

enum abstract CompressedImageFormat {
	var DXT1 = "DXT1";
	var DXT3 = "DXT3";
	var DXT5 = "DXT5";
	var BC4 = "BC4";
	var BC4s = "BC4s";
	var BC5 = "BC5";
	var BC5s = "BC5s";
	var BC6h = "BC6h";
	var BC6hs = "BC6hs";
	var BC7 = "BC7";
	var ETC1 = "ETC1";
	var ETC2rgb = "ETC2rgb";
	var ETC2rgba = "ETC2rgba";
	var ETC2rgba1 = "ETC2rgba1";
	var EACr = "EACr";
	var EACrs = "EACrs";
	var EACrg = "EACrg";
	var EACrgs = "EACrgs";
	var PVR1rgb2 = "PVR1rgb2";
	var PVR1rgb4 = "PVR1rgb4";
	var PVR1rgba2 = "PVR1rgba2";
	var PVR1rgba4 = "PVR1rgba4";
	var ASTC4x4 = "ASTC4x4";
	var ASTC5x4 = "ASTC5x4";
	var ASTC5x5 = "ASTC5x5";
	var ASTC6x5 = "ASTC6x5";
	var ASTC6x6 = "ASTC6x6";
	var ASTC8x5 = "ASTC8x5";
	var ASTC8x6 = "ASTC8x6";
	var ASTC8x8 = "ASTC8x8";
	var ASTC10x5 = "ASTC10x5";
	var ASTC10x6 = "ASTC10x6";
	var ASTC10x8 = "ASTC10x8";
	var ASTC10x10 = "ASTC10x10";
	var ASTC12x10 = "ASTC12x10";
	var ASTC12x12 = "ASTC12x12";
}

enum abstract ImageFormat {
	var Tga = "tga";
	var Png = "png";
	var Jpg = "jpg";
	var Bmp = "bmp";
}

enum abstract PixelFormat {
	var Unknown = "unknown";
	var Normal = "normal";
	var Hdr = "hdr";
	var R8 = "r8";
	var Rg8 = "rg8";
	var Rgba8 = "rgba8";
	var Srgba8 = "srgba8";
	var R16 = "r16";
	var Rg16 = "rg16";
	var Rgba16 = "rgba16";
	var R16f = "r16f";
	var Rg16f = "rg16f";
	var Rgba16f = "rgba16f";
	var R32f = "r32f";
	var Rg32f = "rg32f";
	var Rgba32f = "rgba32f";
	var La8 = "la8";
	var Rgba4 = "rgba4";
	var Rgb5a1 = "rgb5a1";
	var Rgb565 = "rgb565";
	var Rgb10a2 = "rgb10a2";
	var Rg11b10f = "rg11b10f";
	var Stencil8 = "stencil8";
	var Depth16 = "depth16";
	var Depth24 = "depth24";
	var Depth32f = "depth32f";
	var Depth24stencil8 = "depth24stencil8";
	var Depth32fstencil8 = "depth32fstencil8";
	var DXT1 = "DXT1";
	var DXT3 = "DXT3";
	var DXT5 = "DXT5";
	var BC4 = "BC4";
	var BC4s = "BC4s";
	var BC5 = "BC5";
	var BC5s = "BC5s";
	var BC6h = "BC6h";
	var BC6hs = "BC6hs";
	var BC7 = "BC7";
	var ETC1 = "ETC1";
	var ETC2rgb = "ETC2rgb";
	var ETC2rgba = "ETC2rgba";
	var ETC2rgba1 = "ETC2rgba1";
	var EACr = "EACr";
	var EACrs = "EACrs";
	var EACrg = "EACrg";
	var EACrgs = "EACrgs";
	var PVR1rgb2 = "PVR1rgb2";
	var PVR1rgb4 = "PVR1rgb4";
	var PVR1rgba2 = "PVR1rgba2";
	var PVR1rgba4 = "PVR1rgba4";
	var ASTC4x4 = "ASTC4x4";
	var ASTC5x4 = "ASTC5x4";
	var ASTC5x5 = "ASTC5x5";
	var ASTC6x5 = "ASTC6x5";
	var ASTC6x6 = "ASTC6x6";
	var ASTC8x5 = "ASTC8x5";
	var ASTC8x6 = "ASTC8x6";
	var ASTC8x8 = "ASTC8x8";
	var ASTC10x5 = "ASTC10x5";
	var ASTC10x6 = "ASTC10x6";
	var ASTC10x8 = "ASTC10x8";
	var ASTC10x10 = "ASTC10x10";
	var ASTC12x10 = "ASTC12x10";
	var ASTC12x12 = "ASTC12x12";
}

