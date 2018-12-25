package ru.rocketbank.r2d2.activities;

import android.os.Bundle;
import android.view.View;
import java.util.HashMap;
import ru.rocketbank.r2d2.C0859R;

/* compiled from: ProfileActivity.kt */
public final class ProfileActivity extends SecuredActivity {
    public static final Companion Companion = new Companion();
    private static final String TAG = "ProfileActivity";
    private HashMap _$_findViewCache;

    /* compiled from: ProfileActivity.kt */
    public static final class Companion {
        private Companion() {
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
        setContentView((int) C0859R.layout.activity_profile);
    }
}
