package org.java_websocket.handshake;

import com.google.maps.android.C0651R.drawable;
import org.slf4j.Marker;

public final class HandshakeImpl1Client extends drawable implements ClientHandshake {
    private String resourceDescriptor = Marker.ANY_MARKER;

    public final void setResourceDescriptor(String str) throws IllegalArgumentException {
        if (str == null) {
            throw new IllegalArgumentException("http resource descriptor must not be null");
        }
        this.resourceDescriptor = str;
    }

    public final String getResourceDescriptor() {
        return this.resourceDescriptor;
    }
}
