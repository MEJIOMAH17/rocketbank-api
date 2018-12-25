package ru.rocketbank.r2d2.registration.fragment;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Intent;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.NotificationCompat;
import android.view.View;
import java.util.HashMap;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.dagger.component.RocketComponent;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.RocketApplication;
import ru.rocketbank.r2d2.activities.StartupActivity;
import ru.rocketbank.r2d2.registration.GenericFormFragment.FormContent;
import ru.rocketbank.r2d2.registration.SupportChatLeadActivity;

/* compiled from: RottedRegistrationFragment.kt */
public final class RottedRegistrationFragment extends GenericRegistrationFragment {
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
        FormContent buttonTextRes = new FormContent().setBottomButtonVisible(false).setButtonBottomTextRes(C0859R.string.support_text).setImageRes(C0859R.drawable.attention).setBottomHintTextRes(C0859R.string.rotted_text).setButtonTextRes(C0859R.string.new_task);
        Intrinsics.checkExpressionValueIsNotNull(buttonTextRes, "GenericFormFragment.Form…extRes(R.string.new_task)");
        return buttonTextRes;
    }

    protected final void onButtonClicked() {
        RocketComponent injector = RocketApplication.Companion.getInjector();
        injector.getAuthorizationStorage().removeState();
        injector.getAppInfoManager().resetDeviceToNew();
        PendingIntent activity = PendingIntent.getActivity(getActivity(), 123456, new Intent(getActivity(), StartupActivity.class), 268435456);
        FragmentActivity activity2 = getActivity();
        if (activity2 == null) {
            Intrinsics.throwNpe();
        }
        Object systemService = activity2.getSystemService(NotificationCompat.CATEGORY_ALARM);
        if (systemService == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.app.AlarmManager");
        }
        ((AlarmManager) systemService).set(1, System.currentTimeMillis() + 500, activity);
        System.exit(0);
    }

    protected final void onBottomButtonClicked() {
        FragmentActivity activity = getActivity();
        if (activity != null) {
            SupportChatLeadActivity.start(activity);
        }
    }

    public final String getTitle() {
        return RocketApplication.Companion.getContext().getString(C0859R.string.step, new Object[]{Integer.valueOf(2)});
    }
}
