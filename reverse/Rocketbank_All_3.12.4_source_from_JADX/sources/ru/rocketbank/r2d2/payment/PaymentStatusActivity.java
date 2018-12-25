package ru.rocketbank.r2d2.payment;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import java.io.Serializable;
import java.util.HashMap;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.network.api.ProvidersApi;
import ru.rocketbank.core.network.model.PaymentResponse;
import ru.rocketbank.core.utils.Payments;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.activities.StatusActivity;
import rx.Observable;

/* compiled from: PaymentStatusActivity.kt */
public final class PaymentStatusActivity extends StatusActivity<PaymentResponse> {
    public static final Companion Companion = new Companion();
    private static final String KEY_DATA = "KEY_DATA";
    private HashMap _$_findViewCache;
    private ProvidersApi providersApi;
    private HashMap<String, String> requestFields;
    private final int successStatusText = C0859R.string.ok;

    /* compiled from: PaymentStatusActivity.kt */
    public static final class Companion {
        private Companion() {
        }

        public final Intent createIntent(Activity activity, HashMap<String, String> hashMap) {
            Intrinsics.checkParameterIsNotNull(activity, "context");
            Intrinsics.checkParameterIsNotNull(hashMap, "requestFields");
            activity = StatusActivity.Companion.createIntent(activity, PaymentStatusActivity.class, C0859R.string.fragment_payments_title);
            activity.putExtra(PaymentStatusActivity.KEY_DATA, hashMap);
            Intrinsics.checkExpressionValueIsNotNull(activity, "intent");
            return activity;
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

    public final void onCreate(Bundle bundle) {
        this.providersApi = getInjector().getProvidersApi();
        Serializable serializableExtra = getIntent().getSerializableExtra(KEY_DATA);
        if (serializableExtra == null) {
            throw new TypeCastException("null cannot be cast to non-null type java.util.HashMap<kotlin.String, kotlin.String>");
        }
        this.requestFields = (HashMap) serializableExtra;
        super.onCreate(bundle);
    }

    protected final int getSuccessStatusText() {
        return this.successStatusText;
    }

    protected final Observable<PaymentResponse> getOperation() {
        HashMap hashMap = this.requestFields;
        if (hashMap == null) {
            Intrinsics.throwUninitializedPropertyAccessException("requestFields");
        }
        hashMap.put(Payments.PAYMENT_HASH_PARAM, Payments.INSTANCE.newHash());
        ProvidersApi providersApi = this.providersApi;
        if (providersApi == null) {
            Intrinsics.throwUninitializedPropertyAccessException("providersApi");
        }
        HashMap hashMap2 = this.requestFields;
        if (hashMap2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("requestFields");
        }
        Observable<PaymentResponse> payments = providersApi.payments(hashMap2);
        Intrinsics.checkExpressionValueIsNotNull(payments, "providersApi.payments(requestFields)");
        return payments;
    }
}
