package ru.rocketbank.r2d2;

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
import ru.rocketbank.r2d2.activities.SecuredActivity;

/* compiled from: PresenterSecuredActivity.kt */
public abstract class PresenterSecuredActivity<PR extends Presenter> extends SecuredActivity {
    static final /* synthetic */ KProperty[] $$delegatedProperties = new KProperty[]{Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass$4641416c(PresenterSecuredActivity.class), "presenter", "getPresenter()Lru/rocketbank/core/utils/presenter/Presenter;"))};
    private HashMap _$_findViewCache;
    private final Lazy presenter$delegate = ExceptionsKt__ExceptionsKt.lazy(new PresenterSecuredActivity$presenter$2(this));

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
        if (view != null) {
            return view;
        }
        view = findViewById(i);
        this._$_findViewCache.put(Integer.valueOf(i), view);
        return view;
    }

    public abstract PR createPresenter();

    public final PR getPresenter() {
        return (Presenter) this.presenter$delegate.getValue();
    }

    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        getPresenter().onCreate(bundle);
    }

    protected void onPause() {
        super.onPause();
        getPresenter().onDetached(this);
    }

    protected void onResume() {
        super.onResume();
        getPresenter().onAttached(this);
    }

    protected void onSaveInstanceState(Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(bundle, "outState");
        getPresenter().onSavedInstanceState(bundle);
        super.onSaveInstanceState(bundle);
    }

    protected void onDestroy() {
        super.onDestroy();
        getPresenter().onDestroy();
    }
}
