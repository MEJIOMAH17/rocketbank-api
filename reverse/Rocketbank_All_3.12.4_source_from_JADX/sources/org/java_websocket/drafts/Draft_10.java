package org.java_websocket.drafts;

import java.math.BigInteger;
import java.nio.ByteBuffer;
import java.security.MessageDigest;
import java.util.Collections;
import java.util.LinkedList;
import java.util.List;
import java.util.Random;
import org.java_websocket.WebSocket.Role;
import org.java_websocket.drafts.Draft.CloseHandshakeType;
import org.java_websocket.drafts.Draft.HandshakeState;
import org.java_websocket.exceptions.InvalidDataException;
import org.java_websocket.exceptions.InvalidFrameException;
import org.java_websocket.exceptions.InvalidHandshakeException;
import org.java_websocket.exceptions.LimitExedeedException;
import org.java_websocket.exceptions.NotSendableException;
import org.java_websocket.framing.CloseFrameBuilder;
import org.java_websocket.framing.FrameBuilder;
import org.java_websocket.framing.Framedata;
import org.java_websocket.framing.Framedata.Opcode;
import org.java_websocket.framing.FramedataImpl1;
import org.java_websocket.handshake.ClientHandshake;
import org.java_websocket.handshake.HandshakeBuilder;
import org.java_websocket.handshake.ServerHandshake;
import org.java_websocket.util.Base64;
import org.java_websocket.util.Charsetfunctions;
import ru.rocketbank.r2d2.root.chat.ChatFragment;

public class Draft_10 extends Draft {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private Framedata fragmentedframe = null;
    private ByteBuffer incompleteframe;
    private final Random reuseableRandom = new Random();

    private class IncompleteException extends Throwable {
        private static final long serialVersionUID = 7330519489840500997L;
        private int preferedsize;

        public IncompleteException(int i) {
            this.preferedsize = i;
        }

        public int getPreferedSize() {
            return this.preferedsize;
        }
    }

    public static int readVersion(org.java_websocket.handshake.Handshakedata r2) {
        /* JADX: method processing error */
/*
Error: java.lang.NullPointerException
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.searchTryCatchDominators(ProcessTryCatchRegions.java:75)
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.process(ProcessTryCatchRegions.java:45)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.postProcessRegions(RegionMakerVisitor.java:63)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:58)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:31)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:17)
	at jadx.core.ProcessClass.process(ProcessClass.java:34)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
        /*
        r0 = "Sec-WebSocket-Version";
        r2 = r2.getFieldValue(r0);
        r0 = r2.length();
        r1 = -1;
        if (r0 <= 0) goto L_0x001c;
    L_0x000d:
        r0 = new java.lang.Integer;	 Catch:{ NumberFormatException -> 0x001b }
        r2 = r2.trim();	 Catch:{ NumberFormatException -> 0x001b }
        r0.<init>(r2);	 Catch:{ NumberFormatException -> 0x001b }
        r2 = r0.intValue();	 Catch:{ NumberFormatException -> 0x001b }
        return r2;
    L_0x001b:
        return r1;
    L_0x001c:
        return r1;
        */
        throw new UnsupportedOperationException("Method not decompiled: org.java_websocket.drafts.Draft_10.readVersion(org.java_websocket.handshake.Handshakedata):int");
    }

    public final HandshakeState acceptHandshakeAsClient(ClientHandshake clientHandshake, ServerHandshake serverHandshake) throws InvalidHandshakeException {
        if (clientHandshake.hasFieldValue("Sec-WebSocket-Key")) {
            if (serverHandshake.hasFieldValue("Sec-WebSocket-Accept")) {
                if (generateFinalKey(clientHandshake.getFieldValue("Sec-WebSocket-Key")).equals(serverHandshake.getFieldValue("Sec-WebSocket-Accept")) != null) {
                    return HandshakeState.MATCHED;
                }
                return HandshakeState.NOT_MATCHED;
            }
        }
        return HandshakeState.NOT_MATCHED;
    }

