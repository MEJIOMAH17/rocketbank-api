package ru.rocketbank.r2d2.activities;

import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import java.util.HashMap;
import kotlin.TypeCastException;
import ru.rocketbank.core.utils.ImageHelper;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.RocketApplication;

/* compiled from: CodeResetActivity.kt */
public final class CodeResetActivity extends AbstractActivity {
    private HashMap _$_findViewCache;

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

    protected final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView((int) C0859R.layout.activity_code_reset);
        bundle = findViewById(C0859R.id.textview_code_input);
        if (bundle == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.widget.TextView");
        }
        ((TextView) bundle).setOnClickListener(new CodeResetActivity$onCreate$1(this));
        bundle = findViewById(C0859R.id.button_call);
        if (bundle == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.widget.Button");
        }
        ((Button) bundle).setOnClickListener(new CodeResetActivity$onCreate$2(this));
        bundle = RocketApplication.Companion.getInjector().getAuthorizationStorage().getState();
        ImageHelper imageHelper = ImageHelper.INSTANCE;
        View findViewById = findViewById(C0859R.id.imageView);
        if (findViewById == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.widget.ImageView");
        }
        imageHelper.loadCover((ImageView) findViewById, bundle);
    }

    private final void makeCall() {
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
        r0 = new android.content.Intent;
        r1 = "android.intent.action.VIEW";
        r0.<init>(r1);
        r1 = "tel:88002000708";
        r1 = android.net.Uri.parse(r1);
        r0.setData(r1);
        r3.startActivity(r0);	 Catch:{ ActivityNotFoundException -> 0x0014 }
        return;
    L_0x0014:
        r0 = "Отсутствует приложение \"Телефон\"";
        r0 = ru.rocketbank.r2d2.fragments.AlertDialogFragment.create(r0);
        r1 = r3.getSupportFragmentManager();
        r2 = "dialog";
        r0.show(r1, r2);
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: ru.rocketbank.r2d2.activities.CodeResetActivity.makeCall():void");
    }
}
