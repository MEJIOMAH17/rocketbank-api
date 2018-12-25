package org.java_websocket.drafts;

import java.nio.ByteBuffer;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import org.java_websocket.WebSocket.Role;
import org.java_websocket.exceptions.IncompleteHandshakeException;
import org.java_websocket.exceptions.InvalidDataException;
import org.java_websocket.exceptions.InvalidHandshakeException;
import org.java_websocket.framing.FrameBuilder;
import org.java_websocket.framing.Framedata;
import org.java_websocket.framing.Framedata.Opcode;
import org.java_websocket.framing.FramedataImpl1;
import org.java_websocket.handshake.ClientHandshake;
import org.java_websocket.handshake.HandshakeBuilder;
import org.java_websocket.handshake.HandshakeImpl1Client;
import org.java_websocket.handshake.HandshakeImpl1Server;
import org.java_websocket.handshake.Handshakedata;
import org.java_websocket.handshake.ServerHandshake;
import org.java_websocket.util.Charsetfunctions;

public abstract class Draft {
    public static final byte[] FLASH_POLICY_REQUEST = Charsetfunctions.utf8Bytes("<policy-file-request/>\u0000");
    public static int INITIAL_FAMESIZE = 64;
    public static int MAX_FAME_SIZE = 1000;
    protected Opcode continuousFrameType = null;
    protected Role role = null;

    public enum CloseHandshakeType {
        NONE,
        ONEWAY,
        TWOWAY
    }

    public enum HandshakeState {
        MATCHED,
        NOT_MATCHED
    }

    public abstract HandshakeState acceptHandshakeAsClient(ClientHandshake clientHandshake, ServerHandshake serverHandshake) throws InvalidHandshakeException;

    public abstract HandshakeState acceptHandshakeAsServer(ClientHandshake clientHandshake) throws InvalidHandshakeException;

    public abstract Draft copyInstance();

    public abstract ByteBuffer createBinaryFrame(Framedata framedata);

    public abstract List<Framedata> createFrames(String str, boolean z);

    public abstract List<Framedata> createFrames(ByteBuffer byteBuffer, boolean z);

    public abstract CloseHandshakeType getCloseHandshakeType();

    public abstract ClientHandshake postProcessHandshakeRequestAsClient$4e5e7725(ClientHandshake clientHandshake) throws InvalidHandshakeException;

    public abstract HandshakeBuilder postProcessHandshakeResponseAsServer$450e5a47(ClientHandshake clientHandshake, ServerHandshake serverHandshake) throws InvalidHandshakeException;

    public abstract void reset();

    public abstract List<Framedata> translateFrame(ByteBuffer byteBuffer) throws InvalidDataException;

    public static HandshakeBuilder translateHandshakeHttp(ByteBuffer byteBuffer, Role role) throws InvalidHandshakeException, IncompleteHandshakeException {
        String readStringLine = readStringLine(byteBuffer);
        if (readStringLine == null) {
            throw new IncompleteHandshakeException(byteBuffer.capacity() + 128);
        }
        String[] split = readStringLine.split(" ", 3);
        if (split.length != 3) {
            throw new InvalidHandshakeException();
        }
        if (role == Role.CLIENT) {
            role = new HandshakeImpl1Server();
            ServerHandshake serverHandshake = (ServerHandshake) role;
            serverHandshake.setHttpStatus(Short.parseShort(split[1]));
            serverHandshake.setHttpStatusMessage(split[2]);
        } else {
            role = new HandshakeImpl1Client();
            role.setResourceDescriptor(split[1]);
        }
        while (true) {
            readStringLine = readStringLine(byteBuffer);
            if (readStringLine != null && readStringLine.length() > 0) {
                split = readStringLine.split(":", 2);
                if (split.length != 2) {
                    throw new InvalidHandshakeException("not an http header");
                }
                role.put(split[0], split[1].replaceFirst("^ +", ""));
            } else if (readStringLine == null) {
                return role;
            } else {
                throw new IncompleteHandshakeException();
            }
        }
        if (readStringLine == null) {
            return role;
        }
        throw new IncompleteHandshakeException();
    }

