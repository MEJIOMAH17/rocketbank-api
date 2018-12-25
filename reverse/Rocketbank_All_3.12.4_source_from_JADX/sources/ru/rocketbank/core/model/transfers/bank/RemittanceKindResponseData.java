package ru.rocketbank.core.model.transfers.bank;

import kotlin.jvm.internal.Intrinsics;

/* compiled from: RemittanceKindResponseData.kt */
public final class RemittanceKindResponseData {
    public static final Companion Companion = new Companion();
    public static final String EXTRA_MATERIAL_ASSISTANCE = "material_assistance";
    public static final String EXTRA_NEED_CARD_NUMBER = "need_card_number";
    private final String errors;
    private final String extra;
    private final String kind;
    private final String message;

    /* compiled from: RemittanceKindResponseData.kt */
    public static final class Companion {
        private Companion() {
        }
    }

    /* compiled from: RemittanceKindResponseData.kt */
    public enum Kind {
        ;
        
        private final Integer title;

        protected Kind(Integer num) {
            this.title = num;
        }

        public final Integer getTitle() {
            return this.title;
        }
    }

    public static /* bridge */ /* synthetic */ RemittanceKindResponseData copy$default(RemittanceKindResponseData remittanceKindResponseData, String str, String str2, String str3, String str4, int i, Object obj) {
        if ((i & 1) != 0) {
            str = remittanceKindResponseData.errors;
        }
        if ((i & 2) != 0) {
            str2 = remittanceKindResponseData.kind;
        }
        if ((i & 4) != 0) {
            str3 = remittanceKindResponseData.message;
        }
        if ((i & 8) != 0) {
            str4 = remittanceKindResponseData.extra;
        }
        return remittanceKindResponseData.copy(str, str2, str3, str4);
    }

    public final String component1() {
        return this.errors;
    }

    public final String component2() {
        return this.kind;
    }

    public final String component3() {
        return this.message;
    }

    public final String component4() {
        return this.extra;
    }

    public final RemittanceKindResponseData copy(String str, String str2, String str3, String str4) {
        Intrinsics.checkParameterIsNotNull(str2, "kind");
        return new RemittanceKindResponseData(str, str2, str3, str4);
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof RemittanceKindResponseData) {
                RemittanceKindResponseData remittanceKindResponseData = (RemittanceKindResponseData) obj;
                if (Intrinsics.areEqual(this.errors, remittanceKindResponseData.errors) && Intrinsics.areEqual(this.kind, remittanceKindResponseData.kind) && Intrinsics.areEqual(this.message, remittanceKindResponseData.message) && Intrinsics.areEqual(this.extra, remittanceKindResponseData.extra)) {
                }
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        String str = this.errors;
        int i = 0;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.kind;
        hashCode = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        str2 = this.message;
        hashCode = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        str2 = this.extra;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return hashCode + i;
    }

    public final String toString() {
        StringBuilder stringBuilder = new StringBuilder("RemittanceKindResponseData(errors=");
        stringBuilder.append(this.errors);
        stringBuilder.append(", kind=");
        stringBuilder.append(this.kind);
        stringBuilder.append(", message=");
        stringBuilder.append(this.message);
        stringBuilder.append(", extra=");
        stringBuilder.append(this.extra);
        stringBuilder.append(")");
        return stringBuilder.toString();
    }

    public RemittanceKindResponseData(String str, String str2, String str3, String str4) {
        Intrinsics.checkParameterIsNotNull(str2, "kind");
        this.errors = str;
        this.kind = str2;
        this.message = str3;
        this.extra = str4;
    }

    public final String getErrors() {
        return this.errors;
    }

    public final String getKind() {
        return this.kind;
    }

    public final String getMessage() {
        return this.message;
    }

    public final String getExtra() {
        return this.extra;
    }

    public final ru.rocketbank.core.model.transfers.bank.RemittanceKindResponseData.Kind getRemittanceKind() {
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
        r2 = this;
        r0 = r2.kind;	 Catch:{ IllegalArgumentException -> 0x001a }
        if (r0 != 0) goto L_0x000c;	 Catch:{ IllegalArgumentException -> 0x001a }
    L_0x0004:
        r0 = new kotlin.TypeCastException;	 Catch:{ IllegalArgumentException -> 0x001a }
        r1 = "null cannot be cast to non-null type java.lang.String";	 Catch:{ IllegalArgumentException -> 0x001a }
        r0.<init>(r1);	 Catch:{ IllegalArgumentException -> 0x001a }
        throw r0;	 Catch:{ IllegalArgumentException -> 0x001a }
    L_0x000c:
        r0 = r0.toLowerCase();	 Catch:{ IllegalArgumentException -> 0x001a }
        r1 = "(this as java.lang.String).toLowerCase()";	 Catch:{ IllegalArgumentException -> 0x001a }
        kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r0, r1);	 Catch:{ IllegalArgumentException -> 0x001a }
        r0 = ru.rocketbank.core.model.transfers.bank.RemittanceKindResponseData.Kind.valueOf(r0);	 Catch:{ IllegalArgumentException -> 0x001a }
        goto L_0x001c;
    L_0x001a:
        r0 = ru.rocketbank.core.model.transfers.bank.RemittanceKindResponseData.Kind.unknown;
    L_0x001c:
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: ru.rocketbank.core.model.transfers.bank.RemittanceKindResponseData.getRemittanceKind():ru.rocketbank.core.model.transfers.bank.RemittanceKindResponseData$Kind");
    }
}
