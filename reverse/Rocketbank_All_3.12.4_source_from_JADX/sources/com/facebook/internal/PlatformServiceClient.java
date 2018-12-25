package com.facebook.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;

public abstract class PlatformServiceClient implements ServiceConnection {
    private final String applicationId;
    private final Context context;
    private final Handler handler;
    private CompletedListener listener;
    private final int protocolVersion;
    private int replyMessage;
    private int requestMessage;
    private boolean running;
    private Messenger sender;

    /* renamed from: com.facebook.internal.PlatformServiceClient$1 */
    class C04031 extends Handler {
        C04031() {
        }

        public void handleMessage(Message message) {
            PlatformServiceClient.this.handleMessage(message);
        }
    }

    public interface CompletedListener {
        void completed(Bundle bundle);
    }

    protected abstract void populateRequestBundle(Bundle bundle);

    public PlatformServiceClient(Context context, int i, int i2, int i3, String str) {
        Context applicationContext = context.getApplicationContext();
        if (applicationContext != null) {
            context = applicationContext;
        }
        this.context = context;
        this.requestMessage = i;
        this.replyMessage = i2;
        this.applicationId = str;
        this.protocolVersion = i3;
        this.handler = new C04031();
    }

    public void setCompletedListener(CompletedListener completedListener) {
        this.listener = completedListener;
    }

    protected Context getContext() {
        return this.context;
    }

    public boolean start() {
        if (this.running || NativeProtocol.getLatestAvailableProtocolVersionForService(this.protocolVersion) == -1) {
            return false;
        }
        Intent createPlatformServiceIntent = NativeProtocol.createPlatformServiceIntent(this.context);
        if (createPlatformServiceIntent == null) {
            return false;
        }
        this.running = true;
        this.context.bindService(createPlatformServiceIntent, this, 1);
        return true;
    }

    public void cancel() {
        this.running = false;
    }

    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        this.sender = new Messenger(iBinder);
        sendMessage();
    }

    public void onServiceDisconnected(android.content.ComponentName r2) {
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
        r1 = this;
        r2 = 0;
        r1.sender = r2;
        r0 = r1.context;	 Catch:{ IllegalArgumentException -> 0x0008 }
        r0.unbindService(r1);	 Catch:{ IllegalArgumentException -> 0x0008 }
    L_0x0008:
        r1.callback(r2);
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.internal.PlatformServiceClient.onServiceDisconnected(android.content.ComponentName):void");
    }

    private void sendMessage() {
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
        r4 = this;
        r0 = new android.os.Bundle;
        r0.<init>();
        r1 = "com.facebook.platform.extra.APPLICATION_ID";
        r2 = r4.applicationId;
        r0.putString(r1, r2);
        r4.populateRequestBundle(r0);
        r1 = r4.requestMessage;
        r2 = 0;
        r1 = android.os.Message.obtain(r2, r1);
        r3 = r4.protocolVersion;
        r1.arg1 = r3;
        r1.setData(r0);
        r0 = new android.os.Messenger;
        r3 = r4.handler;
        r0.<init>(r3);
        r1.replyTo = r0;
        r0 = r4.sender;	 Catch:{ RemoteException -> 0x002c }
        r0.send(r1);	 Catch:{ RemoteException -> 0x002c }
        return;
    L_0x002c:
        r4.callback(r2);
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.internal.PlatformServiceClient.sendMessage():void");
    }

    protected void handleMessage(android.os.Message r3) {
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
        r0 = r3.what;
        r1 = r2.replyMessage;
        if (r0 != r1) goto L_0x0020;
    L_0x0006:
        r3 = r3.getData();
        r0 = "com.facebook.platform.status.ERROR_TYPE";
        r0 = r3.getString(r0);
        if (r0 == 0) goto L_0x0017;
    L_0x0012:
        r3 = 0;
        r2.callback(r3);
        goto L_0x001a;
    L_0x0017:
        r2.callback(r3);
    L_0x001a:
        r3 = r2.context;	 Catch:{ IllegalArgumentException -> 0x0020 }
        r3.unbindService(r2);	 Catch:{ IllegalArgumentException -> 0x0020 }
        return;
    L_0x0020:
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.internal.PlatformServiceClient.handleMessage(android.os.Message):void");
    }

    private void callback(Bundle bundle) {
        if (this.running) {
            this.running = false;
            CompletedListener completedListener = this.listener;
            if (completedListener != null) {
                completedListener.completed(bundle);
            }
        }
    }
}
