package ru.rocketbank.r2d2.registration.fragment;

import android.view.View;
import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.RocketApplication;
import ru.rocketbank.r2d2.registration.GenericFormFragment.FormContent;

/* compiled from: RejectedRegistrationFragment.kt */
public final class RejectedRegistrationFragment extends GenericRegistrationFragment {
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
        FormContent bottomHintTextRes = new FormContent().setButtonVisible(false).setBottomButtonVisible(false).setImageRes(C0859R.drawable.attention).setBottomHintTextRes(C0859R.string.you_need_to_call_us);
        Intrinsics.checkExpressionValueIsNotNull(bottomHintTextRes, "FormContent().setButtonV…ring.you_need_to_call_us)");
        return bottomHintTextRes;
    }

    public final String getTitle() {
        String string = RocketApplication.Companion.getContext().getString(C0859R.string.step, new Object[]{Integer.valueOf(3)});
        Intrinsics.checkExpressionValueIsNotNull(string, "RocketApplication.getCon…tString(R.string.step, 3)");
        return string;
    }
}
