package com.samsung.android.sdk.samsungpay.v2;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.SystemProperties;
import android.util.Log;
import com.samsung.android.sdk.samsungpay.v2.SpaySdk.ServiceType;
import io.fabric.sdk.android.services.common.AbstractSpiCall;

public final class SpayValidity {
    private final String SPAY_SDK_API_LEVEL = "spay_sdk_api_level";
    private Context context;
    private String mBrand;
    private String mManufacture;
    protected String mPartnerDefinedSdkApiLevel = "";
    private String mSpayPackageName;
    private String mSpayServiceName;
    protected PackageInfo spayPackageInfo = new PackageInfo();

    public SpayValidity(Context context) {
        this.context = context;
        this.mBrand = Build.BRAND;
        this.mManufacture = Build.MANUFACTURER;
        this.mSpayPackageName = "com.samsung.android.spay";
        this.mSpayServiceName = "com.samsung.android.spay.sdk.v2.service.SPaySDKV2Service";
        try {
            this.mPartnerDefinedSdkApiLevel = Float.toString(this.context.getPackageManager().getApplicationInfo(this.context.getPackageName(), 128).metaData.getFloat("spay_sdk_api_level"));
            StringBuilder stringBuilder = new StringBuilder("Partner defined SDK API Level : ");
            stringBuilder.append(this.mPartnerDefinedSdkApiLevel);
            Log.i("SPAYSDK:SpayValidity", stringBuilder.toString());
        } catch (Context context2) {
            StringBuilder stringBuilder2 = new StringBuilder("Failed to load SDK API Level, NameNotFound: ");
            stringBuilder2.append(context2.getMessage());
            Log.e("SPAYSDK:SpayValidity", stringBuilder2.toString());
        }
    }