    protected static boolean basicAccept(Handshakedata handshakedata) {
        return (!handshakedata.getFieldValue("Upgrade").equalsIgnoreCase("websocket") || handshakedata.getFieldValue("Connection").toLowerCase(Locale.ENGLISH).contains("upgrade") == null) ? null : true;
    }

    public final List<Framedata> continuousFrame(Opcode opcode, ByteBuffer byteBuffer, boolean z) {
        if (opcode == Opcode.BINARY || opcode == Opcode.TEXT || opcode == Opcode.TEXT) {
            if (this.continuousFrameType != null) {
                this.continuousFrameType = Opcode.CONTINUOUS;
            } else {
                this.continuousFrameType = opcode;
            }
            FrameBuilder framedataImpl1 = new FramedataImpl1(this.continuousFrameType);
            try {
                framedataImpl1.setPayload(byteBuffer);
                framedataImpl1.setFin(z);
                if (z) {
                    this.continuousFrameType = null;
                } else {
                    this.continuousFrameType = opcode;
                }
                return Collections.singletonList(framedataImpl1);
            } catch (Opcode opcode2) {
                throw new RuntimeException(opcode2);
            }
        }
        throw new IllegalArgumentException("Only Opcode.BINARY or  Opcode.TEXT are allowed");
    }

    public static List<ByteBuffer> createHandshake$60b10c38(Handshakedata handshakedata) {
        return createHandshake$c0e546e$2d9f3f98(handshakedata);
    }

    public static List<ByteBuffer> createHandshake$c0e546e$2d9f3f98(Handshakedata handshakedata) {
        int i;
        StringBuilder stringBuilder = new StringBuilder(100);
        if (handshakedata instanceof ClientHandshake) {
            stringBuilder.append("GET ");
            stringBuilder.append(((ClientHandshake) handshakedata).getResourceDescriptor());
            stringBuilder.append(" HTTP/1.1");
        } else if (handshakedata instanceof ServerHandshake) {
            StringBuilder stringBuilder2 = new StringBuilder("HTTP/1.1 101 ");
            stringBuilder2.append(((ServerHandshake) handshakedata).getHttpStatusMessage());
            stringBuilder.append(stringBuilder2.toString());
        } else {
            throw new RuntimeException("unknow role");
        }
        stringBuilder.append("\r\n");
        Iterator iterateHttpFields = handshakedata.iterateHttpFields();
        while (iterateHttpFields.hasNext()) {
            String str = (String) iterateHttpFields.next();
            String fieldValue = handshakedata.getFieldValue(str);
            stringBuilder.append(str);
            stringBuilder.append(": ");
            stringBuilder.append(fieldValue);
            stringBuilder.append("\r\n");
        }
        stringBuilder.append("\r\n");
        byte[] asciiBytes = Charsetfunctions.asciiBytes(stringBuilder.toString());
        handshakedata = handshakedata.getContent();
        if (handshakedata == null) {
            i = 0;
        } else {
            i = handshakedata.length;
        }
        ByteBuffer allocate = ByteBuffer.allocate(i + asciiBytes.length);
        allocate.put(asciiBytes);
        if (handshakedata != null) {
            allocate.put(handshakedata);
        }
        allocate.flip();
        return Collections.singletonList(allocate);
    }

    public Handshakedata translateHandshake(ByteBuffer byteBuffer) throws InvalidHandshakeException {
        return translateHandshakeHttp(byteBuffer, this.role);
    }

    public final void setParseMode(Role role) {
        this.role = role;
    }

    private static String readStringLine(ByteBuffer byteBuffer) {
        ByteBuffer allocate = ByteBuffer.allocate(byteBuffer.remaining());
        byte b = (byte) 48;
        while (byteBuffer.hasRemaining()) {
            byte b2 = byteBuffer.get();
            allocate.put(b2);
            if (b == (byte) 13 && b2 == (byte) 10) {
                allocate.limit(allocate.position() - 2);
                allocate.position(null);
                break;
            }
            b = b2;
        }
        byteBuffer.position(byteBuffer.position() - allocate.position());
        allocate = null;
        if (allocate == null) {
            return null;
        }
        return Charsetfunctions.stringAscii$55a39fc4(allocate.array(), allocate.limit());
    }
}
