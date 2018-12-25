package ru.rocketbank.r2d2.utils;

import android.app.Activity;
import android.content.Intent;
import android.nfc.NfcAdapter;
import android.nfc.Tag;
import android.nfc.tech.IsoDep;
import android.os.Parcelable;
import android.support.v4.app.ActivityCompat;
import android.support.v4.content.ContextCompat;
import de.greenrobot.event.EventBus;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.events.ResultPermissionEvent;
import ru.rocketbank.core.nfc.NfcCardData;
import ru.rocketbank.r2d2.Manifest.permission;

/* compiled from: NfcInputCard.kt */
public final class NfcInputCard {
    public static final Companion Companion = new Companion();
    public static final String TAG = "NfcInputC";
    private final Activity activity;
    private NfcAdapter nfcAdapter;
    private final Class<?> targetClass;

    /* compiled from: NfcInputCard.kt */
    public static final class Companion {
        private Companion() {
        }

        public final void handleIntent(Intent intent) {
            Intrinsics.checkParameterIsNotNull(intent, "intent");
            if (Intrinsics.areEqual("android.nfc.action.TECH_DISCOVERED", intent.getAction())) {
                Parcelable parcelableExtra = intent.getParcelableExtra("android.nfc.extra.TAG");
                Intrinsics.checkExpressionValueIsNotNull(parcelableExtra, "intent.getParcelableExtra(NfcAdapter.EXTRA_TAG)");
                Object techList = ((Tag) parcelableExtra).getTechList();
                Intrinsics.checkExpressionValueIsNotNull(techList, "tagFromIntent.techList");
                String name = IsoDep.class.getName();
                Intrinsics.checkParameterIsNotNull(techList, "$receiver");
                if ((ArraysKt___ArraysKt.indexOf(techList, name) >= 0 ? 1 : null) != null) {
                    intent = IsoDep.get((Tag) intent.getParcelableExtra("android.nfc.extra.TAG"));
                    if (intent != null) {
                        intent = new NfcCardData(intent).readCard();
                        if (intent != null) {
                            EventBus.getDefault().post(intent);
                        }
                    }
                }
            }
        }
    }

    public NfcInputCard(Activity activity, Class<?> cls) {
        Intrinsics.checkParameterIsNotNull(activity, "activity");
        Intrinsics.checkParameterIsNotNull(cls, "targetClass");
        this.activity = activity;
        this.targetClass = cls;
    }

    public final Activity getActivity() {
        return this.activity;
    }

