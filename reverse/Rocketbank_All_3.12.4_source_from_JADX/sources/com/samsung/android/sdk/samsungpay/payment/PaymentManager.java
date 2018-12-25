package com.samsung.android.sdk.samsungpay.payment;

import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.support.v7.widget.helper.ItemTouchHelper.Callback;
import android.util.Log;
import java.util.LinkedList;

@Deprecated
public class PaymentManager {
    private final LinkedList<Integer> mPendingCommandQueue;
    private ISPaymentManager mService;
    private final ServiceConnection mServiceConnection;

    static /* synthetic */ void access$1000(PaymentManager paymentManager) {
    }

    static /* synthetic */ void access$1100(PaymentManager paymentManager) {
    }

    private boolean connectToPayService$134632() {
        Log.d("PaymentManager", "bindService");
        Intent intent = new Intent("com.samsung.android.spay.sdk.service.InAppService");
        intent.setPackage("com.samsung.android.spay");
        Context context = null;
        if (context.bindService(intent, this.mServiceConnection, 65)) {
            synchronized (this.mPendingCommandQueue) {
                Log.d("PaymentManager", "Cmd push : 200");
                this.mPendingCommandQueue.offer(Integer.valueOf(Callback.DEFAULT_DRAG_ANIMATION_DURATION));
            }
        }
        return true;
    }

    static /* synthetic */ void access$500(com.samsung.android.sdk.samsungpay.payment.PaymentManager r1) {
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
        r0 = 0;
        r1.mService = r0;
        r1 = r1.mServiceConnection;	 Catch:{ Exception -> 0x0009 }
        r0.unbindService(r1);	 Catch:{ Exception -> 0x0009 }
        return;
    L_0x0009:
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.samsung.android.sdk.samsungpay.payment.PaymentManager.access$500(com.samsung.android.sdk.samsungpay.payment.PaymentManager):void");
    }

    static /* synthetic */ void access$900(com.samsung.android.sdk.samsungpay.payment.PaymentManager r2) {
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
        r0 = "PaymentManager";	 Catch:{ RemoteException -> 0x0015, Exception -> 0x0010 }
        r1 = "doStart";	 Catch:{ RemoteException -> 0x0015, Exception -> 0x0010 }
        android.util.Log.d(r0, r1);	 Catch:{ RemoteException -> 0x0015, Exception -> 0x0010 }
        r0 = new com.samsung.android.sdk.samsungpay.SSamsungPay;	 Catch:{ RemoteException -> 0x0015, Exception -> 0x0010 }
        r0.<init>();	 Catch:{ RemoteException -> 0x0015, Exception -> 0x0010 }
        com.samsung.android.sdk.samsungpay.SSamsungPay.getVersionName();	 Catch:{ RemoteException -> 0x0015, Exception -> 0x0010 }
        return;
    L_0x0010:
        r2 = move-exception;
        r2.printStackTrace();
        return;
    L_0x0015:
        r0 = "PaymentManager";
        r1 = "DeadObjectException SDK Service died";
        android.util.Log.d(r0, r1);
        r0 = 0;
        r2.mService = r0;
        r2.connectToPayService$134632();
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.samsung.android.sdk.samsungpay.payment.PaymentManager.access$900(com.samsung.android.sdk.samsungpay.payment.PaymentManager):void");
    }
}
