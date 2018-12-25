package ru.rocketbank.r2d2.charges;

import android.content.Context;
import android.content.Intent;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v7.app.ActionBar;
import android.support.v7.widget.Toolbar;
import android.view.View;
import android.widget.ImageView;
import java.io.Serializable;
import java.util.HashMap;
import jp.wasabeef.glide.transformations.CropCircleTransformation;
import kotlin.NoWhenBranchMatchedException;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.events.NextButtonEvent;
import ru.rocketbank.core.manager.AnalyticsManager;
import ru.rocketbank.core.model.charge.ChargeType;
import ru.rocketbank.core.utils.ImageHelper;
import ru.rocketbank.core.widgets.RocketButton;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.Utils;
import ru.rocketbank.r2d2.activities.SecuredActivity;
import ru.rocketbank.r2d2.charges.penalty.PenaltyChargePaymentDetailsFragment;
import ru.rocketbank.r2d2.charges.tax.TaxChargesCheckFragment;
import ru.rocketbank.r2d2.fragments.NextButtonListener;
import ru.rocketbank.r2d2.fragments.RocketFragment;

/* compiled from: ChargePaymentDetailsActivity.kt */
public final class ChargePaymentDetailsActivity extends SecuredActivity {
    public static final Companion Companion = new Companion();
    private static final String KEY_CHARGE = "KEY_CHARGE";
    private static final String KEY_CHARGE_TYPE = "KEY_CHARGE_TYPE";
    private static final String KEY_ICON = "KEY_ICON";
    private static final String KEY_LOAD_ON_START = "KEY_LOAD_ON_START";
    private HashMap _$_findViewCache;
    private ChargeType chargeType;
    private CropCircleTransformation cropCircleTransformation;

    /* compiled from: ChargePaymentDetailsActivity.kt */
    public static final class Companion {
        private Companion() {
        }

        public final String getKEY_ICON() {
            return ChargePaymentDetailsActivity.KEY_ICON;
        }

        public final String getKEY_CHARGE() {
            return ChargePaymentDetailsActivity.KEY_CHARGE;
        }

        public final String getKEY_CHARGE_TYPE() {
            return ChargePaymentDetailsActivity.KEY_CHARGE_TYPE;
        }

        public final String getKEY_LOAD_ON_START() {
            return ChargePaymentDetailsActivity.KEY_LOAD_ON_START;
        }

        public static /* bridge */ /* synthetic */ void start$default(Companion companion, Context context, String str, ChargeType chargeType, Bundle bundle, Bundle bundle2, int i, Object obj) {
            companion.start(context, str, chargeType, (i & 8) != null ? null : bundle, (i & 16) != null ? null : bundle2);
        }

        public final void start(Context context, String str, ChargeType chargeType, Bundle bundle, Bundle bundle2) {
            Intrinsics.checkParameterIsNotNull(context, "context");
            Intrinsics.checkParameterIsNotNull(str, "icon");
            Intrinsics.checkParameterIsNotNull(chargeType, "chargeType");
            Companion companion = this;
            start(context, createIntent(context, str, chargeType, bundle), bundle2);
        }

        static /* bridge */ /* synthetic */ Intent createIntent$default(Companion companion, Context context, String str, ChargeType chargeType, Bundle bundle, int i, Object obj) {
            if ((i & 8) != 0) {
                bundle = null;
            }
            return companion.createIntent(context, str, chargeType, bundle);
        }

        private final Intent createIntent(Context context, String str, ChargeType chargeType, Bundle bundle) {
            Intent intent = new Intent(context, ChargePaymentDetailsActivity.class);
            Companion companion = this;
            intent.putExtra(getKEY_ICON(), str);
            if (bundle != null) {
                intent.putExtras(bundle);
            }
            intent.putExtra(getKEY_CHARGE_TYPE(), chargeType);
            return intent;
        }

        static /* bridge */ /* synthetic */ void start$default(Companion companion, Context context, Intent intent, Bundle bundle, int i, Object obj) {
            if ((i & 4) != 0) {
                bundle = null;
            }
            companion.start(context, intent, bundle);
        }

        private final void start(Context context, Intent intent, Bundle bundle) {
            if (bundle != null) {
                if (VERSION.SDK_INT >= 21) {
                    if (VERSION.SDK_INT >= 16) {
                        context.startActivity(intent, bundle);
                        return;
                    }
                    AnalyticsManager.logException((Throwable) new IllegalStateException("Опа, чудеса случаются!"));
                    context.startActivity(intent);
                    return;
                }
            }
            context.startActivity(intent);
        }
    }

