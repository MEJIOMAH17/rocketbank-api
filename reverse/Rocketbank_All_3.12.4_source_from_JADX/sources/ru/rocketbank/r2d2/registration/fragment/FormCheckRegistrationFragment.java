package ru.rocketbank.r2d2.registration.fragment;

import android.view.View;
import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.registration.GenericFormFragment.FormContent;

/* compiled from: FormCheckRegistrationFragment.kt */
public final class FormCheckRegistrationFragment extends CheckingRegistrationFragment {
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

    public final /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        _$_clearFindViewByIdCache();
    }

    protected final FormContent getFormContent() {
        FormContent topHintTextRes = super.getFormContent().setBottomHintTextRes(C0859R.string.form_check).setTopHintTextRes(C0859R.string.empty);
        Intrinsics.checkExpressionValueIsNotNull(topHintTextRes, "super.getFormContent()\n …ntTextRes(R.string.empty)");
        return topHintTextRes;
    }
}
