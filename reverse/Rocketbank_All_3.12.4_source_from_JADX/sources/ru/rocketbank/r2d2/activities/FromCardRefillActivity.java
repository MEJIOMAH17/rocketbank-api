package ru.rocketbank.r2d2.activities;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.content.ContextCompat;
import android.support.v7.graphics.drawable.DrawerArrowDrawable;
import android.support.v7.widget.Toolbar;
import android.view.View;
import java.util.HashMap;
import kotlin.TypeCastException;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.fragments.refill.card.RefillFromCardFragment;

/* compiled from: FromCardRefillActivity.kt */
public final class FromCardRefillActivity extends SecuredActivity {
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
        setContentView((int) C0859R.layout.activity_from_card_refill);
        setupDefaultToolbar(C0859R.id.toolbar);
        Context context = this;
        DrawerArrowDrawable drawerArrowDrawable = new DrawerArrowDrawable(context);
        drawerArrowDrawable.setColor(ContextCompat.getColor(context, C0859R.color.rocketBlack));
        drawerArrowDrawable.setProgress(1.0f);
        View findViewById = findViewById(C0859R.id.toolbar);
        if (findViewById == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.support.v7.widget.Toolbar");
        }
        ((Toolbar) findViewById).setNavigationIcon((Drawable) drawerArrowDrawable);
        if (bundle == null) {
            getSupportFragmentManager().beginTransaction().add((int) C0859R.id.container, (Fragment) RefillFromCardFragment.Companion.newInstance()).commit();
        }
    }
}
