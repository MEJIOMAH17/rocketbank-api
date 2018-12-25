package ru.rocketbank.r2d2.root.lead;

import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.activities.AbstractActivity;
import ru.rocketbank.r2d2.activities.CashRefillActivity;

/* compiled from: LandingActivity.kt */
public final class LandingActivity extends AbstractActivity {
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
        setContentView(C0859R.layout.activity_landing);
        ImageView imageView = (ImageView) findView(C0859R.id.background);
        LeadConfig leadConfig = LeadConfig.INSTANCE;
        Intrinsics.checkExpressionValueIsNotNull(imageView, "background");
        leadConfig.showBackground(imageView);
    }

    public final void onAtmsClick(View view) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        CashRefillActivity.Companion.start(this);
    }

    public final void onStartClick(View view) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        EnterPhoneActivity.Companion.start(this);
        finish();
    }
}
