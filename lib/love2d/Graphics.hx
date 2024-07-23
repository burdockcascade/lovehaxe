/*
 * This file was generated by the LOVE2D Haxe bindings generator for Love2D v11.5.
 * Do not modify this file directly.
 * 2024-07-24 00:05:11
 */

package love2d;

import lua.Table;
import lua.UserData;
import love2d.Video.VideoStream;
import love2d.Audio.Source;
import love2d.Font.Rasterizer;
import love2d.Love.Object;
import love2d.Math.MatrixLayout;
import love2d.Image.ImageData;
import love2d.Font.HintingMode;
import love2d.FileSystem.FileData;
import love2d.FileSystem.File;
import love2d.Love.Data;
import love2d.Image.CompressedImageData;
import love2d.Thread.Channel;

@:multiReturn
extern class VideoFilter {

	public var min:FilterMode;
	public var mag:FilterMode;
	public var anisotropy:Float;

}

@:multiReturn
extern class VideoDimensions {

	public var width:Float;
	public var height:Float;

}

extern class Video extends Drawable {


	function tell():Float;

	function setSource(source:Source):Void;

	function setFilter(min:FilterMode, mag:FilterMode, anisotropy:Float):Void;

	function seek(offset:Float):Void;

	function rewind():Void;

	function play():Void;

	function pause():Void;

	function new():Void;

	function isPlaying():Bool;

	function getWidth():Float;

	function getStream():VideoStream;

	function getSource():Source;

	function getHeight():Float;

	function getFilter():VideoFilter;

	function getDimensions():VideoDimensions;

}

@:multiReturn
extern class TextureWrap {

	public var vert:WrapMode;
	public var horiz:WrapMode;
	public var depth:WrapMode;

}

@:multiReturn
extern class TexturePixelDimensions {

	public var pixelwidth:Float;
	public var pixelheight:Float;

}

@:multiReturn
extern class TextureMipmapFilter {

	public var sharpness:Float;
	public var mode:FilterMode;

}

@:multiReturn
extern class TextureFilter {

	public var min:FilterMode;
	public var mag:FilterMode;
	public var anisotropy:Float;

}

@:multiReturn
extern class TextureDimensions {

	public var width:Float;
	public var height:Float;

}

extern class Texture extends Drawable {


	function setWrap(horiz:WrapMode, vert:WrapMode, depth:WrapMode):Void;

	@:overload(function (filtermode:FilterMode, sharpness:Float):Void {})
	function setMipmapFilter():Void;

	function setFilter(min:FilterMode, mag:FilterMode, anisotropy:Float):Void;

	function setDepthSampleMode(compare:CompareMode):Void;

	function new():Void;

	function isReadable():Bool;

	function getWrap():TextureWrap;

	function getWidth():Float;

	function getTextureType():TextureType;

	function getPixelWidth():Float;

	function getPixelHeight():Float;

	function getPixelDimensions():TexturePixelDimensions;

	function getMipmapFilter():TextureMipmapFilter;

	function getMipmapCount():Float;

	function getLayerCount():Float;

	function getHeight():Float;

	function getFormat():Dynamic;

	function getFilter():TextureFilter;

	function getDimensions():TextureDimensions;

	function getDepthSampleMode():CompareMode;

	function getDepth():Float;

	function getDPIScale():Float;

}

@:multiReturn
extern class TextDimensions {

	public var width:Float;
	public var height:Float;

}

extern class Text extends Drawable {


	@:overload(function (textstring:String, wraplimit:Float, align:AlignMode):Void {})
	function setf(coloredtext:Table<Dynamic,Dynamic>, wraplimit:Float, align:AlignMode):Void;

	function setFont(font:Font):Void;

	@:overload(function (textstring:String):Void {})
	function set(coloredtext:Table<Dynamic,Dynamic>):Void;

	function new():Void;

	@:overload(function ():Float {})
	function getWidth(index:Float):Float;

	@:overload(function ():Float {})
	function getHeight(index:Float):Float;

	function getFont():Font;

	@:overload(function ():TextDimensions {})
	function getDimensions(index:Float):TextDimensions;

	function clear():Void;

	@:overload(function (textstring:String, wraplimit:Float, align:AlignMode, x:Float, y:Float, angle:Float, sx:Float, sy:Float, ox:Float, oy:Float, kx:Float, ky:Float):Float {})
	function addf(coloredtext:Table<Dynamic,Dynamic>, wraplimit:Float, align:AlignMode, x:Float, y:Float, angle:Float, sx:Float, sy:Float, ox:Float, oy:Float, kx:Float, ky:Float):Float;

	@:overload(function (textstring:String, x:Float, y:Float, angle:Float, sx:Float, sy:Float, ox:Float, oy:Float, kx:Float, ky:Float):Float {})
	function add(coloredtext:Table<Dynamic,Dynamic>, x:Float, y:Float, angle:Float, sx:Float, sy:Float, ox:Float, oy:Float, kx:Float, ky:Float):Float;

}

