package org.java_websocket;

import android.support.v4.view.PointerIconCompat;
import java.net.InetSocketAddress;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import org.java_websocket.WebSocket.READYSTATE;
import org.java_websocket.WebSocket.Role;
import org.java_websocket.drafts.Draft;
import org.java_websocket.drafts.Draft.CloseHandshakeType;
import org.java_websocket.drafts.Draft_10;
import org.java_websocket.drafts.Draft_17;
import org.java_websocket.drafts.Draft_75;
import org.java_websocket.drafts.Draft_76;
import org.java_websocket.exceptions.InvalidDataException;
import org.java_websocket.exceptions.WebsocketNotConnectedException;
import org.java_websocket.framing.CloseFrame;
import org.java_websocket.framing.CloseFrameBuilder;
import org.java_websocket.framing.Framedata;
import org.java_websocket.framing.Framedata.Opcode;
import org.java_websocket.handshake.ClientHandshake;
import org.java_websocket.util.Charsetfunctions;

public class WebSocketImpl implements WebSocket {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    public static boolean DEBUG = false;
    public static int RCVBUF = 16384;
    public static final List<Draft> defaultdraftlist;
    private Integer closecode = null;
    private Boolean closedremotely = null;
    private String closemessage = null;
    private Opcode current_continuous_frame_opcode = null;
    private Draft draft = null;
    private volatile boolean flushandclosestate = false;
    private ClientHandshake handshakerequest = null;
    public final BlockingQueue<ByteBuffer> inQueue;
    public final BlockingQueue<ByteBuffer> outQueue;
    private READYSTATE readystate = READYSTATE.NOT_YET_CONNECTED;
    private String resourceDescriptor = null;
    private Role role;
    private ByteBuffer tmpHandshakeBytes = ByteBuffer.allocate(0);
    private final WebSocketListener wsl;

    static {
        List arrayList = new ArrayList(4);
        defaultdraftlist = arrayList;
        arrayList.add(new Draft_17());
        defaultdraftlist.add(new Draft_10());
        defaultdraftlist.add(new Draft_76());
        defaultdraftlist.add(new Draft_75());
    }

    public WebSocketImpl(WebSocketListener webSocketListener, Draft draft) {
        if (draft == null && this.role == Role.SERVER) {
            throw new IllegalArgumentException("parameters must not be null");
        }
        this.outQueue = new LinkedBlockingQueue();
        this.inQueue = new LinkedBlockingQueue();
        this.wsl = webSocketListener;
        this.role = Role.CLIENT;
        if (draft != null) {
            this.draft = draft.copyInstance();
        }
    }

    public final void decode(ByteBuffer byteBuffer) {
        if (this.readystate != READYSTATE.NOT_YET_CONNECTED) {
            decodeFrames(byteBuffer);
        } else if (!decodeHandshake(byteBuffer)) {
        } else {
            if (byteBuffer.hasRemaining()) {
                decodeFrames(byteBuffer);
            } else if (this.tmpHandshakeBytes.hasRemaining() != null) {
                decodeFrames(this.tmpHandshakeBytes);
            }
        }
    }