    public final int getSpayValidity(PartnerInfo partnerInfo, String str) {
        String str2 = SystemProperties.get("ro.csc.countryiso_code");
        int i = 0;
        if ((getSpayLocalValidity() == 999 ? 1 : 0) == 0) {
            Log.i("SPAYSDK:SpayValidity", "[FAIL] Spay Local validity check");
            return getSpayLocalValidity();
        }
        int i2;
        Log.i("SPAYSDK:SpayValidity", "[PASS] Spay Local validity check");
        if ((this.context.getPackageManager().checkSignatures(AbstractSpiCall.ANDROID_CLIENT_TYPE, "com.samsung.android.spay") == 0 ? 1 : 0) == 1) {
            i2 = 1;
        } else {
            Log.e("SPAYSDK:SpayValidity", "Spay has no integrity.");
            i2 = 0;
        }
        if (i2 == 0) {
            Log.i("SPAYSDK:SpayValidity", "[FAIL] Spay integrity check");
            return -360;
        }
        Log.i("SPAYSDK:SpayValidity", "[PASS] Spay integrity check");
        if (canFindSdkService(this.mSpayPackageName, this.mSpayServiceName)) {
            Log.i("SPAYSDK:SpayValidity", "[PASS] Spay SDK service check");
            i2 = this.spayPackageInfo.versionCode / 100000;
            StatusListenerInternal statusListenerInternal = new StatusListenerInternal();
            if (String.valueOf(str2).length() != 2) {
                throw new IllegalArgumentException();
            }
            int i3;
            for (String[] strArr : statusListenerInternal.countryAndMinimumVer) {
                if (strArr[0].equalsIgnoreCase(str2)) {
                    i3 = 1;
                    break;
                }
            }
            i3 = 0;
            if (i3 != 0) {
                if (!statusListenerInternal.isIncludeVersionCheckingRule(str2, i2)) {
                    Log.w("SPAYSDK:SpayValidity", "SamsungPay App is old version. SamsungPay App needs to be updated.");
                    i2 = 1;
                    if (i2 != 1) {
                        Log.i("SPAYSDK:SpayValidity", "[FAIL] Minimum Spay app version check");
                        return -357;
                    }
                    Log.i("SPAYSDK:SpayValidity", "[PASS] Minimum Spay app version check");
                    if (isValidPartnerServiceType(partnerInfo.getData())) {
                        Log.i("SPAYSDK:SpayValidity", "[FAIL] Defined Service Type check");
                        return -11;
                    }
                    Log.i("SPAYSDK:SpayValidity", "[PASS] Defined Service Type check");
                    partnerInfo = partnerInfo.getData();
                    i2 = VERSION.SDK_INT;
                    partnerInfo = partnerInfo.getString("PartnerServiceType", "");
                    Log.d("SPAYSDK:SpayValidity", "[isAndroidPlaformAvailable] Device country code : ".concat(String.valueOf(str2)));
                    Log.d("SPAYSDK:SpayValidity", "[isAndroidPlaformAvailable] Android Platform API Level : ".concat(String.valueOf(i2)));
                    Log.d("SPAYSDK:SpayValidity", "[isAndroidPlaformAvailable] Partner Service Type : ".concat(String.valueOf(partnerInfo)));
                    if ("KR".equalsIgnoreCase(str2) && !"CN".equalsIgnoreCase(str2) && i2 < 23 && ServiceType.INAPP_PAYMENT.toString().equals(partnerInfo) != null) {
                        Log.e("SPAYSDK:SpayValidity", "Android Platform M is minimum for SamsungPay SDK.");
                    } else if (i2 >= 21) {
                        Log.e("SPAYSDK:SpayValidity", "Android Platform L is minimum for SamsungPay SDK.");
                    } else {
                        i = 1;
                    }
                    if (i != 0) {
                        Log.i("SPAYSDK:SpayValidity", "[FAIL] Minimum Android Platform version check");
                        return -361;
                    }
                    Log.i("SPAYSDK:SpayValidity", "[PASS] Minimum Android Platform version check");
                    if (isValidPartnerSdkApiLevel() != null) {
                        Log.i("SPAYSDK:SpayValidity", "[FAIL] Defined SDK API Level check");
                        return -10;
                    }
                    Log.i("SPAYSDK:SpayValidity", "[PASS] Defined SDK API Level check");
                    if (isValidUsingSdkApiLevel(str) != null) {
                        Log.i("SPAYSDK:SpayValidity", "[FAIL] Using SDK API Level check");
                        return -352;
                    }
                    Log.i("SPAYSDK:SpayValidity", "[PASS] Using SDK API Level check");
                    return -999;
                }
            }
            i2 = 0;
            if (i2 != 1) {
                Log.i("SPAYSDK:SpayValidity", "[PASS] Minimum Spay app version check");
                if (isValidPartnerServiceType(partnerInfo.getData())) {
                    Log.i("SPAYSDK:SpayValidity", "[PASS] Defined Service Type check");
                    partnerInfo = partnerInfo.getData();
                    i2 = VERSION.SDK_INT;
                    partnerInfo = partnerInfo.getString("PartnerServiceType", "");
                    Log.d("SPAYSDK:SpayValidity", "[isAndroidPlaformAvailable] Device country code : ".concat(String.valueOf(str2)));
                    Log.d("SPAYSDK:SpayValidity", "[isAndroidPlaformAvailable] Android Platform API Level : ".concat(String.valueOf(i2)));
                    Log.d("SPAYSDK:SpayValidity", "[isAndroidPlaformAvailable] Partner Service Type : ".concat(String.valueOf(partnerInfo)));
                    if ("KR".equalsIgnoreCase(str2)) {
                    }
                    if (i2 >= 21) {
                        i = 1;
                    } else {
                        Log.e("SPAYSDK:SpayValidity", "Android Platform L is minimum for SamsungPay SDK.");
                    }
                    if (i != 0) {
                        Log.i("SPAYSDK:SpayValidity", "[PASS] Minimum Android Platform version check");
                        if (isValidPartnerSdkApiLevel() != null) {
                            Log.i("SPAYSDK:SpayValidity", "[PASS] Defined SDK API Level check");
                            if (isValidUsingSdkApiLevel(str) != null) {
                                Log.i("SPAYSDK:SpayValidity", "[PASS] Using SDK API Level check");
                                return -999;
                            }
                            Log.i("SPAYSDK:SpayValidity", "[FAIL] Using SDK API Level check");
                            return -352;
                        }
                        Log.i("SPAYSDK:SpayValidity", "[FAIL] Defined SDK API Level check");
                        return -10;
                    }
                    Log.i("SPAYSDK:SpayValidity", "[FAIL] Minimum Android Platform version check");
                    return -361;
                }
                Log.i("SPAYSDK:SpayValidity", "[FAIL] Defined Service Type check");
                return -11;
            }
            Log.i("SPAYSDK:SpayValidity", "[FAIL] Minimum Spay app version check");
            return -357;
        }
        Log.i("SPAYSDK:SpayValidity", "[FAIL] Spay SDK service check");
        return -356;
    }

    protected final int errorCodeToReadyStatus(int i) {
        switch (i) {
            case -999:
                return 2;
            case -361:
            case -360:
            case -352:
            case -351:
            case -350:
                return 0;
            case -358:
            case -357:
            case -356:
            case -11:
            case -10:
                return 1;
            default:
                StringBuilder stringBuilder = new StringBuilder("sdk can not catch spay status. ");
                stringBuilder.append(getSpayLocalValidity());
                Log.e("SPAYSDK:SpayValidity", stringBuilder.toString());
                return 0;
        }
    }

