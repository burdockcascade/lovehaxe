/*
 * This file was generated by the LOVE2D Haxe bindings generator for Love2D v11.5.
 * Do not modify this file directly.
 * 2024-05-12 18:21:25
 */

package love;

import lua.Table;
import lua.UserData;
import love.Sound.Decoder;
import love.Filesystem.File;
import love.Sound.SoundData;
import love.Love2D.Object;
import love.Filesystem.FileData;

@:multiReturn
extern class Orientation {

	public var fx, fy, fz:Float;
	public var ux, uy, uz:Float;
}

@:multiReturn
extern class Position {

	public var x:Float;
	public var y:Float;
	public var z:Float;
}

@:multiReturn
extern class Direction {

	public var x:Float;
	public var y:Float;
	public var z:Float;
}

extern class RecordingDevice extends Object {

	function getBitDepth():Float;

	function getChannelCount():Float;

	function getData():SoundData;

	function getName():String;

	function getSampleCount():Float;

	function getSampleRate():Float;

	function isRecording():Bool;

	function start(samplecount:Float, samplerate:Float, bitdepth:Float, channels:Float):Bool;

	function stop():SoundData;

}

@:multiReturn
extern class Cone {

	public var innerAngle:Float;
	public var outerAngle:Float;
	public var outerVolume:Float;
}

@:multiReturn
extern class Velocity {

	public var x:Float;
	public var y:Float;
	public var z:Float;
}

extern class AudioModule {

	public static function getActiveEffects():Table<Dynamic,Dynamic>;

	public static function getActiveSourceCount():Float;

	public static function getDistanceModel():DistanceModel;

	public static function getDopplerScale():Float;

	public static function getEffect(name:String):Table<Dynamic,Dynamic>;

	public static function getMaxSceneEffects():Float;

	public static function getMaxSourceEffects():Float;

	public static function getOrientation():Orientation;

	public static function getPosition():Position;

	public static function getRecordingDevices():Table<Dynamic,Dynamic>;

	public static function getSourceCount():Float;

	public static function getVelocity():Velocity;

	public static function getVolume():Float;

	public static function isEffectsSupported():Bool;

	public static function newQueueableSource(samplerate:Float, bitdepth:Float, channels:Float, buffercount:Float):Source;

	@:overload(function (filename:String, type:SourceType):Source {})
	@:overload(function (file:File, type:SourceType):Source {})
	@:overload(function (decoder:Decoder, type:SourceType):Source {})
	@:overload(function (data:FileData, type:SourceType):Source {})
	public static function newSource(data:SoundData):Source;

	@:overload(function ():Table<Dynamic,Dynamic> {})
	@:overload(function (source:Source, ...varargs:Source):Void {})
	public static function pause(sources:Table<Dynamic,Dynamic>):Void;

	@:overload(function (source:Source):Void {})
	@:overload(function (sources:Table<Dynamic,Dynamic>):Void {})
	public static function play(source1:Source, source2:Source, ...varargs:Source):Void;

	public static function setDistanceModel(model:DistanceModel):Void;

	public static function setDopplerScale(scale:Float):Void;

	@:overload(function (name:String, settings:Table<Dynamic,Dynamic>):Bool {})
	public static function setEffect(name:String, enabled:Bool):Bool;

	public static function setMixWithSystem(mix:Bool):Bool;

	public static function setOrientation(fx, fy, fz:Float, ux, uy, uz:Float):Void;

	public static function setPosition(x:Float, y:Float, z:Float):Void;

	public static function setVelocity(x:Float, y:Float, z:Float):Void;

	public static function setVolume(volume:Float):Void;

	@:overload(function ():Void {})
	@:overload(function (source:Source):Void {})
	@:overload(function (source1:Source, source2:Source, ...varargs:Source):Void {})
	public static function stop(sources:Table<Dynamic,Dynamic>):Void;

}

extern class Source extends Object {

	function clone():Source;

	function getActiveEffects():Table<Dynamic,Dynamic>;

	function getAirAbsorption():Float;

	function getAttenuationDistances():AttenuationDistances;

	function getChannelCount():Float;

	function getCone():Cone;

	function getDirection():Direction;

	function getDuration(unit:TimeUnit):Float;

	function getEffect(name:String, filtersettings:Table<Dynamic,Dynamic>):Table<Dynamic,Dynamic>;

	function getFilter():Table<Dynamic,Dynamic>;

	function getFreeBufferCount():Float;

	function getPitch():Float;

	function getPosition():Position;

	function getRolloff():Float;

	function getType():SourceType;

	function getVelocity():Velocity;

	function getVolume():Float;

	function getVolumeLimits():VolumeLimits;

	function isLooping():Bool;

	function isPlaying():Bool;

	function isRelative():Bool;

	function pause():Void;

	function play():Bool;

	function queue(sounddata:SoundData):Bool;

	function seek(offset:Float, unit:TimeUnit):Void;

	function setAirAbsorption(amount:Float):Void;

	function setAttenuationDistances(ref:Float, max:Float):Void;

	function setCone(innerAngle:Float, outerAngle:Float, outerVolume:Float):Void;

	function setDirection(x:Float, y:Float, z:Float):Void;

	@:overload(function (name:String, enable:Bool):Bool {})
	function setEffect(name:String, filtersettings:Table<Dynamic,Dynamic>):Bool;

	@:overload(function (settings:Table<Dynamic,Dynamic>):Bool {})
	function setFilter():Void;

	function setLooping(loop:Bool):Void;

	function setPitch(pitch:Float):Void;

	function setPosition(x:Float, y:Float, z:Float):Void;

	function setRelative(enable:Bool):Void;

	function setRolloff(rolloff:Float):Void;

	function setVelocity(x:Float, y:Float, z:Float):Void;

	function setVolume(volume:Float):Void;

	function setVolumeLimits(min:Float, max:Float):Void;

	function stop():Void;

	function tell(unit:TimeUnit):Float;

}

@:multiReturn
extern class VolumeLimits {

	public var min:Float;
	public var max:Float;
}

@:multiReturn
extern class AttenuationDistances {

	public var ref:Float;
	public var max:Float;
}

extern enum FilterType {
	LOWPASS;
	HIGHPASS;
	BANDPASS;
}

extern enum SourceType {
	STATIC;
	STREAM;
	QUEUE;
}

extern enum EffectType {
	CHORUS;
	COMPRESSOR;
	DISTORTION;
	ECHO;
	EQUALIZER;
	FLANGER;
	REVERB;
	RINGMODULATOR;
}

extern enum TimeUnit {
	SECONDS;
	SAMPLES;
}

extern enum DistanceModel {
	NONE;
	INVERSE;
	INVERSECLAMPED;
	LINEAR;
	LINEARCLAMPED;
	EXPONENT;
	EXPONENTCLAMPED;
}

extern enum EffectWaveform {
	SAWTOOTH;
	SINE;
	SQUARE;
	TRIANGLE;
}