@:multiReturn
extern class SpriteBatchColor {

	public var r:Float;
	public var g:Float;
	public var b:Float;
	public var a:Float;

}

extern class SpriteBatch extends Drawable {


	function setTexture(texture:Texture):Void;

	@:overload(function (spriteindex:Float, layerindex:Float, x:Float, y:Float, r:Float, sx:Float, sy:Float, ox:Float, oy:Float, kx:Float, ky:Float):Void {})
	@:overload(function (spriteindex:Float, layerindex:Float, quad:Quad, x:Float, y:Float, r:Float, sx:Float, sy:Float, ox:Float, oy:Float, kx:Float, ky:Float):Void {})
	@:overload(function (spriteindex:Float, layerindex:Float, transform:Dynamic):Void {})
	function setLayer(spriteindex:Float, layerindex:Float, quad:Quad, transform:Dynamic):Void;

	@:overload(function (start:Float, count:Float):Void {})
	function setDrawRange():Void;

	@:overload(function (r:Float, g:Float, b:Float, a:Float):Void {})
	function setColor():Void;

	@:overload(function (spriteindex:Float, x:Float, y:Float, r:Float, sx:Float, sy:Float, ox:Float, oy:Float, kx:Float, ky:Float):Void {})
	function set(spriteindex:Float, quad:Quad, x:Float, y:Float, r:Float, sx:Float, sy:Float, ox:Float, oy:Float, kx:Float, ky:Float):Void;

	function new():Void;

	function getTexture():Texture;

	function getCount():Float;

	function getColor():SpriteBatchColor;

	function getBufferSize():Float;

	function flush():Void;

	function clear():Void;

	function attachAttribute(name:String, mesh:Mesh):Void;

	@:overload(function (layerindex:Float, x:Float, y:Float, r:Float, sx:Float, sy:Float, ox:Float, oy:Float, kx:Float, ky:Float):Float {})
	@:overload(function (layerindex:Float, quad:Quad, x:Float, y:Float, r:Float, sx:Float, sy:Float, ox:Float, oy:Float, kx:Float, ky:Float):Float {})
	@:overload(function (layerindex:Float, transform:Dynamic):Float {})
	function addLayer(layerindex:Float, quad:Quad, transform:Dynamic):Float;

	@:overload(function (x:Float, y:Float, r:Float, sx:Float, sy:Float, ox:Float, oy:Float, kx:Float, ky:Float):Float {})
	function add(quad:Quad, x:Float, y:Float, r:Float, sx:Float, sy:Float, ox:Float, oy:Float, kx:Float, ky:Float):Float;

}

extern class Shader extends Object {


	function sendColor(name:String, color:Table<Dynamic,Dynamic>, ...varargs:Table<Dynamic,Dynamic>):Void;

	@:overload(function (name:String, number:Float, ...varargs:Float):Void {})
	@:overload(function (name:String, vector:Table<Dynamic,Dynamic>, ...varargs:Table<Dynamic,Dynamic>):Void {})
	@:overload(function (name:String, matrix:Table<Dynamic,Dynamic>, ...varargs:Table<Dynamic,Dynamic>):Void {})
	@:overload(function (name:String, texture:Texture):Void {})
	@:overload(function (name:String, boolean:Bool, ...varargs:Bool):Void {})
	@:overload(function (name:String, matrixlayout:MatrixLayout, matrix:Table<Dynamic,Dynamic>, ...varargs:Table<Dynamic,Dynamic>):Void {})
	@:overload(function (name:String, data:Data, offset:Float, size:Float):Void {})
	@:overload(function (name:String, data:Data, matrixlayout:MatrixLayout, offset:Float, size:Float):Void {})
	function send(name:String, matrixlayout:MatrixLayout, data:Data, offset:Float, size:Float):Void;

	function new():Void;

	function hasUniform(name:String):Bool;

	function getWarnings():String;

}

@:multiReturn
extern class QuadViewport {

	public var y:Float;
	public var x:Float;
	public var w:Float;
	public var h:Float;

}

@:multiReturn
extern class QuadTextureDimensions {

	public var sw:Float;
	public var sh:Float;

}

extern class Quad extends Object {


	function setViewport(x:Float, y:Float, w:Float, h:Float, sw:Float, sh:Float):Void;

	function new():Void;

	function getViewport():QuadViewport;

	function getTextureDimensions():QuadTextureDimensions;

}

@:multiReturn
extern class ParticleSystemTangentialAcceleration {

	public var min:Float;
	public var max:Float;

}

@:multiReturn
extern class ParticleSystemSpin {

	public var variation:Float;
	public var min:Float;
	public var max:Float;

}

@:multiReturn
extern class ParticleSystemSpeed {

	public var min:Float;
	public var max:Float;

}

@:multiReturn
extern class ParticleSystemSizes {

	public var size8:Float;
	public var size2:Float;
	public var size1:Float;

}

@:multiReturn
extern class ParticleSystemRotation {

	public var min:Float;
	public var max:Float;

}

