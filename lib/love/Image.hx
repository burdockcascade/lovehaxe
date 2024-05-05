/*
 * This file was generated by the LOVE2D Haxe bindings generator for Love2D v11.4.
 * Do not modify this file directly.
 * 2024-05-05 23:35:57
 */

package love;

import lua.Table;
import love.Data.Data;
import love.Filesystem.FileData;

extern class Dimensions {
	public var width:Float;
	public var height:Float;
}

extern class Pixel {
	public var r:Float;
	public var g:Float;
	public var b:Float;
	public var a:Float;
}

extern class Image {
	public static function isCompressed(filename:String):Bool;
	public static function newCompressedData(filename:String):CompressedImageData;
	public static function newImageData(width:Float, height:Float):ImageData;
}

extern class ImageData extends Data {
	public static function encode(format:ImageFormat, filename:String = Null):FileData;
	public static function getDimensions():Dimensions;
	public static function getHeight():Float;
	public static function getPixel(x:Float, y:Float):Pixel;
	public static function getWidth():Float;
	public static function mapPixel(pixelFunction:Function, x:Float = 0, y:Float = 0, width:Float = ImageData:getWidth(), height:Float = ImageData:getHeight()):Void;
	public static function paste(source:ImageData, dx:Float, dy:Float, sx:Float, sy:Float, sw:Float, sh:Float):Void;
	public static function setPixel(x:Float, y:Float, r:Float, g:Float, b:Float, a:Float):Void;
	public static function getFormat():PixelFormat;
}

extern class CompressedImageData extends Data {
	public static function getDimensions():Dimensions;
	public static function getFormat():CompressedImageFormat;
	public static function getHeight():Float;
	public static function getMipmapCount():Float;
	public static function getWidth():Float;
}

extern enum CompressedImageFormat {
	DXT1;
	DXT3;
	DXT5;
	BC4;
	BC4S;
	BC5;
	BC5S;
	BC6H;
	BC6HS;
	BC7;
	ETC1;
	ETC2RGB;
	ETC2RGBA;
	ETC2RGBA1;
	EACR;
	EACRS;
	EACRG;
	EACRGS;
	PVR1RGB2;
	PVR1RGB4;
	PVR1RGBA2;
	PVR1RGBA4;
	ASTC4X4;
	ASTC5X4;
	ASTC5X5;
	ASTC6X5;
	ASTC6X6;
	ASTC8X5;
	ASTC8X6;
	ASTC8X8;
	ASTC10X5;
	ASTC10X6;
	ASTC10X8;
	ASTC10X10;
	ASTC12X10;
	ASTC12X12;
}

extern enum ImageFormat {
	TGA;
	PNG;
	JPG;
	BMP;
}

extern enum PixelFormat {
	UNKNOWN;
	NORMAL;
	HDR;
	R8;
	RG8;
	RGBA8;
	SRGBA8;
	R16;
	RG16;
	RGBA16;
	R16F;
	RG16F;
	RGBA16F;
	R32F;
	RG32F;
	RGBA32F;
	LA8;
	RGBA4;
	RGB5A1;
	RGB565;
	RGB10A2;
	RG11B10F;
	STENCIL8;
	DEPTH16;
	DEPTH24;
	DEPTH32F;
	DEPTH24STENCIL8;
	DEPTH32FSTENCIL8;
	DXT1;
	DXT3;
	DXT5;
	BC4;
	BC4S;
	BC5;
	BC5S;
	BC6H;
	BC6HS;
	BC7;
	ETC1;
	ETC2RGB;
	ETC2RGBA;
	ETC2RGBA1;
	EACR;
	EACRS;
	EACRG;
	EACRGS;
	PVR1RGB2;
	PVR1RGB4;
	PVR1RGBA2;
	PVR1RGBA4;
	ASTC4X4;
	ASTC5X4;
	ASTC5X5;
	ASTC6X5;
	ASTC6X6;
	ASTC8X5;
	ASTC8X6;
	ASTC8X8;
	ASTC10X5;
	ASTC10X6;
	ASTC10X8;
	ASTC10X10;
	ASTC12X10;
	ASTC12X12;
}

