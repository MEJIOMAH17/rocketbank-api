package ru.rocketbank.r2d2.activities.safe;

import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.databinding.DataBindingUtil;
import android.graphics.Point;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Vibrator;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentPagerAdapter;
import android.support.v4.content.ContextCompat;
import android.support.v4.view.PagerAdapter;
import android.support.v4.view.ViewPager;
import android.support.v4.view.ViewPager.OnPageChangeListener;
import android.support.v7.app.ActionBar;
import android.support.v7.app.AlertDialog.Builder;
import android.support.v7.widget.Toolbar;
import android.text.Html;
import android.text.SpannedString;
import android.util.Log;
import android.view.Display;
import android.view.View;
import android.view.WindowManager;
import android.widget.ProgressBar;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.jakewharton.rxbinding.widget.RxTextView;
import com.mikepenz.materialdrawer.util.KeyboardUtil;
import fr.castorflex.android.verticalviewpager.VerticalViewPager;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.UUID;
import java.util.concurrent.TimeUnit;
import kotlin.Pair;
import kotlin.TypeCastException;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.sequences.FilteringSequence;
import kotlin.sequences.Sequence;
import me.zhanghai.android.materialprogressbar.IndeterminateProgressDrawable;
import ru.rocketbank.core.manager.CurrencyManager;
import ru.rocketbank.core.manager.PresenterManager;
import ru.rocketbank.core.model.DepositModel;
import ru.rocketbank.core.model.RocketDepositModel;
import ru.rocketbank.core.model.UserModel;
import ru.rocketbank.core.model.enums.Currency;
import ru.rocketbank.core.model.facade.Account;
import ru.rocketbank.core.network.model.MoveMoneyBody;
import ru.rocketbank.core.network.model.RefillCardResponse;
import ru.rocketbank.core.network.model.RefillCardResponse.RefillModel;
import ru.rocketbank.core.user.Authorization;
import ru.rocketbank.core.utils.MoneyFormatter;
import ru.rocketbank.core.utils.rx.RxBus;
import ru.rocketbank.core.utils.rx.TextObserverToDecimal;
import ru.rocketbank.core.widgets.RocketEditText;
import ru.rocketbank.core.widgets.listener.AddFormatListener;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.PresenterSecuredActivity;
import ru.rocketbank.r2d2.RocketApplication;
import ru.rocketbank.r2d2.Utils;
import ru.rocketbank.r2d2.data.binding.transfer.TransferAccountData;
import ru.rocketbank.r2d2.data.binding.transfer.TransferAccountsHandler;
import ru.rocketbank.r2d2.databinding.FragmentTransferBetweenCardsBinding;
import ru.rocketbank.r2d2.databinding.LayoutToolbarWithButtonBinding;
import ru.rocketbank.r2d2.fragments.transfers.SafeAndCardTransferPresenter;
import ru.rocketbank.r2d2.helpers.UIHelper;
import ru.rocketbank.r2d2.root.transfer.CurrencyFragment;
import ru.rocketbank.r2d2.root.transfer.ProductPager;
import rx.Observable;
import rx.Subscription;
import rx.android.schedulers.AndroidSchedulers;
import rx.functions.Action1;

/* compiled from: TransferActivity.kt */
public final class TransferActivity extends PresenterSecuredActivity<SafeAndCardTransferPresenter> implements TransferAccountsHandler {
    public static final Companion Companion = new Companion();
    private static final String KEY_TOKEN = "KEY_TOKEN";
    private static final String SENDING = "SENDING";
    private static final String TAG = "TransferCard";
    private HashMap _$_findViewCache;
    private final Action1<BigDecimal> amountChangeSubscription = new TransferActivity$amountChangeSubscription$1(this);
    private FragmentTransferBetweenCardsBinding binding;
    public CurrencyAdapter currencyAdapter;
    public CurrencyManager currencyManager;
    private BigDecimal currentAmount;
    public Observable<MoveMoneyBody> debouncedEventEmitter;
    private ProductPager destinationAdapter;
    private String destinationToken;
    private String fromToken;
    private Subscription infoSubscription;
    public MoneyFormatter moneyFormatter;
    private RxBus<MoveMoneyBody> moveMoneyBodyRxBus;
    private ProgressDialog progressDialog;
    private String selectedCurrency;
    private ProductPager sourceAdapter;
    private String token;
    private String transferMessage;
    public Observable<MoveMoneyBody> updateEventEmitter;
    private UserModel userModel;
    private Vibrator vibrator;
    private TransferAccountData viewData;

    /* compiled from: TransferActivity.kt */
    public static final class Companion {
        private Companion() {
        }

        public final void startActivity(Context context, String str) {
            Intrinsics.checkParameterIsNotNull(context, "context");
            Intent intent = new Intent(context, TransferActivity.class);
            intent.putExtra(TransferActivity.KEY_TOKEN, str);
            context.startActivity(intent);
        }
    }

    /* compiled from: TransferActivity.kt */
    public final class CurrencyAdapter extends FragmentPagerAdapter {
        private final ArrayList<String> currencies = new ArrayList();

        public CurrencyAdapter(FragmentManager fragmentManager) {
            super(fragmentManager);
        }

