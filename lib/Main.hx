package;

import love.System;
import love.Window;
import love.Thread;

class Main {

    public static function main() {
    
        var t: Thread = new Thread();
        t.start(1, 2, 3, 4);
        

    }

}