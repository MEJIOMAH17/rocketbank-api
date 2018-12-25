package ru.rocketbank.r2d2.activities.card;

import android.content.Context;
import android.content.Intent;
import android.databinding.DataBindingUtil;
import android.databinding.ViewDataBinding;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.support.v4.content.ContextCompat;
import android.support.v7.graphics.drawable.DrawerArrowDrawable;
import android.support.v7.widget.Toolbar;
import android.view.View;
import android.widget.CompoundButton.OnCheckedChangeListener;
import java.util.HashMap;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.MutablePropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.properties.Delegates;
import kotlin.properties.ReadWriteProperty;
import kotlin.reflect.KProperty;
import ru.rocketbank.core.network.api.PlasticsApi;
import ru.rocketbank.core.network.model.PlasticLimits.SexyCardLimits;
import ru.rocketbank.core.network.model.SexyLimits;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.RocketApplication;
import ru.rocketbank.r2d2.activities.SecuredActivity;
import ru.rocketbank.r2d2.databinding.ActivityCardLimitBinding;
import ru.rocketbank.r2d2.databinding.CardLimitItemBinding;
import ru.rocketbank.r2d2.databinding.IncludeToolbarBinding;
import rx.Subscription;
import rx.android.schedulers.AndroidSchedulers;

/* compiled from: CardLimitActivity.kt */
public final class CardLimitActivity extends SecuredActivity {
    static final /* synthetic */ KProperty[] $$delegatedProperties = new KProperty[]{Reflection.mutableProperty1(new MutablePropertyReference1Impl(Reflection.getOrCreateKotlinClass$4641416c(CardLimitActivity.class), "cashOperation", "getCashOperation()Z")), Reflection.mutableProperty1(new MutablePropertyReference1Impl(Reflection.getOrCreateKotlinClass$4641416c(CardLimitActivity.class), "cashAbroadOperation", "getCashAbroadOperation()Z")), Reflection.mutableProperty1(new MutablePropertyReference1Impl(Reflection.getOrCreateKotlinClass$4641416c(CardLimitActivity.class), "cardOperation", "getCardOperation()Z")), Reflection.mutableProperty1(new MutablePropertyReference1Impl(Reflection.getOrCreateKotlinClass$4641416c(CardLimitActivity.class), "internetOperation", "getInternetOperation()Z"))};
    public static final Companion Companion = new Companion();
    private static final String EXTRA_CARD_TOKEN = "CARD_TOKEN";
    private HashMap _$_findViewCache;
    private ActivityCardLimitBinding activityCardLimit;
    private final ReadWriteProperty cardOperation$delegate;
    private final OnCheckedChangeListener cardOperationListener = new CardLimitActivity$cardOperationListener$1(this);
    private final ReadWriteProperty cashAbroadOperation$delegate;
    private final OnCheckedChangeListener cashAbroadOperationListener = new CardLimitActivity$cashAbroadOperationListener$1(this);
    private final ReadWriteProperty cashOperation$delegate;
    private final OnCheckedChangeListener cashOperationListener = new CardLimitActivity$cashOperationListener$1(this);
    private SexyLimits currentLimits;
    private final CardLimits data = CardLimits.INSTANCE;
    private Subscription getSubscription;
    private final OnCheckedChangeListener internetListener = new CardLimitActivity$internetListener$1(this);
    private final ReadWriteProperty internetOperation$delegate;
    public PlasticsApi plasticApi;
    private String token;
    private Subscription updateSubscribe;

    /* compiled from: CardLimitActivity.kt */
    public static final class Companion {
        private Companion() {
        }

        public final String getEXTRA_CARD_TOKEN() {
            return CardLimitActivity.EXTRA_CARD_TOKEN;
        }

