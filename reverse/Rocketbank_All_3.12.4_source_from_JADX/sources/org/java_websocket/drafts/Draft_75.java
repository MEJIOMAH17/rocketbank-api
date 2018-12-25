package org.java_websocket.drafts;

import java.nio.ByteBuffer;
import java.util.Collections;
import java.util.LinkedList;
import java.util.List;
import java.util.Random;
import org.java_websocket.drafts.Draft.CloseHandshakeType;
import org.java_websocket.drafts.Draft.HandshakeState;
import org.java_websocket.exceptions.InvalidDataException;
import org.java_websocket.exceptions.InvalidFrameException;
import org.java_websocket.exceptions.InvalidHandshakeException;
import org.java_websocket.exceptions.NotSendableException;
import org.java_websocket.framing.FrameBuilder;
import org.java_websocket.framing.Framedata;
import org.java_websocket.framing.Framedata.Opcode;
import org.java_websocket.framing.FramedataImpl1;
import org.java_websocket.handshake.ClientHandshake;
import org.java_websocket.handshake.HandshakeBuilder;
import org.java_websocket.handshake.ServerHandshake;
import org.java_websocket.util.Charsetfunctions;

public class Draft_75 extends Draft {
    protected ByteBuffer currentFrame;
    protected boolean readingState = false;
    protected List<Framedata> readyframes = new LinkedList();
    private final Random reuseableRandom = new Random();

    public HandshakeState acceptHandshakeAsClient(ClientHandshake clientHandshake, ServerHandshake serverHandshake) {
        return (clientHandshake.getFieldValue("WebSocket-Origin").equals(serverHandshake.getFieldValue("Origin")) == null || Draft.basicAccept(serverHandshake) == null) ? HandshakeState.NOT_MATCHED : HandshakeState.MATCHED;
    }

    public HandshakeState acceptHandshakeAsServer(ClientHandshake clientHandshake) {
        if (!clientHandshake.hasFieldValue("Origin") || Draft.basicAccept(clientHandshake) == null) {
            return HandshakeState.NOT_MATCHED;
        }
        return HandshakeState.MATCHED;
    }

    public ByteBuffer createBinaryFrame(Framedata framedata) {
        if (framedata.getOpcode() != Opcode.TEXT) {
            throw new RuntimeException("only text frames supported");
        }
        framedata = framedata.getPayloadData();
        ByteBuffer allocate = ByteBuffer.allocate(framedata.remaining() + 2);
        allocate.put((byte) 0);
        framedata.mark();
        allocate.put(framedata);
        framedata.reset();
        allocate.put((byte) -1);
        allocate.flip();
        return allocate;
    }

    public final List<Framedata> createFrames(ByteBuffer byteBuffer, boolean z) {
        throw new RuntimeException("not yet implemented");
    }

    public final List<Framedata> createFrames(String str, boolean z) {
        FrameBuilder framedataImpl1 = new FramedataImpl1();
        try {
            framedataImpl1.setPayload(ByteBuffer.wrap(Charsetfunctions.utf8Bytes(str)));
            framedataImpl1.setFin(true);
            framedataImpl1.setOptcode(Opcode.TEXT);
            framedataImpl1.setTransferemasked(z);
            return Collections.singletonList(framedataImpl1);
        } catch (Throwable e) {
            throw new NotSendableException(e);
        }
    }

    public ClientHandshake postProcessHandshakeRequestAsClient$4e5e7725(ClientHandshake clientHandshake) throws InvalidHandshakeException {
        clientHandshake.put("Upgrade", "WebSocket");
        clientHandshake.put("Connection", "Upgrade");
        if (!clientHandshake.hasFieldValue("Origin")) {
            StringBuilder stringBuilder = new StringBuilder("random");
            stringBuilder.append(this.reuseableRandom.nextInt());
            clientHandshake.put("Origin", stringBuilder.toString());
        }
        return clientHandshake;
    }

    public HandshakeBuilder postProcessHandshakeResponseAsServer$450e5a47(ClientHandshake clientHandshake, ServerHandshake serverHandshake) throws InvalidHandshakeException {
        serverHandshake.setHttpStatusMessage("Web Socket Protocol Handshake");
        serverHandshake.put("Upgrade", "WebSocket");
        serverHandshake.put("Connection", clientHandshake.getFieldValue("Connection"));
        serverHandshake.put("WebSocket-Origin", clientHandshake.getFieldValue("Origin"));
        StringBuilder stringBuilder = new StringBuilder("ws://");
        stringBuilder.append(clientHandshake.getFieldValue("Host"));
        stringBuilder.append(clientHandshake.getResourceDescriptor());
        serverHandshake.put("WebSocket-Location", stringBuilder.toString());
        return serverHandshake;
    }

    protected final List<Framedata> translateRegularFrame(ByteBuffer byteBuffer) throws InvalidDataException {
        while (byteBuffer.hasRemaining()) {
            byte b = byteBuffer.get();
            if (b == (byte) 0) {
                if (this.readingState) {
                    throw new InvalidFrameException("unexpected START_OF_FRAME");
                }
                this.readingState = true;
            } else if (b == (byte) -1) {
                if (this.readingState) {
                    if (this.currentFrame != null) {
                        this.currentFrame.flip();
                        FramedataImpl1 framedataImpl1 = new FramedataImpl1();
                        framedataImpl1.setPayload(this.currentFrame);
                        framedataImpl1.setFin(true);
                        framedataImpl1.setOptcode(Opcode.TEXT);
                        this.readyframes.add(framedataImpl1);
                        this.currentFrame = null;
                        byteBuffer.mark();
                    }
                    this.readingState = false;
                } else {
                    throw new InvalidFrameException("unexpected END_OF_FRAME");
                }
            } else if (!this.readingState) {
                return null;
            } else {
                if (this.currentFrame == null) {
                    this.currentFrame = ByteBuffer.allocate(INITIAL_FAMESIZE);
                } else if (!this.currentFrame.hasRemaining()) {
                    ByteBuffer byteBuffer2 = this.currentFrame;
                    byteBuffer2.flip();
                    int capacity = byteBuffer2.capacity() << 1;
                    if (capacity < 0) {
                        throw new InvalidDataException(1002, "Negative count");
                    }
                    ByteBuffer allocate = ByteBuffer.allocate(capacity);
                    allocate.put(byteBuffer2);
                    this.currentFrame = allocate;
                }
                this.currentFrame.put(b);
            }
        }
        byteBuffer = this.readyframes;
        this.readyframes = new LinkedList();
        return byteBuffer;
    }

    public List<Framedata> translateFrame(ByteBuffer byteBuffer) throws InvalidDataException {
        byteBuffer = translateRegularFrame(byteBuffer);
        if (byteBuffer != null) {
            return byteBuffer;
        }
        throw new InvalidDataException(1002);
    }

    public final void reset() {
        this.readingState = false;
        this.currentFrame = null;
    }

    public CloseHandshakeType getCloseHandshakeType() {
        return CloseHandshakeType.NONE;
    }

    public Draft copyInstance() {
        return new Draft_75();
    }
}
