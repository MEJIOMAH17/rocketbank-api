package ru.rocketbank.core.model.enums;

import kotlin.jvm.internal.Intrinsics;

/* compiled from: BlockReason.kt */
public enum BlockReason {
    ;
    
    public static final Companion Companion = null;
    private final String reason;

    /* compiled from: BlockReason.kt */
    public static final class Companion {
        private Companion() {
        }

        public final ru.rocketbank.core.model.enums.BlockReason fromString(java.lang.String r3) {
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
            r0 = 0;
            if (r3 == 0) goto L_0x0013;
        L_0x0003:
            r3 = r3.toUpperCase();	 Catch:{ Exception -> 0x0011 }
            r1 = "(this as java.lang.String).toUpperCase()";	 Catch:{ Exception -> 0x0011 }
            kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r3, r1);	 Catch:{ Exception -> 0x0011 }
            r3 = ru.rocketbank.core.model.enums.BlockReason.valueOf(r3);	 Catch:{ Exception -> 0x0011 }
            goto L_0x0012;
        L_0x0011:
            r3 = r0;
        L_0x0012:
            return r3;
        L_0x0013:
            return r0;
            */
            throw new UnsupportedOperationException("Method not decompiled: ru.rocketbank.core.model.enums.BlockReason.Companion.fromString(java.lang.String):ru.rocketbank.core.model.enums.BlockReason");
        }
    }

    public static final BlockReason fromString(String str) {
        return Companion.fromString(str);
    }

    protected BlockReason(String str) {
        Intrinsics.checkParameterIsNotNull(str, "reason");
        this.reason = str;
    }

    public final String getReason() {
        return this.reason;
    }

    static {
        Companion = new Companion();
    }

    public final String toString() {
        return this.reason;
    }
}
