package ru.rocketbank.core.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class DeliveryScheduledData implements Parcelable {
    public static final Creator<DeliveryScheduledData> CREATOR = new C07861();
    private String author;
    private String avatar;
    private String body;

    /* renamed from: ru.rocketbank.core.model.DeliveryScheduledData$1 */
    static class C07861 implements Creator<DeliveryScheduledData> {
        C07861() {
        }

        public final DeliveryScheduledData[] newArray(int i) {
            return new DeliveryScheduledData[i];
        }

        public final DeliveryScheduledData createFromParcel(Parcel parcel) {
            DeliveryScheduledData deliveryScheduledData = new DeliveryScheduledData();
            deliveryScheduledData.body = parcel.readString();
            deliveryScheduledData.author = parcel.readString();
            deliveryScheduledData.avatar = parcel.readString();
            return deliveryScheduledData;
        }
    }

    public int describeContents() {
        return 0;
    }

    public String getBody() {
        return this.body;
    }

    public void setBody(String str) {
        this.body = str;
    }

    public String getAuthor() {
        return this.author;
    }

    public void setAuthor(String str) {
        this.author = str;
    }

    public String getAvatar() {
        return this.avatar;
    }

    public void setAvatar(String str) {
        this.avatar = str;
    }

    public boolean equals(java.lang.Object r4) {
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
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
        /*
        r3 = this;
        r0 = r4 instanceof ru.rocketbank.core.model.DeliveryScheduledData;
        r1 = 0;
        if (r0 == 0) goto L_0x0029;
    L_0x0005:
        r4 = (ru.rocketbank.core.model.DeliveryScheduledData) r4;
        r0 = r3.body;	 Catch:{ NullPointerException -> 0x0028 }
        r2 = r4.body;	 Catch:{ NullPointerException -> 0x0028 }
        r0 = r0.equals(r2);	 Catch:{ NullPointerException -> 0x0028 }
        if (r0 == 0) goto L_0x0027;	 Catch:{ NullPointerException -> 0x0028 }
    L_0x0011:
        r0 = r3.avatar;	 Catch:{ NullPointerException -> 0x0028 }
        r2 = r4.avatar;	 Catch:{ NullPointerException -> 0x0028 }
        r0 = r0.equals(r2);	 Catch:{ NullPointerException -> 0x0028 }
        if (r0 == 0) goto L_0x0027;	 Catch:{ NullPointerException -> 0x0028 }
    L_0x001b:
        r0 = r3.author;	 Catch:{ NullPointerException -> 0x0028 }
        r4 = r4.author;	 Catch:{ NullPointerException -> 0x0028 }
        r4 = r0.equals(r4);	 Catch:{ NullPointerException -> 0x0028 }
        if (r4 == 0) goto L_0x0027;
    L_0x0025:
        r4 = 1;
        return r4;
    L_0x0027:
        return r1;
    L_0x0028:
        return r1;
    L_0x0029:
        return r1;
        */
        throw new UnsupportedOperationException("Method not decompiled: ru.rocketbank.core.model.DeliveryScheduledData.equals(java.lang.Object):boolean");
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.body);
        parcel.writeString(this.author);
        parcel.writeString(this.avatar);
    }
}