    private boolean decodeHandshake(java.nio.ByteBuffer r11) {
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
        r10 = this;
        r0 = r10.tmpHandshakeBytes;
        r0 = r0.capacity();
        if (r0 != 0) goto L_0x000a;
    L_0x0008:
        r0 = r11;
        goto L_0x003d;
    L_0x000a:
        r0 = r10.tmpHandshakeBytes;
        r0 = r0.remaining();
        r1 = r11.remaining();
        if (r0 >= r1) goto L_0x0031;
    L_0x0016:
        r0 = r10.tmpHandshakeBytes;
        r0 = r0.capacity();
        r1 = r11.remaining();
        r0 = r0 + r1;
        r0 = java.nio.ByteBuffer.allocate(r0);
        r1 = r10.tmpHandshakeBytes;
        r1.flip();
        r1 = r10.tmpHandshakeBytes;
        r0.put(r1);
        r10.tmpHandshakeBytes = r0;
    L_0x0031:
        r0 = r10.tmpHandshakeBytes;
        r0.put(r11);
        r0 = r10.tmpHandshakeBytes;
        r0.flip();
        r0 = r10.tmpHandshakeBytes;
    L_0x003d:
        r0.mark();
        r1 = 0;
        r2 = r10.draft;	 Catch:{ IncompleteHandshakeException -> 0x01f6 }
        r3 = 1;	 Catch:{ IncompleteHandshakeException -> 0x01f6 }
        if (r2 != 0) goto L_0x00ae;	 Catch:{ IncompleteHandshakeException -> 0x01f6 }
    L_0x0046:
        r0.mark();	 Catch:{ IncompleteHandshakeException -> 0x01f6 }
        r2 = r0.limit();	 Catch:{ IncompleteHandshakeException -> 0x01f6 }
        r4 = org.java_websocket.drafts.Draft.FLASH_POLICY_REQUEST;	 Catch:{ IncompleteHandshakeException -> 0x01f6 }
        r4 = r4.length;	 Catch:{ IncompleteHandshakeException -> 0x01f6 }
        if (r2 <= r4) goto L_0x0055;	 Catch:{ IncompleteHandshakeException -> 0x01f6 }
    L_0x0052:
        r2 = org.java_websocket.drafts.Draft.HandshakeState.NOT_MATCHED;	 Catch:{ IncompleteHandshakeException -> 0x01f6 }
        goto L_0x0083;	 Catch:{ IncompleteHandshakeException -> 0x01f6 }
    L_0x0055:
        r2 = r0.limit();	 Catch:{ IncompleteHandshakeException -> 0x01f6 }
        r4 = org.java_websocket.drafts.Draft.FLASH_POLICY_REQUEST;	 Catch:{ IncompleteHandshakeException -> 0x01f6 }
        r4 = r4.length;	 Catch:{ IncompleteHandshakeException -> 0x01f6 }
        if (r2 >= r4) goto L_0x0067;	 Catch:{ IncompleteHandshakeException -> 0x01f6 }
    L_0x005e:
        r2 = new org.java_websocket.exceptions.IncompleteHandshakeException;	 Catch:{ IncompleteHandshakeException -> 0x01f6 }
        r3 = org.java_websocket.drafts.Draft.FLASH_POLICY_REQUEST;	 Catch:{ IncompleteHandshakeException -> 0x01f6 }
        r3 = r3.length;	 Catch:{ IncompleteHandshakeException -> 0x01f6 }
        r2.<init>(r3);	 Catch:{ IncompleteHandshakeException -> 0x01f6 }
        throw r2;	 Catch:{ IncompleteHandshakeException -> 0x01f6 }
    L_0x0067:
        r2 = r1;	 Catch:{ IncompleteHandshakeException -> 0x01f6 }
    L_0x0068:
        r4 = r0.hasRemaining();	 Catch:{ IncompleteHandshakeException -> 0x01f6 }
        if (r4 == 0) goto L_0x0081;	 Catch:{ IncompleteHandshakeException -> 0x01f6 }
    L_0x006e:
        r4 = org.java_websocket.drafts.Draft.FLASH_POLICY_REQUEST;	 Catch:{ IncompleteHandshakeException -> 0x01f6 }
        r4 = r4[r2];	 Catch:{ IncompleteHandshakeException -> 0x01f6 }
        r5 = r0.get();	 Catch:{ IncompleteHandshakeException -> 0x01f6 }
        if (r4 == r5) goto L_0x007e;	 Catch:{ IncompleteHandshakeException -> 0x01f6 }
    L_0x0078:
        r0.reset();	 Catch:{ IncompleteHandshakeException -> 0x01f6 }
        r2 = org.java_websocket.drafts.Draft.HandshakeState.NOT_MATCHED;	 Catch:{ IncompleteHandshakeException -> 0x01f6 }
        goto L_0x0083;	 Catch:{ IncompleteHandshakeException -> 0x01f6 }
    L_0x007e:
        r2 = r2 + 1;	 Catch:{ IncompleteHandshakeException -> 0x01f6 }
        goto L_0x0068;	 Catch:{ IncompleteHandshakeException -> 0x01f6 }
    L_0x0081:
        r2 = org.java_websocket.drafts.Draft.HandshakeState.MATCHED;	 Catch:{ IncompleteHandshakeException -> 0x01f6 }
    L_0x0083:
        r4 = org.java_websocket.drafts.Draft.HandshakeState.MATCHED;	 Catch:{ IncompleteHandshakeException -> 0x01f6 }
        if (r2 != r4) goto L_0x00ae;
    L_0x0087:
        r2 = r10.wsl;	 Catch:{ InvalidDataException -> 0x00a6 }
        r2 = r2.getFlashPolicy(r10);	 Catch:{ InvalidDataException -> 0x00a6 }
        r2 = org.java_websocket.util.Charsetfunctions.utf8Bytes(r2);	 Catch:{ InvalidDataException -> 0x00a6 }
        r2 = java.nio.ByteBuffer.wrap(r2);	 Catch:{ InvalidDataException -> 0x00a6 }
        r4 = r10.outQueue;	 Catch:{ InvalidDataException -> 0x00a6 }
        r4.add(r2);	 Catch:{ InvalidDataException -> 0x00a6 }
        r2 = r10.wsl;	 Catch:{ InvalidDataException -> 0x00a6 }
        r2.onWriteDemand(r10);	 Catch:{ InvalidDataException -> 0x00a6 }
        r2 = "";	 Catch:{ InvalidDataException -> 0x00a6 }
        r4 = -3;	 Catch:{ InvalidDataException -> 0x00a6 }
        r10.close(r4, r2, r1);	 Catch:{ InvalidDataException -> 0x00a6 }
        goto L_0x00ad;
    L_0x00a6:
        r2 = 1006; // 0x3ee float:1.41E-42 double:4.97E-321;
        r4 = "remote peer closed connection before flashpolicy could be transmitted";	 Catch:{ IncompleteHandshakeException -> 0x01f6 }
        r10.close(r2, r4, r3);	 Catch:{ IncompleteHandshakeException -> 0x01f6 }
    L_0x00ad:
        return r1;
    L_0x00ae:
        r2 = r10.role;	 Catch:{ InvalidHandshakeException -> 0x01e9 }
        r4 = org.java_websocket.WebSocket.Role.SERVER;	 Catch:{ InvalidHandshakeException -> 0x01e9 }
        r5 = -1;	 Catch:{ InvalidHandshakeException -> 0x01e9 }
        r6 = 1002; // 0x3ea float:1.404E-42 double:4.95E-321;	 Catch:{ InvalidHandshakeException -> 0x01e9 }
        if (r2 != r4) goto L_0x0172;	 Catch:{ InvalidHandshakeException -> 0x01e9 }
    L_0x00b7:
        r2 = r10.draft;	 Catch:{ InvalidHandshakeException -> 0x01e9 }
        if (r2 != 0) goto L_0x013f;	 Catch:{ InvalidHandshakeException -> 0x01e9 }
    L_0x00bb:
        r2 = 0;	 Catch:{ InvalidHandshakeException -> 0x01e9 }
        r2 = r2.iterator();	 Catch:{ InvalidHandshakeException -> 0x01e9 }
    L_0x00c0:
        r4 = r2.hasNext();	 Catch:{ InvalidHandshakeException -> 0x01e9 }
        if (r4 == 0) goto L_0x0135;	 Catch:{ InvalidHandshakeException -> 0x01e9 }
    L_0x00c6:
        r4 = r2.next();	 Catch:{ InvalidHandshakeException -> 0x01e9 }
        r4 = (org.java_websocket.drafts.Draft) r4;	 Catch:{ InvalidHandshakeException -> 0x01e9 }
        r4 = r4.copyInstance();	 Catch:{ InvalidHandshakeException -> 0x01e9 }
        r7 = r10.role;	 Catch:{ InvalidHandshakeException -> 0x00c0 }
        r4.setParseMode(r7);	 Catch:{ InvalidHandshakeException -> 0x00c0 }
        r0.reset();	 Catch:{ InvalidHandshakeException -> 0x00c0 }
        r7 = r4.translateHandshake(r0);	 Catch:{ InvalidHandshakeException -> 0x00c0 }
        r8 = r7 instanceof org.java_websocket.handshake.ClientHandshake;	 Catch:{ InvalidHandshakeException -> 0x00c0 }
        if (r8 != 0) goto L_0x00e6;	 Catch:{ InvalidHandshakeException -> 0x00c0 }
    L_0x00e0:
        r4 = "wrong http function";	 Catch:{ InvalidHandshakeException -> 0x00c0 }
        r10.flushAndClose(r6, r4, r1);	 Catch:{ InvalidHandshakeException -> 0x00c0 }
        return r1;	 Catch:{ InvalidHandshakeException -> 0x00c0 }
    L_0x00e6:
        r7 = (org.java_websocket.handshake.ClientHandshake) r7;	 Catch:{ InvalidHandshakeException -> 0x00c0 }
        r8 = r4.acceptHandshakeAsServer(r7);	 Catch:{ InvalidHandshakeException -> 0x00c0 }
        r9 = org.java_websocket.drafts.Draft.HandshakeState.MATCHED;	 Catch:{ InvalidHandshakeException -> 0x00c0 }
        if (r8 != r9) goto L_0x00c0;	 Catch:{ InvalidHandshakeException -> 0x00c0 }
    L_0x00f0:
        r8 = r7.getResourceDescriptor();	 Catch:{ InvalidHandshakeException -> 0x00c0 }
        r10.resourceDescriptor = r8;	 Catch:{ InvalidHandshakeException -> 0x00c0 }
        r8 = r10.wsl;	 Catch:{ InvalidDataException -> 0x0128, RuntimeException -> 0x011a }
        r8 = r8.onWebsocketHandshakeReceivedAsServer$3e88c659(r10, r4, r7);	 Catch:{ InvalidDataException -> 0x0128, RuntimeException -> 0x011a }
        r8 = r4.postProcessHandshakeResponseAsServer$450e5a47(r7, r8);	 Catch:{ InvalidHandshakeException -> 0x00c0 }
        r8 = org.java_websocket.drafts.Draft.createHandshake$c0e546e$2d9f3f98(r8);	 Catch:{ InvalidHandshakeException -> 0x00c0 }
        r10.write(r8);	 Catch:{ InvalidHandshakeException -> 0x00c0 }
        r10.draft = r4;	 Catch:{ InvalidHandshakeException -> 0x00c0 }
        r4 = org.java_websocket.WebSocket.READYSTATE.OPEN;	 Catch:{ InvalidHandshakeException -> 0x00c0 }
        r10.readystate = r4;	 Catch:{ InvalidHandshakeException -> 0x00c0 }
        r4 = r10.wsl;	 Catch:{ RuntimeException -> 0x0113 }
        r4.onWebsocketOpen(r10, r7);	 Catch:{ RuntimeException -> 0x0113 }
        goto L_0x0119;
    L_0x0113:
        r4 = move-exception;
        r7 = r10.wsl;	 Catch:{ InvalidHandshakeException -> 0x00c0 }
        r7.onWebsocketError(r10, r4);	 Catch:{ InvalidHandshakeException -> 0x00c0 }
    L_0x0119:
        return r3;	 Catch:{ InvalidHandshakeException -> 0x00c0 }
    L_0x011a:
        r4 = move-exception;	 Catch:{ InvalidHandshakeException -> 0x00c0 }
        r7 = r10.wsl;	 Catch:{ InvalidHandshakeException -> 0x00c0 }
        r7.onWebsocketError(r10, r4);	 Catch:{ InvalidHandshakeException -> 0x00c0 }
        r4 = r4.getMessage();	 Catch:{ InvalidHandshakeException -> 0x00c0 }
        r10.flushAndClose(r5, r4, r1);	 Catch:{ InvalidHandshakeException -> 0x00c0 }
        return r1;	 Catch:{ InvalidHandshakeException -> 0x00c0 }
    L_0x0128:
        r4 = move-exception;	 Catch:{ InvalidHandshakeException -> 0x00c0 }
        r7 = r4.getCloseCode();	 Catch:{ InvalidHandshakeException -> 0x00c0 }
        r4 = r4.getMessage();	 Catch:{ InvalidHandshakeException -> 0x00c0 }
        r10.flushAndClose(r7, r4, r1);	 Catch:{ InvalidHandshakeException -> 0x00c0 }
        return r1;
    L_0x0135:
        r2 = r10.draft;	 Catch:{ InvalidHandshakeException -> 0x01e9 }
        if (r2 != 0) goto L_0x013e;	 Catch:{ InvalidHandshakeException -> 0x01e9 }
    L_0x0139:
        r2 = "no draft matches";	 Catch:{ InvalidHandshakeException -> 0x01e9 }
        r10.close(r6, r2, r1);	 Catch:{ InvalidHandshakeException -> 0x01e9 }
    L_0x013e:
        return r1;	 Catch:{ InvalidHandshakeException -> 0x01e9 }
    L_0x013f:
        r2 = r10.draft;	 Catch:{ InvalidHandshakeException -> 0x01e9 }
        r2 = r2.translateHandshake(r0);	 Catch:{ InvalidHandshakeException -> 0x01e9 }
        r4 = r2 instanceof org.java_websocket.handshake.ClientHandshake;	 Catch:{ InvalidHandshakeException -> 0x01e9 }
        if (r4 != 0) goto L_0x014f;	 Catch:{ InvalidHandshakeException -> 0x01e9 }
    L_0x0149:
        r2 = "wrong http function";	 Catch:{ InvalidHandshakeException -> 0x01e9 }
        r10.flushAndClose(r6, r2, r1);	 Catch:{ InvalidHandshakeException -> 0x01e9 }
        return r1;	 Catch:{ InvalidHandshakeException -> 0x01e9 }
    L_0x014f:
        r2 = (org.java_websocket.handshake.ClientHandshake) r2;	 Catch:{ InvalidHandshakeException -> 0x01e9 }
        r4 = r10.draft;	 Catch:{ InvalidHandshakeException -> 0x01e9 }
        r4 = r4.acceptHandshakeAsServer(r2);	 Catch:{ InvalidHandshakeException -> 0x01e9 }
        r5 = org.java_websocket.drafts.Draft.HandshakeState.MATCHED;	 Catch:{ InvalidHandshakeException -> 0x01e9 }
        if (r4 != r5) goto L_0x016c;	 Catch:{ InvalidHandshakeException -> 0x01e9 }
    L_0x015b:
        r4 = org.java_websocket.WebSocket.READYSTATE.OPEN;	 Catch:{ InvalidHandshakeException -> 0x01e9 }
        r10.readystate = r4;	 Catch:{ InvalidHandshakeException -> 0x01e9 }
        r4 = r10.wsl;	 Catch:{ RuntimeException -> 0x0165 }
        r4.onWebsocketOpen(r10, r2);	 Catch:{ RuntimeException -> 0x0165 }
        goto L_0x016b;
    L_0x0165:
        r2 = move-exception;
        r4 = r10.wsl;	 Catch:{ InvalidHandshakeException -> 0x01e9 }
        r4.onWebsocketError(r10, r2);	 Catch:{ InvalidHandshakeException -> 0x01e9 }
    L_0x016b:
        return r3;	 Catch:{ InvalidHandshakeException -> 0x01e9 }
    L_0x016c:
        r2 = "the handshake did finaly not match";	 Catch:{ InvalidHandshakeException -> 0x01e9 }
        r10.close(r6, r2, r1);	 Catch:{ InvalidHandshakeException -> 0x01e9 }
        return r1;	 Catch:{ InvalidHandshakeException -> 0x01e9 }
    L_0x0172:
        r2 = r10.role;	 Catch:{ InvalidHandshakeException -> 0x01e9 }
        r4 = org.java_websocket.WebSocket.Role.CLIENT;	 Catch:{ InvalidHandshakeException -> 0x01e9 }
        if (r2 != r4) goto L_0x0230;	 Catch:{ InvalidHandshakeException -> 0x01e9 }
    L_0x0178:
        r2 = r10.draft;	 Catch:{ InvalidHandshakeException -> 0x01e9 }
        r4 = r10.role;	 Catch:{ InvalidHandshakeException -> 0x01e9 }
        r2.setParseMode(r4);	 Catch:{ InvalidHandshakeException -> 0x01e9 }
        r2 = r10.draft;	 Catch:{ InvalidHandshakeException -> 0x01e9 }
        r2 = r2.translateHandshake(r0);	 Catch:{ InvalidHandshakeException -> 0x01e9 }
        r4 = r2 instanceof org.java_websocket.handshake.ServerHandshake;	 Catch:{ InvalidHandshakeException -> 0x01e9 }
        if (r4 != 0) goto L_0x018f;	 Catch:{ InvalidHandshakeException -> 0x01e9 }
    L_0x0189:
        r2 = "wrong http function";	 Catch:{ InvalidHandshakeException -> 0x01e9 }
        r10.flushAndClose(r6, r2, r1);	 Catch:{ InvalidHandshakeException -> 0x01e9 }
        return r1;	 Catch:{ InvalidHandshakeException -> 0x01e9 }
    L_0x018f:
        r2 = (org.java_websocket.handshake.ServerHandshake) r2;	 Catch:{ InvalidHandshakeException -> 0x01e9 }
        r4 = r10.draft;	 Catch:{ InvalidHandshakeException -> 0x01e9 }
        r7 = r10.handshakerequest;	 Catch:{ InvalidHandshakeException -> 0x01e9 }
        r4 = r4.acceptHandshakeAsClient(r7, r2);	 Catch:{ InvalidHandshakeException -> 0x01e9 }
        r7 = org.java_websocket.drafts.Draft.HandshakeState.MATCHED;	 Catch:{ InvalidHandshakeException -> 0x01e9 }
        if (r4 != r7) goto L_0x01d0;
    L_0x019d:
        r4 = r10.wsl;	 Catch:{ InvalidDataException -> 0x01c3, RuntimeException -> 0x01b5 }
        r6 = r10.handshakerequest;	 Catch:{ InvalidDataException -> 0x01c3, RuntimeException -> 0x01b5 }
        r4.onWebsocketHandshakeReceivedAsClient(r10, r6, r2);	 Catch:{ InvalidDataException -> 0x01c3, RuntimeException -> 0x01b5 }
        r4 = org.java_websocket.WebSocket.READYSTATE.OPEN;	 Catch:{ InvalidHandshakeException -> 0x01e9 }
        r10.readystate = r4;	 Catch:{ InvalidHandshakeException -> 0x01e9 }
        r4 = r10.wsl;	 Catch:{ RuntimeException -> 0x01ae }
        r4.onWebsocketOpen(r10, r2);	 Catch:{ RuntimeException -> 0x01ae }
        goto L_0x01b4;
    L_0x01ae:
        r2 = move-exception;
        r4 = r10.wsl;	 Catch:{ InvalidHandshakeException -> 0x01e9 }
        r4.onWebsocketError(r10, r2);	 Catch:{ InvalidHandshakeException -> 0x01e9 }
    L_0x01b4:
        return r3;	 Catch:{ InvalidHandshakeException -> 0x01e9 }
    L_0x01b5:
        r2 = move-exception;	 Catch:{ InvalidHandshakeException -> 0x01e9 }
        r3 = r10.wsl;	 Catch:{ InvalidHandshakeException -> 0x01e9 }
        r3.onWebsocketError(r10, r2);	 Catch:{ InvalidHandshakeException -> 0x01e9 }
        r2 = r2.getMessage();	 Catch:{ InvalidHandshakeException -> 0x01e9 }
        r10.flushAndClose(r5, r2, r1);	 Catch:{ InvalidHandshakeException -> 0x01e9 }
        return r1;	 Catch:{ InvalidHandshakeException -> 0x01e9 }
    L_0x01c3:
        r2 = move-exception;	 Catch:{ InvalidHandshakeException -> 0x01e9 }
        r3 = r2.getCloseCode();	 Catch:{ InvalidHandshakeException -> 0x01e9 }
        r2 = r2.getMessage();	 Catch:{ InvalidHandshakeException -> 0x01e9 }
        r10.flushAndClose(r3, r2, r1);	 Catch:{ InvalidHandshakeException -> 0x01e9 }
        return r1;	 Catch:{ InvalidHandshakeException -> 0x01e9 }
    L_0x01d0:
        r2 = new java.lang.StringBuilder;	 Catch:{ InvalidHandshakeException -> 0x01e9 }
        r3 = "draft ";	 Catch:{ InvalidHandshakeException -> 0x01e9 }
        r2.<init>(r3);	 Catch:{ InvalidHandshakeException -> 0x01e9 }
        r3 = r10.draft;	 Catch:{ InvalidHandshakeException -> 0x01e9 }
        r2.append(r3);	 Catch:{ InvalidHandshakeException -> 0x01e9 }
        r3 = " refuses handshake";	 Catch:{ InvalidHandshakeException -> 0x01e9 }
        r2.append(r3);	 Catch:{ InvalidHandshakeException -> 0x01e9 }
        r2 = r2.toString();	 Catch:{ InvalidHandshakeException -> 0x01e9 }
        r10.close(r6, r2, r1);	 Catch:{ InvalidHandshakeException -> 0x01e9 }
        goto L_0x0230;
    L_0x01e9:
        r2 = move-exception;
        r3 = r2.getCloseCode();	 Catch:{ IncompleteHandshakeException -> 0x01f6 }
        r2 = r2.getMessage();	 Catch:{ IncompleteHandshakeException -> 0x01f6 }
        r10.close(r3, r2, r1);	 Catch:{ IncompleteHandshakeException -> 0x01f6 }
        goto L_0x0230;
    L_0x01f6:
        r2 = move-exception;
        r3 = r10.tmpHandshakeBytes;
        r3 = r3.capacity();
        if (r3 != 0) goto L_0x021a;
    L_0x01ff:
        r0.reset();
        r2 = r2.getPreferedSize();
        if (r2 != 0) goto L_0x020e;
    L_0x0208:
        r0 = r0.capacity();
        r2 = r0 + 16;
    L_0x020e:
        r0 = java.nio.ByteBuffer.allocate(r2);
        r10.tmpHandshakeBytes = r0;
        r0 = r10.tmpHandshakeBytes;
        r0.put(r11);
        goto L_0x0230;
    L_0x021a:
        r11 = r10.tmpHandshakeBytes;
        r0 = r10.tmpHandshakeBytes;
        r0 = r0.limit();
        r11.position(r0);
        r11 = r10.tmpHandshakeBytes;
        r0 = r10.tmpHandshakeBytes;
        r0 = r0.capacity();
        r11.limit(r0);
    L_0x0230:
        return r1;
        */
        throw new UnsupportedOperationException("Method not decompiled: org.java_websocket.WebSocketImpl.decodeHandshake(java.nio.ByteBuffer):boolean");
    }

