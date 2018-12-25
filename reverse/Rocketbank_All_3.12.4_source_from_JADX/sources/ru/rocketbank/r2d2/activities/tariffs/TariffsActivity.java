package ru.rocketbank.r2d2.activities.tariffs;

import android.content.Context;
import android.content.Intent;
import android.databinding.DataBindingUtil;
import android.os.Bundle;
import android.support.v4.app.FragmentManager;
import android.support.v4.view.ViewPager;
import android.view.View;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.concurrent.TimeUnit;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.AccountModel;
import ru.rocketbank.core.model.TariffModel;
import ru.rocketbank.core.model.UserModel;
import ru.rocketbank.core.network.api.TariffsApi;
import ru.rocketbank.core.network.model.tariffs.Tariff;
import ru.rocketbank.core.utils.rx.RetryWithDelay;
import ru.rocketbank.core.widgets.viewpagerindicator.CirclePageIndicator;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.activities.SecuredActivity;
import ru.rocketbank.r2d2.databinding.ActivityTariffsBinding;
import ru.rocketbank.r2d2.fragments.tariffs.TariffsPageAdapter;
import rx.Observable;
import rx.Subscription;
import rx.android.schedulers.AndroidSchedulers;
import rx.schedulers.Schedulers;
import rx.subscriptions.Subscriptions;

/* compiled from: TariffsActivity.kt */
public final class TariffsActivity extends SecuredActivity {
    public static final Companion Companion = new Companion();
    private static final String TOKEN = "TOKEN";
    private HashMap _$_findViewCache;
    private ActivityTariffsBinding binding;
    private CirclePageIndicator indicator;
    private TariffsPageAdapter pagerAdapter;
    private Subscription tariffSubscription;
    private final ArrayList<Tariff> tariffs = new ArrayList();
    private final TariffsApi tariffsApi;
    private String token;
    private UserModel userModel;
    private ViewPager viewPager;

    /* compiled from: TariffsActivity.kt */
    public static final class Companion {
        private static /* synthetic */ void TOKEN$annotations() {
        }

        private Companion() {
        }

        public final void start(Context context, String str) {
            Intrinsics.checkParameterIsNotNull(context, "context");
            Intent intent = new Intent(context, TariffsActivity.class);
            intent.putExtra(TariffsActivity.TOKEN, str);
            context.startActivity(intent);
        }
    }

    public static final void start(Context context, String str) {
        Companion.start(context, str);
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

    public TariffsActivity() {
        Subscription empty = Subscriptions.empty();
        Intrinsics.checkExpressionValueIsNotNull(empty, "Subscriptions.empty()");
        this.tariffSubscription = empty;
        this.tariffsApi = getInjector().getTariffsApi();
    }

    public static final /* synthetic */ TariffsPageAdapter access$getPagerAdapter$p(TariffsActivity tariffsActivity) {
        tariffsActivity = tariffsActivity.pagerAdapter;
        if (tariffsActivity == null) {
            Intrinsics.throwUninitializedPropertyAccessException("pagerAdapter");
        }
        return tariffsActivity;
    }

    public final TariffsApi getTariffsApi() {
        return this.tariffsApi;
    }

    protected final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        bundle = DataBindingUtil.setContentView(this, C0859R.layout.activity_tariffs);
        Intrinsics.checkExpressionValueIsNotNull(bundle, "DataBindingUtil.setConte….layout.activity_tariffs)");
        this.binding = (ActivityTariffsBinding) bundle;
        bundle = getSupportActionBar();
        if (bundle != null) {
            bundle.setDisplayHomeAsUpEnabled(true);
        }
        this.token = getIntent().getStringExtra(TOKEN);
        bundle = this.token;
        if (bundle != null) {
            FragmentManager supportFragmentManager = getSupportFragmentManager();
            Intrinsics.checkExpressionValueIsNotNull(supportFragmentManager, "supportFragmentManager");
            this.pagerAdapter = new TariffsPageAdapter(supportFragmentManager, bundle);
            bundle = this.binding;
            if (bundle == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
            }
            bundle = bundle.pager;
            Intrinsics.checkExpressionValueIsNotNull(bundle, "binding.pager");
            this.viewPager = bundle;
            bundle = this.viewPager;
            if (bundle == null) {
                Intrinsics.throwUninitializedPropertyAccessException("viewPager");
            }
            TariffsPageAdapter tariffsPageAdapter = this.pagerAdapter;
            if (tariffsPageAdapter == null) {
                Intrinsics.throwUninitializedPropertyAccessException("pagerAdapter");
            }
            bundle.setAdapter(tariffsPageAdapter);
            bundle = this.binding;
            if (bundle == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
            }
            bundle = bundle.pagerIndicator;
            Intrinsics.checkExpressionValueIsNotNull(bundle, "binding.pagerIndicator");
            this.indicator = bundle;
            bundle = this.indicator;
            if (bundle == null) {
                Intrinsics.throwUninitializedPropertyAccessException("indicator");
            }
            ViewPager viewPager = this.viewPager;
            if (viewPager == null) {
                Intrinsics.throwUninitializedPropertyAccessException("viewPager");
            }
            bundle.setViewPager(viewPager);
            return;
        }
        throw ((Throwable) new IllegalStateException("token is null!"));
    }

