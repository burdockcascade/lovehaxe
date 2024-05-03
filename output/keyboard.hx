// DO NOT EDIT THIS FILE
// GENERATED ON 2024-05-04 00:35:19

package love.keyboard;

import haxe.extern.Rest;
import lua.Table;
import lua.UserData;

@:native("love.keyboard")
extern class Keyboard {

	public static function getKeyFromScancode(scancode:Dynamic): Dynamic;

	public static function getScancodeFromKey(key:Dynamic): Dynamic;

	public static function hasKeyRepeat(): Bool;

	public static function hasScreenKeyboard(): Bool;

	public static function hasTextInput(): Bool;

	@:overload
	public static function isDown(key:Dynamic): Bool;

	@:overload
	public static function isDown(key:Dynamic, ...:Dynamic): Bool;

	public static function isScancodeDown(scancode:Dynamic, ...:Dynamic): Bool;

	public static function setKeyRepeat(enable:Bool): Void;

	@:overload
	public static function setTextInput(enable:Bool): Void;

	@:overload
	public static function setTextInput(enable:Bool, x:Float, y:Float, w:Float, h:Float): Void;

}

enum abstract KeyConstant {
	var A = "a";
	var B = "b";
	var C = "c";
	var D = "d";
	var E = "e";
	var F = "f";
	var G = "g";
	var H = "h";
	var I = "i";
	var J = "j";
	var K = "k";
	var L = "l";
	var M = "m";
	var N = "n";
	var O = "o";
	var P = "p";
	var Q = "q";
	var R = "r";
	var S = "s";
	var T = "t";
	var U = "u";
	var V = "v";
	var W = "w";
	var X = "x";
	var Y = "y";
	var Z = "z";
	var 0 = "0";
	var 1 = "1";
	var 2 = "2";
	var 3 = "3";
	var 4 = "4";
	var 5 = "5";
	var 6 = "6";
	var 7 = "7";
	var 8 = "8";
	var 9 = "9";
	var Space = "space";
	var ! = "!";
	var " = """;
	var # = "#";
	var $ = "$";
	var & = "&";
	var ' = "'";
	var ( = "(";
	var ) = ")";
	var * = "*";
	var + = "+";
	var , = ",";
	var - = "-";
	var . = ".";
	var / = "/";
	var : = ":";
	var ; = ";";
	var < = "<";
	var = = "=";
	var > = ">";
	var ? = "?";
	var @ = "@";
	var [ = "[";
	var \ = "\";
	var ] = "]";
	var ^ = "^";
	var _ = "_";
	var ` = "`";
	var Kp0 = "kp0";
	var Kp1 = "kp1";
	var Kp2 = "kp2";
	var Kp3 = "kp3";
	var Kp4 = "kp4";
	var Kp5 = "kp5";
	var Kp6 = "kp6";
	var Kp7 = "kp7";
	var Kp8 = "kp8";
	var Kp9 = "kp9";
	var Kp. = "kp.";
	var Kp/ = "kp/";
	var Kp* = "kp*";
	var Kp- = "kp-";
	var Kp+ = "kp+";
	var Kpenter = "kpenter";
	var Kp= = "kp=";
	var Up = "up";
	var Down = "down";
	var Right = "right";
	var Left = "left";
	var Home = "home";
	var End = "end";
	var Pageup = "pageup";
	var Pagedown = "pagedown";
	var Insert = "insert";
	var Backspace = "backspace";
	var Tab = "tab";
	var Clear = "clear";
	var Return = "return";
	var Delete = "delete";
	var F1 = "f1";
	var F2 = "f2";
	var F3 = "f3";
	var F4 = "f4";
	var F5 = "f5";
	var F6 = "f6";
	var F7 = "f7";
	var F8 = "f8";
	var F9 = "f9";
	var F10 = "f10";
	var F11 = "f11";
	var F12 = "f12";
	var F13 = "f13";
	var F14 = "f14";
	var F15 = "f15";
	var Numlock = "numlock";
	var Capslock = "capslock";
	var Scrollock = "scrollock";
	var Rshift = "rshift";
	var Lshift = "lshift";
	var Rctrl = "rctrl";
	var Lctrl = "lctrl";
	var Ralt = "ralt";
	var Lalt = "lalt";
	var Rmeta = "rmeta";
	var Lmeta = "lmeta";
	var Lsuper = "lsuper";
	var Rsuper = "rsuper";
	var Mode = "mode";
	var Compose = "compose";
	var Pause = "pause";
	var Escape = "escape";
	var Help = "help";
	var Print = "print";
	var Sysreq = "sysreq";
	var Break = "break";
	var Menu = "menu";
	var Power = "power";
	var Euro = "euro";
	var Undo = "undo";
	var Www = "www";
	var Mail = "mail";
	var Calculator = "calculator";
	var Appsearch = "appsearch";
	var Apphome = "apphome";
	var Appback = "appback";
	var Appforward = "appforward";
	var Apprefresh = "apprefresh";
	var Appbookmarks = "appbookmarks";
}

