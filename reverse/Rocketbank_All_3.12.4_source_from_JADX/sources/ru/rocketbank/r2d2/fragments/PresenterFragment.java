package ru.rocketbank.r2d2.fragments;

import android.os.Bundle;
import android.view.View;
import java.util.HashMap;
import kotlin.ExceptionsKt__ExceptionsKt;
import kotlin.Lazy;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import ru.rocketbank.core.utils.presenter.Presenter;

/* compiled from: PresenterFragment.kt */
public abstract class PresenterFragment<PR extends Presenter> extends RocketFragment {
    static final /* synthetic */ KProperty[] $$delegatedProperties = new KProperty[]{Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass$4641416c(PresenterFragment.class), "presenter", "getPresenter()Lru/rocketbank/core/utils/presenter/Presenter;"))};
    private HashMap _$_findViewCache;
    private final Lazy presenter$delegate = ExceptionsKt__ExceptionsKt.lazy(new PresenterFragment$presenter$2(this));

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

    public abstract PR createPresenter();

    protected final PR getPresenter() {
        return (Presenter) this.presenter$delegate.getValue();
    }

    public /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        _$_clearFindViewByIdCache();
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        getPresenter().onCreate(bundle);
    }

    public void onPause() {
        super.onPause();
        getPresenter().onDetached(this);
    }

    public void onResume() {
        super.onResume();
        getPresenter().onAttached(this);
    }

    public void onSaveInstanceState(Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(bundle, "outState");
        getPresenter().onSavedInstanceState(bundle);
        super.onSaveInstanceState(bundle);
    }

    public void onDestroy() {
        super.onDestroy();
        getPresenter().onDestroy();
    }
}
