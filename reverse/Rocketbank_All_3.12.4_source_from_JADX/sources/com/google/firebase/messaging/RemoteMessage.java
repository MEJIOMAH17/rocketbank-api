package com.google.firebase.messaging;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.support.v4.util.ArrayMap;
import android.text.TextUtils;
import com.facebook.appevents.AppEventsConstants;
import com.google.android.gms.common.internal.safeparcel.zza;
import java.util.Map;

public final class RemoteMessage extends zza {
    public static final Creator<RemoteMessage> CREATOR = new zze();
    private Map<String, String> zzacc;
    Bundle zzaic;
    private Notification zzclO;

    public static class Notification {
        private final String mTag;
        private final String zzGr;
        private final String zzaQM;
        private final String zzamJ;
        private final String zzclP;
        private final String[] zzclQ;
        private final String zzclR;
        private final String[] zzclS;
        private final String zzclT;
        private final String zzclU;
        private final String zzclV;
        private final Uri zzclW;

        private static String[] zzl(Bundle bundle, String str) {
            Object[] zzj = zza.zzj(bundle, str);
            if (zzj == null) {
                return null;
            }
            String[] strArr = new String[zzj.length];
            for (int i = 0; i < zzj.length; i++) {
                strArr[i] = String.valueOf(zzj[i]);
            }
            return strArr;
        }

        private Notification(Bundle bundle) {
            String str = "gcm.n.title";
            String string = bundle.getString(str);
            if (string == null) {
                string = bundle.getString(str.replace("gcm.n.", "gcm.notification."));
            }
            this.zzamJ = string;
            this.zzclP = zza.zzi(bundle, "gcm.n.title");
            this.zzclQ = zzl(bundle, "gcm.n.title");
            str = "gcm.n.body";
            string = bundle.getString(str);
            if (string == null) {
                string = bundle.getString(str.replace("gcm.n.", "gcm.notification."));
            }
            this.zzGr = string;
            this.zzclR = zza.zzi(bundle, "gcm.n.body");
            this.zzclS = zzl(bundle, "gcm.n.body");
            str = "gcm.n.icon";
            string = bundle.getString(str);
            if (string == null) {
                string = bundle.getString(str.replace("gcm.n.", "gcm.notification."));
            }
            this.zzclT = string;
            str = "gcm.n.sound2";
            string = bundle.getString(str);
            if (string == null) {
                string = bundle.getString(str.replace("gcm.n.", "gcm.notification."));
            }
            if (TextUtils.isEmpty(string)) {
                str = "gcm.n.sound";
                string = bundle.getString(str);
                if (string == null) {
                    string = bundle.getString(str.replace("gcm.n.", "gcm.notification."));
                }
            }
            this.zzclU = string;
            str = "gcm.n.tag";
            string = bundle.getString(str);
            if (string == null) {
                string = bundle.getString(str.replace("gcm.n.", "gcm.notification."));
            }
            this.mTag = string;
            str = "gcm.n.color";
            string = bundle.getString(str);
            if (string == null) {
                string = bundle.getString(str.replace("gcm.n.", "gcm.notification."));
            }
            this.zzaQM = string;
            str = "gcm.n.click_action";
            string = bundle.getString(str);
            if (string == null) {
                string = bundle.getString(str.replace("gcm.n.", "gcm.notification."));
            }
            this.zzclV = string;
            this.zzclW = zza.zzV(bundle);
        }
    }

    RemoteMessage(Bundle bundle) {
        this.zzaic = bundle;
    }

    public final String getCollapseKey() {
        return this.zzaic.getString("collapse_key");
    }

    public final Map<String, String> getData() {
        if (this.zzacc == null) {
            this.zzacc = new ArrayMap();
            for (String str : this.zzaic.keySet()) {
                Object obj = this.zzaic.get(str);
                if (obj instanceof String) {
                    String str2 = (String) obj;
                    if (!(str.startsWith("google.") || str.startsWith("gcm.") || str.equals("from") || str.equals("message_type") || str.equals("collapse_key"))) {
                        this.zzacc.put(str, str2);
                    }
                }
            }
        }
        return this.zzacc;
    }

    public final String getFrom() {
        return this.zzaic.getString("from");
    }

    public final String getMessageId() {
        String string = this.zzaic.getString("google.message_id");
        return string == null ? this.zzaic.getString("message_id") : string;
    }

