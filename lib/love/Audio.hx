/*
 * This file was generated by the LOVE2D Haxe bindings generator for Love2D v11.4.
 * Do not modify this file directly.
 * 2024-05-05 16:52:58
 */

package love;

@:native("love.audio")
extern class Audio {

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

	@:overload
	public static function newSource(filename:String, type:SourceType):Source;

	@:overload
	public static function newSource(file:File, type:SourceType):Source;

	@:overload
	public static function newSource(decoder:Decoder, type:SourceType):Source;

	@:overload
	public static function newSource(data:FileData, type:SourceType):Source;

	@:overload
	public static function newSource(data:SoundData):Source;

	@:overload
	public static function pause():Table<Dynamic,Dynamic>;

	@:overload
	public static function pause(source:Source, ...:Source):Void;

	@:overload
	public static function pause(sources:Table<Dynamic,Dynamic>):Void;

	@:overload
	public static function play(source:Source):Void;

	@:overload
	public static function play(sources:Table<Dynamic,Dynamic>):Void;

	@:overload
	public static function play(source1:Source, source2:Source, ...:Source):Void;

	public static function setDistanceModel(model:DistanceModel):Void;

	public static function setDopplerScale(scale:Float):Void;

	@:overload
	public static function setEffect(name:String, settings:Table<Dynamic,Dynamic>):Bool;

	@:overload
	public static function setEffect(name:String, enabled:Bool):Bool;

	public static function setMixWithSystem(mix:Bool):Bool;

	public static function setOrientation(fx, fy, fz:Float, ux, uy, uz:Float):Void;

	public static function setPosition(x:Float, y:Float, z:Float):Void;

	public static function setVelocity(x:Float, y:Float, z:Float):Void;

	public static function setVolume(volume:Float):Void;

	@:overload
	public static function stop():Void;

	@:overload
	public static function stop(source:Source):Void;

	@:overload
	public static function stop(source1:Source, source2:Source, ...:Source):Void;

	@:overload
	public static function stop(sources:Table<Dynamic,Dynamic>):Void;

}

extern class RecordingDevice {

	public static function getBitDepth():Float;

	public static function getChannelCount():Float;

	public static function getData():SoundData;

	public static function getName():String;

	public static function getSampleCount():Float;

	public static function getSampleRate():Float;

	public static function isRecording():Bool;

	public static function start(samplecount:Float, samplerate:Float, bitdepth:Float, channels:Float):Bool;

	public static function stop():SoundData;

}

extern class Source {

	public static function clone():Source;

	public static function getActiveEffects():Table<Dynamic,Dynamic>;

	public static function getAirAbsorption():Float;

	public static function getAttenuationDistances():AttenuationDistances;

	public static function getChannelCount():Float;

	public static function getCone():Cone;

	public static function getDirection():Direction;

	public static function getDuration(unit:TimeUnit):Float;

	public static function getEffect(name:String, filtersettings:Table<Dynamic,Dynamic>):Table<Dynamic,Dynamic>;

	public static function getFilter():Table<Dynamic,Dynamic>;

	public static function getFreeBufferCount():Float;

	public static function getPitch():Float;

	public static function getPosition():Position;

	public static function getRolloff():Float;

	public static function getType():SourceType;

	public static function getVelocity():Velocity;

	public static function getVolume():Float;

	public static function getVolumeLimits():VolumeLimits;

	public static function isLooping():Bool;

	public static function isPlaying():Bool;

	public static function isRelative():Bool;

	public static function pause():Void;

	public static function play():Bool;

	public static function queue(sounddata:SoundData):Bool;

	public static function seek(offset:Float, unit:TimeUnit):Void;

	public static function setAirAbsorption(amount:Float):Void;

	public static function setAttenuationDistances(ref:Float, max:Float):Void;

	public static function setCone(innerAngle:Float, outerAngle:Float, outerVolume:Float):Void;

	public static function setDirection(x:Float, y:Float, z:Float):Void;

	@:overload
	public static function setEffect(name:String, enable:Bool):Bool;

	@:overload
	public static function setEffect(name:String, filtersettings:Table<Dynamic,Dynamic>):Bool;

	@:overload
	public static function setFilter(settings:Table<Dynamic,Dynamic>):Bool;

	@:overload
	public static function setFilter():Void;

	public static function setLooping(loop:Bool):Void;

	public static function setPitch(pitch:Float):Void;

	public static function setPosition(x:Float, y:Float, z:Float):Void;

	public static function setRelative(enable:Bool):Void;

	public static function setRolloff(rolloff:Float):Void;

	public static function setVelocity(x:Float, y:Float, z:Float):Void;

	public static function setVolume(volume:Float):Void;

	public static function setVolumeLimits(min:Float, max:Float):Void;

	public static function stop():Void;

	public static function tell(unit:TimeUnit):Float;

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

extern enum EffectWaveform {
	SAWTOOTH;
	SINE;
	SQUARE;
	TRIANGLE;
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

extern enum TimeUnit {
	SECONDS;
	SAMPLES;
}

extern class AttenuationDistances {

	public var ref:Float;
	public var max:Float;

}

extern class Cone {

	public var innerAngle:Float;
	public var outerAngle:Float;
	public var outerVolume:Float;

}

extern class Direction {

	public var x:Float;
	public var y:Float;
	public var z:Float;

}

extern class Position {

	public var x:Float;
	public var y:Float;
	public var z:Float;

}

extern class Velocity {

	public var x:Float;
	public var y:Float;
	public var z:Float;

}

extern class VolumeLimits {

	public var min:Float;
	public var max:Float;

}

extern class Orientation {

	public var fx, fy, fz:Float;
	public var ux, uy, uz:Float;

}