    private void decodeFrames(ByteBuffer byteBuffer) {
        for (Framedata framedata : this.draft.translateFrame(byteBuffer)) {
            Opcode opcode = framedata.getOpcode();
            boolean isFin = framedata.isFin();
            if (opcode == Opcode.CLOSING) {
                int i = 1005;
                String str = "";
                if (framedata instanceof CloseFrame) {
                    CloseFrame closeFrame = (CloseFrame) framedata;
                    i = closeFrame.getCloseCode();
                    str = closeFrame.getMessage();
                }
                if (this.readystate == READYSTATE.CLOSING) {
                    closeConnection(i, str, true);
                } else if (this.draft.getCloseHandshakeType() == CloseHandshakeType.TWOWAY) {
                    close(i, str, true);
                } else {
                    flushAndClose(i, str, false);
                }
            } else if (opcode == Opcode.PING) {
                this.wsl.onWebsocketPing(this, framedata);
            } else if (opcode == Opcode.PONG) {
                this.wsl.onWebsocketPong(this, framedata);
            } else {
                if (isFin) {
                    if (opcode != Opcode.CONTINUOUS) {
                        if (this.current_continuous_frame_opcode != null) {
                            throw new InvalidDataException(1002, "Continuous frame sequence not completed.");
                        } else if (opcode == Opcode.TEXT) {
                            try {
                                this.wsl.onWebsocketMessage((WebSocket) this, Charsetfunctions.stringUtf8(framedata.getPayloadData()));
                            } catch (Exception e) {
                                this.wsl.onWebsocketError(this, e);
                            }
                        } else if (opcode == Opcode.BINARY) {
                            try {
                                this.wsl.onWebsocketMessage((WebSocket) this, framedata.getPayloadData());
                            } catch (Exception e2) {
                                try {
                                    this.wsl.onWebsocketError(this, e2);
                                } catch (ByteBuffer byteBuffer2) {
                                    this.wsl.onWebsocketError(this, byteBuffer2);
                                    close(byteBuffer2.getCloseCode(), byteBuffer2.getMessage(), false);
                                    return;
                                }
                            }
                        } else {
                            throw new InvalidDataException(1002, "non control or continious frame expected");
                        }
                    }
                }
                if (opcode != Opcode.CONTINUOUS) {
                    if (this.current_continuous_frame_opcode != null) {
                        throw new InvalidDataException(1002, "Previous continuous frame sequence not completed.");
                    }
                    this.current_continuous_frame_opcode = opcode;
                } else if (isFin) {
                    if (this.current_continuous_frame_opcode == null) {
                        throw new InvalidDataException(1002, "Continuous frame sequence was not started.");
                    }
                    this.current_continuous_frame_opcode = null;
                } else if (this.current_continuous_frame_opcode == null) {
                    throw new InvalidDataException(1002, "Continuous frame sequence was not started.");
                }
                try {
                    this.wsl.onWebsocketMessageFragment(this, framedata);
                } catch (Exception e22) {
                    this.wsl.onWebsocketError(this, e22);
                }
            }
        }
    }