        public final void start(Context context, String str) {
            Intrinsics.checkParameterIsNotNull(context, "context");
            Intrinsics.checkParameterIsNotNull(str, "token");
            Intent intent = new Intent(context, CardLimitActivity.class);
            intent.putExtra(getEXTRA_CARD_TOKEN(), str);
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

    public final boolean getCardOperation() {
        return ((Boolean) this.cardOperation$delegate.getValue(this, $$delegatedProperties[2])).booleanValue();
    }

    public final boolean getCashAbroadOperation() {
        return ((Boolean) this.cashAbroadOperation$delegate.getValue(this, $$delegatedProperties[1])).booleanValue();
    }

    public final boolean getCashOperation() {
        return ((Boolean) this.cashOperation$delegate.getValue(this, $$delegatedProperties[0])).booleanValue();
    }

    public final boolean getInternetOperation() {
        return ((Boolean) this.internetOperation$delegate.getValue(this, $$delegatedProperties[3])).booleanValue();
    }

    public final void setCardOperation(boolean z) {
        this.cardOperation$delegate.setValue(this, $$delegatedProperties[2], Boolean.valueOf(z));
    }

    public final void setCashAbroadOperation(boolean z) {
        this.cashAbroadOperation$delegate.setValue(this, $$delegatedProperties[1], Boolean.valueOf(z));
    }

    public final void setCashOperation(boolean z) {
        this.cashOperation$delegate.setValue(this, $$delegatedProperties[0], Boolean.valueOf(z));
    }

    public final void setInternetOperation(boolean z) {
        this.internetOperation$delegate.setValue(this, $$delegatedProperties[3], Boolean.valueOf(z));
    }

    public CardLimitActivity() {
        Delegates delegates = Delegates.INSTANCE;
        Boolean bool = Boolean.FALSE;
        this.cashOperation$delegate = new CardLimitActivity$$special$$inlined$observable$1(bool, bool, this);
        delegates = Delegates.INSTANCE;
        bool = Boolean.FALSE;
        this.cashAbroadOperation$delegate = new CardLimitActivity$$special$$inlined$observable$2(bool, bool, this);
        delegates = Delegates.INSTANCE;
        bool = Boolean.FALSE;
        this.cardOperation$delegate = new CardLimitActivity$$special$$inlined$observable$3(bool, bool, this);
        delegates = Delegates.INSTANCE;
        bool = Boolean.FALSE;
        this.internetOperation$delegate = new CardLimitActivity$$special$$inlined$observable$4(bool, bool, this);
    }

    public static final /* synthetic */ ActivityCardLimitBinding access$getActivityCardLimit$p(CardLimitActivity cardLimitActivity) {
        cardLimitActivity = cardLimitActivity.activityCardLimit;
        if (cardLimitActivity == null) {
            Intrinsics.throwUninitializedPropertyAccessException("activityCardLimit");
        }
        return cardLimitActivity;
    }

    public final Subscription getGetSubscription() {
        return this.getSubscription;
    }

    public final void setGetSubscription(Subscription subscription) {
        this.getSubscription = subscription;
    }

    public final SexyLimits getCurrentLimits() {
        return this.currentLimits;
    }

    public final void setCurrentLimits(SexyLimits sexyLimits) {
        this.currentLimits = sexyLimits;
    }

    public final PlasticsApi getPlasticApi() {
        PlasticsApi plasticsApi = this.plasticApi;
        if (plasticsApi == null) {
            Intrinsics.throwUninitializedPropertyAccessException("plasticApi");
        }
        return plasticsApi;
    }

    public final void setPlasticApi(PlasticsApi plasticsApi) {
        Intrinsics.checkParameterIsNotNull(plasticsApi, "<set-?>");
        this.plasticApi = plasticsApi;
    }

    public final Subscription getUpdateSubscribe() {
        return this.updateSubscribe;
    }

    public final void setUpdateSubscribe(Subscription subscription) {
        this.updateSubscribe = subscription;
    }

    protected final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        bundle = getIntent().getStringExtra(EXTRA_CARD_TOKEN);
        Intrinsics.checkExpressionValueIsNotNull(bundle, "intent.getStringExtra(EXTRA_CARD_TOKEN)");
        this.token = bundle;
        this.plasticApi = RocketApplication.Companion.getInjector().getPlasticApi();
        Context context = this;
        bundle = new DrawerArrowDrawable(context);
        bundle.setColor(ContextCompat.getColor(context, C0859R.color.rocketBlack));
        bundle.setProgress(1.0f);
        ViewDataBinding contentView = DataBindingUtil.setContentView(this, C0859R.layout.activity_card_limit);
        Intrinsics.checkExpressionValueIsNotNull(contentView, "DataBindingUtil.setConte…yout.activity_card_limit)");
        this.activityCardLimit = (ActivityCardLimitBinding) contentView;
        ActivityCardLimitBinding activityCardLimitBinding = this.activityCardLimit;
        if (activityCardLimitBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("activityCardLimit");
        }
        activityCardLimitBinding.setData(this.data);
        activityCardLimitBinding = this.activityCardLimit;
        if (activityCardLimitBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("activityCardLimit");
        }
        CardLimitItemBinding cardLimitItemBinding = activityCardLimitBinding.card;
        if (cardLimitItemBinding == null) {
            Intrinsics.throwNpe();
        }
        cardLimitItemBinding.switchCompat.setOnCheckedChangeListener(this.cardOperationListener);
        activityCardLimitBinding = this.activityCardLimit;
        if (activityCardLimitBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("activityCardLimit");
        }
        cardLimitItemBinding = activityCardLimitBinding.cash;
        if (cardLimitItemBinding == null) {
            Intrinsics.throwNpe();
        }
        cardLimitItemBinding.switchCompat.setOnCheckedChangeListener(this.cashOperationListener);
        activityCardLimitBinding = this.activityCardLimit;
        if (activityCardLimitBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("activityCardLimit");
        }
        cardLimitItemBinding = activityCardLimitBinding.cashAbroad;
        if (cardLimitItemBinding == null) {
            Intrinsics.throwNpe();
        }
        cardLimitItemBinding.switchCompat.setOnCheckedChangeListener(this.cashAbroadOperationListener);
        activityCardLimitBinding = this.activityCardLimit;
        if (activityCardLimitBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("activityCardLimit");
        }
        cardLimitItemBinding = activityCardLimitBinding.internet;
        if (cardLimitItemBinding == null) {
            Intrinsics.throwNpe();
        }
        cardLimitItemBinding.switchCompat.setOnCheckedChangeListener(this.internetListener);
        activityCardLimitBinding = this.activityCardLimit;
        if (activityCardLimitBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("activityCardLimit");
        }
        IncludeToolbarBinding includeToolbarBinding = activityCardLimitBinding.includeToolbar;
        if (includeToolbarBinding == null) {
            Intrinsics.throwNpe();
        }
        Toolbar toolbar = includeToolbarBinding.toolbar;
        Intrinsics.checkExpressionValueIsNotNull(toolbar, "toolbar");
        toolbar.setTitle((CharSequence) getResources().getString(C0859R.string.limit_safety));
        toolbar.setNavigationIcon((Drawable) bundle);
        setSupportActionBar(toolbar);
    }