    public final void onCreate() {
        /* JADX: method processing error */
/*
Error: java.lang.NullPointerException
*/
        /*
        r3 = this;
        r0 = de.greenrobot.event.EventBus.getDefault();	 Catch:{ Exception -> 0x0007 }
        r0.register(r3);	 Catch:{ Exception -> 0x0007 }
    L_0x0007:
        r3.init();	 Catch:{ Throwable -> 0x000b }
        return;
    L_0x000b:
        r0 = move-exception;
        r1 = "NfcInputC";
        r2 = "binding exception ";
        android.util.Log.e(r1, r2, r0);
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: ru.rocketbank.r2d2.utils.NfcInputCard.onCreate():void");
    }

    public final void onStop() {
        /* JADX: method processing error */
/*
Error: java.lang.NullPointerException
*/
        /*
        r3 = this;
        r0 = de.greenrobot.event.EventBus.getDefault();	 Catch:{ Exception -> 0x0007 }
        r0.unregister(r3);	 Catch:{ Exception -> 0x0007 }
    L_0x0007:
        r0 = r3.nfcAdapter;	 Catch:{ Throwable -> 0x0011 }
        if (r0 == 0) goto L_0x0010;	 Catch:{ Throwable -> 0x0011 }
    L_0x000b:
        r1 = r3.activity;	 Catch:{ Throwable -> 0x0011 }
        r0.disableForegroundDispatch(r1);	 Catch:{ Throwable -> 0x0011 }
    L_0x0010:
        return;
    L_0x0011:
        r0 = move-exception;
        r1 = "NfcInputC";
        r2 = "stop exception ";
        android.util.Log.e(r1, r2, r0);
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: ru.rocketbank.r2d2.utils.NfcInputCard.onStop():void");
    }

    private final void requestPermissions() {
        if (!ActivityCompat.shouldShowRequestPermissionRationale(this.activity, permission.NFC)) {
            ActivityCompat.requestPermissions(this.activity, new String[]{permission.NFC}, 10);
        }
    }

    private final boolean requestOrPassPermissions() {
        if (ContextCompat.checkSelfPermission(this.activity, permission.NFC) == 0) {
            return true;
        }
        requestPermissions();
        return false;
    }

    public final void onEvent(ResultPermissionEvent resultPermissionEvent) {
        Intrinsics.checkParameterIsNotNull(resultPermissionEvent, "result");
        int[] grantResults = resultPermissionEvent.getGrantResults();
        if (grantResults != null) {
            if ((1 ^ (grantResults.length == 0 ? 1 : 0)) != 0 && resultPermissionEvent.getRequestCode() == 10 && grantResults[0] == null) {
                init();
            }
        }
    }

    private final void init() {
        /* JADX: method processing error */
/*
Error: java.lang.NullPointerException
*/
        /*
        r6 = this;
        r0 = r6.requestOrPassPermissions();
        if (r0 != 0) goto L_0x0007;
    L_0x0006:
        return;
    L_0x0007:
        r0 = r6.activity;
        r0 = (android.content.Context) r0;
        r0 = android.nfc.NfcAdapter.getDefaultAdapter(r0);
        r6.nfcAdapter = r0;
        r0 = r6.nfcAdapter;
        if (r0 == 0) goto L_0x0076;
    L_0x0015:
        r0 = r6.nfcAdapter;
        if (r0 != 0) goto L_0x001c;
    L_0x0019:
        kotlin.jvm.internal.Intrinsics.throwNpe();
    L_0x001c:
        r0 = r0.isEnabled();
        if (r0 == 0) goto L_0x0076;
    L_0x0022:
        r0 = new android.content.IntentFilter;
        r1 = "android.nfc.action.NDEF_DISCOVERED";
        r0.<init>(r1);
        r1 = "*/*";	 Catch:{ MalformedMimeTypeException -> 0x0075 }
        r0.addDataType(r1);	 Catch:{ MalformedMimeTypeException -> 0x0075 }
        r1 = 1;
        r2 = new android.content.IntentFilter[r1];
        r3 = 0;
        r2[r3] = r0;
        r0 = 2;
        r0 = new java.lang.String[r0];
        r4 = android.nfc.tech.NfcA.class;
        r4 = r4.getName();
        r0[r3] = r4;
        r4 = android.nfc.tech.IsoDep.class;
        r4 = r4.getName();
        r0[r1] = r4;
        r1 = new java.lang.String[r1][];
        r1[r3] = r0;
        r1 = (java.lang.String[][]) r1;
        r0 = new android.content.Intent;
        r4 = r6.activity;
        r4 = (android.content.Context) r4;
        r5 = r6.targetClass;
        r0.<init>(r4, r5);
        r4 = 536870912; // 0x20000000 float:1.0842022E-19 double:2.652494739E-315;
        r0 = r0.addFlags(r4);
        r4 = r6.activity;
        r4 = (android.content.Context) r4;
        r0 = android.app.PendingIntent.getActivity(r4, r3, r0, r3);
        r3 = "PendingIntent.getActivity(activity, 0, intent, 0)";
        kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r0, r3);
        r3 = r6.nfcAdapter;
        if (r3 == 0) goto L_0x0076;
    L_0x006f:
        r4 = r6.activity;
        r3.enableForegroundDispatch(r4, r0, r2, r1);
        return;
    L_0x0075:
        return;
    L_0x0076:
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: ru.rocketbank.r2d2.utils.NfcInputCard.init():void");
    }

    public final boolean isEnabled() {
        NfcAdapter nfcAdapter = this.nfcAdapter;
        return nfcAdapter != null ? nfcAdapter.isEnabled() : false;
    }
}
