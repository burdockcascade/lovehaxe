// DO NOT EDIT THIS FILE
// GENERATED ON 2024-05-04 09:34:57

package love;

import lua.Table;
@:native("love.keyboard")
extern class Keyboard {

	public static function getKeyFromScancode(scancode:Scancode): KeyConstant;

	public static function getScancodeFromKey(key:KeyConstant): Scancode;

	public static function hasKeyRepeat(): Bool;

	public static function hasScreenKeyboard(): Bool;

	public static function hasTextInput(): Bool;

	@:overload
	public static function isDown(key:KeyConstant): Bool;

	@:overload
	public static function isDown(key:KeyConstant, ...:KeyConstant): Bool;

	public static function isScancodeDown(scancode:Scancode, ...:Scancode): Bool;

	public static function setKeyRepeat(enable:Bool): Void;

	@:overload
	public static function setTextInput(enable:Bool): Void;

	@:overload
	public static function setTextInput(enable:Bool, x:Float, y:Float, w:Float, h:Float): Void;

}

enum KeyConstant {
	A;
	B;
	C;
	D;
	E;
	F;
	G;
	H;
	I;
	J;
	K;
	L;
	M;
	N;
	O;
	P;
	Q;
	R;
	S;
	T;
	U;
	V;
	W;
	X;
	Y;
	Z;
	0;
	1;
	2;
	3;
	4;
	5;
	6;
	7;
	8;
	9;
	Space;
	!;
	";
	#;
	$;
	&;
	';
	(;
	);
	*;
	+;
	,;
	-;
	.;
	/;
	:;
	;;
	<;
	=;
	>;
	?;
	@;
	[;
	\;
	];
	^;
	_;
	`;
	Kp0;
	Kp1;
	Kp2;
	Kp3;
	Kp4;
	Kp5;
	Kp6;
	Kp7;
	Kp8;
	Kp9;
	Kp.;
	Kp/;
	Kp*;
	Kp-;
	Kp+;
	Kpenter;
	Kp=;
	Up;
	Down;
	Right;
	Left;
	Home;
	End;
	Pageup;
	Pagedown;
	Insert;
	Backspace;
	Tab;
	Clear;
	Return;
	Delete;
	F1;
	F2;
	F3;
	F4;
	F5;
	F6;
	F7;
	F8;
	F9;
	F10;
	F11;
	F12;
	F13;
	F14;
	F15;
	Numlock;
	Capslock;
	Scrollock;
	Rshift;
	Lshift;
	Rctrl;
	Lctrl;
	Ralt;
	Lalt;
	Rmeta;
	Lmeta;
	Lsuper;
	Rsuper;
	Mode;
	Compose;
	Pause;
	Escape;
	Help;
	Print;
	Sysreq;
	Break;
	Menu;
	Power;
	Euro;
	Undo;
	Www;
	Mail;
	Calculator;
	Appsearch;
	Apphome;
	Appback;
	Appforward;
	Apprefresh;
	Appbookmarks;
}

enum Scancode {
	A;
	B;
	C;
	D;
	E;
	F;
	G;
	H;
	I;
	J;
	K;
	L;
	M;
	N;
	O;
	P;
	Q;
	R;
	S;
	T;
	U;
	V;
	W;
	X;
	Y;
	Z;
	1;
	2;
	3;
	4;
	5;
	6;
	7;
	8;
	9;
	0;
	Return;
	Escape;
	Backspace;
	Tab;
	Space;
	-;
	=;
	[;
	];
	\;
	Nonus#;
	;;
	';
	`;
	,;
	.;
	/;
	Capslock;
	F1;
	F2;
	F3;
	F4;
	F5;
	F6;
	F7;
	F8;
	F9;
	F10;
	F11;
	F12;
	F13;
	F14;
	F15;
	F16;
	F17;
	F18;
	F19;
	F20;
	F21;
	F22;
	F23;
	F24;
	Lctrl;
	Lshift;
	Lalt;
	Lgui;
	Rctrl;
	Rshift;
	Ralt;
	Rgui;
	Printscreen;
	Scrolllock;
	Pause;
	Insert;
	Home;
	Numlock;
	Pageup;
	Delete;
	End;
	Pagedown;
	Right;
	Left;
	Down;
	Up;
	Nonusbackslash;
	Application;
	Execute;
	Help;
	Menu;
	Select;
	Stop;
	Again;
	Undo;
	Cut;
	Copy;
	Paste;
	Find;
	Kp/;
	Kp*;
	Kp-;
	Kp+;
	Kp=;
	Kpenter;
	Kp1;
	Kp2;
	Kp3;
	Kp4;
	Kp5;
	Kp6;
	Kp7;
	Kp8;
	Kp9;
	Kp0;
	Kp.;
	International1;
	International2;
	International3;
	International4;
	International5;
	International6;
	International7;
	International8;
	International9;
	Lang1;
	Lang2;
	Lang3;
	Lang4;
	Lang5;
	Mute;
	Volumeup;
	Volumedown;
	Audionext;
	Audioprev;
	Audiostop;
	Audioplay;
	Audiomute;
	Mediaselect;
	Www;
	Mail;
	Calculator;
	Computer;
	Acsearch;
	Achome;
	Acback;
	Acforward;
	Acstop;
	Acrefresh;
	Acbookmarks;
	Power;
	Brightnessdown;
	Brightnessup;
	Displayswitch;
	Kbdillumtoggle;
	Kbdillumdown;
	Kbdillumup;
	Eject;
	Sleep;
	Alterase;
	Sysreq;
	Cancel;
	Clear;
	Prior;
	Return2;
	Separator;
	Out;
	Oper;
	Clearagain;
	Crsel;
	Exsel;
	Kp00;
	Kp000;
	Thsousandsseparator;
	Decimalseparator;
	Currencyunit;
	Currencysubunit;
	App1;
	App2;
	Unknown;
}

