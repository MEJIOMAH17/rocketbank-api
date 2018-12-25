package org.java_websocket.client;

import java.io.InputStream;
import java.io.OutputStream;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.Socket;
import java.net.URI;
import java.nio.ByteBuffer;
import java.nio.channels.NotYetConnectedException;
import java.util.Map;
import java.util.Map.Entry;
import java.util.concurrent.CountDownLatch;
import org.java_websocket.WebSocket;
import org.java_websocket.WebSocket.READYSTATE;
import org.java_websocket.WebSocketAdapter;
import org.java_websocket.WebSocketImpl;
import org.java_websocket.drafts.Draft;
import org.java_websocket.drafts.Draft_17;
import org.java_websocket.exceptions.InvalidHandshakeException;
import org.java_websocket.framing.Framedata;
import org.java_websocket.framing.Framedata.Opcode;
import org.java_websocket.handshake.ClientHandshake;
import org.java_websocket.handshake.HandshakeImpl1Client;
import org.java_websocket.handshake.Handshakedata;
import org.java_websocket.handshake.ServerHandshake;

public abstract class WebSocketClient extends WebSocketAdapter implements Runnable, WebSocket {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private CountDownLatch closeLatch;
    private CountDownLatch connectLatch;
    private int connectTimeout;
    private Draft draft;
    private WebSocketImpl engine;
    private Map<String, String> headers;
    private InputStream istream;
    private OutputStream ostream;
    private Proxy proxy;
    private Socket socket;
    protected URI uri;
    private Thread writeThread;

    class WebsocketWriteThread implements Runnable {
        private WebsocketWriteThread() {
        }

        public final void run() {
            /* JADX: method processing error */
/*
Error: java.lang.NullPointerException
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.searchTryCatchDominators(ProcessTryCatchRegions.java:75)
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.process(ProcessTryCatchRegions.java:45)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.postProcessRegions(RegionMakerVisitor.java:63)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:58)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:31)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:17)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:14)
	at jadx.core.ProcessClass.process(ProcessClass.java:34)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
            /*
            r4 = this;
            r0 = java.lang.Thread.currentThread();
            r1 = "WebsocketWriteThread";
            r0.setName(r1);
        L_0x0009:
            r0 = java.lang.Thread.interrupted();	 Catch:{ IOException -> 0x003b, InterruptedException -> 0x003a }
            if (r0 != 0) goto L_0x0039;	 Catch:{ IOException -> 0x003b, InterruptedException -> 0x003a }
        L_0x000f:
            r0 = org.java_websocket.client.WebSocketClient.this;	 Catch:{ IOException -> 0x003b, InterruptedException -> 0x003a }
            r0 = r0.engine;	 Catch:{ IOException -> 0x003b, InterruptedException -> 0x003a }
            r0 = r0.outQueue;	 Catch:{ IOException -> 0x003b, InterruptedException -> 0x003a }
            r0 = r0.take();	 Catch:{ IOException -> 0x003b, InterruptedException -> 0x003a }
            r0 = (java.nio.ByteBuffer) r0;	 Catch:{ IOException -> 0x003b, InterruptedException -> 0x003a }
            r1 = org.java_websocket.client.WebSocketClient.this;	 Catch:{ IOException -> 0x003b, InterruptedException -> 0x003a }
            r1 = r1.ostream;	 Catch:{ IOException -> 0x003b, InterruptedException -> 0x003a }
            r2 = r0.array();	 Catch:{ IOException -> 0x003b, InterruptedException -> 0x003a }
            r3 = 0;	 Catch:{ IOException -> 0x003b, InterruptedException -> 0x003a }
            r0 = r0.limit();	 Catch:{ IOException -> 0x003b, InterruptedException -> 0x003a }
            r1.write(r2, r3, r0);	 Catch:{ IOException -> 0x003b, InterruptedException -> 0x003a }
            r0 = org.java_websocket.client.WebSocketClient.this;	 Catch:{ IOException -> 0x003b, InterruptedException -> 0x003a }
            r0 = r0.ostream;	 Catch:{ IOException -> 0x003b, InterruptedException -> 0x003a }
            r0.flush();	 Catch:{ IOException -> 0x003b, InterruptedException -> 0x003a }
            goto L_0x0009;
        L_0x0039:
            return;
        L_0x003a:
            return;
        L_0x003b:
            r0 = org.java_websocket.client.WebSocketClient.this;
            r0 = r0.engine;
            r0.eot();
            return;
            */
            throw new UnsupportedOperationException("Method not decompiled: org.java_websocket.client.WebSocketClient.WebsocketWriteThread.run():void");
        }
    }