    protected final void onResume() {
        super.onResume();
        showProgressDialog();
        refreshLimits();
    }

    private final void refreshLimits() {
        PlasticsApi plasticsApi = this.plasticApi;
        if (plasticsApi == null) {
            Intrinsics.throwUninitializedPropertyAccessException("plasticApi");
        }
        String str = this.token;
        if (str == null) {
            Intrinsics.throwUninitializedPropertyAccessException("token");
        }
        this.getSubscription = plasticsApi.getSexyLimits(str).observeOn(AndroidSchedulers.mainThread()).subscribe(new CardLimitActivity$refreshLimits$1(this));
    }

    protected final void onPause() {
        hideProgressDialog();
        Subscription subscription = this.getSubscription;
        if (subscription != null) {
            subscription.unsubscribe();
        }
        this.getSubscription = null;
        Subscription subscription2 = this.updateSubscribe;
        if (subscription2 != null) {
            subscription2.unsubscribe();
        }
        this.updateSubscribe = null;
        super.onPause();
    }

    private final void updateLimits(Function0<Unit> function0) {
        SexyCardLimits sexyCardLimits = new SexyCardLimits();
        sexyCardLimits.setLimits(this.currentLimits);
        showProgressDialog();
        PlasticsApi plasticsApi = this.plasticApi;
        if (plasticsApi == null) {
            Intrinsics.throwUninitializedPropertyAccessException("plasticApi");
        }
        String str = this.token;
        if (str == null) {
            Intrinsics.throwUninitializedPropertyAccessException("token");
        }
        this.updateSubscribe = plasticsApi.sendLimits(str, sexyCardLimits).observeOn(AndroidSchedulers.mainThread()).subscribe(new CardLimitActivity$updateLimits$1(this, function0));
    }
}
