package ru.rocketbank.r2d2.registration.fragment;

import android.content.Context;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.view.View;
import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.registration.GenericFormFragment.FormContent;
import ru.rocketbank.r2d2.root.delivery.DeliveryActivity;

/* compiled from: DeliveringRegistrationFragment.kt */
public final class DeliveringRegistrationFragment extends GenericRegistrationFragment {
    public static final Companion Companion = new Companion();
    private static final String KEY_TOKEN = "KEY_TOKEN";
    private HashMap _$_findViewCache;
    private String token;

    /* compiled from: DeliveringRegistrationFragment.kt */
    public static final class Companion {
        public static /* synthetic */ void KEY_TOKEN$annotations() {
        }

        private Companion() {
        }

        public final String getKEY_TOKEN() {
            return DeliveringRegistrationFragment.KEY_TOKEN;
        }
    }

    public static final String getKEY_TOKEN() {
        return KEY_TOKEN;
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

    public final String getTitle() {
        return "Шаг 3";
    }

    public final /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        _$_clearFindViewByIdCache();
    }

    protected final FormContent getFormContent() {
        Bundle arguments = getArguments();
        this.token = arguments != null ? arguments.getString(KEY_TOKEN) : null;
        FormContent buttonVisible = new FormContent().setTopHintTextRes(C0859R.string.empty).setImageRes(C0859R.drawable.shipping).setBottomHintTextRes(this.token == null ? C0859R.string.migration_dhl_delivering_hint_bottom_text : C0859R.string.migration_dhl_delivering_card_ready).setButtonTextRes(C0859R.string.select_place_and_time).setButtonVisible(this.token != null);
        Intrinsics.checkExpressionValueIsNotNull(buttonVisible, "GenericFormFragment.Form…tonVisible(token != null)");
        return buttonVisible;
    }

    protected final void onButtonClicked() {
        String str = this.token;
        if (str != null) {
            ru.rocketbank.r2d2.root.delivery.DeliveryActivity.Companion companion = DeliveryActivity.Companion;
            Context context = getContext();
            if (context == null) {
                Intrinsics.throwNpe();
            }
            Intrinsics.checkExpressionValueIsNotNull(context, "context!!");
            companion.startPending(context, str, true);
            FragmentActivity activity = getActivity();
            if (activity != null) {
                activity.finish();
            }
        }
    }
}
