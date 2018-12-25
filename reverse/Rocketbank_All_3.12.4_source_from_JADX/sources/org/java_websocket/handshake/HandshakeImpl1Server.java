package org.java_websocket.handshake;

import com.google.maps.android.C0651R.drawable;

public final class HandshakeImpl1Server extends drawable implements ServerHandshake {
    private short httpstatus;
    private String httpstatusmessage;

    public final String getHttpStatusMessage() {
        return this.httpstatusmessage;
    }

    public final void setHttpStatusMessage(String str) {
        this.httpstatusmessage = str;
    }

    public final void setHttpStatus(short s) {
        this.httpstatus = s;
    }
}
