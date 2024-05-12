/*
 * This file was generated by the LOVE2D Haxe bindings generator for Love2D v11.5.
 * Do not modify this file directly.
 * 2024-05-12 18:21:25
 */

package love;

import lua.Table;
import lua.UserData;
import love.Data.CompressedData;
import love.Love2D.Object;
import love.Love2D.Data;

extern class RandomGenerator extends Object {

	function getSeed():Seed;

	function getState():String;

	@:overload(function ():Float {})
	@:overload(function (max:Float):Float {})
	function random(min:Float, max:Float):Float;

	function randomNormal(stddev:Float, mean:Float):Float;

	@:overload(function (seed:Float):Void {})
	function setSeed(low:Float, high:Float):Void;

	function setState(state:String):Void;

}

@:multiReturn
extern class ControlPoint {

	public var x:Float;
	public var y:Float;
}

@:multiReturn
extern class LinearToGammaResult {

	public var cr:Float;
	public var cg:Float;
	public var cb:Float;
}

@:multiReturn
extern class ColorToBytesResult {

	public var rb:Float;
	public var gb:Float;
	public var bb:Float;
	public var ab:Float;
}

@:multiReturn
extern class RandomSeed {

	public var low:Float;
	public var high:Float;
}

@:multiReturn
extern class InverseTransformPointResult {

	public var globalX:Float;
	public var globalY:Float;
}

extern class MathModule {

	public static function colorFromBytes(rb:Float, gb:Float, bb:Float, ab:Float):ColorFromBytesResult;

	public static function colorToBytes(r:Float, g:Float, b:Float, a:Float):ColorToBytesResult;

	@:overload(function (rawstring:String, format:CompressedDataFormat, level:Float):CompressedData {})
	public static function compress(data:Data, format:CompressedDataFormat, level:Float):CompressedData;

	@:overload(function (compressedData:CompressedData):String {})
	@:overload(function (compressedstring:String, format:CompressedDataFormat):String {})
	public static function decompress(data:Data, format:CompressedDataFormat):String;

	@:overload(function (r:Float, g:Float, b:Float):GammaToLinearResult {})
	@:overload(function (color:Table<Dynamic,Dynamic>):GammaToLinearResult {})
	public static function gammaToLinear(c:Float):Float;

	public static function getRandomSeed():RandomSeed;

	public static function getRandomState():String;

	@:overload(function (vertices:Table<Dynamic,Dynamic>):Bool {})
	public static function isConvex(x1:Float, y1:Float, x2:Float, y2:Float, x3:Float, y3:Float):Bool;

	@:overload(function (lr:Float, lg:Float, lb:Float):LinearToGammaResult {})
	@:overload(function (color:Table<Dynamic,Dynamic>):LinearToGammaResult {})
	public static function linearToGamma(lc:Float):Float;

	@:overload(function (vertices:Table<Dynamic,Dynamic>):BezierCurve {})
	public static function newBezierCurve(x1:Float, y1:Float, x2:Float, y2:Float, x3:Float, y3:Float):BezierCurve;

	@:overload(function ():RandomGenerator {})
	@:overload(function (seed:Float):RandomGenerator {})
	public static function newRandomGenerator(low:Float, high:Float):RandomGenerator;

	@:overload(function ():Transform {})
	public static function newTransform(x:Float, y:Float, angle:Float, sx:Float, sy:Float, ox:Float, oy:Float, kx:Float, ky:Float):Transform;

	@:overload(function (x:Float):Float {})
	@:overload(function (x:Float, y:Float):Float {})
	@:overload(function (x:Float, y:Float, z:Float):Float {})
	public static function noise(x:Float, y:Float, z:Float, w:Float):Float;

	@:overload(function ():Float {})
	@:overload(function (max:Float):Float {})
	public static function random(min:Float, max:Float):Float;

	public static function randomNormal(stddev:Float, mean:Float):Float;

	@:overload(function (seed:Float):Void {})
	public static function setRandomSeed(low:Float, high:Float):Void;

	public static function setRandomState(state:String):Void;

	@:overload(function (polygon:Table<Dynamic,Dynamic>):Table<Dynamic,Dynamic> {})
	public static function triangulate(x1:Float, y1:Float, x2:Float, y2:Float, x3:Float, y3:Float):Table<Dynamic,Dynamic>;

}

