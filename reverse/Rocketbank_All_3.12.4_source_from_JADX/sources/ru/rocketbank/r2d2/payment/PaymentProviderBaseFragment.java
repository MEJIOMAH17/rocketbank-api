package ru.rocketbank.r2d2.payment;

import android.os.Bundle;
import android.view.View;
import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.provider.Provider;
import ru.rocketbank.r2d2.fragments.RocketFragment;

/* compiled from: PaymentProviderBaseFragment.kt */
public class PaymentProviderBaseFragment extends RocketFragment {
    public static final Companion Companion = new Companion();
    public static final String KEY_PAYMENT = "payment";
    public static final String KEY_PAYMENT_PROVIDER = "payment_provider";
    public static final String KEY_PICK_CONTACT_FIELD = "key_pick_contact_field";
    private HashMap _$_findViewCache;

    /* compiled from: PaymentProviderBaseFragment.kt */
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

    public /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        _$_clearFindViewByIdCache();
    }

    protected final Provider getPaymentProvider() {
        if (getArguments() != null) {
            Bundle arguments = getArguments();
            if (arguments == null) {
                Intrinsics.throwNpe();
            }
            if (arguments.containsKey(KEY_PAYMENT_PROVIDER)) {
                arguments = getArguments();
                if (arguments == null) {
                    Intrinsics.throwNpe();
                }
                return (Provider) arguments.getParcelable(KEY_PAYMENT_PROVIDER);
            }
        }
        return null;
    }
}