    public abstract void onClose(int i, String str, boolean z);

    public void onCloseInitiated(int i, String str) {
    }

    public void onClosing(int i, String str, boolean z) {
    }

    public abstract void onError(Exception exception);

    public void onFragment(Framedata framedata) {
    }

    public abstract void onMessage(String str);

    public void onMessage(ByteBuffer byteBuffer) {
    }

    public abstract void onOpen(ServerHandshake serverHandshake);

    public final void onWriteDemand(WebSocket webSocket) {
    }

    public WebSocketClient(URI uri) {
        this(uri, new Draft_17());
    }

    public WebSocketClient(URI uri, Draft draft) {
        this(uri, draft, null, 0);
    }

    public WebSocketClient(URI uri, Draft draft, Map<String, String> map, int i) {
        this.uri = null;
        this.engine = null;
        this.socket = null;
        this.proxy = Proxy.NO_PROXY;
        this.connectLatch = new CountDownLatch(1);
        this.closeLatch = new CountDownLatch(1);
        this.connectTimeout = 0;
        if (uri == null) {
            throw new IllegalArgumentException();
        } else if (draft == null) {
            throw new IllegalArgumentException("null as draft is permitted for `WebSocketServer` only!");
        } else {
            this.uri = uri;
            this.draft = draft;
            this.headers = map;
            this.connectTimeout = i;
            this.engine = new WebSocketImpl(this, draft);
        }
    }

    public URI getURI() {
        return this.uri;
    }

    public Draft getDraft() {
        return this.draft;
    }

    public void connect() {
        if (this.writeThread != null) {
            throw new IllegalStateException("WebSocketClient objects are not reuseable");
        }
        this.writeThread = new Thread(this);
        this.writeThread.start();
    }

    public boolean connectBlocking() throws InterruptedException {
        connect();
        this.connectLatch.await();
        return this.engine.isOpen();
    }

    public void close() {
        if (this.writeThread != null) {
            this.engine.close$13462e();
        }
    }

    public void closeBlocking() throws InterruptedException {
        close();
        this.closeLatch.await();
    }

    public void send(String str) throws NotYetConnectedException {
        this.engine.send(str);
    }

    public void send(byte[] bArr) throws NotYetConnectedException {
        this.engine.send(bArr);
    }

