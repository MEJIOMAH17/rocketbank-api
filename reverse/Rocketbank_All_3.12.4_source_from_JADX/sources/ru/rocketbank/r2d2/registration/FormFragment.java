package ru.rocketbank.r2d2.registration;

import android.os.Bundle;
import android.os.Parcelable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.events.EventHelper;
import ru.rocketbank.core.events.EventHelper.IEvent;
import ru.rocketbank.core.model.dto.ResponseData;
import ru.rocketbank.core.model.provider.ProviderField;
import ru.rocketbank.core.network.api.UserApi;
import ru.rocketbank.core.network.exception.RocketResponseException;
import ru.rocketbank.core.user.Authorization;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.RocketApplication;
import ru.rocketbank.r2d2.fragments.RocketFragment;
import ru.rocketbank.r2d2.helpers.UIHelper;
import rx.Observable;
import rx.android.schedulers.AndroidSchedulers;
import rx.functions.Action1;
import rx.schedulers.Schedulers;

/* compiled from: FormFragment.kt */
public abstract class FormFragment<Model extends Parcelable & IEvent, API> extends RocketFragment {
    public static final Companion Companion = new Companion();
    public static final String KEY_MODEL = "KEY_MODEL";
    private HashMap _$_findViewCache;
    protected API api;
    public Authorization authorization;
    private Model model;
    private UserApi userApi;

    /* compiled from: FormFragment.kt */
    public static final class Companion {
        private Companion() {
        }
    }

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

    public String getTitle() {
        return null;
    }

    public abstract View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle);

    public /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        _$_clearFindViewByIdCache();
    }

    protected abstract void onRequestCompleted(Model model);

    protected abstract void updateModel(Model model);

    protected final API getApi() {
        API api = this.api;
        if (api == null) {
            Intrinsics.throwUninitializedPropertyAccessException("api");
        }
        return api;
    }

    protected final void setApi(API api) {
        Intrinsics.checkParameterIsNotNull(api, "<set-?>");
        this.api = api;
    }

    public final Authorization getAuthorization() {
        Authorization authorization = this.authorization;
        if (authorization == null) {
            Intrinsics.throwUninitializedPropertyAccessException("authorization");
        }
        return authorization;
    }

    public final void setAuthorization(Authorization authorization) {
        Intrinsics.checkParameterIsNotNull(authorization, "<set-?>");
        this.authorization = authorization;
    }

    private final void setModel(Model model) {
        this.model = model;
    }

    protected final Model getModel() {
        return this.model;
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.userApi = RocketApplication.Companion.getInjector().getUserApi();
        this.authorization = RocketApplication.Companion.getInjector().getAuthorization();
        bundle = getArguments();
        if (bundle == null) {
            Intrinsics.throwNpe();
        }
        this.model = bundle.getParcelable(KEY_MODEL);
    }

    protected final void execute(Observable<Model> observable) {
        Intrinsics.checkParameterIsNotNull(observable, "observable");
        RocketFragment.showSpinner$default(this, 0, 1, null);
        observable.subscribeOn(Schedulers.io()).observeOn(AndroidSchedulers.mainThread()).subscribe((Action1) new FormFragment$execute$1(this), (Action1) new FormFragment$execute$2(this));
    }

    public void onError(Throwable th) {
        Intrinsics.checkParameterIsNotNull(th, "e");
        hideSpinner();
        if (th instanceof RocketResponseException) {
            RocketResponseException rocketResponseException = (RocketResponseException) th;
            if (rocketResponseException.isNetworkError()) {
                showSnack((int) C0859R.string.error_occur);
                return;
            }
            th = rocketResponseException.getGenericRequestResponseData();
            if (th != null) {
                ResponseData response = th.getResponse();
                if (response != null && response.getShowIt()) {
                    th = th.getResponse();
                    if (th == null) {
                        Intrinsics.throwNpe();
                    }
                    String description = th.getDescription();
                    Intrinsics.checkExpressionValueIsNotNull(description, "response!!.description");
                    showSnack(description);
                    return;
                }
            }
        }
        showSnack((int) C0859R.string.error_occur);
    }

    protected final void showSnack(String str) {
        Intrinsics.checkParameterIsNotNull(str, ProviderField.TEXT);
        UIHelper.showSnack(getView(), str);
    }

    protected final void showSnack(int i) {
        UIHelper.showSnack(getView(), i);
    }

    protected void finishStep(Model model) {
        Intrinsics.checkParameterIsNotNull(model, "model");
        EventHelper eventHelper = EventHelper.INSTANCE;
        EventHelper.send((IEvent) model);
    }
}