@:multiReturn
extern class ParticleSystemRadialAcceleration {

	public var min:Float;
	public var max:Float;

}

@:multiReturn
extern class ParticleSystemPosition {

	public var y:Float;
	public var x:Float;

}

@:multiReturn
extern class ParticleSystemParticleLifetime {

	public var min:Float;
	public var max:Float;

}

@:multiReturn
extern class ParticleSystemOffset {

	public var oy:Float;
	public var ox:Float;

}

@:multiReturn
extern class ParticleSystemLinearDamping {

	public var min:Float;
	public var max:Float;

}

@:multiReturn
extern class ParticleSystemLinearAcceleration {

	public var ymin:Float;
	public var ymax:Float;
	public var xmin:Float;
	public var xmax:Float;

}

@:multiReturn
extern class ParticleSystemEmissionArea {

	public var dy:Float;
	public var dx:Float;
	public var distribution:AreaSpreadDistribution;
	public var directionRelativeToCenter:Bool;
	public var angle:Float;

}

@:multiReturn
extern class ParticleSystemColors {

	public var r8:Float;
	public var r2:Float;
	public var r1:Float;
	public var g8:Float;
	public var g2:Float;
	public var g1:Float;
	public var b8:Float;
	public var b2:Float;
	public var b1:Float;
	public var a8:Float;
	public var a2:Float;
	public var a1:Float;

}

extern class ParticleSystem extends Drawable {


	function update(dt:Float):Void;

	function stop():Void;

	function start():Void;

	function setTexture(texture:Texture):Void;

	function setTangentialAcceleration(min:Float, max:Float):Void;

	function setSpread(spread:Float):Void;

	function setSpinVariation(variation:Float):Void;

	function setSpin(min:Float, max:Float):Void;

	function setSpeed(min:Float, max:Float):Void;

	function setSizes(size1:Float, size2:Float, size8:Float):Void;

	function setSizeVariation(variation:Float):Void;

	function setRotation(min:Float, max:Float):Void;

	function setRelativeRotation(enable:Bool):Void;

	function setRadialAcceleration(min:Float, max:Float):Void;

	@:overload(function (quad1:Quad, ...varargs:Quad):Void {})
	function setQuads(quads:Table<Dynamic,Dynamic>):Void;

	function setPosition(x:Float, y:Float):Void;

	function setParticleLifetime(min:Float, max:Float):Void;

	function setOffset(x:Float, y:Float):Void;

	function setLinearDamping(min:Float, max:Float):Void;

	function setLinearAcceleration(xmin:Float, ymin:Float, xmax:Float, ymax:Float):Void;

	function setInsertMode(mode:ParticleInsertMode):Void;

	function setEmitterLifetime(life:Float):Void;

	function setEmissionRate(rate:Float):Void;

	function setEmissionArea(distribution:AreaSpreadDistribution, dx:Float, dy:Float, angle:Float, directionRelativeToCenter:Bool):Void;

	function setDirection(direction:Float):Void;

	@:overload(function (r1:Float, g1:Float, b1:Float, a1:Float, ...varargs:Float):Void {})
	function setColors(rgba1:Table<Dynamic,Dynamic>, ...varargs:Table<Dynamic,Dynamic>):Void;

	function setBufferSize(size:Float):Void;

	function reset():Void;

	function pause():Void;

	function new():Void;

	function moveTo(x:Float, y:Float):Void;

	function isStopped():Bool;

	function isPaused():Bool;

	function isActive():Bool;

	function hasRelativeRotation():Bool;

	function getTexture():Texture;

	function getTangentialAcceleration():ParticleSystemTangentialAcceleration;

	function getSpread():Float;

	function getSpinVariation():Float;

	function getSpin():ParticleSystemSpin;

	function getSpeed():ParticleSystemSpeed;

	function getSizes():ParticleSystemSizes;

	function getSizeVariation():Float;

	function getRotation():ParticleSystemRotation;

	function getRadialAcceleration():ParticleSystemRadialAcceleration;

	function getQuads():Table<Dynamic,Dynamic>;

	function getPosition():ParticleSystemPosition;

	function getParticleLifetime():ParticleSystemParticleLifetime;

	function getOffset():ParticleSystemOffset;

	function getLinearDamping():ParticleSystemLinearDamping;

	function getLinearAcceleration():ParticleSystemLinearAcceleration;

	function getInsertMode():ParticleInsertMode;

	function getEmitterLifetime():Float;

	function getEmissionRate():Float;

	function getEmissionArea():ParticleSystemEmissionArea;

	function getDirection():Float;

	function getCount():Float;

	function getColors():ParticleSystemColors;

	function getBufferSize():Float;

	function emit(numparticles:Float):Void;

	function clone():ParticleSystem;

}

@:multiReturn
extern class MeshVertex {

	public var y:Float;
	public var x:Float;
	public var v:Float;
	public var u:Float;
	public var r:Float;
	public var g:Float;
	public var b:Float;
	public var a:Float;

}