    public void run() {
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
        r5 = this;
        r0 = -1;
        r1 = r5.socket;	 Catch:{ Exception -> 0x0098 }
        if (r1 != 0) goto L_0x000f;	 Catch:{ Exception -> 0x0098 }
    L_0x0005:
        r1 = new java.net.Socket;	 Catch:{ Exception -> 0x0098 }
        r2 = r5.proxy;	 Catch:{ Exception -> 0x0098 }
        r1.<init>(r2);	 Catch:{ Exception -> 0x0098 }
        r5.socket = r1;	 Catch:{ Exception -> 0x0098 }
        goto L_0x001d;	 Catch:{ Exception -> 0x0098 }
    L_0x000f:
        r1 = r5.socket;	 Catch:{ Exception -> 0x0098 }
        r1 = r1.isClosed();	 Catch:{ Exception -> 0x0098 }
        if (r1 == 0) goto L_0x001d;	 Catch:{ Exception -> 0x0098 }
    L_0x0017:
        r1 = new java.io.IOException;	 Catch:{ Exception -> 0x0098 }
        r1.<init>();	 Catch:{ Exception -> 0x0098 }
        throw r1;	 Catch:{ Exception -> 0x0098 }
    L_0x001d:
        r1 = r5.socket;	 Catch:{ Exception -> 0x0098 }
        r1 = r1.isBound();	 Catch:{ Exception -> 0x0098 }
        if (r1 != 0) goto L_0x003b;	 Catch:{ Exception -> 0x0098 }
    L_0x0025:
        r1 = r5.socket;	 Catch:{ Exception -> 0x0098 }
        r2 = new java.net.InetSocketAddress;	 Catch:{ Exception -> 0x0098 }
        r3 = r5.uri;	 Catch:{ Exception -> 0x0098 }
        r3 = r3.getHost();	 Catch:{ Exception -> 0x0098 }
        r4 = r5.getPort();	 Catch:{ Exception -> 0x0098 }
        r2.<init>(r3, r4);	 Catch:{ Exception -> 0x0098 }
        r3 = r5.connectTimeout;	 Catch:{ Exception -> 0x0098 }
        r1.connect(r2, r3);	 Catch:{ Exception -> 0x0098 }
    L_0x003b:
        r1 = r5.socket;	 Catch:{ Exception -> 0x0098 }
        r1 = r1.getInputStream();	 Catch:{ Exception -> 0x0098 }
        r5.istream = r1;	 Catch:{ Exception -> 0x0098 }
        r1 = r5.socket;	 Catch:{ Exception -> 0x0098 }
        r1 = r1.getOutputStream();	 Catch:{ Exception -> 0x0098 }
        r5.ostream = r1;	 Catch:{ Exception -> 0x0098 }
        r5.sendHandshake();	 Catch:{ Exception -> 0x0098 }
        r1 = new java.lang.Thread;
        r2 = new org.java_websocket.client.WebSocketClient$WebsocketWriteThread;
        r3 = 0;
        r2.<init>();
        r1.<init>(r2);
        r5.writeThread = r1;
        r1 = r5.writeThread;
        r1.start();
        r1 = org.java_websocket.WebSocketImpl.RCVBUF;
        r1 = new byte[r1];
    L_0x0064:
        r2 = r5.isClosed();	 Catch:{ IOException -> 0x0092, RuntimeException -> 0x0082 }
        if (r2 != 0) goto L_0x007c;	 Catch:{ IOException -> 0x0092, RuntimeException -> 0x0082 }
    L_0x006a:
        r2 = r5.istream;	 Catch:{ IOException -> 0x0092, RuntimeException -> 0x0082 }
        r2 = r2.read(r1);	 Catch:{ IOException -> 0x0092, RuntimeException -> 0x0082 }
        if (r2 == r0) goto L_0x007c;	 Catch:{ IOException -> 0x0092, RuntimeException -> 0x0082 }
    L_0x0072:
        r4 = r5.engine;	 Catch:{ IOException -> 0x0092, RuntimeException -> 0x0082 }
        r2 = java.nio.ByteBuffer.wrap(r1, r3, r2);	 Catch:{ IOException -> 0x0092, RuntimeException -> 0x0082 }
        r4.decode(r2);	 Catch:{ IOException -> 0x0092, RuntimeException -> 0x0082 }
        goto L_0x0064;	 Catch:{ IOException -> 0x0092, RuntimeException -> 0x0082 }
    L_0x007c:
        r0 = r5.engine;	 Catch:{ IOException -> 0x0092, RuntimeException -> 0x0082 }
        r0.eot();	 Catch:{ IOException -> 0x0092, RuntimeException -> 0x0082 }
        goto L_0x0097;
    L_0x0082:
        r0 = move-exception;
        r5.onError(r0);
        r1 = r5.engine;
        r2 = 1006; // 0x3ee float:1.41E-42 double:4.97E-321;
        r0 = r0.getMessage();
        r1.closeConnection(r2, r0);
        goto L_0x0097;
    L_0x0092:
        r0 = r5.engine;
        r0.eot();
    L_0x0097:
        return;
    L_0x0098:
        r1 = move-exception;
        r2 = r5.engine;
        r5.onWebsocketError(r2, r1);
        r2 = r5.engine;
        r1 = r1.getMessage();
        r2.closeConnection(r0, r1);
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: org.java_websocket.client.WebSocketClient.run():void");
    }

    private int getPort() {
        int port = this.uri.getPort();
        if (port != -1) {
            return port;
        }
        String scheme = this.uri.getScheme();
        if (scheme.equals("wss")) {
            return 443;
        }
        if (scheme.equals("ws")) {
            return 80;
        }
        throw new RuntimeException("unkonow scheme".concat(String.valueOf(scheme)));
    }