    private void close(int i, String str, boolean z) {
        if (this.readystate != READYSTATE.CLOSING && this.readystate != READYSTATE.CLOSED) {
            if (this.readystate == READYSTATE.OPEN) {
                if (i == PointerIconCompat.TYPE_CELL) {
                    this.readystate = READYSTATE.CLOSING;
                    flushAndClose(i, str, false);
                    return;
                }
                if (this.draft.getCloseHandshakeType() != CloseHandshakeType.NONE) {
                    if (!z) {
                        try {
                            this.wsl.onWebsocketCloseInitiated(this, i, str);
                        } catch (Exception e) {
                            try {
                                this.wsl.onWebsocketError(this, e);
                            } catch (Exception e2) {
                                this.wsl.onWebsocketError(this, e2);
                                flushAndClose(PointerIconCompat.TYPE_CELL, "generated frame is invalid", false);
                            }
                        }
                    }
                    sendFrame(new CloseFrameBuilder(i, str));
                }
                flushAndClose(i, str, z);
            } else if (i == -3) {
                flushAndClose(-3, str, true);
            } else {
                flushAndClose(-1, str, false);
            }
            if (i == 1002) {
                flushAndClose(i, str, z);
            }
            this.readystate = READYSTATE.CLOSING;
            this.tmpHandshakeBytes = 0;
        }
    }