    private boolean canFindSpayPackage(java.lang.String r3) {
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
	at jadx.core.ProcessClass.processDependencies(ProcessClass.java:56)
	at jadx.core.ProcessClass.process(ProcessClass.java:39)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
        /*
        r2 = this;
        r0 = r2.context;
        r0 = r0.getPackageManager();
        r1 = 1;
        r3 = r0.getPackageInfo(r3, r1);	 Catch:{ NameNotFoundException -> 0x000e }
        r2.spayPackageInfo = r3;	 Catch:{ NameNotFoundException -> 0x000e }
        return r1;
    L_0x000e:
        r3 = "SPAYSDK:SpayValidity";
        r0 = "Unable to find Samsung Pay application on the device";
        android.util.Log.i(r3, r0);
        r3 = 0;
        return r3;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.samsung.android.sdk.samsungpay.v2.SpayValidity.canFindSpayPackage(java.lang.String):boolean");
    }

    private boolean canFindSdkService(java.lang.String r4, java.lang.String r5) {
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
	at jadx.core.ProcessClass.processDependencies(ProcessClass.java:56)
	at jadx.core.ProcessClass.process(ProcessClass.java:39)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
        /*
        r3 = this;
        r0 = 0;
        r1 = r3.context;	 Catch:{ NameNotFoundException -> 0x0013, NullPointerException -> 0x0012 }
        r1 = r1.getPackageManager();	 Catch:{ NameNotFoundException -> 0x0013, NullPointerException -> 0x0012 }
        r2 = new android.content.ComponentName;	 Catch:{ NameNotFoundException -> 0x0013, NullPointerException -> 0x0012 }
        r2.<init>(r4, r5);	 Catch:{ NameNotFoundException -> 0x0013, NullPointerException -> 0x0012 }
        r4 = 4;	 Catch:{ NameNotFoundException -> 0x0013, NullPointerException -> 0x0012 }
        r1.getServiceInfo(r2, r4);	 Catch:{ NameNotFoundException -> 0x0013, NullPointerException -> 0x0012 }
        r4 = 1;
        return r4;
    L_0x0012:
        return r0;
    L_0x0013:
        r4 = "SPAYSDK:SpayValidity";
        r5 = "can not find spay app or service";
        android.util.Log.e(r4, r5);
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.samsung.android.sdk.samsungpay.v2.SpayValidity.canFindSdkService(java.lang.String, java.lang.String):boolean");
    }

    private static boolean isValidPartnerServiceType(Bundle bundle) {
        try {
            bundle = bundle.getString("PartnerServiceType", "");
            Log.i("SPAYSDK:SpayValidity", "Partner defined Service Type : ".concat(String.valueOf(bundle)));
            for (ServiceType serviceType : ServiceType.values()) {
                if (bundle.equals(serviceType.toString())) {
                    return true;
                }
            }
            Log.e("SPAYSDK:SpayValidity", "Partner service type is not valid. Refer SpaySdk.ServiceType enum.");
            return false;
        } catch (Bundle bundle2) {
            bundle2.printStackTrace();
            Log.e("SPAYSDK:SpayValidity", "Fail to validate Partner service type.");
            return false;
        }
    }

    private boolean isValidPartnerSdkApiLevel() {
        try {
            StatusListenerInternal statusListenerInternal = new StatusListenerInternal();
            if (StatusListenerInternal.isValidSdkApiLevel(this.mPartnerDefinedSdkApiLevel, "1.8.00")) {
                return true;
            }
            return false;
        } catch (NullPointerException e) {
            e.printStackTrace();
            Log.e("SPAYSDK:SpayValidity", "Fail to validate SDK API Level.");
            return false;
        }
    }

    private boolean isValidUsingSdkApiLevel(String str) {
        try {
            String str2 = this.mPartnerDefinedSdkApiLevel;
            StatusListenerInternal statusListenerInternal = new StatusListenerInternal();
            if (StatusListenerInternal.isValidSdkApiLevel(str, str2) == null) {
                return false;
            }
            return true;
        } catch (String str3) {
            str3.printStackTrace();
            Log.e("SPAYSDK:SpayValidity", "Fail to validate SDK API Level.");
            return false;
        }
    }

    public final void setPartnerDefinedSdkApiLevel(Bundle bundle) {
        if (bundle != null && !this.mPartnerDefinedSdkApiLevel.isEmpty()) {
            bundle.putString("PartnerSdkApiLevel", this.mPartnerDefinedSdkApiLevel);
        }
    }

    private int getSpayLocalValidity() {
        Object obj;
        String str = this.mBrand;
        String str2 = this.mManufacture;
        if ("Samsung".compareToIgnoreCase(str) != 0) {
            if ("Samsung".compareToIgnoreCase(str2) != 0) {
                obj = null;
                if (obj == null) {
                    Log.i("SPAYSDK:SpayValidity", "This is not Samsung device.");
                    return -350;
                } else if (canFindSpayPackage(this.mSpayPackageName)) {
                    return 999;
                } else {
                    Log.i("SPAYSDK:SpayValidity", "SamsungPay package is not exist.");
                    return -351;
                }
            }
        }
        obj = 1;
        if (obj == null) {
            Log.i("SPAYSDK:SpayValidity", "This is not Samsung device.");
            return -350;
        } else if (canFindSpayPackage(this.mSpayPackageName)) {
            return 999;
        } else {
            Log.i("SPAYSDK:SpayValidity", "SamsungPay package is not exist.");
            return -351;
        }
    }
}