enum abstract Scancode {
	var A = "a";
	var B = "b";
	var C = "c";
	var D = "d";
	var E = "e";
	var F = "f";
	var G = "g";
	var H = "h";
	var I = "i";
	var J = "j";
	var K = "k";
	var L = "l";
	var M = "m";
	var N = "n";
	var O = "o";
	var P = "p";
	var Q = "q";
	var R = "r";
	var S = "s";
	var T = "t";
	var U = "u";
	var V = "v";
	var W = "w";
	var X = "x";
	var Y = "y";
	var Z = "z";
	var 1 = "1";
	var 2 = "2";
	var 3 = "3";
	var 4 = "4";
	var 5 = "5";
	var 6 = "6";
	var 7 = "7";
	var 8 = "8";
	var 9 = "9";
	var 0 = "0";
	var Return = "return";
	var Escape = "escape";
	var Backspace = "backspace";
	var Tab = "tab";
	var Space = "space";
	var - = "-";
	var = = "=";
	var [ = "[";
	var ] = "]";
	var \ = "\";
	var Nonus# = "nonus#";
	var ; = ";";
	var ' = "'";
	var ` = "`";
	var , = ",";
	var . = ".";
	var / = "/";
	var Capslock = "capslock";
	var F1 = "f1";
	var F2 = "f2";
	var F3 = "f3";
	var F4 = "f4";
	var F5 = "f5";
	var F6 = "f6";
	var F7 = "f7";
	var F8 = "f8";
	var F9 = "f9";
	var F10 = "f10";
	var F11 = "f11";
	var F12 = "f12";
	var F13 = "f13";
	var F14 = "f14";
	var F15 = "f15";
	var F16 = "f16";
	var F17 = "f17";
	var F18 = "f18";
	var F19 = "f19";
	var F20 = "f20";
	var F21 = "f21";
	var F22 = "f22";
	var F23 = "f23";
	var F24 = "f24";
	var Lctrl = "lctrl";
	var Lshift = "lshift";
	var Lalt = "lalt";
	var Lgui = "lgui";
	var Rctrl = "rctrl";
	var Rshift = "rshift";
	var Ralt = "ralt";
	var Rgui = "rgui";
	var Printscreen = "printscreen";
	var Scrolllock = "scrolllock";
	var Pause = "pause";
	var Insert = "insert";
	var Home = "home";
	var Numlock = "numlock";
	var Pageup = "pageup";
	var Delete = "delete";
	var End = "end";
	var Pagedown = "pagedown";
	var Right = "right";
	var Left = "left";
	var Down = "down";
	var Up = "up";
	var Nonusbackslash = "nonusbackslash";
	var Application = "application";
	var Execute = "execute";
	var Help = "help";
	var Menu = "menu";
	var Select = "select";
	var Stop = "stop";
	var Again = "again";
	var Undo = "undo";
	var Cut = "cut";
	var Copy = "copy";
	var Paste = "paste";
	var Find = "find";
	var Kp/ = "kp/";
	var Kp* = "kp*";
	var Kp- = "kp-";
	var Kp+ = "kp+";
	var Kp= = "kp=";
	var Kpenter = "kpenter";
	var Kp1 = "kp1";
	var Kp2 = "kp2";
	var Kp3 = "kp3";
	var Kp4 = "kp4";
	var Kp5 = "kp5";
	var Kp6 = "kp6";
	var Kp7 = "kp7";
	var Kp8 = "kp8";
	var Kp9 = "kp9";
	var Kp0 = "kp0";
	var Kp. = "kp.";
	var International1 = "international1";
	var International2 = "international2";
	var International3 = "international3";
	var International4 = "international4";
	var International5 = "international5";
	var International6 = "international6";
	var International7 = "international7";
	var International8 = "international8";
	var International9 = "international9";
	var Lang1 = "lang1";
	var Lang2 = "lang2";
	var Lang3 = "lang3";
	var Lang4 = "lang4";
	var Lang5 = "lang5";
	var Mute = "mute";
	var Volumeup = "volumeup";
	var Volumedown = "volumedown";
	var Audionext = "audionext";
	var Audioprev = "audioprev";
	var Audiostop = "audiostop";
	var Audioplay = "audioplay";
	var Audiomute = "audiomute";
	var Mediaselect = "mediaselect";
	var Www = "www";
	var Mail = "mail";
	var Calculator = "calculator";
	var Computer = "computer";
	var Acsearch = "acsearch";
	var Achome = "achome";
	var Acback = "acback";
	var Acforward = "acforward";
	var Acstop = "acstop";
	var Acrefresh = "acrefresh";
	var Acbookmarks = "acbookmarks";
	var Power = "power";
	var Brightnessdown = "brightnessdown";
	var Brightnessup = "brightnessup";
	var Displayswitch = "displayswitch";
	var Kbdillumtoggle = "kbdillumtoggle";
	var Kbdillumdown = "kbdillumdown";
	var Kbdillumup = "kbdillumup";
	var Eject = "eject";
	var Sleep = "sleep";
	var Alterase = "alterase";
	var Sysreq = "sysreq";
	var Cancel = "cancel";
	var Clear = "clear";
	var Prior = "prior";
	var Return2 = "return2";
	var Separator = "separator";
	var Out = "out";
	var Oper = "oper";
	var Clearagain = "clearagain";
	var Crsel = "crsel";
	var Exsel = "exsel";
	var Kp00 = "kp00";
	var Kp000 = "kp000";
	var Thsousandsseparator = "thsousandsseparator";
	var Decimalseparator = "decimalseparator";
	var Currencyunit = "currencyunit";
	var Currencysubunit = "currencysubunit";
	var App1 = "app1";
	var App2 = "app2";
	var Unknown = "unknown";
}

