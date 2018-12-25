package ru.rocketbank.core.model;

import java.util.Date;

/* compiled from: ModelTools.kt */
public final class ModelTools {
    public static final ModelTools INSTANCE = new ModelTools();

    private ModelTools() {
    }

    public final int formatColor(java.lang.String r2) {
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
        r0 = "value";
        kotlin.jvm.internal.Intrinsics.checkParameterIsNotNull(r2, r0);
        r2 = android.graphics.Color.parseColor(r2);	 Catch:{ Throwable -> 0x000a }
        return r2;
    L_0x000a:
        r2 = 0;
        return r2;
        */
        throw new UnsupportedOperationException("Method not decompiled: ru.rocketbank.core.model.ModelTools.formatColor(java.lang.String):int");
    }

    public final Date formatDate(long j) {
        return j == 0 ? 0 : new Date(j * 1000);
    }

    public final java.util.Date formatDate(java.lang.String r6) {
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
        r5 = this;
        r0 = "value";
        kotlin.jvm.internal.Intrinsics.checkParameterIsNotNull(r6, r0);
        r0 = new java.text.SimpleDateFormat;
        r1 = "yyyy-MM-dd";
        r2 = new java.util.Locale;
        r3 = "ru";
        r4 = "RU";
        r2.<init>(r3, r4);
        r0.<init>(r1, r2);
        r6 = r0.parse(r6);	 Catch:{ Exception -> 0x001a }
        return r6;
    L_0x001a:
        r6 = 0;
        return r6;
        */
        throw new UnsupportedOperationException("Method not decompiled: ru.rocketbank.core.model.ModelTools.formatDate(java.lang.String):java.util.Date");
    }
}
