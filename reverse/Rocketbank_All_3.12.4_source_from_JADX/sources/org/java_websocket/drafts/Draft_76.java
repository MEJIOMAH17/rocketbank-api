package org.java_websocket.drafts;

import java.nio.ByteBuffer;
import java.security.MessageDigest;
import java.util.Arrays;
import java.util.LinkedList;
import java.util.List;
import java.util.Random;
import org.java_websocket.drafts.Draft.CloseHandshakeType;
import org.java_websocket.drafts.Draft.HandshakeState;
import org.java_websocket.exceptions.IncompleteHandshakeException;
import org.java_websocket.exceptions.InvalidDataException;
import org.java_websocket.exceptions.InvalidFrameException;
import org.java_websocket.exceptions.InvalidHandshakeException;
import org.java_websocket.framing.CloseFrameBuilder;
import org.java_websocket.framing.Framedata;
import org.java_websocket.framing.Framedata.Opcode;
import org.java_websocket.handshake.ClientHandshake;
import org.java_websocket.handshake.HandshakeBuilder;
import org.java_websocket.handshake.ServerHandshake;

public final class Draft_76 extends Draft_75 {
    private static final byte[] closehandshake = new byte[]{(byte) -1, (byte) 0};
    private boolean failed = false;
    private final Random reuseableRandom = new Random();

    private static byte[] createChallenge(String str, String str2, byte[] bArr) throws InvalidHandshakeException {
        str = getPart(str);
        str2 = getPart(str2);
        try {
            return MessageDigest.getInstance("MD5").digest(new byte[]{str[0], str[1], str[2], str[3], str2[0], str2[1], str2[2], str2[3], bArr[0], bArr[1], bArr[2], bArr[3], bArr[4], bArr[5], bArr[6], bArr[7]});
        } catch (String str3) {
            throw new RuntimeException(str3);
        }
    }

    private static String generateKey() {
        Random random = new Random();
        long nextInt = (long) (random.nextInt(12) + 1);
        int nextInt2 = random.nextInt(12) + 1;
        int i = 0;
        String l = Long.toString(((long) (random.nextInt(Math.abs(new Long(4294967295L / nextInt).intValue())) + 1)) * nextInt);
        for (int i2 = 0; i2 < nextInt2; i2++) {
            int abs = Math.abs(random.nextInt(l.length()));
            char nextInt3 = (char) (random.nextInt(95) + 33);
            if (nextInt3 >= '0' && nextInt3 <= '9') {
                nextInt3 = (char) (nextInt3 - 15);
            }
            l = abs;
        }
        while (((long) i) < nextInt) {
            l = Math.abs(random.nextInt(l.length() - 1) + 1);
            i++;
        }
        return l;
    }

