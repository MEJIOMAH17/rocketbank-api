package ru.rocketbank.r2d2.shop.order;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v7.widget.Toolbar;
import android.view.View;
import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.activities.SecuredActivity;
import ru.rocketbank.r2d2.activities.SupportChatActivity;

/* compiled from: ShopInfoActivity.kt */
public final class ShopInfoActivity extends SecuredActivity {
    public static final Companion Companion = new Companion();
    private HashMap _$_findViewCache;

    /* compiled from: ShopInfoActivity.kt */
    public static final class Companion {
        private Companion() {
        }

        public final void start(Context context) {
            Intrinsics.checkParameterIsNotNull(context, "context");
            context.startActivity(new Intent(context, ShopInfoActivity.class));
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

    protected final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(C0859R.layout.activity_shop_info);
        setSupportActionBar((Toolbar) _$_findCachedViewById(C0859R.id.toolbar));
        setTitle(C0859R.string.shop_title);
        bundle = getSupportActionBar();
        if (bundle != null) {
            bundle.setHomeButtonEnabled(true);
        }
        bundle = getSupportActionBar();
        if (bundle != null) {
            bundle.setDisplayHomeAsUpEnabled(true);
        }
        ((RocketTextView) _$_findCachedViewById(C0859R.id.supportButton)).setOnClickListener(new ShopInfoActivity$onCreate$1(this));
    }

    public final void onSupportClick() {
        SupportChatActivity.Companion.start(this);
    }
}