@:multiReturn
extern class MeshDrawRange {

	public var min:Float;
	public var max:Float;

}

extern class Mesh extends Drawable {


	@:overload(function (vertices:Table<Dynamic,Dynamic>, startvertex:Float, count:Float):Void {})
	@:overload(function (data:Data, startvertex:Float):Void {})
	function setVertices(vertices:Table<Dynamic,Dynamic>):Void;

	@:overload(function (map:Table<Dynamic,Dynamic>):Void {})
	@:overload(function (vi1:Float, vi2:Float, vi3:Float):Void {})
	function setVertexMap(data:Data, datatype:IndexDataType):Void;

	function setVertexAttribute(vertexindex:Float, attributeindex:Float, value1:Float, value2:Float, ...varargs:Float):Void;

	@:overload(function (index:Float, attributecomponent:Float, ...varargs:Float):Void {})
	@:overload(function (index:Float, vertex:Table<Dynamic,Dynamic>):Void {})
	@:overload(function (index:Float, x:Float, y:Float, u:Float, v:Float, r:Float, g:Float, b:Float, a:Float):Void {})
	function setVertex(index:Float, vertex:Table<Dynamic,Dynamic>):Void;

	@:overload(function (texture:Texture):Void {})
	function setTexture():Void;

	@:overload(function (start:Float, count:Float):Void {})
	function setDrawRange():Void;

	function setDrawMode(mode:MeshDrawMode):Void;

	function setAttributeEnabled(name:String, enable:Bool):Void;

	function new():Void;

	function isAttributeEnabled(name:String):Bool;

	function getVertexMap():Table<Dynamic,Dynamic>;

	function getVertexFormat():Table<Dynamic,Dynamic>;

	function getVertexCount():Float;

	function getVertexAttribute(vertexindex:Float, attributeindex:Float):Array<Dynamic>;

	@:overload(function (index:Float):Array<Dynamic> {})
	function getVertex(index:Float):MeshVertex;

	function getTexture():Texture;

	function getDrawRange():MeshDrawRange;

	function getDrawMode():MeshDrawMode;

	function flush():Void;

	function detachAttribute(name:String):Bool;

	@:overload(function (name:String, mesh:Mesh):Void {})
	function attachAttribute(name:String, mesh:Mesh, step:VertexAttributeStep, attachname:String):Void;

}