    private static byte[] getPart(java.lang.String r7) throws org.java_websocket.exceptions.InvalidHandshakeException {
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
	at jadx.core.ProcessClass.processDependencies(ProcessClass.java:56)
	at jadx.core.ProcessClass.process(ProcessClass.java:39)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
        /*
        r0 = "[^0-9]";	 Catch:{ NumberFormatException -> 0x0055 }
        r1 = "";	 Catch:{ NumberFormatException -> 0x0055 }
        r0 = r7.replaceAll(r0, r1);	 Catch:{ NumberFormatException -> 0x0055 }
        r0 = java.lang.Long.parseLong(r0);	 Catch:{ NumberFormatException -> 0x0055 }
        r2 = " ";	 Catch:{ NumberFormatException -> 0x0055 }
        r7 = r7.split(r2);	 Catch:{ NumberFormatException -> 0x0055 }
        r7 = r7.length;	 Catch:{ NumberFormatException -> 0x0055 }
        r2 = 1;	 Catch:{ NumberFormatException -> 0x0055 }
        r7 = r7 - r2;	 Catch:{ NumberFormatException -> 0x0055 }
        r3 = (long) r7;	 Catch:{ NumberFormatException -> 0x0055 }
        r5 = 0;	 Catch:{ NumberFormatException -> 0x0055 }
        r7 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1));	 Catch:{ NumberFormatException -> 0x0055 }
        if (r7 != 0) goto L_0x0024;	 Catch:{ NumberFormatException -> 0x0055 }
    L_0x001c:
        r7 = new org.java_websocket.exceptions.InvalidHandshakeException;	 Catch:{ NumberFormatException -> 0x0055 }
        r0 = "invalid Sec-WebSocket-Key (/key2/)";	 Catch:{ NumberFormatException -> 0x0055 }
        r7.<init>(r0);	 Catch:{ NumberFormatException -> 0x0055 }
        throw r7;	 Catch:{ NumberFormatException -> 0x0055 }
    L_0x0024:
        r7 = new java.lang.Long;	 Catch:{ NumberFormatException -> 0x0055 }
        r0 = r0 / r3;	 Catch:{ NumberFormatException -> 0x0055 }
        r7.<init>(r0);	 Catch:{ NumberFormatException -> 0x0055 }
        r0 = r7.longValue();	 Catch:{ NumberFormatException -> 0x0055 }
        r7 = 4;	 Catch:{ NumberFormatException -> 0x0055 }
        r7 = new byte[r7];	 Catch:{ NumberFormatException -> 0x0055 }
        r3 = 0;	 Catch:{ NumberFormatException -> 0x0055 }
        r4 = 24;	 Catch:{ NumberFormatException -> 0x0055 }
        r5 = r0 >> r4;	 Catch:{ NumberFormatException -> 0x0055 }
        r5 = (int) r5;	 Catch:{ NumberFormatException -> 0x0055 }
        r5 = (byte) r5;	 Catch:{ NumberFormatException -> 0x0055 }
        r7[r3] = r5;	 Catch:{ NumberFormatException -> 0x0055 }
        r3 = 8;	 Catch:{ NumberFormatException -> 0x0055 }
        r5 = r0 << r3;	 Catch:{ NumberFormatException -> 0x0055 }
        r5 = r5 >> r4;	 Catch:{ NumberFormatException -> 0x0055 }
        r3 = (int) r5;	 Catch:{ NumberFormatException -> 0x0055 }
        r3 = (byte) r3;	 Catch:{ NumberFormatException -> 0x0055 }
        r7[r2] = r3;	 Catch:{ NumberFormatException -> 0x0055 }
        r2 = 2;	 Catch:{ NumberFormatException -> 0x0055 }
        r3 = 16;	 Catch:{ NumberFormatException -> 0x0055 }
        r5 = r0 << r3;	 Catch:{ NumberFormatException -> 0x0055 }
        r5 = r5 >> r4;	 Catch:{ NumberFormatException -> 0x0055 }
        r3 = (int) r5;	 Catch:{ NumberFormatException -> 0x0055 }
        r3 = (byte) r3;	 Catch:{ NumberFormatException -> 0x0055 }
        r7[r2] = r3;	 Catch:{ NumberFormatException -> 0x0055 }
        r2 = 3;	 Catch:{ NumberFormatException -> 0x0055 }
        r0 = r0 << r4;	 Catch:{ NumberFormatException -> 0x0055 }
        r0 = r0 >> r4;	 Catch:{ NumberFormatException -> 0x0055 }
        r0 = (int) r0;	 Catch:{ NumberFormatException -> 0x0055 }
        r0 = (byte) r0;	 Catch:{ NumberFormatException -> 0x0055 }
        r7[r2] = r0;	 Catch:{ NumberFormatException -> 0x0055 }
        return r7;
    L_0x0055:
        r7 = new org.java_websocket.exceptions.InvalidHandshakeException;
        r0 = "invalid Sec-WebSocket-Key (/key1/ or /key2/)";
        r7.<init>(r0);
        throw r7;
        */
        throw new UnsupportedOperationException("Method not decompiled: org.java_websocket.drafts.Draft_76.getPart(java.lang.String):byte[]");
    }

    public final HandshakeState acceptHandshakeAsClient(ClientHandshake clientHandshake, ServerHandshake serverHandshake) {
        try {
            if (serverHandshake.getFieldValue("Sec-WebSocket-Origin").equals(clientHandshake.getFieldValue("Origin"))) {
                if (Draft.basicAccept(serverHandshake)) {
                    serverHandshake = serverHandshake.getContent();
                    if (serverHandshake != null) {
                        if (serverHandshake.length != 0) {
                            if (Arrays.equals(serverHandshake, createChallenge(clientHandshake.getFieldValue("Sec-WebSocket-Key1"), clientHandshake.getFieldValue("Sec-WebSocket-Key2"), clientHandshake.getContent())) != null) {
                                return HandshakeState.MATCHED;
                            }
                            return HandshakeState.NOT_MATCHED;
                        }
                    }
                    throw new IncompleteHandshakeException();
                }
            }
            return HandshakeState.NOT_MATCHED;
        } catch (ClientHandshake clientHandshake2) {
            throw new RuntimeException("bad handshakerequest", clientHandshake2);
        }
    }

    public final HandshakeState acceptHandshakeAsServer(ClientHandshake clientHandshake) {
        if (!clientHandshake.getFieldValue("Upgrade").equals("WebSocket") || !clientHandshake.getFieldValue("Connection").contains("Upgrade") || clientHandshake.getFieldValue("Sec-WebSocket-Key1").length() <= 0 || clientHandshake.getFieldValue("Sec-WebSocket-Key2").isEmpty() || clientHandshake.hasFieldValue("Origin") == null) {
            return HandshakeState.NOT_MATCHED;
        }
        return HandshakeState.MATCHED;
    }

    public final ClientHandshake postProcessHandshakeRequestAsClient$4e5e7725(ClientHandshake clientHandshake) {
        clientHandshake.put("Upgrade", "WebSocket");
        clientHandshake.put("Connection", "Upgrade");
        clientHandshake.put("Sec-WebSocket-Key1", generateKey());
        clientHandshake.put("Sec-WebSocket-Key2", generateKey());
        if (!clientHandshake.hasFieldValue("Origin")) {
            StringBuilder stringBuilder = new StringBuilder("random");
            stringBuilder.append(this.reuseableRandom.nextInt());
            clientHandshake.put("Origin", stringBuilder.toString());
        }
        byte[] bArr = new byte[8];
        this.reuseableRandom.nextBytes(bArr);
        clientHandshake.setContent(bArr);
        return clientHandshake;
    }

