package com.samsung.android.sdk.samsungpay.v2;

import android.content.Context;
import android.os.IBinder;
import android.util.Log;
import com.samsung.android.sdk.samsungpay.v2.ISSamsungPay.Stub;
import com.samsung.android.sdk.samsungpay.v2.ServiceHelper.BindingResult;
import com.samsung.android.sdk.samsungpay.v2.ServiceHelper.ServiceCallback;

final class SamsungPayStub extends ServiceHelper implements ServiceCallback {
    private StubConnector callerStubConnector;
    private ISSamsungPay samsungPayStub = null;
    private ServiceCallback serviceCallback = this;

    SamsungPayStub(Context context) {
        super(context);
    }

    public final void connectStub(StubConnector stubConnector) {
        if ((this.samsungPayStub != null ? 1 : null) != null) {
            stubConnector.onReceivedStub(this.samsungPayStub);
        } else if (isValidServiceBinder()) {
            IBinder serviceBinder = getServiceBinder();
            if (!isValidServiceBinder()) {
                Log.w("SPAYSDK:spayService", "service binder is null.");
            }
            this.samsungPayStub = Stub.asInterface(serviceBinder);
            this.samsungPayStub = this.samsungPayStub;
            stubConnector.onReceivedStub(this.samsungPayStub);
        } else {
            this.callerStubConnector = stubConnector;
            createService(this.serviceCallback, "com.samsung.android.spay.sdk.v2.service.CommonAppService");
        }
    }

    public final void disConnectStub() {
        this.samsungPayStub = null;
        unbindService();
    }

    public final void onReceived(IBinder iBinder) {
        if (!isValidServiceBinder()) {
            Log.w("SPAYSDK:spayService", "service binder is null.");
        }
        this.samsungPayStub = Stub.asInterface(iBinder);
        this.callerStubConnector.onReceivedStub(this.samsungPayStub);
    }

    public final void onFailed(BindingResult bindingResult) {
        this.callerStubConnector.onFailed(bindingResult);
    }
}
