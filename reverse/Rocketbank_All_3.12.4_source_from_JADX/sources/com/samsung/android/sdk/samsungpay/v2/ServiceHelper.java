package com.samsung.android.sdk.samsungpay.v2;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.IBinder;
import android.util.Log;
import com.samsung.android.sdk.samsungpay.v2.ISPartnerAppDeathDetector.Stub;

public class ServiceHelper {
    protected BindRetry bindRetry;
    private long bindTimeOut = 0;
    private Context context;
    private String serviceAction = "";
    private IBinder serviceBinder = null;
    private ServiceCallback serviceCallback;
    private ServiceConnection serviceConnection = new C06961();
    private String servicePackage = "";
    private int testDelay = 0;

    /* renamed from: com.samsung.android.sdk.samsungpay.v2.ServiceHelper$1 */
    class C06961 implements ServiceConnection {
        C06961() {
        }

        public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            if (ServiceHelper.this.bindRetry.isOverCounter() == null) {
                StringBuilder stringBuilder = new StringBuilder("service connected : ");
                stringBuilder.append(iBinder.toString());
                Log.i("SPAYSDK:ServiceHelper", stringBuilder.toString());
                ServiceHelper.this.setServiceBinder(iBinder);
                ServiceHelper.this.serviceCallback.onReceived(iBinder);
                return;
            }
            Log.e("SPAYSDK:ServiceHelper", "service timeouted");
        }

        public final void onServiceDisconnected(ComponentName componentName) {
            Log.i("SPAYSDK:ServiceHelper", "service disconnected");
            ServiceHelper.this.serviceCallback.onFailed(BindingResult.DISCONNECTED_SERVICE);
            ServiceHelper.this.releaseServiceBinder();
            ServiceHelper.this.bindRetry.releaseBindTimerTask();
        }
    }

    public enum BindingResult {
        EXIST_BINDER,
        BINDING_SERVICE,
        BINDING_SERVICE_ALREADY,
        CANNOT_BIND,
        DISCONNECTED_SERVICE
    }

    public interface ServiceCallback {
        void onFailed(BindingResult bindingResult);

        void onReceived(IBinder iBinder);
    }

    /* renamed from: com.samsung.android.sdk.samsungpay.v2.ServiceHelper$2 */
    class C12702 extends BindRetry {
        C12702() {
        }

        final void runTimer() {
            if (isOverCounter()) {
                Log.w("SPAYSDK:ServiceHelper", "Samsung Pay bind timeout and max retry is reached. Quit");
                ServiceHelper.this.serviceCallback.onFailed(BindingResult.CANNOT_BIND);
                return;
            }
            Log.w("SPAYSDK:ServiceHelper", "Samsung Pay bind timeout. Binder not available. trying again.");
            ServiceHelper.this.callbackBindingResult(ServiceHelper.this.serviceCallback, ServiceHelper.this.bindService());
        }
    }

    /* renamed from: com.samsung.android.sdk.samsungpay.v2.ServiceHelper$3 */
    class C14193 extends Stub {
        C14193() {
        }
    }

    protected ServiceHelper(Context context) {
        this.context = context.getApplicationContext();
        this.servicePackage = "com.samsung.android.spay";
    }

    public final IBinder getServiceBinder() {
        return this.serviceBinder;
    }

    public final void setServiceBinder(IBinder iBinder) {
        this.serviceBinder = iBinder;
    }

    protected final void createService(ServiceCallback serviceCallback, String str) {
        this.serviceCallback = serviceCallback;
        this.serviceAction = str;
        this.bindRetry = new C12702();
        callbackBindingResult(this.serviceCallback, bindService());
    }

    protected final void callbackBindingResult(ServiceCallback serviceCallback, BindingResult bindingResult) {
        switch (bindingResult) {
            case BINDING_SERVICE:
                Log.d("SPAYSDK:ServiceHelper", "request to bind");
                return;
            case BINDING_SERVICE_ALREADY:
                Log.i("SPAYSDK:ServiceHelper", "request to bind already");
                return;
            case CANNOT_BIND:
                Log.e("SPAYSDK:ServiceHelper", "pay app service is not available");
                serviceCallback.onFailed(bindingResult);
                return;
            case EXIST_BINDER:
                Log.w("SPAYSDK:ServiceHelper", "exist binder.");
                serviceCallback.onReceived(this.serviceBinder);
                return;
            default:
                Log.e("SPAYSDK:ServiceHelper", "must not come into here.");
                serviceCallback.onFailed(bindingResult);
                return;
        }
    }

    protected final void releaseServiceBinder() {
        this.serviceBinder = null;
    }

    protected final boolean isValidServiceBinder() {
        IBinder iBinder = this.serviceBinder;
        if (iBinder != null && iBinder.isBinderAlive()) {
            return true;
        }
        this.serviceBinder = null;
        return false;
    }

    protected final synchronized BindingResult bindService() {
        int i;
        IBinder iBinder = this.serviceBinder;
        if (iBinder == null || !iBinder.isBinderAlive()) {
            this.serviceBinder = null;
            i = 0;
        } else {
            i = 1;
        }
        if (i != 0) {
            this.bindRetry.releaseBindTimerTask();
            return BindingResult.EXIST_BINDER;
        } else if (this.bindRetry.isScheduled()) {
            Log.d("SPAYSDK:ServiceHelper", "bindService already attempted, waiting.");
            return BindingResult.BINDING_SERVICE_ALREADY;
        } else if ("".equals(this.serviceAction)) {
            Log.w("SPAYSDK:ServiceHelper", "action is null, need to call createService before it.");
            return BindingResult.CANNOT_BIND;
        } else {
            Intent intent = new Intent(this.serviceAction);
            intent.setPackage(this.servicePackage);
            IBinder c14193 = new C14193();
            Bundle bundle = new Bundle();
            bundle.putBinder("deathDetectorBinder", c14193);
            bundle.putInt("testDelay", 0);
            intent.putExtras(bundle);
            if (this.bindRetry.scheduleBindTimer()) {
                if (this.context.bindService(intent, this.serviceConnection, 65)) {
                    StringBuilder stringBuilder = new StringBuilder("Service bind attempted and waiting for onConnect, from ");
                    stringBuilder.append(this.context);
                    Log.d("SPAYSDK:ServiceHelper", stringBuilder.toString());
                    return BindingResult.BINDING_SERVICE;
                }
                this.bindRetry.releaseBindTimerTask();
            }
            return BindingResult.CANNOT_BIND;
        }
    }

    protected final void unbindService() {
        Object obj;
        IBinder iBinder = this.serviceBinder;
        if (iBinder == null || !iBinder.isBinderAlive()) {
            this.serviceBinder = null;
            obj = null;
        } else {
            obj = 1;
        }
        if (obj != null) {
            StringBuilder stringBuilder = new StringBuilder("! unbindService from ");
            stringBuilder.append(this.context);
            Log.d("SPAYSDK:ServiceHelper", stringBuilder.toString());
            this.context.unbindService(this.serviceConnection);
        }
        this.serviceBinder = null;
    }
}