@:native("love.graphics")
extern class LoveGraphics {


	@:overload(function (gles:Bool, code:String):GraphicsValidateShaderResult {})
	public static function validateShader(gles:Bool, pixelcode:String, vertexcode:String):GraphicsValidateShaderResult;

	public static function translate(dx:Float, dy:Float):Void;

	public static function transformPoint(globalX:Float, globalY:Float):GraphicsTransformPointResult;

	public static function stencil(stencilfunction:Dynamic, action:StencilAction, value:Float, keepvalues:Bool):Void;

	public static function shear(kx:Float, ky:Float):Void;

	public static function setWireframe(enable:Bool):Void;

	@:overload(function (comparemode:CompareMode, comparevalue:Float):Void {})
	public static function setStencilTest():Void;

	@:overload(function (shader:Shader):Void {})
	public static function setShader():Void;

	@:overload(function (x:Float, y:Float, width:Float, height:Float):Void {})
	public static function setScissor():Void;

	public static function setPointSize(size:Float):Void;

	@:overload(function (size:Float):Font {})
	@:overload(function (filename:String, size:Float):Font {})
	@:overload(function (file:File, size:Float):Font {})
	@:overload(function (data:Data, size:Float):Font {})
	public static function setNewFont(rasterizer:Rasterizer):Font;

	public static function setMeshCullMode(mode:CullMode):Void;

	public static function setLineWidth(width:Float):Void;

	public static function setLineStyle(style:LineStyle):Void;

	public static function setLineJoin(join:LineJoin):Void;

	public static function setFrontFaceWinding(winding:VertexWinding):Void;

	public static function setFont(font:Font):Void;

	@:overload(function (comparemode:CompareMode, write:Bool):Void {})
	public static function setDepthMode():Void;

	public static function setDefaultFilter(min:FilterMode, mag:FilterMode, anisotropy:Float):Void;

	@:overload(function (red:Bool, green:Bool, blue:Bool, alpha:Bool):Void {})
	public static function setColorMask():Void;

	@:overload(function (red:Float, green:Float, blue:Float, alpha:Float):Void {})
	public static function setColor(rgba:Table<Dynamic,Dynamic>):Void;

	@:overload(function (canvas:Canvas, mipmap:Float):Void {})
	@:overload(function ():Void {})
	@:overload(function (canvas1:Canvas, canvas2:Canvas, ...varargs:Canvas):Void {})
	@:overload(function (canvas:Canvas, slice:Float, mipmap:Float):Void {})
	public static function setCanvas(setup:Table<Dynamic,Dynamic>):Void;

	@:overload(function (mode:BlendMode):Void {})
	public static function setBlendMode(mode:BlendMode, alphamode:BlendAlphaMode):Void;

	@:overload(function (red:Float, green:Float, blue:Float, alpha:Float):Void {})
	public static function setBackgroundColor(rgba:Table<Dynamic,Dynamic>):Void;

	public static function scale(sx:Float, sy:Float):Void;

	public static function rotate(angle:Float):Void;

	public static function reset():Void;

	public static function replaceTransform(transform:Dynamic):Void;

	@:overload(function (mode:DrawMode, x:Float, y:Float, width:Float, height:Float):Void {})
	public static function rectangle(mode:DrawMode, x:Float, y:Float, width:Float, height:Float, rx:Float, ry:Float, segments:Float):Void;

	@:overload(function ():Void {})
	public static function push(stack:StackType):Void;

	@:overload(function (text:String, x:Float, y:Float, limit:Float, align:AlignMode, r:Float, sx:Float, sy:Float, ox:Float, oy:Float, kx:Float, ky:Float):Void {})
	@:overload(function (text:String, font:Font, x:Float, y:Float, limit:Float, align:AlignMode, r:Float, sx:Float, sy:Float, ox:Float, oy:Float, kx:Float, ky:Float):Void {})
	@:overload(function (text:String, transform:Dynamic, limit:Float, align:AlignMode):Void {})
	@:overload(function (text:String, font:Font, transform:Dynamic, limit:Float, align:AlignMode):Void {})
	@:overload(function (coloredtext:Table<Dynamic,Dynamic>, x:Float, y:Float, limit:Float, align:AlignMode, angle:Float, sx:Float, sy:Float, ox:Float, oy:Float, kx:Float, ky:Float):Void {})
	@:overload(function (coloredtext:Table<Dynamic,Dynamic>, font:Font, x:Float, y:Float, limit:Float, align:AlignMode, angle:Float, sx:Float, sy:Float, ox:Float, oy:Float, kx:Float, ky:Float):Void {})
	@:overload(function (coloredtext:Table<Dynamic,Dynamic>, transform:Dynamic, limit:Float, align:AlignMode):Void {})
	public static function printf(coloredtext:Table<Dynamic,Dynamic>, font:Font, transform:Dynamic, limit:Float, align:AlignMode):Void;

	@:overload(function (text:String, x:Float, y:Float, r:Float, sx:Float, sy:Float, ox:Float, oy:Float, kx:Float, ky:Float):Void {})
	@:overload(function (coloredtext:Table<Dynamic,Dynamic>, x:Float, y:Float, angle:Float, sx:Float, sy:Float, ox:Float, oy:Float, kx:Float, ky:Float):Void {})
	@:overload(function (text:String, transform:Dynamic):Void {})
	@:overload(function (coloredtext:Table<Dynamic,Dynamic>, transform:Dynamic):Void {})
	@:overload(function (text:String, font:Font, transform:Dynamic):Void {})
	public static function print(coloredtext:Table<Dynamic,Dynamic>, font:Font, transform:Dynamic):Void;

	public static function present():Void;

	public static function pop():Void;

	@:overload(function (mode:DrawMode, ...varargs:Float):Void {})
	public static function polygon(mode:DrawMode, vertices:Table<Dynamic,Dynamic>):Void;

	@:overload(function (x:Float, y:Float, ...varargs:Float):Void {})
	@:overload(function (points:Table<Dynamic,Dynamic>):Void {})
	public static function points(points:Table<Dynamic,Dynamic>):Void;

	public static function origin():Void;

	public static function newVolumeImage(layers:Table<Dynamic,Dynamic>, settings:Table<Dynamic,Dynamic>):Image;

	@:overload(function (filename:String):Video {})
	@:overload(function (videostream:VideoStream):Video {})
	@:overload(function (filename:String, settings:Table<Dynamic,Dynamic>):Video {})
	@:overload(function (filename:String, loadaudio:Bool):Video {})
	public static function newVideo(videostream:VideoStream, loadaudio:Bool):Video;

	@:overload(function (font:Font, textstring:String):Text {})
	public static function newText(font:Font, coloredtext:Table<Dynamic,Dynamic>):Text;

	@:overload(function (image:Image, maxsprites:Float):SpriteBatch {})
	@:overload(function (image:Image, maxsprites:Float, usage:SpriteBatchUsage):SpriteBatch {})
	public static function newSpriteBatch(texture:Texture, maxsprites:Float, usage:SpriteBatchUsage):SpriteBatch;

	@:overload(function (code:String):Shader {})
	public static function newShader(pixelcode:String, vertexcode:String):Shader;

	@:overload(function (x:Float, y:Float, width:Float, height:Float, sw:Float, sh:Float):Quad {})
	public static function newQuad(x:Float, y:Float, width:Float, height:Float, texture:Texture):Quad;

	@:overload(function (image:Image, buffer:Float):ParticleSystem {})
	public static function newParticleSystem(texture:Texture, buffer:Float):ParticleSystem;

	@:overload(function (vertices:Table<Dynamic,Dynamic>, mode:MeshDrawMode, usage:SpriteBatchUsage):Mesh {})
	@:overload(function (vertexcount:Float, mode:MeshDrawMode, usage:SpriteBatchUsage):Mesh {})
	@:overload(function (vertexformat:Table<Dynamic,Dynamic>, vertices:Table<Dynamic,Dynamic>, mode:MeshDrawMode, usage:SpriteBatchUsage):Mesh {})
	@:overload(function (vertexformat:Table<Dynamic,Dynamic>, vertexcount:Float, mode:MeshDrawMode, usage:SpriteBatchUsage):Mesh {})
	public static function newMesh(vertexcount:Float, texture:Texture, mode:MeshDrawMode):Mesh;

	@:overload(function (filename:String, glyphs:String):Font {})
	@:overload(function (imageData:ImageData, glyphs:String):Font {})
	public static function newImageFont(filename:String, glyphs:String, extraspacing:Float):Font;

	@:overload(function (filename:String, settings:Table<Dynamic,Dynamic>):Image {})
	@:overload(function (fileData:FileData, settings:Table<Dynamic,Dynamic>):Image {})
	@:overload(function (imageData:ImageData, settings:Table<Dynamic,Dynamic>):Image {})
	public static function newImage(compressedImageData:CompressedImageData, settings:Table<Dynamic,Dynamic>):Image;

	@:overload(function (filename:String):Font {})
	@:overload(function (filename:String, size:Float, hinting:HintingMode, dpiscale:Float):Font {})
	@:overload(function (filename:String, imagefilename:String):Font {})
	public static function newFont(size:Float, hinting:HintingMode, dpiscale:Float):Font;

	@:overload(function (filename:String, settings:Table<Dynamic,Dynamic>):Image {})
	public static function newCubeImage(faces:Table<Dynamic,Dynamic>, settings:Table<Dynamic,Dynamic>):Image;

	@:overload(function ():Canvas {})
	@:overload(function (width:Float, height:Float):Canvas {})
	@:overload(function (width:Float, height:Float, settings:Table<Dynamic,Dynamic>):Canvas {})
	public static function newCanvas(width:Float, height:Float, layers:Float, settings:Table<Dynamic,Dynamic>):Canvas;

	public static function newArrayImage(slices:Table<Dynamic,Dynamic>, settings:Table<Dynamic,Dynamic>):Image;

	@:overload(function (x1:Float, y1:Float, x2:Float, y2:Float, ...varargs:Float):Void {})
	public static function line(points:Table<Dynamic,Dynamic>):Void;

	public static function isWireframe():Bool;

	public static function isGammaCorrect():Bool;

	public static function isActive():Bool;

	public static function inverseTransformPoint(screenX:Float, screenY:Float):GraphicsInverseTransformPointResult;

	public static function intersectScissor(x:Float, y:Float, width:Float, height:Float):Void;

	public static function getWidth():Float;

	public static function getTextureTypes():Table<Dynamic,Dynamic>;

	public static function getSystemLimits():Table<Dynamic,Dynamic>;

	public static function getSupported():Table<Dynamic,Dynamic>;

	public static function getStencilTest():GraphicsStencilTest;

	@:overload(function ():Table<Dynamic,Dynamic> {})
	public static function getStats(stats:Table<Dynamic,Dynamic>):Table<Dynamic,Dynamic>;

	public static function getStackDepth():Float;

	public static function getShader():Shader;

	public static function getScissor():GraphicsScissor;

	public static function getRendererInfo():GraphicsRendererInfo;

	public static function getPointSize():Float;

	public static function getPixelWidth():Float;

	public static function getPixelHeight():Float;

	public static function getPixelDimensions():GraphicsPixelDimensions;

	public static function getMeshCullMode():CullMode;

	public static function getLineWidth():Float;

	public static function getLineStyle():LineStyle;

	public static function getLineJoin():LineJoin;

	public static function getImageFormats():Table<Dynamic,Dynamic>;

	public static function getHeight():Float;

	public static function getFrontFaceWinding():VertexWinding;

	public static function getFont():Font;

	public static function getDimensions():GraphicsDimensions;

	public static function getDepthMode():GraphicsDepthMode;

	public static function getDefaultFilter():GraphicsDefaultFilter;

	public static function getDPIScale():Float;

	public static function getColorMask():GraphicsColorMask;

	public static function getColor():GraphicsColor;

	@:overload(function ():Table<Dynamic,Dynamic> {})
	public static function getCanvasFormats(readable:Bool):Table<Dynamic,Dynamic>;

	public static function getCanvas():Canvas;

	public static function getBlendMode():GraphicsBlendMode;

	public static function getBackgroundColor():GraphicsBackgroundColor;

	public static function flushBatch():Void;

	@:overload(function (mode:DrawMode, x:Float, y:Float, radiusx:Float, radiusy:Float):Void {})
	public static function ellipse(mode:DrawMode, x:Float, y:Float, radiusx:Float, radiusy:Float, segments:Float):Void;

	@:overload(function (texture:Texture, layerindex:Float, x:Float, y:Float, r:Float, sx:Float, sy:Float, ox:Float, oy:Float, kx:Float, ky:Float):Void {})
	@:overload(function (texture:Texture, layerindex:Float, quad:Quad, x:Float, y:Float, r:Float, sx:Float, sy:Float, ox:Float, oy:Float, kx:Float, ky:Float):Void {})
	@:overload(function (texture:Texture, layerindex:Float, transform:Dynamic):Void {})
	public static function drawLayer(texture:Texture, layerindex:Float, quad:Quad, transform:Dynamic):Void;

	@:overload(function (mesh:Mesh, instancecount:Float, x:Float, y:Float, r:Float, sx:Float, sy:Float, ox:Float, oy:Float, kx:Float, ky:Float):Void {})
	public static function drawInstanced(mesh:Mesh, instancecount:Float, transform:Dynamic):Void;

	@:overload(function (drawable:Drawable, x:Float, y:Float, r:Float, sx:Float, sy:Float, ox:Float, oy:Float, kx:Float, ky:Float):Void {})
	@:overload(function (texture:Texture, quad:Quad, x:Float, y:Float, r:Float, sx:Float, sy:Float, ox:Float, oy:Float, kx:Float, ky:Float):Void {})
	@:overload(function (drawable:Drawable, transform:Dynamic):Void {})
	public static function draw(texture:Texture, quad:Quad, transform:Dynamic):Void;

	@:overload(function (discardcolor:Bool, discardstencil:Bool):Void {})
	public static function discard(discardcolors:Table<Dynamic,Dynamic>, discardstencil:Bool):Void;

	@:overload(function ():Void {})
	@:overload(function (r:Float, g:Float, b:Float, a:Float, clearstencil:Bool, cleardepth:Bool):Void {})
	@:overload(function (color:Table<Dynamic,Dynamic>, ...varargs:Table<Dynamic,Dynamic>, clearstencil:Bool, cleardepth:Bool):Void {})
	public static function clear(clearcolor:Bool, clearstencil:Bool, cleardepth:Bool):Void;

	@:overload(function (mode:DrawMode, x:Float, y:Float, radius:Float):Void {})
	public static function circle(mode:DrawMode, x:Float, y:Float, radius:Float, segments:Float):Void;

	@:overload(function (filename:String):Void {})
	@:overload(function (callback:Dynamic):Void {})
	public static function captureScreenshot(channel:Channel):Void;

	@:overload(function (drawmode:DrawMode, x:Float, y:Float, radius:Float, angle1:Float, angle2:Float, segments:Float):Void {})
	public static function arc(drawmode:DrawMode, arctype:ArcType, x:Float, y:Float, radius:Float, angle1:Float, angle2:Float, segments:Float):Void;

	public static function applyTransform(transform:Dynamic):Void;

}

