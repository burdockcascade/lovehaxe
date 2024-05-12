/*
 * This file was generated by the LOVE2D Haxe bindings generator for Love2D v11.5.
 * Do not modify this file directly.
 * 2024-05-12 20:41:35
 */

package love;

import lua.Table;
import lua.UserData;
import love.Sound.Decoder;
import love.FileSystem.File;
import love.Sound.SoundData;
import love.Love2D.Object;
import love.FileSystem.FileData;

@:multiReturn
extern class AudioVelocity {

	public var x:Float;
	public var y:Float;
	public var z:Float;
}

@:multiReturn
extern class AudioOrientation {

	public var fx, fy, fz:Float;
	public var ux, uy, uz:Float;
}

@:multiReturn
extern class SourceVelocity {

	public var x:Float;
	public var y:Float;
	public var z:Float;
}

extern class RecordingDevice extends Object {

	function start(samplecount:Float, samplerate:Float, bitdepth:Float, channels:Float):Bool;

	function stop():SoundData;

	function getBitDepth():Float;

	function isRecording():Bool;

	function getSampleRate():Float;

	function new():Void;

	function getData():SoundData;

	function getSampleCount():Float;

	function getName():String;

	function getChannelCount():Float;

}

@:multiReturn
extern class SourceVolumeLimits {

	public var min:Float;
	public var max:Float;
}

@:multiReturn
extern class SourcePosition {

	public var x:Float;
	public var y:Float;
	public var z:Float;
}

@:multiReturn
extern class SourceDirection {

	public var x:Float;
	public var y:Float;
	public var z:Float;
}

@:multiReturn
extern class SourceCone {

	public var innerAngle:Float;
	public var outerAngle:Float;
	public var outerVolume:Float;
}

@:native("love.audio")
extern class AudioModule {

	public static function setDistanceModel(model:DistanceModel):Void;

	public static function getSourceCount():Float;

	public static function getDopplerScale():Float;

	@:overload(function ():Void {})
	@:overload(function (source:Source):Void {})
	@:overload(function (source1:Source, source2:Source, ...varargs:Source):Void {})
	public static function stop(sources:Table<Dynamic,Dynamic>):Void;

	@:overload(function (filename:String, type:SourceType):Source {})
	@:overload(function (file:File, type:SourceType):Source {})
	@:overload(function (decoder:Decoder, type:SourceType):Source {})
	@:overload(function (data:FileData, type:SourceType):Source {})
	public static function newSource(data:SoundData):Source;

	public static function getEffect(name:String):Table<Dynamic,Dynamic>;

	public static function setDopplerScale(scale:Float):Void;

	@:overload(function ():Table<Dynamic,Dynamic> {})
	@:overload(function (source:Source, ...varargs:Source):Void {})
	public static function pause(sources:Table<Dynamic,Dynamic>):Void;

	public static function newQueueableSource(samplerate:Float, bitdepth:Float, channels:Float, buffercount:Float):Source;

	public static function getPosition():AudioPosition;

	public static function getMaxSourceEffects():Float;

	public static function getActiveSourceCount():Float;

	public static function setVolume(volume:Float):Void;

	public static function setMixWithSystem(mix:Bool):Bool;

	@:overload(function (name:String, settings:Table<Dynamic,Dynamic>):Bool {})
	public static function setEffect(name:String, enabled:Bool):Bool;

	public static function isEffectsSupported():Bool;

	public static function getVelocity():AudioVelocity;

	public static function setPosition(x:Float, y:Float, z:Float):Void;

	@:overload(function (source:Source):Void {})
	@:overload(function (sources:Table<Dynamic,Dynamic>):Void {})
	public static function play(source1:Source, source2:Source, ...varargs:Source):Void;

	public static function getVolume():Float;

	public static function getRecordingDevices():Table<Dynamic,Dynamic>;

	public static function getMaxSceneEffects():Float;

	public static function setVelocity(x:Float, y:Float, z:Float):Void;

	public static function setOrientation(fx, fy, fz:Float, ux, uy, uz:Float):Void;

	public static function getOrientation():AudioOrientation;

	public static function getDistanceModel():DistanceModel;

	public static function getActiveEffects():Table<Dynamic,Dynamic>;

}

@:multiReturn
extern class AudioPosition {

	public var x:Float;
	public var y:Float;
	public var z:Float;
}

extern class Source extends Object {

	function setVolumeLimits(min:Float, max:Float):Void;

	function setVolume(volume:Float):Void;

	function getRolloff():Float;

	function getVelocity():SourceVelocity;

	function setDirection(x:Float, y:Float, z:Float):Void;

	function setCone(innerAngle:Float, outerAngle:Float, outerVolume:Float):Void;

	function isLooping():Bool;

	function setAirAbsorption(amount:Float):Void;

	function setVelocity(x:Float, y:Float, z:Float):Void;

	function setPitch(pitch:Float):Void;

	function getFilter():Table<Dynamic,Dynamic>;

	function getType():SourceType;

	function setRelative(enable:Bool):Void;

	function getPitch():Float;

	function tell(unit:TimeUnit):Float;

	@:overload(function (name:String, enable:Bool):Bool {})
	function setEffect(name:String, filtersettings:Table<Dynamic,Dynamic>):Bool;

	function getVolumeLimits():SourceVolumeLimits;

	function setAttenuationDistances(ref:Float, max:Float):Void;

	function getVolume():Float;

	function pause():Void;

	function getDirection():SourceDirection;

	function play():Bool;

	function clone():Source;

	function getPosition():SourcePosition;

	function getCone():SourceCone;

	function getAirAbsorption():Float;

	function setRolloff(rolloff:Float):Void;

	function setPosition(x:Float, y:Float, z:Float):Void;

	function getAttenuationDistances():SourceAttenuationDistances;

	function getActiveEffects():Table<Dynamic,Dynamic>;

	function isPlaying():Bool;

	function getEffect(name:String, filtersettings:Table<Dynamic,Dynamic>):Table<Dynamic,Dynamic>;

	function setLooping(loop:Bool):Void;

	@:overload(function (settings:Table<Dynamic,Dynamic>):Bool {})
	function setFilter():Void;

	function new():Void;

	function getDuration(unit:TimeUnit):Float;

	function isRelative():Bool;

	function stop():Void;

	function seek(offset:Float, unit:TimeUnit):Void;

	function getChannelCount():Float;

	function getFreeBufferCount():Float;

	function queue(sounddata:SoundData):Bool;

}

@:multiReturn
extern class SourceAttenuationDistances {

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

