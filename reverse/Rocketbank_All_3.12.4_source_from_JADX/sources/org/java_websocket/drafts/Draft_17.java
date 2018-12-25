package org.java_websocket.drafts;

import org.java_websocket.drafts.Draft.HandshakeState;
import org.java_websocket.exceptions.InvalidHandshakeException;
import org.java_websocket.handshake.ClientHandshake;

public final class Draft_17 extends Draft_10 {
    public final HandshakeState acceptHandshakeAsServer(ClientHandshake clientHandshake) throws InvalidHandshakeException {
        if (Draft_10.readVersion(clientHandshake) == 13) {
            return HandshakeState.MATCHED;
        }
        return HandshakeState.NOT_MATCHED;
    }

    public final ClientHandshake postProcessHandshakeRequestAsClient$4e5e7725(ClientHandshake clientHandshake) {
        super.postProcessHandshakeRequestAsClient$4e5e7725(clientHandshake);
        clientHandshake.put("Sec-WebSocket-Version", "13");
        return clientHandshake;
    }

    public final Draft copyInstance() {
        return new Draft_17();
    }
}