extern class Image extends Texture {


	function replacePixels(data:ImageData, slice:Float, mipmap:Float, x:Float, y:Float, reloadmipmaps:Bool):Void;

	function new():Void;

	function isFormatLinear():Bool;

	function isCompressed():Bool;

}

@:multiReturn
extern class GraphicsValidateShaderResult {

	public var status:Bool;
	public var message:String;

}

@:multiReturn
extern class GraphicsTransformPointResult {

	public var screenY:Float;
	public var screenX:Float;

}

@:multiReturn
extern class GraphicsStencilTest {

	public var comparevalue:Float;
	public var comparemode:CompareMode;

}

@:multiReturn
extern class GraphicsScissor {

	public var y:Float;
	public var x:Float;
	public var width:Float;
	public var height:Float;

}

@:multiReturn
extern class GraphicsRendererInfo {

	public var version:String;
	public var vendor:String;
	public var name:String;
	public var device:String;

}

@:multiReturn
extern class GraphicsPixelDimensions {

	public var pixelwidth:Float;
	public var pixelheight:Float;

}

@:multiReturn
extern class GraphicsInverseTransformPointResult {

	public var globalY:Float;
	public var globalX:Float;

}

@:multiReturn
extern class GraphicsDimensions {

	public var width:Float;
	public var height:Float;

}

