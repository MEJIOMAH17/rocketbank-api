package ru.rocketbank.r2d2.charges.tax;

import android.content.Context;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.View;
import com.mikepenz.materialdrawer.util.KeyboardUtil;
import de.greenrobot.event.EventBus;
import java.util.HashMap;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.events.NextButtonEvent;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.charges.ChargePaymentDetailsActivity;
import ru.rocketbank.r2d2.charges.ChargesListActivity;
import ru.rocketbank.r2d2.fragments.NextButtonListener;
import ru.rocketbank.r2d2.fragments.RocketFragment;
import ru.rocketbank.r2d2.utils.ViewModelObservable.ViewField;
import rx.Observable;
import rx.Subscription;
import rx.android.schedulers.AndroidSchedulers;
import rx.functions.Action1;

/* compiled from: TaxChargePaymentDetailsFragment.kt */
public final class TaxChargesCheckFragment extends RocketFragment implements NextButtonListener {
    public static final Companion Companion = new Companion();
    public static final String KEY_INN = "KEY_CTC";
    public static final String KEY_TAX_CHARGE = "KEY_TAX_CHARGE";
    private HashMap _$_findViewCache;
    private TaxChargeViewModel taxCharge = new TaxChargeViewModel();
    private Subscription validSubscription;

    /* compiled from: TaxChargePaymentDetailsFragment.kt */
    public static final class Companion {
        private Companion() {
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

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final android.view.View onCreateView(android.view.LayoutInflater r3, android.view.ViewGroup r4, android.os.Bundle r5) {
        /*
        r2 = this;
        r0 = "inflater";
        kotlin.jvm.internal.Intrinsics.checkParameterIsNotNull(r3, r0);
        r0 = 0;
        r3 = ru.rocketbank.r2d2.databinding.TaxChargesFragmentBinding.inflate(r3, r4, r0);
        r4 = "binding";
        kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r3, r4);
        r4 = r3.getRoot();
        if (r5 == 0) goto L_0x001f;
    L_0x0015:
        r0 = "KEY_TAX_CHARGE";
        r5 = r5.getParcelable(r0);
        r5 = (ru.rocketbank.r2d2.charges.tax.TaxChargeViewModel) r5;
        if (r5 != 0) goto L_0x0024;
    L_0x001f:
        r5 = new ru.rocketbank.r2d2.charges.tax.TaxChargeViewModel;
        r5.<init>();
    L_0x0024:
        r2.taxCharge = r5;
        r5 = r2.getArguments();
        if (r5 == 0) goto L_0x0045;
    L_0x002c:
        r0 = "KEY_CTC";
        r0 = r5.containsKey(r0);
        if (r0 == 0) goto L_0x0045;
    L_0x0034:
        r0 = r2.taxCharge;
        r0 = r0.getInn();
        if (r0 == 0) goto L_0x0045;
    L_0x003c:
        r1 = "KEY_CTC";
        r5 = r5.getString(r1);
        r0.setValue(r5);
    L_0x0045:
        r5 = r2.taxCharge;
        r3.setTaxCharge(r5);
        r3 = "view";
        kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r4, r3);
        return r4;
        */
        throw new UnsupportedOperationException("Method not decompiled: ru.rocketbank.r2d2.charges.tax.TaxChargesCheckFragment.onCreateView(android.view.LayoutInflater, android.view.ViewGroup, android.os.Bundle):android.view.View");
    }

    public final void onResume() {
        super.onResume();
        Observable observeOn = this.taxCharge.getValidObservable().observeOn(AndroidSchedulers.mainThread());
        Action1 taxChargesCheckFragment$onResume$1 = new TaxChargesCheckFragment$onResume$1(this);
        Function1 function1 = TaxChargesCheckFragment$onResume$2.INSTANCE;
        if (function1 != null) {
            function1 = new TaxChargesCheckFragment$sam$rx_functions_Action1$0(function1);
        }
        this.validSubscription = observeOn.subscribe(taxChargesCheckFragment$onResume$1, (Action1) function1);
        updateNextButton();
    }

    public final void onPause() {
        super.onPause();
        unsubscribe(this.validSubscription);
    }

    public final void onSaveInstanceState(Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(bundle, "outState");
        super.onSaveInstanceState(bundle);
        bundle.putParcelable(KEY_TAX_CHARGE, this.taxCharge);
    }

    public final void onNextButtonClick() {
        if (this.taxCharge.isValid()) {
            KeyboardUtil.hideKeyboard(getActivity());
            Context context = getContext();
            if (context != null) {
                ru.rocketbank.r2d2.charges.ChargesListActivity.Companion companion = ChargesListActivity.Companion;
                Intrinsics.checkExpressionValueIsNotNull(context, "it");
                Bundle arguments = getArguments();
                if (arguments == null) {
                    Intrinsics.throwNpe();
                }
                String string = arguments.getString(ChargePaymentDetailsActivity.Companion.getKEY_ICON());
                Intrinsics.checkExpressionValueIsNotNull(string, "arguments!!.getString(Ch…DetailsActivity.KEY_ICON)");
                ViewField inn = this.taxCharge.getInn();
                companion.start(context, string, inn != null ? inn.getCleanValue() : null);
            }
        }
    }

    public final void updateNextButton() {
        Fragment parentFragment = getParentFragment();
        if (parentFragment == null) {
            parentFragment = this;
        }
        updateNextButton(parentFragment);
    }

    public final void updateNextButton(Fragment fragment) {
        EventBus.getDefault().post(new NextButtonEvent(this, this.taxCharge.isValid(), Integer.valueOf(0), getString(C0859R.string.check_charges)));
    }
}
