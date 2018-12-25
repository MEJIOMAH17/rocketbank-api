package ru.rocketbank.r2d2.charges.penalty;

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
import ru.rocketbank.r2d2.charges.ChargesListActivity.Companion;
import ru.rocketbank.r2d2.fragments.NextButtonListener;
import ru.rocketbank.r2d2.fragments.RocketFragment;
import ru.rocketbank.r2d2.utils.ViewModelObservable.ViewField;
import rx.Observable;
import rx.Subscription;
import rx.android.schedulers.AndroidSchedulers;
import rx.functions.Action1;

/* compiled from: PenaltyChargePaymentDetailsFragment.kt */
public final class PenaltyChargePaymentDetailsFragment extends RocketFragment implements NextButtonListener {
    private HashMap _$_findViewCache;
    private PenaltyChargeViewModel penaltyCharge = new PenaltyChargeViewModel();
    private Subscription validSubscription;

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
        r3 = ru.rocketbank.r2d2.databinding.PenaltyChargesFragmentBinding.inflate(r3, r4, r0);
        r4 = "binding";
        kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r3, r4);
        r4 = r3.getRoot();
        if (r5 == 0) goto L_0x0023;
    L_0x0015:
        r1 = ru.rocketbank.r2d2.charges.ChargePaymentDetailsActivity.Companion;
        r1 = r1.getKEY_CHARGE();
        r5 = r5.getParcelable(r1);
        r5 = (ru.rocketbank.r2d2.charges.penalty.PenaltyChargeViewModel) r5;
        if (r5 != 0) goto L_0x0028;
    L_0x0023:
        r5 = new ru.rocketbank.r2d2.charges.penalty.PenaltyChargeViewModel;
        r5.<init>();
    L_0x0028:
        r2.penaltyCharge = r5;
        r5 = "view";
        kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r4, r5);
        r5 = ru.rocketbank.r2d2.C0859R.id.editTextCtc;
        r5 = r4.findViewById(r5);
        r5 = (ru.rocketbank.core.widgets.RocketEditText) r5;
        r1 = "dd SS dddddd";
        ru.rocketbank.r2d2.utils.PatternFormatter.setup(r5, r1);
        r5 = ru.rocketbank.r2d2.C0859R.id.editTextDriverLicence;
        r5 = r4.findViewById(r5);
        r5 = (ru.rocketbank.core.widgets.RocketEditText) r5;
        r1 = "dd SS dddddd";
        ru.rocketbank.r2d2.utils.PatternFormatter.setup(r5, r1);
        r5 = 2131297136; // 0x7f090370 float:1.8212208E38 double:1.053000696E-314;
        r5 = r4.findViewById(r5);
        if (r5 != 0) goto L_0x005a;
    L_0x0052:
        r3 = new kotlin.TypeCastException;
        r4 = "null cannot be cast to non-null type android.support.v7.widget.SwitchCompat";
        r3.<init>(r4);
        throw r3;
    L_0x005a:
        r5 = (android.support.v7.widget.SwitchCompat) r5;
        r1 = r2.penaltyCharge;
        r1 = r1.getIKnowNum();
        if (r1 == 0) goto L_0x0068;
    L_0x0064:
        r0 = r1.booleanValue();
    L_0x0068:
        r5.setChecked(r0);
        r0 = new ru.rocketbank.r2d2.charges.penalty.PenaltyChargePaymentDetailsFragment$onCreateView$1;
        r0.<init>(r2);
        r0 = (android.widget.CompoundButton.OnCheckedChangeListener) r0;
        r5.setOnCheckedChangeListener(r0);
        r5 = r2.penaltyCharge;
        r3.setPenaltyCharge(r5);
        return r4;
        */
        throw new UnsupportedOperationException("Method not decompiled: ru.rocketbank.r2d2.charges.penalty.PenaltyChargePaymentDetailsFragment.onCreateView(android.view.LayoutInflater, android.view.ViewGroup, android.os.Bundle):android.view.View");
    }

    public final void onResume() {
        super.onResume();
        Observable observeOn = this.penaltyCharge.getValidObservable().observeOn(AndroidSchedulers.mainThread());
        Action1 penaltyChargePaymentDetailsFragment$onResume$1 = new PenaltyChargePaymentDetailsFragment$onResume$1(this);
        Function1 function1 = PenaltyChargePaymentDetailsFragment$onResume$2.INSTANCE;
        if (function1 != null) {
            function1 = new PenaltyChargePaymentDetailsFragment$sam$rx_functions_Action1$0(function1);
        }
        this.validSubscription = observeOn.subscribe(penaltyChargePaymentDetailsFragment$onResume$1, (Action1) function1);
        updateNextButton();
    }

    public final void onPause() {
        super.onPause();
        unsubscribe(this.validSubscription);
    }

    public final void onSaveInstanceState(Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(bundle, "outState");
        super.onSaveInstanceState(bundle);
        bundle.putParcelable(ChargePaymentDetailsActivity.Companion.getKEY_CHARGE(), this.penaltyCharge);
    }

    public final void onNextButtonClick() {
        if (this.penaltyCharge.isValid()) {
            ViewField driver_licence;
            String cleanValue;
            String cleanValue2;
            String str;
            Context context;
            Companion companion;
            Bundle arguments;
            String string;
            KeyboardUtil.hideKeyboard(getActivity());
            String str2 = null;
            if ((Intrinsics.areEqual(this.penaltyCharge.getIKnowNum(), Boolean.TRUE) ^ 1) != 0) {
                driver_licence = this.penaltyCharge.getDriver_licence();
                if (driver_licence != null && driver_licence.getValid()) {
                    driver_licence = this.penaltyCharge.getDriver_licence();
                    if (driver_licence != null) {
                        cleanValue = driver_licence.getCleanValue();
                        if ((Intrinsics.areEqual(this.penaltyCharge.getIKnowNum(), Boolean.TRUE) ^ 1) != 0) {
                            driver_licence = this.penaltyCharge.getCtc();
                            if (driver_licence != null && driver_licence.getValid()) {
                                driver_licence = this.penaltyCharge.getCtc();
                                if (driver_licence != null) {
                                    cleanValue2 = driver_licence.getCleanValue();
                                    if (Intrinsics.areEqual(this.penaltyCharge.getIKnowNum(), Boolean.TRUE)) {
                                        driver_licence = this.penaltyCharge.getUin();
                                        if (driver_licence != null && driver_licence.getValid()) {
                                            driver_licence = this.penaltyCharge.getUin();
                                            if (driver_licence != null) {
                                                str2 = driver_licence.getCleanValue();
                                            }
                                        }
                                    }
                                    str = str2;
                                    context = getContext();
                                    if (context == null) {
                                        companion = ChargesListActivity.Companion;
                                        Intrinsics.checkExpressionValueIsNotNull(context, "it");
                                        arguments = getArguments();
                                        if (arguments == null) {
                                            Intrinsics.throwNpe();
                                        }
                                        string = arguments.getString(ChargePaymentDetailsActivity.Companion.getKEY_ICON());
                                        Intrinsics.checkExpressionValueIsNotNull(string, "arguments!!.getString(Ch…DetailsActivity.KEY_ICON)");
                                        companion.start(context, string, cleanValue2, cleanValue, str);
                                    }
                                }
                            }
                        }
                        cleanValue2 = null;
                        if (Intrinsics.areEqual(this.penaltyCharge.getIKnowNum(), Boolean.TRUE)) {
                            driver_licence = this.penaltyCharge.getUin();
                            driver_licence = this.penaltyCharge.getUin();
                            if (driver_licence != null) {
                                str2 = driver_licence.getCleanValue();
                            }
                        }
                        str = str2;
                        context = getContext();
                        if (context == null) {
                            companion = ChargesListActivity.Companion;
                            Intrinsics.checkExpressionValueIsNotNull(context, "it");
                            arguments = getArguments();
                            if (arguments == null) {
                                Intrinsics.throwNpe();
                            }
                            string = arguments.getString(ChargePaymentDetailsActivity.Companion.getKEY_ICON());
                            Intrinsics.checkExpressionValueIsNotNull(string, "arguments!!.getString(Ch…DetailsActivity.KEY_ICON)");
                            companion.start(context, string, cleanValue2, cleanValue, str);
                        }
                    }
                }
            }
            cleanValue = null;
            if ((Intrinsics.areEqual(this.penaltyCharge.getIKnowNum(), Boolean.TRUE) ^ 1) != 0) {
                driver_licence = this.penaltyCharge.getCtc();
                driver_licence = this.penaltyCharge.getCtc();
                if (driver_licence != null) {
                    cleanValue2 = driver_licence.getCleanValue();
                    if (Intrinsics.areEqual(this.penaltyCharge.getIKnowNum(), Boolean.TRUE)) {
                        driver_licence = this.penaltyCharge.getUin();
                        driver_licence = this.penaltyCharge.getUin();
                        if (driver_licence != null) {
                            str2 = driver_licence.getCleanValue();
                        }
                    }
                    str = str2;
                    context = getContext();
                    if (context == null) {
                        companion = ChargesListActivity.Companion;
                        Intrinsics.checkExpressionValueIsNotNull(context, "it");
                        arguments = getArguments();
                        if (arguments == null) {
                            Intrinsics.throwNpe();
                        }
                        string = arguments.getString(ChargePaymentDetailsActivity.Companion.getKEY_ICON());
                        Intrinsics.checkExpressionValueIsNotNull(string, "arguments!!.getString(Ch…DetailsActivity.KEY_ICON)");
                        companion.start(context, string, cleanValue2, cleanValue, str);
                    }
                }
            }
            cleanValue2 = null;
            if (Intrinsics.areEqual(this.penaltyCharge.getIKnowNum(), Boolean.TRUE)) {
                driver_licence = this.penaltyCharge.getUin();
                driver_licence = this.penaltyCharge.getUin();
                if (driver_licence != null) {
                    str2 = driver_licence.getCleanValue();
                }
            }
            str = str2;
            context = getContext();
            if (context == null) {
                companion = ChargesListActivity.Companion;
                Intrinsics.checkExpressionValueIsNotNull(context, "it");
                arguments = getArguments();
                if (arguments == null) {
                    Intrinsics.throwNpe();
                }
                string = arguments.getString(ChargePaymentDetailsActivity.Companion.getKEY_ICON());
                Intrinsics.checkExpressionValueIsNotNull(string, "arguments!!.getString(Ch…DetailsActivity.KEY_ICON)");
                companion.start(context, string, cleanValue2, cleanValue, str);
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
        EventBus.getDefault().post(new NextButtonEvent(this, this.penaltyCharge.isValid(), Integer.valueOf(0), getString(C0859R.string.check_charges)));
    }
}
