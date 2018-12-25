package com.samsung.android.sdk.samsungpay.v2;

import android.util.Log;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class RequestTracker {
    private List<PartnerRequest> mRequestList;

    static class Singleton {
        private static final RequestTracker mInstance = new RequestTracker();
    }

    private RequestTracker() {
        this.mRequestList = null;
        this.mRequestList = new ArrayList();
    }

    public static RequestTracker getInstance() {
        return Singleton.mInstance;
    }

    public final List<PartnerRequest> getRequestList() {
        return this.mRequestList;
    }

    public final boolean isEmpty() {
        return this.mRequestList.isEmpty();
    }

    public final synchronized void addToRequestTracker(PartnerRequest partnerRequest) {
        Log.d("SPAYSDK:RequestTracker", "addToRequestTracker");
        this.mRequestList.add(partnerRequest);
    }

    public final synchronized boolean removeFromRequestTracker(PartnerRequest partnerRequest) {
        synchronized (this.mRequestList) {
            Log.d("SPAYSDK:RequestTracker", "Cmd pop to Queue : ".concat(String.valueOf(partnerRequest)));
            partnerRequest = this.mRequestList.remove(partnerRequest);
        }
        Log.d("SPAYSDK:RequestTracker", "remove from the queue : ret ".concat(String.valueOf(partnerRequest)));
        return partnerRequest;
    }

    public final synchronized void clearRequestTracker() {
        Log.d("SPAYSDK:RequestTracker", "clearRequestTracker()");
        this.mRequestList.clear();
    }

    public final synchronized void removeFromRequestTracker(Iterator<PartnerRequest> it) {
        if (it != null) {
            Log.d("SPAYSDK:RequestTracker", " Cmd pop to Queue : ".concat(String.valueOf(it)));
            it.remove();
        }
    }
}
