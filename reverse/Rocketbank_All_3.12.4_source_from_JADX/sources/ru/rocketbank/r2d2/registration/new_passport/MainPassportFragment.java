package ru.rocketbank.r2d2.registration.new_passport;

import android.content.Context;
import android.view.View;
import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.r2d2.C0859R;

/* compiled from: MainPassportFragment.kt */
public final class MainPassportFragment extends NewPassportStepFragment {
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
        if (view == null) {
            view = getView();
            if (view == null) {
                return null;
            }
            view = view.findViewById(i);
            this._$_findViewCache.put(Integer.valueOf(i), view);
        }
        return view;
    }

    protected final int getStep() {
        return 1;
    }

    protected final int getStepImgRes() {
        return C0859R.drawable.pass_a;
    }

    public final /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        _$_clearFindViewByIdCache();
    }

    protected final String getPhotoTitle() {
        Context context = getContext();
        if (context == null) {
            Intrinsics.throwNpe();
        }
        String string = context.getString(C0859R.string.migration_needs_passport_hint_top_ready_text);
        Intrinsics.checkExpressionValueIsNotNull(string, "context!!.getString(R.st…port_hint_top_ready_text)");
        return string;
    }

    protected final String getStepTitle() {
        Context context = getContext();
        if (context == null) {
            Intrinsics.throwNpe();
        }
        String string = context.getString(C0859R.string.migration_needs_passport_hint_top_text);
        Intrinsics.checkExpressionValueIsNotNull(string, "context!!.getString(R.st…s_passport_hint_top_text)");
        return string;
    }

    protected final String getHelpText() {
        Context context = getContext();
        if (context == null) {
            Intrinsics.throwNpe();
        }
        return context.getString(C0859R.string.migration_needs_passport_hint_bottom_text);
    }
}
