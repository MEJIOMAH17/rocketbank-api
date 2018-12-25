package com.samsung.android.sdk.samsungpay.v2;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.samsung.android.sdk.samsungpay.v2.ServiceHelper.BindingResult;
import com.samsung.android.sdk.samsungpay.v2.SpaySdk.SdkApiLevel;

public final class SamsungPay extends SpaySdk {
    protected Handler mHanderForInternalListener = new Handler(Looper.getMainLooper()) {
        public final void handleMessage(Message message) {
            switch (message.what) {
                case 0:
                    ((StatusListener) message.obj).onSuccess(message.arg1, message.getData());
                    return;
                case 1:
                    ((StatusListener) message.obj).onFail(message.arg1, message.getData());
                    return;
                case 2:
                    return;
                default:
                    Log.e("SPAYSDK:SamsungPay", "sdk can not catch listener from SPay.");
                    return;
            }
        }
    };
    private SamsungPayStub samsungPayStub;

    class StatusListenerInternal {
        String[][] countryAndMinimumVer;

        public StatusListenerInternal() {
            r0 = new String[7][];
            r0[0] = new String[]{"US", "2300"};
            r0[1] = new String[]{"PR", "2300"};
            r0[2] = new String[]{"KR", "2250"};
            r0[3] = new String[]{"BR", "2400"};
            r0[4] = new String[]{"ES", "2400"};
            r0[5] = new String[]{"AU", "2400"};
            r0[6] = new String[]{"SG", "2400"};
            this.countryAndMinimumVer = r0;
        }

        protected final boolean isIncludeVersionCheckingRule(String str, int i) {
            int length = this.countryAndMinimumVer.length;
            int i2 = 0;
            while (i2 < length) {
                if (!this.countryAndMinimumVer[i2][0].equalsIgnoreCase(str)) {
                    i2++;
                } else if (Integer.parseInt(this.countryAndMinimumVer[i2][1]) <= i) {
                    return true;
                } else {
                    return false;
                }
            }
            return false;
        }

        protected static boolean isValidSdkApiLevel(String str, String str2) {
            str2 = convertVersionLevel(str2);
            str = convertVersionLevel(str);
            if (str == null) {
                Log.e("SPAYSDK:VersionChecker", "SDK API Level was not defined.");
                return false;
            }
            if (str2 != null) {
                if (str <= str2) {
                    return true;
                }
            }
            Log.e("SPAYSDK:VersionChecker", "Currently defined SDK API Level is not supported.");
            return false;
        }

        private static int convertVersionLevel(String str) {
            if (str == null) {
                return 0;
            }
            str = str.split("\\.");
            try {
                int intValue = Integer.valueOf(str[0]).intValue();
                return (Integer.valueOf(str[1]).intValue() << 8) | (intValue << 12);
            } catch (String str2) {
                str2.printStackTrace();
                return 0;
            }
        }
    }

    public SamsungPay(Context context, PartnerInfo partnerInfo) {
        super(context, partnerInfo);
        Log.d("SPAYSDK:SamsungPay", "SamsungPay()");
        StringBuilder stringBuilder = new StringBuilder("Partner SDK version : ");
        stringBuilder.append(String.format("%d.%d.%02d", new Object[]{Integer.valueOf(1), Integer.valueOf(8), Integer.valueOf(0)}));
        Log.d("SPAYSDK:SamsungPay", stringBuilder.toString());
        if (isValidContextAndServiceId(partnerInfo) == null) {
            throw new NullPointerException("Context and PartnerInfo.serviceId have to be set.");
        }
        if (getPartnerInfo().getData() == null) {
            getPartnerInfo().setData(new Bundle());
        }
        getPartnerInfo().getData().putString("sdkVersion", String.format("%d.%d.%02d", new Object[]{Integer.valueOf(1), Integer.valueOf(8), Integer.valueOf(0)}));
        this.samsungPayStub = new SamsungPayStub(context);
    }

