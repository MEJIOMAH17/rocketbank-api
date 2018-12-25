package ru.rocketbank.r2d2.fragments;

import android.app.Activity;
import android.os.Bundle;
import android.view.View;
import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.r2d2.utils.NfcInputCard;

/* compiled from: NfcRocketFragment.kt */
public class NfcRocketFragment extends RocketFragment {
    private HashMap _$_findViewCache;
    private NfcInputCard nfcInputCard;

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

    public void onViewCreated(View view, Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        super.onViewCreated(view, bundle);
        view = getActivity();
        if (view == null) {
            Intrinsics.throwNpe();
        }
        Intrinsics.checkExpressionValueIsNotNull(view, "activity");
        this.nfcInputCard = new NfcInputCard((Activity) view, view.getClass());
    }

    public void onResume() {
        super.onResume();
        NfcInputCard nfcInputCard = this.nfcInputCard;
        if (nfcInputCard == null) {
            Intrinsics.throwUninitializedPropertyAccessException("nfcInputCard");
        }
        nfcInputCard.onCreate();
    }

    public void onPause() {
        super.onPause();
        NfcInputCard nfcInputCard = this.nfcInputCard;
        if (nfcInputCard == null) {
            Intrinsics.throwUninitializedPropertyAccessException("nfcInputCard");
        }
        nfcInputCard.onStop();
    }
}