    public final String getMessageType() {
        return this.zzaic.getString("message_type");
    }

    public final long getSentTime() {
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
        r4 = this;
        r0 = r4.zzaic;
        r1 = "google.sent_time";
        r0 = r0.get(r1);
        r1 = r0 instanceof java.lang.Long;
        if (r1 == 0) goto L_0x0013;
    L_0x000c:
        r0 = (java.lang.Long) r0;
        r0 = r0.longValue();
        return r0;
    L_0x0013:
        r1 = r0 instanceof java.lang.String;
        if (r1 == 0) goto L_0x0044;
    L_0x0017:
        r1 = r0;	 Catch:{ NumberFormatException -> 0x001f }
        r1 = (java.lang.String) r1;	 Catch:{ NumberFormatException -> 0x001f }
        r1 = java.lang.Long.parseLong(r1);	 Catch:{ NumberFormatException -> 0x001f }
        return r1;
    L_0x001f:
        r1 = "FirebaseMessaging";
        r0 = java.lang.String.valueOf(r0);
        r2 = 19;
        r3 = java.lang.String.valueOf(r0);
        r3 = r3.length();
        r2 = r2 + r3;
        r3 = new java.lang.StringBuilder;
        r3.<init>(r2);
        r2 = "Invalid sent time: ";
        r3.append(r2);
        r3.append(r0);
        r0 = r3.toString();
        android.util.Log.w(r1, r0);
    L_0x0044:
        r0 = 0;
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.messaging.RemoteMessage.getSentTime():long");
    }

    public final String getTo() {
        return this.zzaic.getString("google.to");
    }

    public final int getTtl() {
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
        r4 = this;
        r0 = r4.zzaic;
        r1 = "google.ttl";
        r0 = r0.get(r1);
        r1 = r0 instanceof java.lang.Integer;
        if (r1 == 0) goto L_0x0013;
    L_0x000c:
        r0 = (java.lang.Integer) r0;
        r0 = r0.intValue();
        return r0;
    L_0x0013:
        r1 = r0 instanceof java.lang.String;
        if (r1 == 0) goto L_0x0044;
    L_0x0017:
        r1 = r0;	 Catch:{ NumberFormatException -> 0x001f }
        r1 = (java.lang.String) r1;	 Catch:{ NumberFormatException -> 0x001f }
        r1 = java.lang.Integer.parseInt(r1);	 Catch:{ NumberFormatException -> 0x001f }
        return r1;
    L_0x001f:
        r1 = "FirebaseMessaging";
        r0 = java.lang.String.valueOf(r0);
        r2 = 13;
        r3 = java.lang.String.valueOf(r0);
        r3 = r3.length();
        r2 = r2 + r3;
        r3 = new java.lang.StringBuilder;
        r3.<init>(r2);
        r2 = "Invalid TTL: ";
        r3.append(r2);
        r3.append(r0);
        r0 = r3.toString();
        android.util.Log.w(r1, r0);
    L_0x0044:
        r0 = 0;
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.messaging.RemoteMessage.getTtl():int");
    }

    public final void writeToParcel(Parcel parcel, int i) {
        zze.zza$55993b6c(this, parcel);
    }

    final void zzK(Intent intent) {
        intent.putExtras(this.zzaic);
    }

    public final Notification getNotification() {
        if (this.zzclO == null) {
            byte b;
            Bundle bundle = this.zzaic;
            String str = AppEventsConstants.EVENT_PARAM_VALUE_YES;
            String str2 = "gcm.n.e";
            Object string = bundle.getString(str2);
            if (string == null) {
                string = bundle.getString(str2.replace("gcm.n.", "gcm.notification."));
            }
            if (!str.equals(string)) {
                str = "gcm.n.icon";
                String string2 = bundle.getString(str);
                if (string2 == null) {
                    string2 = bundle.getString(str.replace("gcm.n.", "gcm.notification."));
                }
                if (string2 == null) {
                    b = (byte) 0;
                    if (b != (byte) 0) {
                        this.zzclO = new Notification(this.zzaic);
                    }
                }
            }
            b = (byte) 1;
            if (b != (byte) 0) {
                this.zzclO = new Notification(this.zzaic);
            }
        }
        return this.zzclO;
    }
}