    public HandshakeState acceptHandshakeAsServer(ClientHandshake clientHandshake) throws InvalidHandshakeException {
        int readVersion = readVersion(clientHandshake);
        if (readVersion != 7) {
            if (readVersion != 8) {
                return HandshakeState.NOT_MATCHED;
            }
        }
        return Draft.basicAccept(clientHandshake) != null ? HandshakeState.MATCHED : HandshakeState.NOT_MATCHED;
    }

    public final ByteBuffer createBinaryFrame(Framedata framedata) {
        int i;
        ByteBuffer payloadData = framedata.getPayloadData();
        int i2 = 0;
        int i3 = this.role == Role.CLIENT ? 1 : 0;
        int i4 = payloadData.remaining() <= 125 ? 1 : payloadData.remaining() <= ChatFragment.TYPE_MESSAGE_TYPING ? 2 : 8;
        ByteBuffer allocate = ByteBuffer.allocate((((i4 > 1 ? i4 + 1 : i4) + 1) + (i3 != 0 ? 4 : 0)) + payloadData.remaining());
        Opcode opcode = framedata.getOpcode();
        if (opcode == Opcode.CONTINUOUS) {
            i = 0;
        } else if (opcode == Opcode.TEXT) {
            i = 1;
        } else if (opcode == Opcode.BINARY) {
            i = 2;
        } else if (opcode == Opcode.CLOSING) {
            i = 8;
        } else if (opcode == Opcode.PING) {
            i = 9;
        } else if (opcode == Opcode.PONG) {
            i = 10;
        } else {
            StringBuilder stringBuilder = new StringBuilder("Don't know how to handle ");
            stringBuilder.append(opcode.toString());
            throw new RuntimeException(stringBuilder.toString());
        }
        int i5 = -128;
        allocate.put((byte) (((byte) (framedata.isFin() != null ? -128 : null)) | i));
        framedata = toByteArray((long) payloadData.remaining(), i4);
        if (i4 == 1) {
            framedata = framedata[0];
            if (i3 == 0) {
                i5 = 0;
            }
            allocate.put((byte) (framedata | i5));
        } else if (i4 == 2) {
            if (i3 == 0) {
                i5 = 0;
            }
            allocate.put((byte) (126 | i5));
            allocate.put(framedata);
        } else if (i4 == 8) {
            if (i3 == 0) {
                i5 = 0;
            }
            allocate.put((byte) (127 | i5));
            allocate.put(framedata);
        } else {
            throw new RuntimeException("Size representation not supported/specified");
        }
        if (i3 != 0) {
            framedata = ByteBuffer.allocate(4);
            framedata.putInt(this.reuseableRandom.nextInt());
            allocate.put(framedata.array());
            while (payloadData.hasRemaining()) {
                allocate.put((byte) (payloadData.get() ^ framedata.get(i2 % 4)));
                i2++;
            }
        } else {
            allocate.put(payloadData);
        }
        allocate.flip();
        return allocate;
    }

