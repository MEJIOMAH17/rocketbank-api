package com.google.android.gms.internal;

import android.support.v4.app.FragmentActivity;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.concurrent.TimeUnit;

public class zzaap extends GoogleApiClient {
    private final UnsupportedOperationException zzaBj;

    public zzaap(String str) {
        this.zzaBj = new UnsupportedOperationException(str);
    }

    public ConnectionResult blockingConnect() {
        throw this.zzaBj;
    }

    public ConnectionResult blockingConnect(long j, TimeUnit timeUnit) {
        throw this.zzaBj;
    }

    public PendingResult<Status> clearDefaultAccountAndReconnect() {
        throw this.zzaBj;
    }

    public void connect() {
        throw this.zzaBj;
    }

    public void disconnect() {
        throw this.zzaBj;
    }

    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        throw this.zzaBj;
    }

    public ConnectionResult getConnectionResult(Api<?> api) {
        throw this.zzaBj;
    }

    public boolean hasConnectedApi(Api<?> api) {
        throw this.zzaBj;
    }

    public boolean isConnected() {
        throw this.zzaBj;
    }

    public boolean isConnecting() {
        throw this.zzaBj;
    }

    public boolean isConnectionCallbacksRegistered(ConnectionCallbacks connectionCallbacks) {
        throw this.zzaBj;
    }

    public boolean isConnectionFailedListenerRegistered(OnConnectionFailedListener onConnectionFailedListener) {
        throw this.zzaBj;
    }

    public void reconnect() {
        throw this.zzaBj;
    }

    public void registerConnectionCallbacks(ConnectionCallbacks connectionCallbacks) {
        throw this.zzaBj;
    }

    public void registerConnectionFailedListener(OnConnectionFailedListener onConnectionFailedListener) {
        throw this.zzaBj;
    }

    public void stopAutoManage(FragmentActivity fragmentActivity) {
        throw this.zzaBj;
    }

    public void unregisterConnectionCallbacks(ConnectionCallbacks connectionCallbacks) {
        throw this.zzaBj;
    }

    public void unregisterConnectionFailedListener(OnConnectionFailedListener onConnectionFailedListener) {
        throw this.zzaBj;
    }
}