    public final HandshakeBuilder postProcessHandshakeResponseAsServer$450e5a47(ClientHandshake clientHandshake, ServerHandshake serverHandshake) throws InvalidHandshakeException {
        serverHandshake.setHttpStatusMessage("WebSocket Protocol Handshake");
        serverHandshake.put("Upgrade", "WebSocket");
        serverHandshake.put("Connection", clientHandshake.getFieldValue("Connection"));
        serverHandshake.put("Sec-WebSocket-Origin", clientHandshake.getFieldValue("Origin"));
        StringBuilder stringBuilder = new StringBuilder("ws://");
        stringBuilder.append(clientHandshake.getFieldValue("Host"));
        stringBuilder.append(clientHandshake.getResourceDescriptor());
        serverHandshake.put("Sec-WebSocket-Location", stringBuilder.toString());
        String fieldValue = clientHandshake.getFieldValue("Sec-WebSocket-Key1");
        String fieldValue2 = clientHandshake.getFieldValue("Sec-WebSocket-Key2");
        clientHandshake = clientHandshake.getContent();
        if (!(fieldValue == null || fieldValue2 == null || clientHandshake == null)) {
            if (clientHandshake.length == 8) {
                serverHandshake.setContent(createChallenge(fieldValue, fieldValue2, clientHandshake));
                return serverHandshake;
            }
        }
        throw new InvalidHandshakeException("Bad keys");
    }

    public final org.java_websocket.handshake.Handshakedata translateHandshake(java.nio.ByteBuffer r5) throws org.java_websocket.exceptions.InvalidHandshakeException {
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
	at jadx.core.ProcessClass.processDependencies(ProcessClass.java:56)
	at jadx.core.ProcessClass.process(ProcessClass.java:39)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
        /*
        r4 = this;
        r0 = r4.role;
        r0 = org.java_websocket.drafts.Draft.translateHandshakeHttp(r5, r0);
        r1 = "Sec-WebSocket-Key1";
        r1 = r0.hasFieldValue(r1);
        if (r1 != 0) goto L_0x0014;
    L_0x000e:
        r1 = r4.role;
        r2 = org.java_websocket.WebSocket.Role.CLIENT;
        if (r1 != r2) goto L_0x003c;
    L_0x0014:
        r1 = "Sec-WebSocket-Version";
        r1 = r0.hasFieldValue(r1);
        if (r1 != 0) goto L_0x003c;
    L_0x001c:
        r1 = r4.role;
        r2 = org.java_websocket.WebSocket.Role.SERVER;
        r3 = 16;
        if (r1 != r2) goto L_0x0027;
    L_0x0024:
        r1 = 8;
        goto L_0x0028;
    L_0x0027:
        r1 = r3;
    L_0x0028:
        r1 = new byte[r1];
        r5.get(r1);	 Catch:{ BufferUnderflowException -> 0x0031 }
        r0.setContent(r1);
        goto L_0x003c;
    L_0x0031:
        r0 = new org.java_websocket.exceptions.IncompleteHandshakeException;
        r5 = r5.capacity();
        r5 = r5 + r3;
        r0.<init>(r5);
        throw r0;
    L_0x003c:
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: org.java_websocket.drafts.Draft_76.translateHandshake(java.nio.ByteBuffer):org.java_websocket.handshake.Handshakedata");
    }

    public final List<Framedata> translateFrame(ByteBuffer byteBuffer) throws InvalidDataException {
        byteBuffer.mark();
        List<Framedata> translateRegularFrame = super.translateRegularFrame(byteBuffer);
        if (translateRegularFrame != null) {
            return translateRegularFrame;
        }
        byteBuffer.reset();
        translateRegularFrame = this.readyframes;
        this.readingState = true;
        if (this.currentFrame == null) {
            this.currentFrame = ByteBuffer.allocate(2);
            if (byteBuffer.remaining() > this.currentFrame.remaining()) {
                throw new InvalidFrameException();
            }
            this.currentFrame.put(byteBuffer);
            if (this.currentFrame.hasRemaining() != null) {
                this.readyframes = new LinkedList();
                return translateRegularFrame;
            } else if (Arrays.equals(this.currentFrame.array(), closehandshake) != null) {
                translateRegularFrame.add(new CloseFrameBuilder((byte) 0));
                return translateRegularFrame;
            } else {
                throw new InvalidFrameException();
            }
        }
        throw new InvalidFrameException();
    }

    public final ByteBuffer createBinaryFrame(Framedata framedata) {
        if (framedata.getOpcode() == Opcode.CLOSING) {
            return ByteBuffer.wrap(closehandshake);
        }
        return super.createBinaryFrame(framedata);
    }

    public final CloseHandshakeType getCloseHandshakeType() {
        return CloseHandshakeType.ONEWAY;
    }

    public final Draft copyInstance() {
        return new Draft_76();
    }
}
