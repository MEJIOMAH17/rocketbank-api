package ru.rocketbank.r2d2.activities;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: AccountDetailsActivity.kt */
public final class AccountDetailsActivity extends SecuredActivity {
    public static final Companion Companion = new Companion();
    private static final String EXTRA_TOKEN = "TOKEN";
    private HashMap _$_findViewCache;

    /* compiled from: AccountDetailsActivity.kt */
    public static final class Companion {
        private Companion() {
        }

        public final String getEXTRA_TOKEN() {
            return AccountDetailsActivity.EXTRA_TOKEN;
        }

        public static /* bridge */ /* synthetic */ void start$default(Companion companion, Context context, String str, int i, Object obj) {
            if ((i & 2) != 0) {
                str = null;
            }
            companion.start(context, str);
        }

        public final void start(Context context, String str) {
            Intent intent;
            Intrinsics.checkParameterIsNotNull(context, "context");
            if (str != null) {
                intent = new Intent(context, AccountDetailsActivity.class);
                intent.putExtra(AccountDetailsActivity.Companion.getEXTRA_TOKEN(), str);
            } else {
                intent = new Intent(context, AccountDetailsActivity.class);
            }
            context.startActivity(intent);
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

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    protected final void onCreate(android.os.Bundle r3) {
        /*
        r2 = this;
        super.onCreate(r3);
        r0 = 2131492895; // 0x7f0c001f float:1.8609255E38 double:1.053097414E-314;
        r2.setContentView(r0);
        r0 = r2.getSupportActionBar();
        if (r0 == 0) goto L_0x0013;
    L_0x000f:
        r1 = 1;
        r0.setDisplayHomeAsUpEnabled(r1);
    L_0x0013:
        if (r3 != 0) goto L_0x003f;
    L_0x0015:
        r3 = r2.getIntent();
        r0 = EXTRA_TOKEN;
        r3 = r3.getStringExtra(r0);
        if (r3 == 0) goto L_0x0027;
    L_0x0021:
        r3 = ru.rocketbank.r2d2.fragments.AccountDetailsStandaloneFragment.newInstance(r3);
        if (r3 != 0) goto L_0x002b;
    L_0x0027:
        r3 = ru.rocketbank.r2d2.fragments.AccountDetailsStandaloneFragment.newInstance();
    L_0x002b:
        r0 = r2.getSupportFragmentManager();
        r0 = r0.beginTransaction();
        r1 = 2131296515; // 0x7f090103 float:1.8210949E38 double:1.053000389E-314;
        r3 = (android.support.v4.app.Fragment) r3;
        r3 = r0.add(r1, r3);
        r3.commit();
    L_0x003f:
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: ru.rocketbank.r2d2.activities.AccountDetailsActivity.onCreate(android.os.Bundle):void");
    }
}
