package ru.rocketbank.r2d2.activities;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: CashRefillActivity.kt */
public final class CashRefillActivity extends AbstractActivity {
    public static final Companion Companion = new Companion();
    private HashMap _$_findViewCache;

    /* compiled from: CashRefillActivity.kt */
    public static final class Companion {
        private Companion() {
        }

        public final void start(Context context) {
            Intrinsics.checkParameterIsNotNull(context, "context");
            context.startActivity(new Intent(context, CashRefillActivity.class));
        }
    }

    public final void _$_clearFindViewByIdCache() {
        if (this._$_findViewCache != null) {
            this._$_findViewCache.clear();
        }
    }

    public final View _$_findCachedViewById(int i) {
        if (this._$_findViewCache == null) {
            this._$_findViewCache = new HashMap();
        }
        View view = (View) this._$_findViewCache.get(Integer.valueOf(i));
        if (view != null) {
            return view;
        }
        view = findViewById(i);
        this._$_findViewCache.put(Integer.valueOf(i), view);
        return view;
    }

    protected final void onCreate(android.os.Bundle r2) {
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
        r1 = this;
        super.onCreate(r2);
        r2 = 2131492910; // 0x7f0c002e float:1.8609285E38 double:1.053097421E-314;
        r1.setContentView(r2);	 Catch:{ Throwable -> 0x000a }
        goto L_0x000d;
    L_0x000a:
        r1.finish();
    L_0x000d:
        r2 = r1.getSupportActionBar();
        if (r2 == 0) goto L_0x0018;
    L_0x0013:
        r0 = 1;
        r2.setDisplayHomeAsUpEnabled(r0);
        return;
    L_0x0018:
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: ru.rocketbank.r2d2.activities.CashRefillActivity.onCreate(android.os.Bundle):void");
    }
}