    public final void close(int i, String str) {
        close(i, str, false);
    }

    private synchronized void closeConnection(int i, String str, boolean z) {
        if (this.readystate != READYSTATE.CLOSED) {
            try {
                this.wsl.onWebsocketClose(this, i, str, z);
            } catch (int i2) {
                this.wsl.onWebsocketError(this, i2);
            }
            if (this.draft != 0) {
                this.draft.reset();
            }
            this.handshakerequest = 0;
            this.readystate = READYSTATE.CLOSED;
            this.outQueue.clear();
        }
    }

    public final void closeConnection(int i, String str) {
        closeConnection(i, str, false);
    }

    private synchronized void flushAndClose(int i, String str, boolean z) {
        if (!this.flushandclosestate) {
            this.closecode = Integer.valueOf(i);
            this.closemessage = str;
            this.closedremotely = Boolean.valueOf(z);
            this.flushandclosestate = true;
            this.wsl.onWriteDemand(this);
            try {
                this.wsl.onWebsocketClosing(this, i, str, z);
            } catch (int i2) {
                this.wsl.onWebsocketError(this, i2);
            }
            if (this.draft != 0) {
                this.draft.reset();
            }
            this.handshakerequest = 0;
        }
    }

    public final void close$13462e() {
        close(1000, "", false);
    }

