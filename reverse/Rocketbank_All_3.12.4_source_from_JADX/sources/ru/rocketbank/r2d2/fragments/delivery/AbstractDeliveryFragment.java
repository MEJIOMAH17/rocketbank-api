package ru.rocketbank.r2d2.fragments.delivery;

import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.view.View;
import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.utils.presenter.Presenter;
import ru.rocketbank.r2d2.fragments.PresenterFragment;
import ru.rocketbank.r2d2.fragments.RocketFragment;
import ru.rocketbank.r2d2.root.delivery.DeliveryActivity;

/* compiled from: AbstractDeliveryFragment.kt */
public abstract class AbstractDeliveryFragment<PR extends Presenter> extends PresenterFragment<PR> implements DeliveryView {
    public static final Companion Companion = new Companion();
    private static final String TOKEN_KEY = "TOKEN";
    private HashMap _$_findViewCache;
    protected String token;

    /* compiled from: AbstractDeliveryFragment.kt */
    public static final class Companion {
        protected static /* synthetic */ void TOKEN_KEY$annotations() {
        }

        private Companion() {
        }

        protected final String getTOKEN_KEY() {
            return AbstractDeliveryFragment.TOKEN_KEY;
        }

        public final <T extends AbstractDeliveryFragment<?>> Bundle setArguments(T t, String str) {
            Intrinsics.checkParameterIsNotNull(t, "fragment");
            Intrinsics.checkParameterIsNotNull(str, "token");
            Bundle bundle = new Bundle();
            bundle.putString(getTOKEN_KEY(), str);
            t.setArguments(bundle);
            return bundle;
        }
    }

    protected static final String getTOKEN_KEY() {
        return TOKEN_KEY;
    }

    public static final <T extends AbstractDeliveryFragment<?>> Bundle setArguments(T t, String str) {
        return Companion.setArguments(t, str);
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

    public abstract int getTitleResID();

    public /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        _$_clearFindViewByIdCache();
    }

    protected final String getToken() {
        String str = this.token;
        if (str == null) {
            Intrinsics.throwUninitializedPropertyAccessException("token");
        }
        return str;
    }

    protected final void setToken(String str) {
        Intrinsics.checkParameterIsNotNull(str, "<set-?>");
        this.token = str;
    }

    public void onCreate(Bundle bundle) {
        Object obj;
        super.onCreate(bundle);
        bundle = getArguments();
        if (bundle == null) {
            Intrinsics.throwNpe();
        }
        bundle = bundle.getString(TOKEN_KEY);
        CharSequence charSequence = (CharSequence) bundle;
        if (charSequence != null) {
            if (charSequence.length() != 0) {
                obj = null;
                if (obj == null) {
                    throw ((Throwable) new IllegalStateException("Delivery token is null!"));
                }
                Intrinsics.checkExpressionValueIsNotNull(bundle, "token");
                this.token = bundle;
                return;
            }
        }
        obj = 1;
        if (obj == null) {
            Intrinsics.checkExpressionValueIsNotNull(bundle, "token");
            this.token = bundle;
            return;
        }
        throw ((Throwable) new IllegalStateException("Delivery token is null!"));
    }

    protected final void nextStep(int i) {
        FragmentActivity activity = getActivity();
        if (activity instanceof DeliveryActivity) {
            ((DeliveryActivity) activity).selectFragment(i);
        }
    }

    public void showProgressDialog() {
        RocketFragment.showSpinner$default(this, 0, 1, null);
    }

    public void hideProgressDialog() {
        hideSpinner();
    }
}
