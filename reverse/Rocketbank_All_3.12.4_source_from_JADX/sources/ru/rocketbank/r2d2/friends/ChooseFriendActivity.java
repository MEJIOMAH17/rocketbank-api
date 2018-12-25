package ru.rocketbank.r2d2.friends;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.activities.SecuredActivity;

/* compiled from: ChooseFriendActivity.kt */
public final class ChooseFriendActivity extends SecuredActivity {
    public static final Companion Companion = new Companion();
    private static final String KEY_CONTACT = "KEY_CONTACT";
    private HashMap _$_findViewCache;

    /* compiled from: ChooseFriendActivity.kt */
    public static final class Companion {
        private Companion() {
        }

        public final String getKEY_CONTACT() {
            return ChooseFriendActivity.KEY_CONTACT;
        }

        public final void startForResult(Activity activity, int i) {
            Intrinsics.checkParameterIsNotNull(activity, "activity");
            activity.startActivityForResult(new Intent(activity, ChooseFriendActivity.class), i);
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
        setContentView(C0859R.layout.activity_choose_friend);
    }
}
