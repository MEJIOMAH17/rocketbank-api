package ru.rocketbank.r2d2.registration.fragment;

import android.view.View;
import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.RocketApplication;
import ru.rocketbank.r2d2.registration.GenericFormFragment.FormContent;

/* compiled from: DeliveryScheduledRegistrationFragment.kt */
public final class DeliveryScheduledRegistrationFragment extends GenericRegistrationFragment {
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
        FormContent bottomButtonVisible = new FormContent().setTopHintTextRes(C0859R.string.migration_delivering_hint_top_text).setImageRes(C0859R.drawable.shipping).setBottomHintTextRes(C0859R.string.migration_dhl_delivering_hint_bottom_text).setButtonVisible(false).setBottomButtonVisible(false);
        Intrinsics.checkExpressionValueIsNotNull(bottomButtonVisible, "FormContent().setTopHint…ottomButtonVisible(false)");
        return bottomButtonVisible;
    }

    public final String getTitle() {
        return RocketApplication.Companion.getContext().getResources().getString(C0859R.string.step, new Object[]{Integer.valueOf(3)});
    }
}