    public final void send(String str) throws WebsocketNotConnectedException {
        if (str == null) {
            throw new IllegalArgumentException("Cannot send 'null' data to a WebSocketImpl.");
        }
        send(this.draft.createFrames(str, this.role == Role.CLIENT));
    }

    public final void send(ByteBuffer byteBuffer) throws IllegalArgumentException, WebsocketNotConnectedException {
        if (byteBuffer == null) {
            throw new IllegalArgumentException("Cannot send 'null' data to a WebSocketImpl.");
        }
        send(this.draft.createFrames(byteBuffer, this.role == Role.CLIENT));
    }

    public final void send(byte[] bArr) throws IllegalArgumentException, WebsocketNotConnectedException {
        send(ByteBuffer.wrap(bArr));
    }

    private void send(Collection<Framedata> collection) {
        if (isOpen()) {
            for (Framedata sendFrame : collection) {
                sendFrame(sendFrame);
            }
            return;
        }
        throw new WebsocketNotConnectedException();
    }

    public final void sendFragmentedFrame(Opcode opcode, ByteBuffer byteBuffer, boolean z) {
        send(this.draft.continuousFrame(opcode, byteBuffer, z));
    }

    public void sendFrame(Framedata framedata) {
        this.outQueue.add(this.draft.createBinaryFrame(framedata));
        this.wsl.onWriteDemand(this);
    }

