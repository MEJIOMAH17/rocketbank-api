package ru.rocketbank.r2d2.fragments;

import android.os.Bundle;
import android.view.View;
import java.util.HashMap;
import ru.rocketbank.core.network.api.RegistrationApi;
import ru.rocketbank.r2d2.RocketApplication;
import ru.rocketbank.r2d2.registration.FormFragment;
import ru.rocketbank.r2d2.registration.RegistrationStep;

/* compiled from: RegistrationFromFragment.kt */
public abstract class RegistrationFromFragment extends FormFragment<RegistrationStep, RegistrationApi> {
    private HashMap _$_findViewCache;

    public void _$_clearFindViewByIdCache() {
        if (this._$_findViewCache != null) {
            this._$_findViewCache.clear();
        }
    }

    public View _$_findCachedViewById(int i) {
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

    public /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        _$_clearFindViewByIdCache();
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setApi(RocketApplication.Companion.getInjector().getRegistrationApi());
    }
}
