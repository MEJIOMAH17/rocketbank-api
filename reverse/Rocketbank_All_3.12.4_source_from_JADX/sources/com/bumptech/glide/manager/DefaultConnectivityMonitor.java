package com.bumptech.glide.manager;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import com.bumptech.glide.manager.ConnectivityMonitor.ConnectivityListener;

final class DefaultConnectivityMonitor implements ConnectivityMonitor {
    private final BroadcastReceiver connectivityReceiver = new C03031();
    private final Context context;
    private boolean isConnected;
    private boolean isRegistered;
    private final ConnectivityListener listener;

    /* renamed from: com.bumptech.glide.manager.DefaultConnectivityMonitor$1 */
    class C03031 extends BroadcastReceiver {
        C03031() {
        }

        public void onReceive(Context context, Intent intent) {
            intent = DefaultConnectivityMonitor.this.isConnected;
            DefaultConnectivityMonitor defaultConnectivityMonitor = DefaultConnectivityMonitor.this;
            context = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
            context = (context == null || context.isConnected() == null) ? null : true;
            defaultConnectivityMonitor.isConnected = context;
            if (intent != DefaultConnectivityMonitor.this.isConnected) {
                DefaultConnectivityMonitor.this.listener.onConnectivityChanged(DefaultConnectivityMonitor.this.isConnected);
            }
        }
    }

    public final void onDestroy() {
    }

    public DefaultConnectivityMonitor(Context context, ConnectivityListener connectivityListener) {
        this.context = context.getApplicationContext();
        this.listener = connectivityListener;
    }

    public final void onStart() {
        if (!this.isRegistered) {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) this.context.getSystemService("connectivity")).getActiveNetworkInfo();
            boolean z = activeNetworkInfo != null && activeNetworkInfo.isConnected();
            this.isConnected = z;
            this.context.registerReceiver(this.connectivityReceiver, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
            this.isRegistered = true;
        }
    }

    public final void onStop() {
        if (this.isRegistered) {
            this.context.unregisterReceiver(this.connectivityReceiver);
            this.isRegistered = false;
        }
    }
}