    public final void getSamsungPayStatus(StatusListener statusListener) {
        Log.d("SPAYSDK:SamsungPay", "getSamsungPayStatus()");
        final StatusListener statusListener2 = statusListener;
        C12671 c12671 = new StubConnector(this.context, getPartnerInfo(), "1.4") {
            public final void run(int i, Bundle bundle) {
                if (i != 2) {
                    Log.w("SPAYSDK:SamsungPay", "getSamsungPayStatus init error ".concat(String.valueOf(i)));
                    StringBuilder stringBuilder = new StringBuilder("getSamsungPayStatus init error - extra reason ");
                    stringBuilder.append(bundle.getInt("errorReason"));
                    Log.w("SPAYSDK:SamsungPay", stringBuilder.toString());
                    statusListener2.onSuccess(i, bundle);
                    return;
                }
                Singleton.mInstance.addToRequestTracker(new PartnerRequest(statusListener2));
                SamsungPay.this.samsungPayStub.connectStub(this);
            }

            public final void onReceivedStub(Object obj) {
                SamsungPay.this.processRequestWithSuccess((ISSamsungPay) obj);
            }

            public final void onFailed(BindingResult bindingResult) {
                SamsungPay.this.processRequestWithFail(bindingResult);
                Log.e("SPAYSDK:SamsungPay", "getWalletInfo cannot connect service or wrong stub.");
            }
        };
    }

    public final void goToUpdatePage() {
        Log.d("SPAYSDK:SamsungPay", "goToUpdatePage() : SDK API Level = 1.2");
        C12682 c12682 = new PublicMethod(this.context, getPartnerInfo(), SdkApiLevel.LEVEL_1_2.getLevel()) {
            public final void run(int r3, android.os.Bundle r4) {
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
	at jadx.core.ProcessClass.processDependencies(ProcessClass.java:56)
	at jadx.core.ProcessClass.process(ProcessClass.java:39)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
                /*
                r2 = this;
                if (r3 != 0) goto L_0x0012;
            L_0x0002:
                r4 = "SPAYSDK:SamsungPay";
                r0 = "goToUpdatePage init error ";
                r3 = java.lang.String.valueOf(r3);
                r3 = r0.concat(r3);
                android.util.Log.w(r4, r3);
                return;
            L_0x0012:
                r3 = "SPAYSDK:SamsungPay";
                r4 = "goToUpdatePage";
                android.util.Log.d(r3, r4);
                r3 = com.samsung.android.sdk.samsungpay.v2.SamsungPay.this;	 Catch:{ NameNotFoundException -> 0x0092 }
                r3 = r3.context;	 Catch:{ NameNotFoundException -> 0x0092 }
                r3 = r3.getPackageManager();	 Catch:{ NameNotFoundException -> 0x0092 }
                r4 = "com.samsung.android.spay";	 Catch:{ NameNotFoundException -> 0x0092 }
                r0 = 0;	 Catch:{ NameNotFoundException -> 0x0092 }
                r3 = r3.getPackageInfo(r4, r0);	 Catch:{ NameNotFoundException -> 0x0092 }
                r3 = r3.versionCode;	 Catch:{ NameNotFoundException -> 0x0092 }
                r4 = 100000; // 0x186a0 float:1.4013E-40 double:4.94066E-319;	 Catch:{ NameNotFoundException -> 0x0092 }
                r3 = r3 / r4;	 Catch:{ NameNotFoundException -> 0x0092 }
                r4 = "ro.csc.countryiso_code";
                r4 = android.os.SystemProperties.get(r4);
                r4 = r4.toUpperCase();
                r0 = new android.content.Intent;
                r0.<init>();
                r1 = 2100; // 0x834 float:2.943E-42 double:1.0375E-320;
                if (r3 < r1) goto L_0x0058;
            L_0x0041:
                r3 = "KR";
                r3 = r3.equals(r4);
                if (r3 != 0) goto L_0x0058;
            L_0x0049:
                r3 = "samsungpay://launch?action=aboutsamsungpay";
                r4 = "android.intent.action.VIEW";
                r0.setAction(r4);
                r3 = android.net.Uri.parse(r3);
                r0.setData(r3);
                goto L_0x0078;
            L_0x0058:
                r3 = com.samsung.android.sdk.samsungpay.v2.SamsungPay.this;
                r3 = r3.context;
                r3 = r3.getPackageManager();
                r4 = "com.samsung.android.spay";
                r3 = r3.getLaunchIntentForPackage(r4);
                r3 = r3.getComponent();
                r3 = r3.getClassName();
                r4 = new android.content.ComponentName;
                r1 = "com.samsung.android.spay";
                r4.<init>(r1, r3);
                r0.setComponent(r4);
            L_0x0078:
                r3 = 268468224; // 0x10008000 float:2.5342157E-29 double:1.326409265E-315;
                r0.addFlags(r3);
                r3 = com.samsung.android.sdk.samsungpay.v2.SamsungPay.this;	 Catch:{ ActivityNotFoundException -> 0x0086 }
                r3 = r3.context;	 Catch:{ ActivityNotFoundException -> 0x0086 }
                r3.startActivity(r0);	 Catch:{ ActivityNotFoundException -> 0x0086 }
                return;
            L_0x0086:
                r3 = move-exception;
                r4 = "SPAYSDK:SamsungPay";
                r0 = "Samsung Pay Activity not found";
                android.util.Log.e(r4, r0);
                r3.printStackTrace();
                return;
            L_0x0092:
                r3 = "SPAYSDK:SamsungPay";
                r4 = "SamsungPay App is not found.";
                android.util.Log.e(r3, r4);
                return;
                */
                throw new UnsupportedOperationException("Method not decompiled: com.samsung.android.sdk.samsungpay.v2.SamsungPay.2.run(int, android.os.Bundle):void");
            }
        };
    }

