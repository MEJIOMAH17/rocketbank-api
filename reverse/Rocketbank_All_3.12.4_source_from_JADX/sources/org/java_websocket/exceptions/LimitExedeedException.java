package org.java_websocket.exceptions;

import android.support.v4.view.PointerIconCompat;

public class LimitExedeedException extends InvalidDataException {
    private static final long serialVersionUID = 6908339749836826785L;

    public LimitExedeedException() {
        super(PointerIconCompat.TYPE_VERTICAL_TEXT);
    }

    public LimitExedeedException(String str) {
        super((int) PointerIconCompat.TYPE_VERTICAL_TEXT, str);
    }
}
