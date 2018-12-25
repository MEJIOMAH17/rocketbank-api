package ru.rocketbank.r2d2.registration.fragment;

import android.content.Intent;
import android.net.Uri;
import android.support.v4.app.FragmentActivity;
import android.view.View;
import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.RocketApplication;
import ru.rocketbank.r2d2.registration.GenericFormFragment.FormContent;
import ru.rocketbank.r2d2.registration.SupportChatLeadActivity;

/* compiled from: RegistrationCallNeedFragment.kt */
public final class RegistrationCallNeedFragment extends GenericRegistrationFragment {
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
        FormContent buttonTextRes = new FormContent().setBottomButtonVisible(false).setButtonBottomTextRes(C0859R.string.support_text).setImageRes(C0859R.drawable.attention).setBottomHintTextRes(C0859R.string.you_need_to_call_us).setButtonTextRes(C0859R.string.rocket_phone);
        Intrinsics.checkExpressionValueIsNotNull(buttonTextRes, "GenericFormFragment.Form…es(R.string.rocket_phone)");
        return buttonTextRes;
    }

    public final String getTitle() {
        return RocketApplication.Companion.getContext().getString(C0859R.string.step, new Object[]{Integer.valueOf(2)});
    }

    protected final void onButtonClicked() {
        startActivity(new Intent("android.intent.action.DIAL", Uri.fromParts("tel", "88003501087", null)));
    }

    protected final void onBottomButtonClicked() {
        FragmentActivity activity = getActivity();
        if (activity != null) {
            SupportChatLeadActivity.start(activity);
        }
    }
}