    public final void activateSamsungPay() {
        Log.d("SPAYSDK:SamsungPay", "activateSamsungPay() : SDK API Level = 1.1");
        C12693 c12693 = new PublicMethod(this.context, getPartnerInfo(), SdkApiLevel.LEVEL_1_1.getLevel()) {
            public final void run(int i, Bundle bundle) {
                if (i == 0) {
                    Log.w("SPAYSDK:SamsungPay", "activateSamsungPay init error ".concat(String.valueOf(i)));
                    return;
                }
                i = new Intent();
                i.setComponent(new ComponentName("com.samsung.android.spay", SamsungPay.this.context.getPackageManager().getLaunchIntentForPackage("com.samsung.android.spay").getComponent().getClassName()));
                i.setFlags(268435456);
                i.putExtra("activate_sp_from_sdk", true);
                Log.d("SPAYSDK:SamsungPay", "ACTIVATE_SP_FROM_SDK");
                try {
                    SamsungPay.this.context.startActivity(i);
                } catch (int i2) {
                    Log.e("SPAYSDK:SamsungPay", "Samsung Pay Activity not found");
                    i2.printStackTrace();
                }
            }
        };
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    protected final void processRequestWithSuccess(com.samsung.android.sdk.samsungpay.v2.ISSamsungPay r8) {
        /*
        r7 = this;
        r0 = "SPAYSDK:SamsungPay";
        r1 = "processPendingRequests";
        android.util.Log.d(r0, r1);
        r0 = com.samsung.android.sdk.samsungpay.v2.RequestTracker.Singleton.mInstance;
        monitor-enter(r0);
        r1 = r0.isEmpty();	 Catch:{ all -> 0x00aa }
        if (r1 == 0) goto L_0x001b;
    L_0x0012:
        r8 = "SPAYSDK:SamsungPay";
        r1 = "No pending requests";
        android.util.Log.d(r8, r1);	 Catch:{ all -> 0x00aa }
        monitor-exit(r0);	 Catch:{ all -> 0x00aa }
        return;
    L_0x001b:
        r1 = r0.getRequestList();	 Catch:{ all -> 0x00aa }
        r1 = r1.iterator();	 Catch:{ all -> 0x00aa }
    L_0x0023:
        r2 = r1.hasNext();	 Catch:{ all -> 0x00aa }
        if (r2 == 0) goto L_0x009d;
    L_0x0029:
        r2 = r1.next();	 Catch:{ all -> 0x00aa }
        r2 = (com.samsung.android.sdk.samsungpay.v2.PartnerRequest) r2;	 Catch:{ all -> 0x00aa }
        r3 = "SPAYSDK:SamsungPay";
        r4 = new java.lang.StringBuilder;	 Catch:{ all -> 0x00aa }
        r5 = "processPendingRequests size : ";
        r4.<init>(r5);	 Catch:{ all -> 0x00aa }
        r5 = r0.getRequestList();	 Catch:{ all -> 0x00aa }
        r5 = r5.size();	 Catch:{ all -> 0x00aa }
        r4.append(r5);	 Catch:{ all -> 0x00aa }
        r5 = ", partnerRequest : ";
        r4.append(r5);	 Catch:{ all -> 0x00aa }
        r4.append(r2);	 Catch:{ all -> 0x00aa }
        r4 = r4.toString();	 Catch:{ all -> 0x00aa }
        android.util.Log.d(r3, r4);	 Catch:{ all -> 0x00aa }
        r3 = r2.operation;	 Catch:{ all -> 0x00aa }
        r4 = -1;
        r5 = 0;
        switch(r3) {
            case 0: goto L_0x0078;
            case 1: goto L_0x0023;
            case 2: goto L_0x005a;
            default: goto L_0x0059;
        };	 Catch:{ all -> 0x00aa }
    L_0x0059:
        goto L_0x0023;
    L_0x005a:
        r3 = r2.obj1;	 Catch:{ all -> 0x00aa }
        r3 = (java.util.List) r3;	 Catch:{ all -> 0x00aa }
        r2 = r2.callbackObj;	 Catch:{ all -> 0x00aa }
        r2 = (com.samsung.android.sdk.samsungpay.v2.StatusListener) r2;	 Catch:{ all -> 0x00aa }
        r0.removeFromRequestTracker(r1);	 Catch:{ Exception -> 0x006f }
        r6 = r7.getPartnerInfo();	 Catch:{ Exception -> 0x006f }
        r8.getWalletInfo(r6, r3, r5);	 Catch:{ Exception -> 0x006f }
        goto L_0x0023;
    L_0x006d:
        r8 = move-exception;
        goto L_0x0077;
    L_0x006f:
        r3 = move-exception;
        r3.printStackTrace();	 Catch:{ all -> 0x006d }
        r2.onFail(r4, r5);	 Catch:{ all -> 0x006d }
        goto L_0x0023;
    L_0x0077:
        throw r8;	 Catch:{ all -> 0x00aa }
    L_0x0078:
        r2 = r2.callbackObj;	 Catch:{ all -> 0x00aa }
        r2 = (com.samsung.android.sdk.samsungpay.v2.StatusListener) r2;	 Catch:{ all -> 0x00aa }
        r3 = r7.getPartnerInfo();	 Catch:{ RemoteException -> 0x0095 }
        r3 = r8.getSamsungPayStatus(r3);	 Catch:{ RemoteException -> 0x0095 }
        r0.removeFromRequestTracker(r1);	 Catch:{ RemoteException -> 0x0095 }
        if (r3 == 0) goto L_0x0023;
    L_0x0089:
        r6 = r3.getStatus();	 Catch:{ RemoteException -> 0x0095 }
        r3 = r3.getData();	 Catch:{ RemoteException -> 0x0095 }
        r2.onSuccess(r6, r3);	 Catch:{ RemoteException -> 0x0095 }
        goto L_0x0023;
    L_0x0095:
        r3 = move-exception;
        r3.printStackTrace();	 Catch:{ all -> 0x00aa }
        r2.onFail(r4, r5);	 Catch:{ all -> 0x00aa }
        goto L_0x0023;
    L_0x009d:
        monitor-exit(r0);	 Catch:{ all -> 0x00aa }
        r8 = r0.isEmpty();
        if (r8 == 0) goto L_0x00a9;
    L_0x00a4:
        r8 = r7.samsungPayStub;
        r8.disConnectStub();
    L_0x00a9:
        return;
    L_0x00aa:
        r8 = move-exception;
        monitor-exit(r0);	 Catch:{ all -> 0x00aa }
        throw r8;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.samsung.android.sdk.samsungpay.v2.SamsungPay.processRequestWithSuccess(com.samsung.android.sdk.samsungpay.v2.ISSamsungPay):void");
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    protected final void processRequestWithFail(com.samsung.android.sdk.samsungpay.v2.ServiceHelper.BindingResult r7) {
        /*
        r6 = this;
        r0 = "SPAYSDK:SamsungPay";
        r1 = "processRequestWithFail";
        android.util.Log.d(r0, r1);
        r0 = com.samsung.android.sdk.samsungpay.v2.RequestTracker.Singleton.mInstance;
        monitor-enter(r0);
        r1 = r0.isEmpty();	 Catch:{ all -> 0x0088 }
        if (r1 == 0) goto L_0x001b;
    L_0x0012:
        r7 = "SPAYSDK:SamsungPay";
        r1 = "No pending requests";
        android.util.Log.d(r7, r1);	 Catch:{ all -> 0x0088 }
        monitor-exit(r0);	 Catch:{ all -> 0x0088 }
        return;
    L_0x001b:
        r1 = new android.os.Bundle;	 Catch:{ all -> 0x0088 }
        r1.<init>();	 Catch:{ all -> 0x0088 }
        r2 = "ErrorString";
        r7 = r7.toString();	 Catch:{ all -> 0x0088 }
        r1.putString(r2, r7);	 Catch:{ all -> 0x0088 }
        r7 = r0.getRequestList();	 Catch:{ all -> 0x0088 }
        r7 = r7.iterator();	 Catch:{ all -> 0x0088 }
    L_0x0031:
        r2 = r7.hasNext();	 Catch:{ all -> 0x0088 }
        if (r2 == 0) goto L_0x0078;
    L_0x0037:
        r2 = r7.next();	 Catch:{ all -> 0x0088 }
        r2 = (com.samsung.android.sdk.samsungpay.v2.PartnerRequest) r2;	 Catch:{ all -> 0x0088 }
        r3 = "SPAYSDK:SamsungPay";
        r4 = new java.lang.StringBuilder;	 Catch:{ all -> 0x0088 }
        r5 = "processPendingRequests size : ";
        r4.<init>(r5);	 Catch:{ all -> 0x0088 }
        r5 = r0.getRequestList();	 Catch:{ all -> 0x0088 }
        r5 = r5.size();	 Catch:{ all -> 0x0088 }
        r4.append(r5);	 Catch:{ all -> 0x0088 }
        r5 = ", partnerRequest : ";
        r4.append(r5);	 Catch:{ all -> 0x0088 }
        r4.append(r2);	 Catch:{ all -> 0x0088 }
        r4 = r4.toString();	 Catch:{ all -> 0x0088 }
        android.util.Log.d(r3, r4);	 Catch:{ all -> 0x0088 }
        r3 = r2.operation;	 Catch:{ all -> 0x0088 }
        r4 = -103; // 0xffffffffffffff99 float:NaN double:NaN;
        switch(r3) {
            case 0: goto L_0x0070;
            case 1: goto L_0x0031;
            case 2: goto L_0x0068;
            default: goto L_0x0067;
        };	 Catch:{ all -> 0x0088 }
    L_0x0067:
        goto L_0x0031;
    L_0x0068:
        r2 = r2.callbackObj;	 Catch:{ all -> 0x0088 }
        r2 = (com.samsung.android.sdk.samsungpay.v2.StatusListener) r2;	 Catch:{ all -> 0x0088 }
        r2.onFail(r4, r1);	 Catch:{ all -> 0x0088 }
        goto L_0x0031;
    L_0x0070:
        r2 = r2.callbackObj;	 Catch:{ all -> 0x0088 }
        r2 = (com.samsung.android.sdk.samsungpay.v2.StatusListener) r2;	 Catch:{ all -> 0x0088 }
        r2.onFail(r4, r1);	 Catch:{ all -> 0x0088 }
        goto L_0x0031;
    L_0x0078:
        r0.clearRequestTracker();	 Catch:{ all -> 0x0088 }
        r7 = r0.isEmpty();	 Catch:{ all -> 0x0088 }
        if (r7 == 0) goto L_0x0086;
    L_0x0081:
        r7 = r6.samsungPayStub;	 Catch:{ all -> 0x0088 }
        r7.disConnectStub();	 Catch:{ all -> 0x0088 }
    L_0x0086:
        monitor-exit(r0);	 Catch:{ all -> 0x0088 }
        return;
    L_0x0088:
        r7 = move-exception;
        monitor-exit(r0);	 Catch:{ all -> 0x0088 }
        throw r7;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.samsung.android.sdk.samsungpay.v2.SamsungPay.processRequestWithFail(com.samsung.android.sdk.samsungpay.v2.ServiceHelper$BindingResult):void");
    }
}