    private void sendHandshake() throws InvalidHandshakeException {
        StringBuilder stringBuilder;
        String path = this.uri.getPath();
        String query = this.uri.getQuery();
        if (path == null || path.length() == 0) {
            path = "/";
        }
        if (query != null) {
            stringBuilder = new StringBuilder();
            stringBuilder.append(path);
            stringBuilder.append("?");
            stringBuilder.append(query);
            path = stringBuilder.toString();
        }
        int port = getPort();
        stringBuilder = new StringBuilder();
        stringBuilder.append(this.uri.getHost());
        stringBuilder.append(port != 80 ? ":".concat(String.valueOf(port)) : "");
        query = stringBuilder.toString();
        ClientHandshake handshakeImpl1Client = new HandshakeImpl1Client();
        handshakeImpl1Client.setResourceDescriptor(path);
        handshakeImpl1Client.put("Host", query);
        if (this.headers != null) {
            for (Entry entry : this.headers.entrySet()) {
                handshakeImpl1Client.put((String) entry.getKey(), (String) entry.getValue());
            }
        }
        this.engine.startHandshake$684a842b(handshakeImpl1Client);
    }

    public READYSTATE getReadyState() {
        return this.engine.getReadyState();
    }

    public final void onWebsocketMessage(WebSocket webSocket, String str) {
        onMessage(str);
    }

    public final void onWebsocketMessage(WebSocket webSocket, ByteBuffer byteBuffer) {
        onMessage(byteBuffer);
    }

    public void onWebsocketMessageFragment(WebSocket webSocket, Framedata framedata) {
        onFragment(framedata);
    }

    public final void onWebsocketOpen(WebSocket webSocket, Handshakedata handshakedata) {
        this.connectLatch.countDown();
        onOpen((ServerHandshake) handshakedata);
    }

    public final void onWebsocketClose(WebSocket webSocket, int i, String str, boolean z) {
        this.connectLatch.countDown();
        this.closeLatch.countDown();
        if (this.writeThread != null) {
            this.writeThread.interrupt();
        }
        try {
            if (this.socket != null) {
                this.socket.close();
            }
        } catch (WebSocket webSocket2) {
            onWebsocketError(this, webSocket2);
        }
        onClose(i, str, z);
    }

    public final void onWebsocketError(WebSocket webSocket, Exception exception) {
        onError(exception);
    }

    public void onWebsocketCloseInitiated(WebSocket webSocket, int i, String str) {
        onCloseInitiated(i, str);
    }

    public void onWebsocketClosing(WebSocket webSocket, int i, String str, boolean z) {
        onClosing(i, str, z);
    }

    public WebSocket getConnection() {
        return this.engine;
    }

    public InetSocketAddress getLocalSocketAddress(WebSocket webSocket) {
        return this.socket != null ? (InetSocketAddress) this.socket.getLocalSocketAddress() : null;
    }

    public InetSocketAddress getRemoteSocketAddress(WebSocket webSocket) {
        return this.socket != null ? (InetSocketAddress) this.socket.getRemoteSocketAddress() : null;
    }

    public void setProxy(Proxy proxy) {
        if (proxy == null) {
            throw new IllegalArgumentException();
        }
        this.proxy = proxy;
    }

    public void setSocket(Socket socket) {
        if (this.socket != null) {
            throw new IllegalStateException("socket has already been set");
        }
        this.socket = socket;
    }

    public void sendFragmentedFrame(Opcode opcode, ByteBuffer byteBuffer, boolean z) {
        this.engine.sendFragmentedFrame(opcode, byteBuffer, z);
    }

    public boolean isOpen() {
        return this.engine.isOpen();
    }

    public boolean isFlushAndClose() {
        return this.engine.isFlushAndClose();
    }

    public boolean isClosed() {
        return this.engine.isClosed();
    }

    public boolean isClosing() {
        return this.engine.isClosing();
    }

    public boolean isConnecting() {
        return this.engine.isConnecting();
    }

    public boolean hasBufferedData() {
        return !this.engine.outQueue.isEmpty();
    }

    public void close(int i) {
        this.engine.close();
    }

    public void close(int i, String str) {
        this.engine.close(i, str);
    }

    public void closeConnection(int i, String str) {
        this.engine.closeConnection(i, str);
    }

    public void send(ByteBuffer byteBuffer) throws IllegalArgumentException, NotYetConnectedException {
        this.engine.send(byteBuffer);
    }

    public void sendFrame(Framedata framedata) {
        this.engine.sendFrame(framedata);
    }

    public InetSocketAddress getLocalSocketAddress() {
        return this.engine.getLocalSocketAddress();
    }

    public InetSocketAddress getRemoteSocketAddress() {
        return this.engine.getRemoteSocketAddress();
    }

    public String getResourceDescriptor() {
        return this.uri.getPath();
    }
}