extern class Transform extends Object {

	function apply(other:Transform):Transform;

	function clone():Transform;

	function getMatrix():Matrix;

	function inverse():Transform;

	function inverseTransformPoint(localX:Float, localY:Float):InverseTransformPointResult;

	function isAffine2DTransform():Bool;

	function reset():Transform;

	function rotate(angle:Float):Transform;

	function scale(sx:Float, sy:Float):Transform;

	@:overload(function (e1_1:Float, e1_2:Float, e1_3:Float, e1_4:Float, e2_1:Float, e2_2:Float, e2_3:Float, e2_4:Float, e3_1:Float, e3_2:Float, e3_3:Float, e3_4:Float, e4_1:Float, e4_2:Float, e4_3:Float, e4_4:Float):Transform {})
	@:overload(function (layout:MatrixLayout, e1_1:Float, e1_2:Float, e1_3:Float, e1_4:Float, e2_1:Float, e2_2:Float, e2_3:Float, e2_4:Float, e3_1:Float, e3_2:Float, e3_3:Float, e3_4:Float, e4_1:Float, e4_2:Float, e4_3:Float, e4_4:Float):Transform {})
	@:overload(function (layout:MatrixLayout, matrix:Table<Dynamic,Dynamic>):Transform {})
	function setMatrix(layout:MatrixLayout, matrix:Table<Dynamic,Dynamic>):Transform;

	function setTransformation(x:Float, y:Float, angle:Float, sx:Float, sy:Float, ox:Float, oy:Float, kx:Float, ky:Float):Transform;

	function shear(kx:Float, ky:Float):Transform;

	function transformPoint(globalX:Float, globalY:Float):TransformPointResult;

	function translate(dx:Float, dy:Float):Transform;

}

@:multiReturn
extern class Matrix {

	public var e1_1:Float;
	public var e1_2:Float;
	public var e1_3:Float;
	public var e1_4:Float;
	public var e2_1:Float;
	public var e2_2:Float;
	public var e2_3:Float;
	public var e2_4:Float;
	public var e3_1:Float;
	public var e3_2:Float;
	public var e3_3:Float;
	public var e3_4:Float;
	public var e4_1:Float;
	public var e4_2:Float;
	public var e4_3:Float;
	public var e4_4:Float;
}

@:multiReturn
extern class GammaToLinearResult {

	public var lr:Float;
	public var lg:Float;
	public var lb:Float;
}

@:multiReturn
extern class ColorFromBytesResult {

	public var r:Float;
	public var g:Float;
	public var b:Float;
	public var a:Float;
}

@:multiReturn
extern class TransformPointResult {

	public var localX:Float;
	public var localY:Float;
}

@:multiReturn
extern class Seed {

	public var low:Float;
	public var high:Float;
}

extern class BezierCurve extends Object {

	function evaluate(t:Float):EvaluateResult;

	function getControlPoint(i:Float):ControlPoint;

	function getControlPointCount():Float;

	function getDegree():Float;

	function getDerivative():BezierCurve;

	function getSegment(startpoint:Float, endpoint:Float):BezierCurve;

	function insertControlPoint(x:Float, y:Float, i:Float):Void;

	function removeControlPoint(index:Float):Void;

	function render(depth:Float):Table<Dynamic,Dynamic>;

	function renderSegment(startpoint:Float, endpoint:Float, depth:Float):Table<Dynamic,Dynamic>;

	function rotate(angle:Float, ox:Float, oy:Float):Void;

	function scale(s:Float, ox:Float, oy:Float):Void;

	function setControlPoint(i:Float, x:Float, y:Float):Void;

	function translate(dx:Float, dy:Float):Void;

}

@:multiReturn
extern class EvaluateResult {

	public var x:Float;
	public var y:Float;
}

extern enum MatrixLayout {
	ROW;
	COLUMN;
}

