package ru.rocketbank.core.model.contact;

import com.google.gson.annotations.SerializedName;
import java.io.Serializable;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ServerContact.kt */
public final class ServerContact implements Serializable {
    @SerializedName("userpic_url")
    private String avatar = "";
    @SerializedName("eur")
    private boolean eur;
    @SerializedName("first_name")
    private String firstName = "";
    @SerializedName("gender")
    private String gender = "";
    @SerializedName("friend_id")
    private long id;
    @SerializedName("contact_ids")
    private List<Long> ids = CollectionsKt__CollectionsKt.emptyList();
    @SerializedName("last_name")
    private String lastName = "";
    @SerializedName("usd")
    private boolean usd;

    /* compiled from: ServerContact.kt */
    public enum Gender {
    }

    public final long getId() {
        return this.id;
    }

    public final void setId(long j) {
        this.id = j;
    }

    public final List<Long> getIds() {
        return this.ids;
    }

    public final void setIds(List<Long> list) {
        Intrinsics.checkParameterIsNotNull(list, "<set-?>");
        this.ids = list;
    }

    public final String getAvatar() {
        return this.avatar;
    }

    public final void setAvatar(String str) {
        Intrinsics.checkParameterIsNotNull(str, "<set-?>");
        this.avatar = str;
    }

    public final String getFirstName() {
        return this.firstName;
    }

    public final void setFirstName(String str) {
        Intrinsics.checkParameterIsNotNull(str, "<set-?>");
        this.firstName = str;
    }

    public final String getLastName() {
        return this.lastName;
    }

    public final void setLastName(String str) {
        Intrinsics.checkParameterIsNotNull(str, "<set-?>");
        this.lastName = str;
    }

    public final String getGender() {
        return this.gender;
    }

    public final void setGender(String str) {
        Intrinsics.checkParameterIsNotNull(str, "<set-?>");
        this.gender = str;
    }

    public final boolean getUsd() {
        return this.usd;
    }

    public final void setUsd(boolean z) {
        this.usd = z;
    }

    public final boolean getEur() {
        return this.eur;
    }

    public final void setEur(boolean z) {
        this.eur = z;
    }

    /* renamed from: getGender */
    public final ru.rocketbank.core.model.contact.ServerContact.Gender m680getGender() {
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
        r1 = this;
        r0 = r1.gender;	 Catch:{ IllegalArgumentException -> 0x0007 }
        r0 = ru.rocketbank.core.model.contact.ServerContact.Gender.valueOf(r0);	 Catch:{ IllegalArgumentException -> 0x0007 }
        goto L_0x0009;
    L_0x0007:
        r0 = ru.rocketbank.core.model.contact.ServerContact.Gender.male;
    L_0x0009:
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: ru.rocketbank.core.model.contact.ServerContact.getGender():ru.rocketbank.core.model.contact.ServerContact$Gender");
    }
}