    public final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[ChargeType.values().length];
            $EnumSwitchMapping$0 = iArr;
            iArr[ChargeType.PENALTY.ordinal()] = 1;
            $EnumSwitchMapping$0[ChargeType.PENALTY_TAX.ordinal()] = 2;
            $EnumSwitchMapping$0[ChargeType.TAX.ordinal()] = 3;
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
        if (view != null) {
            return view;
        }
        view = findViewById(i);
        this._$_findViewCache.put(Integer.valueOf(i), view);
        return view;
    }

    protected final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(C0859R.layout.activity_charges);
        setSupportActionBar((Toolbar) _$_findCachedViewById(C0859R.id.toolbar));
        ActionBar supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.setDisplayHomeAsUpEnabled(true);
        }
        supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.setDisplayShowHomeEnabled$1385ff();
        }
        setTitle(C0859R.string.charges_activity_title);
        Serializable serializableExtra = getIntent().getSerializableExtra(KEY_CHARGE_TYPE);
        if (serializableExtra == null) {
            throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.core.model.charge.ChargeType");
        }
        this.chargeType = (ChargeType) serializableExtra;
        this.cropCircleTransformation = new CropCircleTransformation(this);
        View _$_findCachedViewById = _$_findCachedViewById(C0859R.id.toolbarShadow);
        Intrinsics.checkExpressionValueIsNotNull(_$_findCachedViewById, "toolbarShadow");
        _$_findCachedViewById.setVisibility(VERSION.SDK_INT >= 21 ? 8 : 0);
        ImageView imageView = (ImageView) _$_findCachedViewById(C0859R.id.imageViewIcon);
        if (imageView == null) {
            Intrinsics.throwNpe();
        }
        String stringExtra = getIntent().getStringExtra(KEY_ICON);
        CropCircleTransformation cropCircleTransformation = this.cropCircleTransformation;
        if (cropCircleTransformation == null) {
            Intrinsics.throwNpe();
        }
        ImageHelper.loadRound(imageView, stringExtra, cropCircleTransformation);
        RocketTextView rocketTextView = (RocketTextView) _$_findCachedViewById(C0859R.id.textViewName);
        ChargeType chargeType = this.chargeType;
        if (chargeType == null) {
            Intrinsics.throwUninitializedPropertyAccessException("chargeType");
        }
        rocketTextView.setText(chargeType.getProviderName());
        rocketTextView = (RocketTextView) _$_findCachedViewById(C0859R.id.textViewDescription);
        Intrinsics.checkExpressionValueIsNotNull(rocketTextView, "textViewDescription");
        rocketTextView.setVisibility(8);
        if (bundle == null) {
            replaceFragment(createFragment());
        }
        ((RocketButton) _$_findCachedViewById(C0859R.id.btnNext)).setText(C0859R.string.check_charges);
        ((RocketButton) _$_findCachedViewById(C0859R.id.btnNext)).setOnClickListener(new ChargePaymentDetailsActivity$onCreate$1(this));
        if (VERSION.SDK_INT >= 21) {
            ImageView imageView2 = (ImageView) _$_findCachedViewById(C0859R.id.imageViewIcon);
            if (imageView2 != null) {
                imageView2.setTransitionName(getIntent().getStringExtra("a"));
            }
            RocketTextView rocketTextView2 = (RocketTextView) _$_findCachedViewById(C0859R.id.textViewName);
            if (rocketTextView2 != null) {
                rocketTextView2.setTransitionName(getIntent().getStringExtra("n"));
            }
        }
    }

    protected final void onStart() {
        super.onStart();
        if (getIntent().getBooleanExtra(KEY_LOAD_ON_START, false)) {
            onNextButtonClick();
        }
    }

    private final void onNextButtonClick() {
        Fragment findFragmentById = getSupportFragmentManager().findFragmentById(C0859R.id.content);
        if (findFragmentById != null) {
            if (findFragmentById == null) {
                throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.r2d2.fragments.NextButtonListener");
            }
            ((NextButtonListener) findFragmentById).onNextButtonClick();
        }
    }

    public final void onEventMainThread(NextButtonEvent nextButtonEvent) {
        Intrinsics.checkParameterIsNotNull(nextButtonEvent, "nextButtonEvent");
        if ((Intrinsics.areEqual(nextButtonEvent.getFragment(), getSupportFragmentManager().findFragmentById(C0859R.id.content)) ^ 1) == 0) {
            RocketButton rocketButton = (RocketButton) _$_findCachedViewById(C0859R.id.btnNext);
            Intrinsics.checkExpressionValueIsNotNull(rocketButton, "btnNext");
            rocketButton.setEnabled(nextButtonEvent.isEnable());
            if (nextButtonEvent.getVisibility() != null) {
                rocketButton = (RocketButton) _$_findCachedViewById(C0859R.id.btnNext);
                Intrinsics.checkExpressionValueIsNotNull(rocketButton, "btnNext");
                Integer visibility = nextButtonEvent.getVisibility();
                if (visibility == null) {
                    Intrinsics.throwNpe();
                }
                rocketButton.setVisibility(visibility.intValue());
            }
            if (nextButtonEvent.getTitle() != null) {
                rocketButton = (RocketButton) _$_findCachedViewById(C0859R.id.btnNext);
                Intrinsics.checkExpressionValueIsNotNull(rocketButton, "btnNext");
                rocketButton.setText(nextButtonEvent.getTitle());
            }
        }
    }

    public final RocketFragment createFragment() {
        RocketFragment penaltyChargePaymentDetailsFragment;
        ChargeType chargeType = this.chargeType;
        if (chargeType == null) {
            Intrinsics.throwUninitializedPropertyAccessException("chargeType");
        }
        switch (WhenMappings.$EnumSwitchMapping$0[chargeType.ordinal()]) {
            case 1:
            case 2:
                penaltyChargePaymentDetailsFragment = new PenaltyChargePaymentDetailsFragment();
                break;
            case 3:
                penaltyChargePaymentDetailsFragment = new TaxChargesCheckFragment();
                break;
            default:
                throw new NoWhenBranchMatchedException();
        }
        Bundle bundle = new Bundle();
        bundle.putString(KEY_ICON, getIntent().getStringExtra(KEY_ICON));
        penaltyChargePaymentDetailsFragment.setArguments(bundle);
        return penaltyChargePaymentDetailsFragment;
    }

    private final void replaceFragment(RocketFragment rocketFragment) {
        getSupportFragmentManager().beginTransaction().replace(C0859R.id.content, rocketFragment).commit();
    }

    protected final void onPause() {
        Utils.closeKeyboardIfExists(this);
        super.onPause();
    }
}
