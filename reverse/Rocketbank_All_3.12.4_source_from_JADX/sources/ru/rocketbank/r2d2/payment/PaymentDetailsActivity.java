package ru.rocketbank.r2d2.payment;

import android.content.Context;
import android.content.Intent;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.NotificationCompat;
import android.view.View;
import com.mikepenz.materialdrawer.util.KeyboardUtil;
import java.util.HashMap;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.manager.AnalyticsManager;
import ru.rocketbank.core.model.provider.Provider;
import ru.rocketbank.core.model.transfers.Template;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.activities.SecuredActivity;
import ru.rocketbank.r2d2.fragments.RocketFragment;
import ru.rocketbank.r2d2.friends.SharedElementsReadyEvent;

/* compiled from: PaymentDetailsActivity.kt */
public final class PaymentDetailsActivity extends SecuredActivity {
    public static final Companion Companion = new Companion();
    private static final String PAYMENT_EXTRA = "payment";
    private static final String PROVIDER_EXTRA = "provider";
    private HashMap _$_findViewCache;
    private Fragment fragment;

    /* compiled from: PaymentDetailsActivity.kt */
    public static final class Companion {
        private Companion() {
        }

        public final String getPROVIDER_EXTRA() {
            return PaymentDetailsActivity.PROVIDER_EXTRA;
        }

        public static /* bridge */ /* synthetic */ void start$default(Companion companion, Context context, Provider provider, Bundle bundle, Template template, Bundle bundle2, int i, Object obj) {
            companion.start(context, provider, (i & 4) != null ? null : bundle, (i & 8) != null ? null : template, (i & 16) != null ? null : bundle2);
        }

        public final void start(Context context, Provider provider, Bundle bundle, Template template, Bundle bundle2) {
            Intrinsics.checkParameterIsNotNull(context, "context");
            Intrinsics.checkParameterIsNotNull(provider, PaymentDetailsActivity.PROVIDER_EXTRA);
            Intent intent = new Intent(context, PaymentDetailsActivity.class);
            intent.putExtra(getPROVIDER_EXTRA(), provider);
            if (template != null) {
                intent.putExtra(PaymentDetailsActivity.PAYMENT_EXTRA, template);
            }
            if (bundle != null) {
                intent.putExtras(bundle);
            }
            if (bundle2 != null) {
                if (VERSION.SDK_INT >= 21) {
                    if (VERSION.SDK_INT >= 16) {
                        context.startActivity(intent, bundle2);
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
        setContentView(C0859R.layout.activity_payment_details);
        Provider provider = (Provider) getIntent().getParcelableExtra(PROVIDER_EXTRA);
        Template template = (Template) getIntent().getSerializableExtra(PAYMENT_EXTRA);
        if (bundle != null) {
            this.fragment = getSupportFragmentManager().findFragmentById(C0859R.id.fragment_payments_container);
        } else if (template != null) {
            Intrinsics.checkExpressionValueIsNotNull(provider, PROVIDER_EXTRA);
            replaceAmountFragment(provider, template);
        } else {
            Intrinsics.checkExpressionValueIsNotNull(provider, PROVIDER_EXTRA);
            replaceDetailsFragment$default(this, provider, null, 2, null);
        }
    }

    public final void onEventMainThread(SharedElementsReadyEvent sharedElementsReadyEvent) {
        Intrinsics.checkParameterIsNotNull(sharedElementsReadyEvent, NotificationCompat.CATEGORY_EVENT);
        if (VERSION.SDK_INT >= 21 && (this.fragment instanceof SharedTransitionListener)) {
            Fragment fragment = this.fragment;
            if (fragment == null) {
                throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.r2d2.payment.SharedTransitionListener");
            }
            SharedTransitionListener sharedTransitionListener = (SharedTransitionListener) fragment;
            String stringExtra = getIntent().getStringExtra("a");
            Intrinsics.checkExpressionValueIsNotNull(stringExtra, "intent.getStringExtra(\"a\")");
            String stringExtra2 = getIntent().getStringExtra("n");
            Intrinsics.checkExpressionValueIsNotNull(stringExtra2, "intent.getStringExtra(\"n\")");
            sharedTransitionListener.onSetTransitionNames(stringExtra, stringExtra2);
            sharedElementsReadyEvent = sharedElementsReadyEvent.getAvatar();
            Intrinsics.checkExpressionValueIsNotNull(sharedElementsReadyEvent, "event.avatar");
            scheduleStartPostponedTransition(sharedElementsReadyEvent);
        }
    }

    public final void replaceAmountFragment(Provider provider, Template template) {
        Intrinsics.checkParameterIsNotNull(provider, PROVIDER_EXTRA);
        Intrinsics.checkParameterIsNotNull(template, "template");
        Bundle bundle = new Bundle();
        bundle.putParcelable(PaymentProviderBaseFragment.KEY_PAYMENT_PROVIDER, provider);
        bundle.putSerializable("template", template);
        this.fragment = (Fragment) new PaymentAmountFragment();
        provider = this.fragment;
        if (provider == null) {
            throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.r2d2.payment.PaymentAmountFragment");
        }
        ((PaymentAmountFragment) provider).setArguments(bundle);
        getSupportFragmentManager().beginTransaction().replace(C0859R.id.fragment_payments_container, this.fragment).commit();
    }

    public static /* bridge */ /* synthetic */ void replaceDetailsFragment$default(PaymentDetailsActivity paymentDetailsActivity, Provider provider, Template template, int i, Object obj) {
        if ((i & 2) != 0) {
            template = null;
        }
        paymentDetailsActivity.replaceDetailsFragment(provider, template);
    }

    public final void replaceDetailsFragment(Provider provider, Template template) {
        Intrinsics.checkParameterIsNotNull(provider, PROVIDER_EXTRA);
        ru.rocketbank.r2d2.payment.PaymentDetailsFragment.Companion companion = PaymentDetailsFragment.Companion;
        Intent intent = getIntent();
        Intrinsics.checkExpressionValueIsNotNull(intent, "intent");
        this.fragment = companion.newInstance(provider, template, intent.getExtras());
        getSupportFragmentManager().beginTransaction().add(C0859R.id.fragment_payments_container, this.fragment).commit();
    }

    private final void scheduleStartPostponedTransition(View view) {
        view.getViewTreeObserver().addOnPreDrawListener(new PaymentDetailsActivity$scheduleStartPostponedTransition$1(this, view));
    }

    protected final void onPause() {
        KeyboardUtil.hideKeyboard(this);
        super.onPause();
    }

    public final void onBackPressed() {
        if (this.fragment instanceof RocketFragment) {
            Fragment fragment = this.fragment;
            if (fragment == null) {
                throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.r2d2.fragments.RocketFragment");
            } else if (((RocketFragment) fragment).onBackPressed()) {
                return;
            }
        }
        super.onBackPressed();
    }

    public final void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        Fragment findFragmentById = getSupportFragmentManager().findFragmentById(C0859R.id.fragment_payments_container);
        if (findFragmentById != null) {
            findFragmentById.onActivityResult(i, i2, intent);
        }
    }
}
