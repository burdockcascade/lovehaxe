/*
 * This file was generated by the LOVE2D Haxe bindings generator.
 * Do not modify this file directly.
 * 2024-05-04 23:35:05
 */

package love;

@:native("love.filesystem")
extern class Filesystem {

	public static function append(name:String, data:String, size:Float):AppendResult;

	public static function append(name:String, data:Data, size:Float):AppendResult;

	public static function areSymlinksEnabled():Bool;

	public static function createDirectory(name:String):Bool;

	public static function getAppdataDirectory():String;

	public static function getCRequirePath():String;

	public static function getDirectoryItems(dir:String):Dynamic;

	public static function getDirectoryItems(dir:String, callback:Function):Dynamic;

	public static function getIdentity():String;

	public static function getInfo(path:String, filtertype:FileType):Dynamic;

	public static function getInfo(path:String, info:Dynamic):Dynamic;

	public static function getInfo(path:String, filtertype:FileType, info:Dynamic):Dynamic;

	public static function getRealDirectory(filepath:String):String;

	public static function getRequirePath():String;

	public static function getSaveDirectory():String;

	public static function getSource():String;

	public static function getSourceBaseDirectory():String;

	public static function getUserDirectory():String;

	public static function getWorkingDirectory():String;

	public static function init(appname:String):Void;

	public static function isFused():Bool;

	public static function lines(name:String):Function;

	public static function load(name:String):LoadResult;

	public static function mount(archive:String, mountpoint:String, appendToPath:Bool):Bool;

	public static function mount(filedata:FileData, mountpoint:String, appendToPath:Bool):Bool;

	public static function mount(data:Data, archivename:String, mountpoint:String, appendToPath:Bool):Bool;

	public static function newFile(filename:String):File;

	public static function newFile(filename:String, mode:FileMode):NewFileResult;

	public static function newFileData(contents:String, name:String):FileData;

	public static function newFileData(originaldata:Data, name:String):FileData;

	public static function newFileData(filepath:String):NewFileDataResult;

	public static function read(name:String, size:Float):ReadResult;

	public static function read(container:ContainerType, name:String, size:Float):ReadResult;

	public static function remove(name:String):Bool;

	public static function setCRequirePath(paths:String):Void;

	public static function setIdentity(name:String):Void;

	public static function setIdentity(name:String):Void;

	public static function setRequirePath(paths:String):Void;

	public static function setSource(path:String):Void;

	public static function setSymlinksEnabled(enable:Bool):Void;

	public static function unmount(archive:String):Bool;

	public static function write(name:String, data:String, size:Float):WriteResult;

	public static function write(name:String, data:Data, size:Float):WriteResult;

}

extern class DroppedFile {

}

extern class File {

	public static function close():Bool;

	public static function flush():FlushResult;

	public static function getBuffer():Buffer;

	public static function getFilename():String;

	public static function getMode():FileMode;

	public static function getSize():Float;

	public static function isEOF():Bool;

	public static function isOpen():Bool;

	public static function lines():Function;

	public static function open(mode:FileMode):OpenResult;

	public static function read(bytes:Float):ReadResult;

	public static function read(container:ContainerType, bytes:Float):ReadResult;

	public static function seek(pos:Float):Bool;

	public static function setBuffer(mode:BufferMode, size:Float):SetBufferResult;

	public static function tell():Float;

	public static function write(data:String, size:Float):WriteResult;

	public static function write(data:Data, size:Float):WriteResult;

}

extern class FileData {

	public static function getExtension():String;

	public static function getFilename():String;

}

extern enum BufferMode {
	NONE;
	LINE;
	FULL;
}

extern enum FileDecoder {
	FILE;
	BASE64;
}

extern enum FileMode {
	R;
	W;
	A;
	C;
}

extern enum FileType {
	FILE;
	DIRECTORY;
	SYMLINK;
	OTHER;
}

extern class AppendResult {

	public var success:Bool;
	public var errormsg:String;

}

extern class AppendResult {

	public var success:Bool;
	public var errormsg:String;

}

extern class LoadResult {

	public var chunk:Function;
	public var errormsg:String;

}

extern class NewFileResult {

	public var file:File;
	public var errorstr:String;

}

extern class NewFileDataResult {

	public var data:FileData;
	public var err:String;

}

extern class ReadResult {

	public var contents:String;
	public var size:Float;
	public var contents:Nil;
	public var error:String;

}

extern class ReadResult {

	public var contents:FileData or string;
	public var size:Float;
	public var contents:Nil;
	public var error:String;

}

extern class WriteResult {

	public var success:Bool;
	public var message:String;

}

extern class WriteResult {

	public var success:Bool;
	public var message:String;

}

extern class FlushResult {

	public var success:Bool;
	public var err:String;

}

extern class Buffer {

	public var mode:BufferMode;
	public var size:Float;

}

extern class OpenResult {

	public var ok:Bool;
	public var err:String;

}

extern class SetBufferResult {

	public var success:Bool;
	public var errorstr:String;

}