        public final Fragment getItem(int i) {
            i = TransferActivity.this.getCurrencyManager().getCurrencySymbol((String) this.currencies.get(i));
            if (i == 0) {
                i = "?";
            }
            return CurrencyFragment.Companion.newInstance(i);
        }

        public final long getItemId(int i) {
            return (long) ((String) this.currencies.get(i)).hashCode();
        }

        public final int getCount() {
            return this.currencies.size();
        }

        public final void setCurrencies(List<String> list) {
            Intrinsics.checkParameterIsNotNull(list, "currencies");
            this.currencies.clear();
            this.currencies.addAll(list);
            notifyDataSetChanged();
        }

        public final String getCurrencyAtPosition(int i) {
            i = this.currencies.get(i);
            Intrinsics.checkExpressionValueIsNotNull(i, "currencies[position]");
            return (String) i;
        }
    }

    public static final void startActivity(Context context, String str) {
        Companion.startActivity(context, str);
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

    public static final /* synthetic */ ProductPager access$getDestinationAdapter$p(TransferActivity transferActivity) {
        transferActivity = transferActivity.destinationAdapter;
        if (transferActivity == null) {
            Intrinsics.throwUninitializedPropertyAccessException("destinationAdapter");
        }
        return transferActivity;
    }

    public static final /* synthetic */ ProductPager access$getSourceAdapter$p(TransferActivity transferActivity) {
        transferActivity = transferActivity.sourceAdapter;
        if (transferActivity == null) {
            Intrinsics.throwUninitializedPropertyAccessException("sourceAdapter");
        }
        return transferActivity;
    }

    public static final /* synthetic */ TransferAccountData access$getViewData$p(TransferActivity transferActivity) {
        transferActivity = transferActivity.viewData;
        if (transferActivity == null) {
            Intrinsics.throwUninitializedPropertyAccessException("viewData");
        }
        return transferActivity;
    }

    public final SafeAndCardTransferPresenter createPresenter() {
        PresenterManager presenterManager = PresenterManager.INSTANCE;
        UUID fromString = UUID.fromString("388e3157-2adb-4434-8a9b-0d683ee033f3");
        Intrinsics.checkExpressionValueIsNotNull(fromString, "UUID.fromString(\"388e315…-4434-8a9b-0d683ee033f3\")");
        return (SafeAndCardTransferPresenter) PresenterManager.getOrCreatePresenter(fromString, SafeAndCardTransferPresenter.class);
    }

    public final Observable<MoveMoneyBody> getUpdateEventEmitter() {
        Observable<MoveMoneyBody> observable = this.updateEventEmitter;
        if (observable == null) {
            Intrinsics.throwUninitializedPropertyAccessException("updateEventEmitter");
        }
        return observable;
    }

    public final void setUpdateEventEmitter(Observable<MoveMoneyBody> observable) {
        Intrinsics.checkParameterIsNotNull(observable, "<set-?>");
        this.updateEventEmitter = observable;
    }

    public final Observable<MoveMoneyBody> getDebouncedEventEmitter() {
        Observable<MoveMoneyBody> observable = this.debouncedEventEmitter;
        if (observable == null) {
            Intrinsics.throwUninitializedPropertyAccessException("debouncedEventEmitter");
        }
        return observable;
    }

    public final void setDebouncedEventEmitter(Observable<MoveMoneyBody> observable) {
        Intrinsics.checkParameterIsNotNull(observable, "<set-?>");
        this.debouncedEventEmitter = observable;
    }

    public final MoneyFormatter getMoneyFormatter() {
        MoneyFormatter moneyFormatter = this.moneyFormatter;
        if (moneyFormatter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("moneyFormatter");
        }
        return moneyFormatter;
    }

    public final void setMoneyFormatter(MoneyFormatter moneyFormatter) {
        Intrinsics.checkParameterIsNotNull(moneyFormatter, "<set-?>");
        this.moneyFormatter = moneyFormatter;
    }

    public final CurrencyManager getCurrencyManager() {
        CurrencyManager currencyManager = this.currencyManager;
        if (currencyManager == null) {
            Intrinsics.throwUninitializedPropertyAccessException("currencyManager");
        }
        return currencyManager;
    }

    public final void setCurrencyManager(CurrencyManager currencyManager) {
        Intrinsics.checkParameterIsNotNull(currencyManager, "<set-?>");
        this.currencyManager = currencyManager;
    }

    public final CurrencyAdapter getCurrencyAdapter() {
        CurrencyAdapter currencyAdapter = this.currencyAdapter;
        if (currencyAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("currencyAdapter");
        }
        return currencyAdapter;
    }

    public final void setCurrencyAdapter(CurrencyAdapter currencyAdapter) {
        Intrinsics.checkParameterIsNotNull(currencyAdapter, "<set-?>");
        this.currencyAdapter = currencyAdapter;
    }

    public final void onUpPressed() {
        FragmentTransferBetweenCardsBinding fragmentTransferBetweenCardsBinding = this.binding;
        if (fragmentTransferBetweenCardsBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        VerticalViewPager verticalViewPager = fragmentTransferBetweenCardsBinding.currencies;
        Intrinsics.checkExpressionValueIsNotNull(verticalViewPager, "currencyViewPage");
        int currentItem = verticalViewPager.getCurrentItem();
        if (currentItem > 0) {
            verticalViewPager.setCurrentItem(currentItem - 1, true);
        }
    }

    public final void onDownPressed() {
        FragmentTransferBetweenCardsBinding fragmentTransferBetweenCardsBinding = this.binding;
        if (fragmentTransferBetweenCardsBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        VerticalViewPager verticalViewPager = fragmentTransferBetweenCardsBinding.currencies;
        Intrinsics.checkExpressionValueIsNotNull(verticalViewPager, "currencyViewPage");
        int currentItem = verticalViewPager.getCurrentItem();
        CurrencyAdapter currencyAdapter = this.currencyAdapter;
        if (currencyAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("currencyAdapter");
        }
        if (currentItem < currencyAdapter.getCount() - 1) {
            verticalViewPager.setCurrentItem(currentItem + 1, true);
        }
    }

    public final void nextPressed(View view) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        if (this.transferMessage != null) {
            UIHelper.showAlertDialog(view.getContext(), this.transferMessage, C0859R.string.cta_send, new TransferActivity$nextPressed$1(this), TransferActivity$nextPressed$2.INSTANCE);
        } else {
            sendMoney();
        }
    }

    private final void sendMoney() {
        showProgressExecution();
        ((SafeAndCardTransferPresenter) getPresenter()).sendMoney(new MoveMoneyBody(getAmount(), this.selectedCurrency, this.fromToken, this.destinationToken), TransferActivity$sendMoney$1.INSTANCE, TransferActivity$sendMoney$2.INSTANCE, TransferActivity$sendMoney$3.INSTANCE);
    }

    protected final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.vibrator = (Vibrator) getSystemService("vibrator");
        this.fromToken = getIntent().getStringExtra(KEY_TOKEN);
        this.currencyAdapter = new CurrencyAdapter(getSupportFragmentManager());
        this.sourceAdapter = new ProductPager(getSupportFragmentManager());
        this.destinationAdapter = new ProductPager(getSupportFragmentManager());
        String string = getString(C0859R.string.pa_transfer);
        Intrinsics.checkExpressionValueIsNotNull(string, "getString(R.string.pa_transfer)");
        String string2 = getString(C0859R.string.transfer_cap);
        Intrinsics.checkExpressionValueIsNotNull(string2, "getString(R.string.transfer_cap)");
        this.viewData = new TransferAccountData(string, string2, false);
        bundle = DataBindingUtil.setContentView(this, C0859R.layout.fragment_transfer_between_cards);
        Intrinsics.checkExpressionValueIsNotNull(bundle, "DataBindingUtil.setConte…t_transfer_between_cards)");
        this.binding = (FragmentTransferBetweenCardsBinding) bundle;
        bundle = this.binding;
        if (bundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        bundle.setHandler(this);
        bundle = this.binding;
        if (bundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        TransferAccountData transferAccountData = this.viewData;
        if (transferAccountData == null) {
            Intrinsics.throwUninitializedPropertyAccessException("viewData");
        }
        bundle.setData(transferAccountData);
        Context context = this;
        bundle = new IndeterminateProgressDrawable(context);
        bundle.setTint(ContextCompat.getColor(context, C0859R.color.blue));
        FragmentTransferBetweenCardsBinding fragmentTransferBetweenCardsBinding = this.binding;
        if (fragmentTransferBetweenCardsBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        ProgressBar progressBar = fragmentTransferBetweenCardsBinding.indeterminateProgress;
        Intrinsics.checkExpressionValueIsNotNull(progressBar, "binding.indeterminateProgress");
        progressBar.setIndeterminateDrawable((Drawable) bundle);
        bundle = this.binding;
        if (bundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        bundle = bundle.source;
        Intrinsics.checkExpressionValueIsNotNull(bundle, "binding.source");
        fragmentTransferBetweenCardsBinding = this.binding;
        if (fragmentTransferBetweenCardsBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        ViewPager viewPager = fragmentTransferBetweenCardsBinding.destination;
        Intrinsics.checkExpressionValueIsNotNull(viewPager, "binding.destination");
        setupViewPagers(bundle, viewPager);
        this.moneyFormatter = getInjector().getMoneyFormatter();
        this.currencyManager = getInjector().getCurrencyManager();
        this.moveMoneyBodyRxBus = new RxBus();
        bundle = this.moveMoneyBodyRxBus;
        if (bundle == null) {
            Intrinsics.throwNpe();
        }
        bundle = bundle.toObserverable().share();
        Intrinsics.checkExpressionValueIsNotNull(bundle, "moveMoneyBodyRxBus!!.toObserverable().share()");
        this.updateEventEmitter = bundle;
        bundle = this.updateEventEmitter;
        if (bundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("updateEventEmitter");
        }
        bundle = bundle.debounce(500, TimeUnit.MILLISECONDS);
        Intrinsics.checkExpressionValueIsNotNull(bundle, "updateEventEmitter.debou…0, TimeUnit.MILLISECONDS)");
        this.debouncedEventEmitter = bundle;
        bundle = RocketApplication.Companion.getInjector().getAuthorization();
        CurrencyManager currencyManager = RocketApplication.Companion.getInjector().getCurrencyManager();
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(bundle, "authorization");
        MoneyFormatter moneyFormatter = new MoneyFormatter(context, bundle, currencyManager);
        moneyFormatter.setFloorAmount(true);
        this.moneyFormatter = moneyFormatter;
        FragmentTransferBetweenCardsBinding fragmentTransferBetweenCardsBinding2 = this.binding;
        if (fragmentTransferBetweenCardsBinding2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        LayoutToolbarWithButtonBinding layoutToolbarWithButtonBinding = fragmentTransferBetweenCardsBinding2.toolbarBlock;
        if (layoutToolbarWithButtonBinding == null) {
            Intrinsics.throwNpe();
        }
        Toolbar toolbar = layoutToolbarWithButtonBinding.toolbar;
        Intrinsics.checkExpressionValueIsNotNull(toolbar, "binding.toolbarBlock!!.toolbar");
        setSupportActionBar(toolbar);
        ActionBar supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.setDisplayHomeAsUpEnabled(true);
        }
        bundle = this.viewData;
        if (bundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("viewData");
        }
        bundle.getButtonEnabled().set(false);
        bundle = this.binding;
        if (bundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        bundle = bundle.currencies;
        Intrinsics.checkExpressionValueIsNotNull(bundle, "binding.currencies");
        CurrencyAdapter currencyAdapter = this.currencyAdapter;
        if (currencyAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("currencyAdapter");
        }
        bundle.setAdapter(currencyAdapter);
        bundle = this.binding;
        if (bundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        bundle.currencies.setOnPageChangeListener(new TransferActivity$onCreate$1(this));
    }

    public final void refreshSource(String str) {
        ProductPager productPager = this.sourceAdapter;
        if (productPager == null) {
            Intrinsics.throwUninitializedPropertyAccessException("sourceAdapter");
        }
        productPager.excludeCurrency(str);
        str = this.binding;
        if (str == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        str = str.source;
        Intrinsics.checkExpressionValueIsNotNull(str, "sourceViewPager");
        productPager = this.sourceAdapter;
        if (productPager == null) {
            Intrinsics.throwUninitializedPropertyAccessException("sourceAdapter");
        }
        str.setAdapter(productPager);
        str = this.sourceAdapter;
        if (str == null) {
            Intrinsics.throwUninitializedPropertyAccessException("sourceAdapter");
        }
        str.notifyDataSetChanged();
        str = this.binding;
        if (str == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        str = str.source;
        Intrinsics.checkExpressionValueIsNotNull(str, "binding.source");
        setDefaultSource(str);
    }

    public final void refreshTargetDestination(String str) {
        Intrinsics.checkParameterIsNotNull(str, "selectedSourceToken");
        ProductPager productPager = this.destinationAdapter;
        if (productPager == null) {
            Intrinsics.throwUninitializedPropertyAccessException("destinationAdapter");
        }
        productPager.excludeToken(str);
        str = this.binding;
        if (str == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        str = str.destination;
        Intrinsics.checkExpressionValueIsNotNull(str, "destinationViewPager");
        productPager = this.destinationAdapter;
        if (productPager == null) {
            Intrinsics.throwUninitializedPropertyAccessException("destinationAdapter");
        }
        str.setAdapter(productPager);
        str = this.destinationAdapter;
        if (str == null) {
            Intrinsics.throwUninitializedPropertyAccessException("destinationAdapter");
        }
        str.notifyDataSetChanged();
        str = this.binding;
        if (str == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        str = str.destination;
        Intrinsics.checkExpressionValueIsNotNull(str, "binding.destination");
        setDefaultDestination(str);
    }

    private final void refreshDrawableState(int i, int i2) {
        TransferAccountData transferAccountData;
        if (i == 0) {
            transferAccountData = this.viewData;
            if (transferAccountData == null) {
                Intrinsics.throwUninitializedPropertyAccessException("viewData");
            }
            transferAccountData.getCurrencyUpDrawable().set(ContextCompat.getDrawable(this, C0859R.drawable.ic_addition_grey));
        } else {
            transferAccountData = this.viewData;
            if (transferAccountData == null) {
                Intrinsics.throwUninitializedPropertyAccessException("viewData");
            }
            transferAccountData.getCurrencyUpDrawable().set(ContextCompat.getDrawable(this, C0859R.drawable.ic_addition_orange));
        }
        if (i == i2 - 1) {
            i = this.viewData;
            if (i == 0) {
                Intrinsics.throwUninitializedPropertyAccessException("viewData");
            }
            i.getCurrencyDownDrawable().set(ContextCompat.getDrawable(this, C0859R.drawable.ic_addition_grey));
            return;
        }
        i = this.viewData;
        if (i == 0) {
            Intrinsics.throwUninitializedPropertyAccessException("viewData");
        }
        i.getCurrencyDownDrawable().set(ContextCompat.getDrawable(this, C0859R.drawable.ic_addition_orange));
    }

    private final void setupViewPagers(ViewPager viewPager, ViewPager viewPager2) {
        Object systemService = getSystemService("window");
        if (systemService == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.view.WindowManager");
        }
        Display defaultDisplay = ((WindowManager) systemService).getDefaultDisplay();
        Point point = new Point();
        defaultDisplay.getSize(point);
        int dpToPx = (point.x - Utils.dpToPx(this, 274)) / 2;
        viewPager.setPadding(dpToPx, 0, dpToPx, 0);
        viewPager.setPageMargin(getResources().getDimensionPixelOffset(C0859R.dimen.list_item_big_card_corner_radius));
        ProductPager productPager = this.sourceAdapter;
        if (productPager == null) {
            Intrinsics.throwUninitializedPropertyAccessException("sourceAdapter");
        }
        viewPager.setAdapter(productPager);
        viewPager.addOnPageChangeListener(new TransferActivity$setupViewPagers$1(this));
        viewPager2.setPadding(dpToPx, 0, dpToPx, 0);
        viewPager2.setPageMargin(viewPager.getPageMargin());
        viewPager2.addOnPageChangeListener((OnPageChangeListener) new TransferActivity$setupViewPagers$2(this));
    }

    protected final void onResume() {
        super.onResume();
        registerTextUpdate();
        FragmentTransferBetweenCardsBinding fragmentTransferBetweenCardsBinding = this.binding;
        if (fragmentTransferBetweenCardsBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        RocketEditText rocketEditText = fragmentTransferBetweenCardsBinding.inputAmount;
        Intrinsics.checkExpressionValueIsNotNull(rocketEditText, "binding.inputAmount");
        rocketEditText.addTextChangedListener(new AddFormatListener(rocketEditText));
        RxTextView.afterTextChangeEvents(rocketEditText).map(new TextObserverToDecimal()).subscribe(this.amountChangeSubscription);
    }

    public final void onUserModel(UserModel userModel) {
        ProductPager productPager;
        Intrinsics.checkParameterIsNotNull(userModel, "userModel");
        super.onUserModel(userModel);
        this.userModel = userModel;
        Iterable<Account> accountsImmediate = Authorization.getAccountsImmediate(userModel);
        Collection arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault$251b5948(accountsImmediate));
        for (Account account : accountsImmediate) {
            arrayList.add(new Pair(account.getToken(), account.getCurrencyCode()));
        }
        List list = (List) arrayList;
        Iterable<Pair> iterable = list;
        Collection arrayList2 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault$251b5948(iterable));
        for (Pair first : iterable) {
            arrayList2.add((String) first.getFirst());
        }
        userModel = CollectionsKt___CollectionsKt.contains((List) arrayList2, this.fromToken) ^ 1;
        if (userModel != null) {
            this.destinationToken = this.fromToken;
            Authorization authorization = this.authorization;
            String str = this.destinationToken;
            if (str == null) {
                Intrinsics.throwNpe();
            }
            Object productImmediate = authorization.getProductImmediate(str);
            ArrayList arrayList3 = new ArrayList();
            if (productImmediate instanceof DepositModel) {
                ProductPager productPager2 = this.destinationAdapter;
                if (productPager2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("destinationAdapter");
                }
                Collection collection = arrayList3;
                DepositModel depositModel = (DepositModel) productImmediate;
                String valueOf = String.valueOf(depositModel.getId());
                RocketDepositModel rocketDeposit = depositModel.getRocketDeposit();
                productPager2.setProducts(CollectionsKt___CollectionsKt.plus(collection, new Pair(valueOf, rocketDeposit != null ? rocketDeposit.getCurrency() : null)));
            }
        } else {
            productPager = this.destinationAdapter;
            if (productPager == null) {
                Intrinsics.throwUninitializedPropertyAccessException("destinationAdapter");
            }
            productPager.setProducts(list);
        }
        productPager = this.sourceAdapter;
        if (productPager == null) {
            Intrinsics.throwUninitializedPropertyAccessException("sourceAdapter");
        }
        productPager.setProducts(list);
        FragmentTransferBetweenCardsBinding fragmentTransferBetweenCardsBinding = this.binding;
        if (fragmentTransferBetweenCardsBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        ViewPager viewPager = fragmentTransferBetweenCardsBinding.source;
        Intrinsics.checkExpressionValueIsNotNull(viewPager, "binding.source");
        setDefaultSource(viewPager);
        String str2 = this.fromToken;
        if (str2 != null) {
            if (userModel != null) {
                userModel = this.destinationToken;
                if (userModel == null) {
                    Intrinsics.throwNpe();
                }
                refreshSource(getCurrency(userModel));
            }
            refreshTargetDestination(str2);
        }
        userModel = this.binding;
        if (userModel == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        userModel = userModel.destination;
        Intrinsics.checkExpressionValueIsNotNull(userModel, "binding.destination");
        setDefaultDestination(userModel);
        updateScreen();
    }

    private final void setDefaultDestination(ViewPager viewPager) {
        if (Intrinsics.areEqual(this.destinationToken, this.fromToken)) {
            this.destinationToken = null;
        }
        String str = this.destinationToken;
        if (str == null) {
            viewPager.setCurrentItem(0);
            viewPager = this.destinationAdapter;
            if (viewPager == null) {
                Intrinsics.throwUninitializedPropertyAccessException("destinationAdapter");
            }
            this.destinationToken = viewPager.getToken(0);
            return;
        }
        ProductPager productPager = this.destinationAdapter;
        if (productPager == null) {
            Intrinsics.throwUninitializedPropertyAccessException("destinationAdapter");
        }
        int findItem = productPager.findItem(str);
        viewPager.setCurrentItem(findItem);
        viewPager = this.destinationAdapter;
        if (viewPager == null) {
            Intrinsics.throwUninitializedPropertyAccessException("destinationAdapter");
        }
        this.destinationToken = viewPager.getToken(findItem);
    }

    private final void setDefaultSource(ViewPager viewPager) {
        String str = this.fromToken;
        if (str == null) {
            viewPager.setCurrentItem(0);
            viewPager = this.sourceAdapter;
            if (viewPager == null) {
                Intrinsics.throwUninitializedPropertyAccessException("sourceAdapter");
            }
            this.fromToken = viewPager.getToken(0);
            return;
        }
        ProductPager productPager = this.sourceAdapter;
        if (productPager == null) {
            Intrinsics.throwUninitializedPropertyAccessException("sourceAdapter");
        }
        int findItem = productPager.findItem(str);
        viewPager.setCurrentItem(findItem);
        viewPager = this.sourceAdapter;
        if (viewPager == null) {
            Intrinsics.throwUninitializedPropertyAccessException("sourceAdapter");
        }
        this.fromToken = viewPager.getToken(findItem);
    }

    public final void updateScreen() {
        String str;
        String str2 = null;
        if (this.fromToken != null) {
            str = this.fromToken;
            if (str == null) {
                Intrinsics.throwNpe();
            }
            str = getCurrency(str);
        } else {
            str = null;
        }
        if (this.destinationToken != null) {
            str2 = this.destinationToken;
            if (str2 == null) {
                Intrinsics.throwNpe();
            }
            str2 = getCurrency(str2);
        }
        if (str != null && str2 != null) {
            setCurrencies(str, str2);
        }
    }

    public final String getCurrency(String str) {
        Intrinsics.checkParameterIsNotNull(str, "token");
        Account accountImmediate = this.authorization.getAccountImmediate(str);
        if (accountImmediate != null) {
            return accountImmediate.getCurrencyCode();
        }
        UserModel userModel = this.userModel;
        if (userModel != null) {
            List deposits = userModel.getDeposits();
            Intrinsics.checkExpressionValueIsNotNull(deposits, "it.deposits");
            Sequence asSequence = CollectionsKt___CollectionsKt.asSequence(deposits);
            Function1 transferActivity$getCurrency$$inlined$let$lambda$1 = new TransferActivity$getCurrency$$inlined$let$lambda$1(str);
            Intrinsics.checkParameterIsNotNull(asSequence, "$receiver");
            Intrinsics.checkParameterIsNotNull(transferActivity$getCurrency$$inlined$let$lambda$1, "predicate");
            str = ((Sequence) new FilteringSequence(asSequence, true, transferActivity$getCurrency$$inlined$let$lambda$1)).iterator();
            if (str.hasNext()) {
                str = ((DepositModel) str.next()).getRocketDeposit();
                if (str != null) {
                    return str.getCurrency();
                }
                return null;
            }
        }
        return null;
    }

    protected final void onPause() {
        super.onPause();
        unsubscribe(this.infoSubscription);
        KeyboardUtil.hideKeyboard(this);
    }

    private final void validateAmount(BigDecimal bigDecimal) {
        if (Intrinsics.areEqual(bigDecimal, BigDecimal.ZERO) != null) {
            bigDecimal = this.viewData;
            if (bigDecimal == null) {
                Intrinsics.throwUninitializedPropertyAccessException("viewData");
            }
            bigDecimal.getButtonEnabled().set(false);
            bigDecimal = new SpannedString("");
            TransferAccountData transferAccountData = this.viewData;
            if (transferAccountData == null) {
                Intrinsics.throwUninitializedPropertyAccessException("viewData");
            }
            transferAccountData.getInfoText().set(bigDecimal);
            return;
        }
        refreshTextInfo();
    }

    private final void onSendMoneyError(Throwable th) {
        hideProgress();
        showAlert(C0859R.string.not_able_to_tranfer_money);
        ((SafeAndCardTransferPresenter) getPresenter()).removeSendMoney();
    }

    private final void onSendMoneyResult(RefillCardResponse refillCardResponse) {
        this.authorization.refreshBackgroundProfile();
        hideProgress();
        finish();
    }

    private final void refreshTextInfo() {
        TransferAccountData transferAccountData = this.viewData;
        if (transferAccountData == null) {
            Intrinsics.throwUninitializedPropertyAccessException("viewData");
        }
        transferAccountData.getProgressVisible().set(true);
        MoveMoneyBody moveMoneyBody = new MoveMoneyBody(getAmount(), this.selectedCurrency, this.fromToken, this.destinationToken);
        RxBus rxBus = this.moveMoneyBodyRxBus;
        if (rxBus != null) {
            rxBus.send(moveMoneyBody);
        }
    }

    private final void onDetailMoneyError(Throwable th) {
        String errorString = getErrorString(th);
        Log.e(TAG, "Can not get text", th);
        th = new SpannedString(errorString);
        TransferAccountData transferAccountData = this.viewData;
        if (transferAccountData == null) {
            Intrinsics.throwUninitializedPropertyAccessException("viewData");
        }
        transferAccountData.getInfoText().set(th);
        th = this.viewData;
        if (th == null) {
            Intrinsics.throwUninitializedPropertyAccessException("viewData");
        }
        th.getInfoTextColor().set(ContextCompat.getColor(this, C0859R.color.red));
        th = this.viewData;
        if (th == null) {
            Intrinsics.throwUninitializedPropertyAccessException("viewData");
        }
        th.getButtonEnabled().set(false);
        th = this.viewData;
        if (th == null) {
            Intrinsics.throwUninitializedPropertyAccessException("viewData");
        }
        th.getProgressVisible().set(false);
    }

    private final void onDetailMoneyResult(RefillCardResponse refillCardResponse) {
        this.transferMessage = null;
        String str = this.destinationToken;
        if (str != null) {
            Object productImmediate = this.authorization.getProductImmediate(str);
            if (productImmediate instanceof DepositModel) {
                DepositModel depositModel = (DepositModel) productImmediate;
                if (((double) depositModel.getBalanceWithoutPercents()) + getAmount() > ((double) depositModel.getMaxAmount())) {
                    refillCardResponse = this.viewData;
                    if (refillCardResponse == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("viewData");
                    }
                    refillCardResponse.getButtonEnabled().set(false);
                    refillCardResponse = this.viewData;
                    if (refillCardResponse == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("viewData");
                    }
                    refillCardResponse.getProgressVisible().set(false);
                    refillCardResponse = this.viewData;
                    if (refillCardResponse == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("viewData");
                    }
                    refillCardResponse.getInfoTextColor().set(ContextCompat.getColor(this, C0859R.color.red));
                    refillCardResponse = this.viewData;
                    if (refillCardResponse == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("viewData");
                    }
                    refillCardResponse.getInfoText().set(Html.fromHtml(getString(C0859R.string.refillable_deposit_info)));
                    return;
                }
            }
        }
        TransferAccountData transferAccountData;
        if (StringsKt__StringsJVMKt.equals(refillCardResponse.getStatus(), "ok", true)) {
            RefillModel from = refillCardResponse.getFrom();
            Intrinsics.checkExpressionValueIsNotNull(from, "refillCardResponse.from");
            if (from.getAmount() <= BitmapDescriptorFactory.HUE_RED) {
                refillCardResponse = this.viewData;
                if (refillCardResponse == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("viewData");
                }
                refillCardResponse.getButtonEnabled().set(false);
                refillCardResponse = this.viewData;
                if (refillCardResponse == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("viewData");
                }
                refillCardResponse.getProgressVisible().set(false);
                return;
            }
            transferAccountData = this.viewData;
            if (transferAccountData == null) {
                Intrinsics.throwUninitializedPropertyAccessException("viewData");
            }
            transferAccountData.getButtonEnabled().set(true);
            from = refillCardResponse.getFrom();
            Intrinsics.checkExpressionValueIsNotNull(from, "refillCardResponse.from");
            float amount = from.getAmount();
            RefillModel from2 = refillCardResponse.getFrom();
            Intrinsics.checkExpressionValueIsNotNull(from2, "refillCardResponse.from");
            String currencyCode = from2.getCurrencyCode();
            Intrinsics.checkExpressionValueIsNotNull(currencyCode, "refillCardResponse.from.currencyCode");
            str = getFormattedString(amount, currencyCode);
            from2 = refillCardResponse.getTo();
            Intrinsics.checkExpressionValueIsNotNull(from2, "refillCardResponse.to");
            float amount2 = from2.getAmount();
            RefillModel to = refillCardResponse.getTo();
            Intrinsics.checkExpressionValueIsNotNull(to, "refillCardResponse.to");
            String currencyCode2 = to.getCurrencyCode();
            Intrinsics.checkExpressionValueIsNotNull(currencyCode2, "refillCardResponse.to.currencyCode");
            currencyCode = getFormattedString(amount2, currencyCode2);
            to = refillCardResponse.getFrom();
            Intrinsics.checkExpressionValueIsNotNull(to, "refillCardResponse.from");
            Currency currency = to.getCurrency();
            RefillModel to2 = refillCardResponse.getTo();
            Intrinsics.checkExpressionValueIsNotNull(to2, "refillCardResponse.to");
            StringCompanionObject stringCompanionObject;
            if (currency != to2.getCurrency()) {
                currencyCode2 = getString(C0859R.string.transfer_desciption_currency);
                Intrinsics.checkExpressionValueIsNotNull(currencyCode2, "getString(R.string.transfer_desciption_currency)");
                stringCompanionObject = StringCompanionObject.INSTANCE;
                str = String.format(currencyCode2, Arrays.copyOf(new Object[]{str, currencyCode, refillCardResponse.getRate()}, 3));
                Intrinsics.checkExpressionValueIsNotNull(str, "java.lang.String.format(format, *args)");
                this.transferMessage = str;
            } else {
                currencyCode2 = getString(C0859R.string.transfer_desciption);
                Intrinsics.checkExpressionValueIsNotNull(currencyCode2, "getString(R.string.transfer_desciption)");
                stringCompanionObject = StringCompanionObject.INSTANCE;
                str = String.format(currencyCode2, Arrays.copyOf(new Object[]{str, currencyCode}, 2));
                Intrinsics.checkExpressionValueIsNotNull(str, "java.lang.String.format(format, *args)");
            }
            refillCardResponse = refillCardResponse.getText();
            if (refillCardResponse != null) {
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append(str);
                stringBuilder.append(refillCardResponse);
                str = stringBuilder.toString();
            }
            refillCardResponse = this.viewData;
            if (refillCardResponse == null) {
                Intrinsics.throwUninitializedPropertyAccessException("viewData");
            }
            refillCardResponse.getInfoTextColor().set(ContextCompat.getColor(this, C0859R.color.rocketBlack));
            refillCardResponse = this.viewData;
            if (refillCardResponse == null) {
                Intrinsics.throwUninitializedPropertyAccessException("viewData");
            }
            refillCardResponse.getInfoText().set(Html.fromHtml(str));
        } else {
            transferAccountData = this.viewData;
            if (transferAccountData == null) {
                Intrinsics.throwUninitializedPropertyAccessException("viewData");
            }
            transferAccountData.getButtonEnabled().set(false);
            SpannedString spannedString = new SpannedString(refillCardResponse.getText());
            refillCardResponse = this.viewData;
            if (refillCardResponse == null) {
                Intrinsics.throwUninitializedPropertyAccessException("viewData");
            }
            refillCardResponse.getInfoTextColor().set(ContextCompat.getColor(this, C0859R.color.red));
            refillCardResponse = this.viewData;
            if (refillCardResponse == null) {
                Intrinsics.throwUninitializedPropertyAccessException("viewData");
            }
            refillCardResponse.getInfoText().set(spannedString);
        }
        refillCardResponse = this.viewData;
        if (refillCardResponse == null) {
            Intrinsics.throwUninitializedPropertyAccessException("viewData");
        }
        refillCardResponse.getProgressVisible().set(false);
    }

    private final void registerTextUpdate() {
        Observable observable = this.debouncedEventEmitter;
        if (observable == null) {
            Intrinsics.throwUninitializedPropertyAccessException("debouncedEventEmitter");
        }
        this.infoSubscription = observable.observeOn(AndroidSchedulers.mainThread()).subscribe(new TransferActivity$registerTextUpdate$1(this));
    }

    private final String getFormattedString(float f, String str) {
        MoneyFormatter moneyFormatter = this.moneyFormatter;
        if (moneyFormatter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("moneyFormatter");
        }
        return moneyFormatter.format((double) f, str, (boolean) Float.MIN_VALUE);
    }

    public final double getAmount() {
        if (this.currentAmount == null) {
            return 0.0d;
        }
        BigDecimal bigDecimal = this.currentAmount;
        if (bigDecimal == null) {
            Intrinsics.throwNpe();
        }
        return bigDecimal.doubleValue();
    }

    private final void setCurrencies(String str, String str2) {
        String str3 = this.fromToken;
        if (str3 != null) {
            this.selectedCurrency = getCurrency(str3);
        }
        BigDecimal bigDecimal = this.currentAmount;
        if (bigDecimal == null) {
            bigDecimal = BigDecimal.ZERO;
            Intrinsics.checkExpressionValueIsNotNull(bigDecimal, "BigDecimal.ZERO");
        }
        validateAmount(bigDecimal);
        refreshTextInfo();
        if ((Intrinsics.areEqual(str, str2) ^ 1) != 0) {
            addCurrencies(CollectionsKt__CollectionsKt.listOf((Object[]) new String[]{str, str2}));
        } else {
            addCurrencies(CollectionsKt__CollectionsKt.listOf((Object) str));
        }
        str = this.binding;
        if (str == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        str = str.currencies;
        Intrinsics.checkExpressionValueIsNotNull(str, "binding.currencies");
        str2 = this.currencyAdapter;
        if (str2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("currencyAdapter");
        }
        str.setAdapter((PagerAdapter) str2);
        str = this.binding;
        if (str == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        str.currencies.setCurrentItem(0, false);
        str = this.currencyAdapter;
        if (str == null) {
            Intrinsics.throwUninitializedPropertyAccessException("currencyAdapter");
        }
        str.notifyDataSetChanged();
        str = this.currencyAdapter;
        if (str == null) {
            Intrinsics.throwUninitializedPropertyAccessException("currencyAdapter");
        }
        refreshDrawableState(0, str.getCount());
    }

    private final void addCurrencies(List<String> list) {
        this.currencyAdapter = new CurrencyAdapter(getSupportFragmentManager());
        CurrencyAdapter currencyAdapter = this.currencyAdapter;
        if (currencyAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("currencyAdapter");
        }
        currencyAdapter.setCurrencies(list);
    }

    public final void setToken(String str) {
        Intrinsics.checkParameterIsNotNull(str, "token");
        this.token = str;
    }

    private final void showAlert(int i) {
        new Builder(this).setMessage(i).setPositiveButton(17039370, (OnClickListener) TransferActivity$showAlert$1.INSTANCE).show();
    }

    private final void hideProgress() {
        if (this.progressDialog != null) {
            ProgressDialog progressDialog = this.progressDialog;
            if (progressDialog == null) {
                Intrinsics.throwNpe();
            }
            progressDialog.dismiss();
            this.progressDialog = null;
        }
    }

    private final void showProgressExecution() {
        ProgressDialog progressDialog = new ProgressDialog(this);
        progressDialog.setMessage(getResources().getString(C0859R.string.action_doing));
        progressDialog.setCancelable(false);
        progressDialog.setOnDismissListener(new TransferActivity$showProgressExecution$$inlined$with$lambda$1(this));
        progressDialog.show();
        this.progressDialog = progressDialog;
    }
}
