package com.ziautil.capplugin.background;

import android.util.Log;

public class BackgroundServiceCap {

    public String echo(String value) {
        Log.i("Echo", value);
        return value;
    }
}