    public final void startHandshake$684a842b(org.java_websocket.handshake.ClientHandshake r3) throws org.java_websocket.exceptions.InvalidHandshakeException {
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
        r2 = this;
        r0 = r2.draft;
        r0 = r0.postProcessHandshakeRequestAsClient$4e5e7725(r3);
        r2.handshakerequest = r0;
        r3 = r3.getResourceDescriptor();
        r2.resourceDescriptor = r3;
        r3 = r2.wsl;	 Catch:{ InvalidDataException -> 0x0035, RuntimeException -> 0x001f }
        r0 = r2.handshakerequest;	 Catch:{ InvalidDataException -> 0x0035, RuntimeException -> 0x001f }
        r3.onWebsocketHandshakeSentAsClient(r2, r0);	 Catch:{ InvalidDataException -> 0x0035, RuntimeException -> 0x001f }
        r3 = r2.handshakerequest;
        r3 = org.java_websocket.drafts.Draft.createHandshake$60b10c38(r3);
        r2.write(r3);
        return;
    L_0x001f:
        r3 = move-exception;
        r0 = r2.wsl;
        r0.onWebsocketError(r2, r3);
        r0 = new org.java_websocket.exceptions.InvalidHandshakeException;
        r1 = "rejected because of";
        r3 = java.lang.String.valueOf(r3);
        r3 = r1.concat(r3);
        r0.<init>(r3);
        throw r0;
    L_0x0035:
        r3 = new org.java_websocket.exceptions.InvalidHandshakeException;
        r0 = "Handshake data rejected by client.";
        r3.<init>(r0);
        throw r3;
        */
        throw new UnsupportedOperationException("Method not decompiled: org.java_websocket.WebSocketImpl.startHandshake$684a842b(org.java_websocket.handshake.ClientHandshake):void");
    }