@:multiReturn
extern class GraphicsDepthMode {

	public var write:Bool;
	public var comparemode:CompareMode;

}

@:multiReturn
extern class GraphicsDefaultFilter {

	public var min:FilterMode;
	public var mag:FilterMode;
	public var anisotropy:Float;

}

@:multiReturn
extern class GraphicsColorMask {

	public var r:Bool;
	public var g:Bool;
	public var b:Bool;
	public var a:Bool;

}

@:multiReturn
extern class GraphicsColor {

	public var r:Float;
	public var g:Float;
	public var b:Float;
	public var a:Float;

}

@:multiReturn
extern class GraphicsBlendMode {

	public var mode:BlendMode;
	public var alphamode:BlendAlphaMode;

}

@:multiReturn
extern class GraphicsBackgroundColor {

	public var r:Float;
	public var g:Float;
	public var b:Float;
	public var a:Float;

}

@:multiReturn
extern class FontWrap {

	public var wrappedtext:Table<Dynamic,Dynamic>;
	public var width:Float;

}

@:multiReturn
extern class FontFilter {

	public var min:FilterMode;
	public var mag:FilterMode;
	public var anisotropy:Float;

}

extern class Font extends Object {


	function setLineHeight(height:Float):Void;

	function setFilter(min:FilterMode, mag:FilterMode, anisotropy:Float):Void;

	function setFallbacks(fallbackfont1:Font, ...varargs:Font):Void;

	function new():Void;

	@:overload(function (text:String):Bool {})
	@:overload(function (character1:String, character2:String):Bool {})
	function hasGlyphs(codepoint1:Float, codepoint2:Float):Bool;

	function getWrap(text:String, wraplimit:Float):FontWrap;

	function getWidth(text:String):Float;

	function getLineHeight():Float;

	@:overload(function (leftchar:String, rightchar:String):Float {})
	function getKerning(leftglyph:Float, rightglyph:Float):Float;

	function getHeight():Float;

	function getFilter():FontFilter;

	function getDescent():Float;

	function getDPIScale():Float;

	function getBaseline():Float;

	function getAscent():Float;

}

