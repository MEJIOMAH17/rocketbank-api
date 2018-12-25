package ru.rocketbank.r2d2.root.transfer;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.google.firebase.analytics.FirebaseAnalytics.Param;
import java.util.HashMap;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.r2d2.C0859R;

/* compiled from: CurrencyFragment.kt */
public final class CurrencyFragment extends Fragment {
    public static final String CURRENCY = "CURRENCY";
    public static final Companion Companion = new Companion();
    private HashMap _$_findViewCache;

    /* compiled from: CurrencyFragment.kt */
    public static final class Companion {
        private Companion() {
        }

        public final Fragment newInstance(String str) {
            Intrinsics.checkParameterIsNotNull(str, Param.CURRENCY);
            CurrencyFragment currencyFragment = new CurrencyFragment();
            Bundle bundle = new Bundle();
            bundle.putString(CurrencyFragment.CURRENCY, str);
            currencyFragment.setArguments(bundle);
            return currencyFragment;
        }
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

    public final /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        _$_clearFindViewByIdCache();
    }

    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(layoutInflater, "inflater");
        return layoutInflater.inflate(C0859R.layout.fragment_currency, viewGroup, false);
    }

    public final void onViewCreated(View view, Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        super.onViewCreated(view, bundle);
        bundle = getArguments();
        if (bundle == null) {
            Intrinsics.throwNpe();
        }
        bundle = bundle.getString(CURRENCY);
        view = view.findViewById(C0859R.id.currency);
        if (view == null) {
            throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketTextView");
        }
        ((RocketTextView) view).setText((CharSequence) bundle);
    }
}