    private void write(List<ByteBuffer> list) {
        for (ByteBuffer add : list) {
            this.outQueue.add(add);
            this.wsl.onWriteDemand(this);
        }
    }

    public final boolean isConnecting() {
        return this.readystate == READYSTATE.CONNECTING;
    }

    public final boolean isOpen() {
        return this.readystate == READYSTATE.OPEN;
    }

    public final boolean isClosing() {
        return this.readystate == READYSTATE.CLOSING;
    }

    public final boolean isFlushAndClose() {
        return this.flushandclosestate;
    }

    public final boolean isClosed() {
        return this.readystate == READYSTATE.CLOSED;
    }

    public final READYSTATE getReadyState() {
        return this.readystate;
    }

    public int hashCode() {
        return super.hashCode();
    }

    public String toString() {
        return super.toString();
    }

    public final InetSocketAddress getRemoteSocketAddress() {
        return this.wsl.getRemoteSocketAddress(this);
    }

    public InetSocketAddress getLocalSocketAddress() {
        return this.wsl.getLocalSocketAddress(this);
    }

    public final void eot() {
        if (this.readystate == READYSTATE.NOT_YET_CONNECTED) {
            closeConnection(-1, "", true);
        } else if (this.flushandclosestate) {
            closeConnection(this.closecode.intValue(), this.closemessage, this.closedremotely.booleanValue());
        } else if (this.draft.getCloseHandshakeType() == CloseHandshakeType.NONE) {
            closeConnection(1000, "", true);
        } else if (this.draft.getCloseHandshakeType() != CloseHandshakeType.ONEWAY || this.role == Role.SERVER) {
            closeConnection(PointerIconCompat.TYPE_CELL, "", true);
        } else {
            closeConnection(1000, "", true);
        }
    }

    public final void close() {
        close(1000, "", false);
    }
}