extern class Drawable extends Object {


	function new():Void;

}

extern class Canvas extends Texture {


	function renderTo(func:Dynamic, ...varargs:Dynamic):Void;

	@:overload(function ():ImageData {})
	function newImageData(slice:Float, mipmap:Float, x:Float, y:Float, width:Float, height:Float):ImageData;

	function new():Void;

	function getMipmapMode():MipmapMode;

	function getMSAA():Float;

	function generateMipmaps():Void;

}

extern enum WrapMode {
	CLAMP;
	REPEAT;
	MIRROREDREPEAT;
	CLAMPZERO;
}

extern enum VertexWinding {
	CW;
	CCW;
}

extern enum VertexAttributeStep {
	PERVERTEX;
	PERINSTANCE;
}

extern enum TextureType {
	2D;
	ARRAY;
	CUBE;
	VOLUME;
}

extern enum StencilAction {
	REPLACE;
	INCREMENT;
	DECREMENT;
	INCREMENTWRAP;
	DECREMENTWRAP;
	INVERT;
}

extern enum StackType {
	TRANSFORM;
	ALL;
}

extern enum SpriteBatchUsage {
	DYNAMIC;
	STATIC;
	STREAM;
}

extern enum ParticleInsertMode {
	TOP;
	BOTTOM;
	RANDOM;
}

extern enum MipmapMode {
	NONE;
	AUTO;
	MANUAL;
}

extern enum MeshDrawMode {
	FAN;
	STRIP;
	TRIANGLES;
	POINTS;
}

extern enum LineStyle {
	ROUGH;
	SMOOTH;
}

extern enum LineJoin {
	MITER;
	NONE;
	BEVEL;
}

extern enum IndexDataType {
	UINT16;
	UINT32;
}

extern enum GraphicsLimit {
	POINTSIZE;
	TEXTURESIZE;
	MULTICANVAS;
	CANVASMSAA;
	TEXTURELAYERS;
	VOLUMETEXTURESIZE;
	CUBETEXTURESIZE;
	ANISOTROPY;
}

extern enum GraphicsFeature {
	CLAMPZERO;
	LIGHTEN;
	MULTICANVASFORMATS;
	GLSL3;
	INSTANCING;
	FULLNPOT;
	PIXELSHADERHIGHP;
	SHADERDERIVATIVES;
}

extern enum FilterMode {
	LINEAR;
	NEAREST;
}

extern enum DrawMode {
	FILL;
	LINE;
}

extern enum CullMode {
	BACK;
	FRONT;
	NONE;
}

extern enum CompareMode {
	EQUAL;
	NOTEQUAL;
	LESS;
	LEQUAL;
	GEQUAL;
	GREATER;
	NEVER;
	ALWAYS;
}

extern enum BlendMode {
	ALPHA;
	REPLACE;
	SCREEN;
	ADD;
	SUBTRACT;
	MULTIPLY;
	LIGHTEN;
	DARKEN;
	ADDITIVE;
	SUBTRACTIVE;
	MULTIPLICATIVE;
	PREMULTIPLIED;
}

extern enum BlendAlphaMode {
	ALPHAMULTIPLY;
	PREMULTIPLIED;
}

extern enum AreaSpreadDistribution {
	UNIFORM;
	NORMAL;
	ELLIPSE;
	BORDERELLIPSE;
	BORDERRECTANGLE;
	NONE;
}

extern enum ArcType {
	PIE;
	OPEN;
	CLOSED;
}

extern enum AlignMode {
	CENTER;
	LEFT;
	RIGHT;
	JUSTIFY;
}

