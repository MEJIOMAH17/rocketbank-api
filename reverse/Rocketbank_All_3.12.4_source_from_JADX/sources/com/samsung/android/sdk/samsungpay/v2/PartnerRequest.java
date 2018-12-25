package com.samsung.android.sdk.samsungpay.v2;

public final class PartnerRequest {
    public Object callbackObj;
    private PartnerRequestState mPartnerRequestState;
    public Object obj1;
    public Object obj2;
    public int operation;

    public enum PartnerRequestState {
        NOT_IN_QUEUE,
        PENDING_QUEUE,
        PROCESSING
    }

    public PartnerRequest(Object obj) {
        this.operation = 0;
        this.callbackObj = obj;
    }

    public PartnerRequest(int i, Object obj, Object obj2, Object obj3) {
        this.operation = i;
        this.obj1 = obj;
        this.obj2 = obj2;
        this.callbackObj = obj3;
    }

    public final void setPartnerRequestState(PartnerRequestState partnerRequestState) {
        this.mPartnerRequestState = partnerRequestState;
    }

    public final boolean isPartnerRequestProcessing() {
        return this.mPartnerRequestState == PartnerRequestState.PROCESSING;
    }
}
