package ru.rocketbank.r2d2.root.devidepayment.ap;

import android.databinding.ViewDataBinding;
import android.view.View;
import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.utils.presenter.Presenter;
import ru.rocketbank.r2d2.PresenterSecuredActivity;
import ru.rocketbank.r2d2.root.devidepayment.BaseDevicePaymentView;

/* compiled from: APBaseActivity.kt */
public abstract class APBaseActivity<PR extends Presenter, T extends ViewDataBinding> extends PresenterSecuredActivity<PR> implements BaseDevicePaymentView {
    private HashMap _$_findViewCache;
    protected T binding;

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

    protected final T getBinding() {
        T t = this.binding;
        if (t == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        return t;
    }

    protected final void setBinding(T t) {
        Intrinsics.checkParameterIsNotNull(t, "<set-?>");
        this.binding = t;
    }

    protected void onStop() {
        hideProgressDialog();
        super.onStop();
    }

    public void showProgress() {
        showProgressDialog();
    }

    public void hideProgress() {
        hideProgressDialog();
    }
}
