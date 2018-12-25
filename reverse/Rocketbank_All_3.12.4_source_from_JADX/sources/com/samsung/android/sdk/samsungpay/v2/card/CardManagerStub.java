package com.samsung.android.sdk.samsungpay.v2.card;

import android.content.Context;
import android.os.IBinder;
import android.util.Log;
import com.samsung.android.sdk.samsungpay.v2.ServiceHelper;
import com.samsung.android.sdk.samsungpay.v2.ServiceHelper.BindingResult;
import com.samsung.android.sdk.samsungpay.v2.ServiceHelper.ServiceCallback;
import com.samsung.android.sdk.samsungpay.v2.StubConnector;
import com.samsung.android.sdk.samsungpay.v2.card.ISCardManager.Stub;

final class CardManagerStub extends ServiceHelper implements ServiceCallback {
    StubConnector callerStubConnector;
    private ISCardManager cardManagerStub = null;
    ServiceCallback serviceCallback = this;

    CardManagerStub(Context context) {
        super(context);
    }

    protected final boolean isValidStub() {
        return this.cardManagerStub != null;
    }

    public final void connectStub(StubConnector stubConnector) {
        if ((this.cardManagerStub != null ? 1 : null) != null) {
            stubConnector.onReceivedStub(this.cardManagerStub);
        } else if (isValidServiceBinder()) {
            IBinder serviceBinder = getServiceBinder();
            if (!isValidServiceBinder()) {
                Log.w("SPAYSDK:CardManagerStub", "service binder is null.");
            }
            this.cardManagerStub = Stub.asInterface(serviceBinder);
            this.cardManagerStub = this.cardManagerStub;
            stubConnector.onReceivedStub(this.cardManagerStub);
        } else {
            this.callerStubConnector = stubConnector;
            createService(this.serviceCallback, "com.samsung.android.spay.sdk.v2.service.AppToAppService");
        }
    }

    public final void disConnectStub() {
        this.cardManagerStub = null;
        unbindService();
    }

    protected final ISCardManager getStub() {
        if ((this.cardManagerStub != null ? 1 : null) == null) {
            Log.w("SPAYSDK:CardManagerStub", "ISCardManager is null.");
        }
        return this.cardManagerStub;
    }

    public final void onReceived(IBinder iBinder) {
        if (!isValidServiceBinder()) {
            Log.w("SPAYSDK:CardManagerStub", "service binder is null.");
        }
        this.cardManagerStub = Stub.asInterface(iBinder);
        this.callerStubConnector.onReceivedStub(this.cardManagerStub);
    }

    public final void onFailed(BindingResult bindingResult) {
        this.callerStubConnector.onFailed(bindingResult);
    }
}