    public final List<Framedata> createFrames(ByteBuffer byteBuffer, boolean z) {
        FrameBuilder framedataImpl1 = new FramedataImpl1();
        try {
            framedataImpl1.setPayload(byteBuffer);
            framedataImpl1.setFin(true);
            framedataImpl1.setOptcode(Opcode.BINARY);
            framedataImpl1.setTransferemasked(z);
            return Collections.singletonList(framedataImpl1);
        } catch (Throwable e) {
            throw new NotSendableException(e);
        }
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

    private static String generateFinalKey(String str) {
        str = str.trim();
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(str);
        stringBuilder.append("258EAFA5-E914-47DA-95CA-C5AB0DC85B11");
        str = stringBuilder.toString();
        try {
            return Base64.encodeBytes(MessageDigest.getInstance("SHA1").digest(str.getBytes()));
        } catch (String str2) {
            throw new RuntimeException(str2);
        }
    }

    public ClientHandshake postProcessHandshakeRequestAsClient$4e5e7725(ClientHandshake clientHandshake) {
        clientHandshake.put("Upgrade", "websocket");
        clientHandshake.put("Connection", "Upgrade");
        clientHandshake.put("Sec-WebSocket-Version", "8");
        byte[] bArr = new byte[16];
        this.reuseableRandom.nextBytes(bArr);
        clientHandshake.put("Sec-WebSocket-Key", Base64.encodeBytes(bArr));
        return clientHandshake;
    }

    public final HandshakeBuilder postProcessHandshakeResponseAsServer$450e5a47(ClientHandshake clientHandshake, ServerHandshake serverHandshake) throws InvalidHandshakeException {
        serverHandshake.put("Upgrade", "websocket");
        serverHandshake.put("Connection", clientHandshake.getFieldValue("Connection"));
        serverHandshake.setHttpStatusMessage("Switching Protocols");
        clientHandshake = clientHandshake.getFieldValue("Sec-WebSocket-Key");
        if (clientHandshake == null) {
            throw new InvalidHandshakeException("missing Sec-WebSocket-Key");
        }
        serverHandshake.put("Sec-WebSocket-Accept", generateFinalKey(clientHandshake));
        return serverHandshake;
    }

    private static byte[] toByteArray(long j, int i) {
        byte[] bArr = new byte[i];
        int i2 = (i << 3) - 8;
        for (int i3 = 0; i3 < i; i3++) {
            bArr[i3] = (byte) ((int) (j >>> (i2 - (i3 << 3))));
        }
        return bArr;
    }

    public final List<Framedata> translateFrame(ByteBuffer byteBuffer) throws LimitExedeedException, InvalidDataException {
        while (true) {
            List<Framedata> linkedList = new LinkedList();
            if (this.incompleteframe == null) {
                break;
            }
            try {
                break;
            } catch (IncompleteException e) {
                this.incompleteframe.limit();
                r0 = e.getPreferedSize();
                int preferedSize;
                if (preferedSize < 0) {
                    throw new InvalidDataException(1002, "Negative count");
                }
                ByteBuffer allocate = ByteBuffer.allocate(preferedSize);
                this.incompleteframe.rewind();
                allocate.put(this.incompleteframe);
                this.incompleteframe = allocate;
            }
        }
        byteBuffer.mark();
        int remaining = byteBuffer.remaining();
        int remaining2 = this.incompleteframe.remaining();
        if (remaining2 > remaining) {
            this.incompleteframe.put(byteBuffer.array(), byteBuffer.position(), remaining);
            byteBuffer.position(byteBuffer.position() + remaining);
            return Collections.emptyList();
        }
        this.incompleteframe.put(byteBuffer.array(), byteBuffer.position(), remaining2);
        byteBuffer.position(byteBuffer.position() + remaining2);
        linkedList.add(translateSingleFrame((ByteBuffer) this.incompleteframe.duplicate().position(0)));
        this.incompleteframe = null;
        while (byteBuffer.hasRemaining()) {
            byteBuffer.mark();
            try {
                linkedList.add(translateSingleFrame(byteBuffer));
            } catch (IncompleteException e2) {
                byteBuffer.reset();
                remaining = e2.getPreferedSize();
                if (remaining < 0) {
                    throw new InvalidDataException(1002, "Negative count");
                }
                this.incompleteframe = ByteBuffer.allocate(remaining);
                this.incompleteframe.put(byteBuffer);
            }
        }
        return linkedList;
    }

    private Framedata translateSingleFrame(ByteBuffer byteBuffer) throws IncompleteException, InvalidDataException {
        int remaining = byteBuffer.remaining();
        int i = 2;
        if (remaining < 2) {
            throw new IncompleteException(2);
        }
        byte b = byteBuffer.get();
        int i2 = 0;
        boolean z = (b >> 8) != 0;
        byte b2 = (byte) ((b & 127) >> 4);
        if (b2 != (byte) 0) {
            throw new InvalidFrameException("bad rsv ".concat(String.valueOf(b2)));
        }
        Opcode opcode;
        b2 = byteBuffer.get();
        int i3 = (b2 & -128) != 0 ? 1 : 0;
        int i4 = (byte) (b2 & 127);
        b = (byte) (b & 15);
        switch (b) {
            case (byte) 0:
                opcode = Opcode.CONTINUOUS;
                break;
            case (byte) 1:
                opcode = Opcode.TEXT;
                break;
            case (byte) 2:
                opcode = Opcode.BINARY;
                break;
            default:
                switch (b) {
                    case (byte) 8:
                        opcode = Opcode.CLOSING;
                        break;
                    case (byte) 9:
                        opcode = Opcode.PING;
                        break;
                    case (byte) 10:
                        opcode = Opcode.PONG;
                        break;
                    default:
                        StringBuilder stringBuilder = new StringBuilder("unknow optcode ");
                        stringBuilder.append((short) b);
                        throw new InvalidFrameException(stringBuilder.toString());
                }
        }
        if (z || !(opcode == Opcode.PING || opcode == Opcode.PONG || opcode == Opcode.CLOSING)) {
            if (i4 < 0 || i4 > 125) {
                if (!(opcode == Opcode.PING || opcode == Opcode.PONG)) {
                    if (opcode != Opcode.CLOSING) {
                        if (i4 == 126) {
                            if (remaining < 4) {
                                throw new IncompleteException(4);
                            }
                            byte[] bArr = new byte[3];
                            bArr[1] = byteBuffer.get();
                            bArr[2] = byteBuffer.get();
                            i4 = new BigInteger(bArr).intValue();
                            i = 4;
                        } else if (remaining < 10) {
                            throw new IncompleteException(10);
                        } else {
                            byte[] bArr2 = new byte[8];
                            for (i4 = 0; i4 < 8; i4++) {
                                bArr2[i4] = byteBuffer.get();
                            }
                            long longValue = new BigInteger(bArr2).longValue();
                            if (longValue > 2147483647L) {
                                throw new LimitExedeedException("Payloadsize is to big...");
                            }
                            i4 = (int) longValue;
                            i = 10;
                        }
                    }
                }
                throw new InvalidFrameException("more than 125 octets");
            }
            i = (i + (i3 != 0 ? 4 : 0)) + i4;
            if (remaining < i) {
                throw new IncompleteException(i);
            } else if (i4 < 0) {
                throw new InvalidDataException(1002, "Negative count");
            } else {
                ByteBuffer allocate = ByteBuffer.allocate(i4);
                if (i3 != 0) {
                    byte[] bArr3 = new byte[4];
                    byteBuffer.get(bArr3);
                    while (i2 < i4) {
                        allocate.put((byte) (byteBuffer.get() ^ bArr3[i2 % 4]));
                        i2++;
                    }
                } else {
                    allocate.put(byteBuffer.array(), byteBuffer.position(), allocate.limit());
                    byteBuffer.position(byteBuffer.position() + allocate.limit());
                }
                if (opcode == Opcode.CLOSING) {
                    byteBuffer = new CloseFrameBuilder();
                } else {
                    byteBuffer = new FramedataImpl1();
                    byteBuffer.setFin(z);
                    byteBuffer.setOptcode(opcode);
                }
                allocate.flip();
                byteBuffer.setPayload(allocate);
                return byteBuffer;
            }
        }
        throw new InvalidFrameException("control frames may no be fragmented");
    }

    public final void reset() {
        this.incompleteframe = null;
    }

    public Draft copyInstance() {
        return new Draft_10();
    }

    public final CloseHandshakeType getCloseHandshakeType() {
        return CloseHandshakeType.TWOWAY;
    }
}