    protected final void onStart() {
        super.onStart();
        UserModel userModel = this.userModel;
        if (userModel != null) {
            loadTariffs(userModel);
        }
    }

    protected final void onDestroy() {
        TariffsPageAdapter tariffsPageAdapter = this.pagerAdapter;
        if (tariffsPageAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("pagerAdapter");
        }
        tariffsPageAdapter.onDestroy();
        unsubscribe(this.tariffSubscription);
        super.onDestroy();
    }

    private final void loadTariffs(UserModel userModel) {
        AccountModel account = userModel.getAccount(this.token);
        if (account != null) {
            showProgressDialog();
            String currency = account.getCurrency().toString();
            Intrinsics.checkExpressionValueIsNotNull(currency, "accountModel.currency.toString()");
            if (currency == null) {
                throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
            }
            currency = currency.toLowerCase();
            Intrinsics.checkExpressionValueIsNotNull(currency, "(this as java.lang.String).toLowerCase()");
            userModel = Observable.just(Boolean.valueOf(getInjector().getAuthorization().isAuthorized())).filter(new TariffsActivity$loadTariffs$1(this)).subscribeOn(AndroidSchedulers.mainThread()).flatMap(new TariffsActivity$loadTariffs$2(this, currency)).retryWhen(new RetryWithDelay(10, 1, TimeUnit.SECONDS)).subscribeOn(Schedulers.io()).observeOn(AndroidSchedulers.mainThread()).subscribe(new TariffsActivity$loadTariffs$3(this, userModel));
            Intrinsics.checkExpressionValueIsNotNull(userModel, "Observable.just(injector…     }\n                })");
            this.tariffSubscription = userModel;
        }
    }

    public final void onUserModel(UserModel userModel) {
        Intrinsics.checkParameterIsNotNull(userModel, "userModel");
        super.onUserModel(userModel);
        this.userModel = userModel;
        loadTariffs(userModel);
    }

    private final TariffModel getCurrentTariff() {
        UserModel userModel = this.userModel;
        return userModel != null ? getCurrentTariff(userModel) : null;
    }

    private final TariffModel getCurrentTariff(UserModel userModel) {
        return userModel.getAccount(this.token).getCurrentTariff();
    }

    private final TariffModel getNextTariff() {
        UserModel userModel = this.userModel;
        if (userModel == null) {
            return null;
        }
        AccountModel account = userModel.getAccount(this.token);
        if (account != null) {
            return account.getNextTariff();
        }
        return null;
    }
}
