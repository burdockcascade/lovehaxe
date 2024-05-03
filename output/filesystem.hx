// DO NOT EDIT THIS FILE
// GENERATED ON 2024-05-04 00:04:23

package love.filesystem;

import haxe.extern.Rest;
import lua.Table;
import lua.UserData;

@:native("love.filesystem")
extern class Filesystem {

	@:overload
	public static function append(name:String, data:String, size:Float = Dynamic): AppendResult;

	@:overload
	public static function append(name:String, data:Dynamic, size:Float = Dynamic): AppendResult;

	public static function areSymlinksEnabled(): Bool;

	public static function createDirectory(name:String): Bool;

	public static function getAppdataDirectory(): String;

	public static function getCRequirePath(): String;

	@:overload
	public static function getDirectoryItems(dir:String): Table<Dynamic,Dynamic>;

	@:overload
	public static function getDirectoryItems(dir:String, callback:Dynamic): Table<Dynamic,Dynamic>;

	public static function getIdentity(): String;

	@:overload
	public static function getInfo(path:String, filtertype:Dynamic = null): Table<Dynamic,Dynamic>;

	@:overload
	public static function getInfo(path:String, info:Table<Dynamic,Dynamic>): Table<Dynamic,Dynamic>;

	@:overload
	public static function getInfo(path:String, filtertype:Dynamic, info:Table<Dynamic,Dynamic>): Table<Dynamic,Dynamic>;

	public static function getRealDirectory(filepath:String): String;

	public static function getRequirePath(): String;

	public static function getSaveDirectory(): String;

	public static function getSource(): String;

	public static function getSourceBaseDirectory(): String;

	public static function getUserDirectory(): String;

	public static function getWorkingDirectory(): String;

	public static function init(appname:String): Void;

	public static function isFused(): Bool;

	public static function lines(name:String): Dynamic;

	public static function load(name:String): LoadResult;

	@:overload
	public static function mount(archive:String, mountpoint:String, appendToPath:Bool = Dynamic): Bool;

	@:overload
	public static function mount(filedata:Dynamic, mountpoint:String, appendToPath:Bool = Dynamic): Bool;

	@:overload
	public static function mount(data:Dynamic, archivename:String, mountpoint:String, appendToPath:Bool = Dynamic): Bool;

	@:overload
	public static function newFile(filename:String): Dynamic;

	@:overload
	public static function newFile(filename:String, mode:Dynamic): NewFileResult;

	@:overload
	public static function newFileData(contents:String, name:String): Dynamic;

	@:overload
	public static function newFileData(originaldata:Dynamic, name:String): Dynamic;

	@:overload
	public static function newFileData(filepath:String): NewFileDataResult;

	@:overload
	public static function read(name:String, size:Float = Dynamic): ReadResult;

	@:overload
	public static function read(container:Dynamic, name:String, size:Float = Dynamic): ReadResult;

	public static function remove(name:String): Bool;

	public static function setCRequirePath(paths:String): Void;

	@:overload
	public static function setIdentity(name:String): Void;

	@:overload
	public static function setIdentity(name:String): Void;

	public static function setRequirePath(paths:String): Void;

	public static function setSource(path:String): Void;

	public static function setSymlinksEnabled(enable:Bool): Void;

	public static function unmount(archive:String): Bool;

	@:overload
	public static function write(name:String, data:String, size:Float = Dynamic): WriteResult;

	@:overload
	public static function write(name:String, data:Dynamic, size:Float = Dynamic): WriteResult;

}

extern public class AppendResult {
	public var success:Bool;
	public var errormsg:String;
}

extern public class AppendResult {
	public var success:Bool;
	public var errormsg:String;
}

extern public class LoadResult {
	public var chunk:Dynamic;
	public var errormsg:String;
}

extern public class NewFileResult {
	public var file:Dynamic;
	public var errorstr:String;
}

extern public class NewFileDataResult {
	public var data:Dynamic;
	public var err:String;
}

extern public class ReadResult {
	public var contents:String;
	public var size:Float;
	public var contents:null;
	public var error:String;
}

extern public class ReadResult {
	public var contents:Dynamic;
	public var size:Float;
	public var contents:null;
	public var error:String;
}

extern public class WriteResult {
	public var success:Bool;
	public var message:String;
}

extern public class WriteResult {
	public var success:Bool;
	public var message:String;
}

extern class DroppedFile extends File {

}

extern class File extends Object {

	public static function close(): Bool;

	public static function flush(): FlushResult;

	public static function getBuffer(): BufferResult;

	public static function getFilename(): String;

	public static function getMode(): Dynamic;

	public static function getSize(): Float;

	public static function isEOF(): Bool;

	public static function isOpen(): Bool;

	public static function lines(): Dynamic;

	public static function open(mode:Dynamic): OpenResult;

	@:overload
	public static function read(bytes:Float = Dynamic): ReadResult;

	@:overload
	public static function read(container:Dynamic, bytes:Float = Dynamic): ReadResult;

	public static function seek(pos:Float): Bool;

	public static function setBuffer(mode:Dynamic, size:Float = Dynamic): SetBufferResult;

	public static function tell(): Float;

	@:overload
	public static function write(data:String, size:Float = Dynamic): WriteResult;

	@:overload
	public static function write(data:Dynamic, size:Float = Dynamic): WriteResult;

}

extern class FileData extends Data {

	public static function getExtension(): String;

	public static function getFilename(): String;

}

enum abstract BufferMode {
	var None = "none";
	var Line = "line";
	var Full = "full";
}

enum abstract FileDecoder {
	var File = "file";
	var Base64 = "base64";
}

enum abstract FileMode {
	var R = "r";
	var W = "w";
	var A = "a";
	var C = "c";
}

enum abstract FileType {
	var File = "file";
	var Directory = "directory";
	var Symlink = "symlink";
	var Other = "other";
}

