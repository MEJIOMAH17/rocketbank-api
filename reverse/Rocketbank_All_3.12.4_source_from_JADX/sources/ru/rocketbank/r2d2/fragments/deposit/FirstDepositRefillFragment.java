package ru.rocketbank.r2d2.fragments.deposit;

import android.annotation.SuppressLint;
import android.os.Bundle;
import android.support.v4.content.ContextCompat;
import android.support.v7.widget.Toolbar;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnKeyListener;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.EditText;
import android.widget.ProgressBar;
import android.widget.Spinner;
import android.widget.TextView;
import com.facebook.internal.ServerProtocol;
import com.google.firebase.analytics.FirebaseAnalytics.Param;
import com.jakewharton.rxbinding.widget.RxTextView;
import java.math.BigDecimal;
import java.util.HashMap;
import java.util.List;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.manager.AnalyticsManager;
import ru.rocketbank.core.model.UserModel;
import ru.rocketbank.core.model.facade.Account;
import ru.rocketbank.core.network.api.DepositApi;
import ru.rocketbank.core.network.model.Deposit;
import ru.rocketbank.core.user.Authorization;
import ru.rocketbank.core.utils.MoneyFormatter;
import ru.rocketbank.core.utils.rx.TextObserverToDecimal;
import ru.rocketbank.core.widgets.RocketEditText;
import ru.rocketbank.core.widgets.RocketTextInputLayout;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.core.widgets.listener.AddCurrencyListener;
import ru.rocketbank.core.widgets.listener.DepositOnKeyListener;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.fragments.RocketFragment;
import rx.Subscriber;
import rx.Subscription;
import rx.android.schedulers.AndroidSchedulers;
import rx.functions.Action1;
import rx.schedulers.Schedulers;
import rx.subscriptions.Subscriptions;

/* compiled from: FirstDepositRefillFragment.kt */
public final class FirstDepositRefillFragment extends RocketFragment {
    private static final String CARD = "CARD";
    private static final String CURRENCY = "CURRENCY";
    public static final Companion Companion = new Companion();
    private static final String DEPOSIT = "DEPOSIT";
    private static final String MONEY = "MONEY";
    private static final String REFILLABLE = "REFILLABLE";
    private static final String TAG = "FirstDeposit";
    private HashMap _$_findViewCache;
    private AccountAdapter accountAdapter;
    private List<Account> accountList;
    private BigDecimal amount;
    private final Action1<BigDecimal> amountChangeSubscriber = new FirstDepositRefillFragment$amountChangeSubscriber$1(this);
    private RocketEditText amountView;
    private Authorization authorization;
    private String card = "deposit";
    private TextView currencyButton;
    private Account currentAccount;
    private String currentCurrency;
    private Deposit deposit;
    private DepositApi depositApi;
    private Subscription depositApiSubscriptions = Subscriptions.empty();
    private Subscription depositSubscription = Subscriptions.empty();
    private final DisplayMetrics displayMetrics = new DisplayMetrics();
    private RocketTextView fullDescriptionView;
    private RocketTextInputLayout inputLayoutAmountView;
    private boolean isDepositCurrency = true;
    private FirstDepositRefillFragment$itemSelectedListener$1 itemSelectedListener = new FirstDepositRefillFragment$itemSelectedListener$1(this);
    private RocketTextView minimalView;
    private MoneyFormatter moneyFormatter;
    private final OnClickListener navigationOnClickListener = new FirstDepositRefillFragment$navigationOnClickListener$1(this);
    private View openCard;
    private RocketTextView openView;
    private ProgressBar progressBar;
    private RocketTextView refillInformationView;
    private String refillable = "";
    private Spinner spinnerView;
    private AddCurrencyListener textChangeListener;
    private Subscription textSubscription = Subscriptions.empty();
    private Toolbar toolbar;

    /* compiled from: FirstDepositRefillFragment.kt */
    private static final class AccountAdapter extends BaseAdapter {
        private final List<Account> accounts;
        private final MoneyFormatter moneyFormatter;

        public AccountAdapter(List<Account> list, MoneyFormatter moneyFormatter) {
            Intrinsics.checkParameterIsNotNull(list, "accounts");
            Intrinsics.checkParameterIsNotNull(moneyFormatter, "moneyFormatter");
            this.accounts = list;
            this.moneyFormatter = moneyFormatter;
        }

        public final int getCount() {
            return this.accounts.size();
        }

        public final Account getItem(int i) {
            return (Account) this.accounts.get(i);
        }

        public final long getItemId(int i) {
            return (long) ((Account) this.accounts.get(i)).getToken().hashCode();
        }

        public final View getDropDownView(int i, View view, ViewGroup viewGroup) {
            Intrinsics.checkParameterIsNotNull(viewGroup, "parent");
            if (view == null) {
                view = LayoutInflater.from(viewGroup.getContext()).inflate(C0859R.layout.deposit_account_item_spinner, viewGroup, false);
                if (view == null) {
                    Intrinsics.throwNpe();
                }
                view.setTag(new AccountViewHolder(view));
            }
            i = getItem(i);
            viewGroup = view.getTag();
            if (viewGroup == null) {
                throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.r2d2.fragments.deposit.FirstDepositRefillFragment.AccountViewHolder");
            }
            AccountViewHolder accountViewHolder = (AccountViewHolder) viewGroup;
            accountViewHolder.setName(i.getTitle());
            accountViewHolder.setBalance(this.moneyFormatter.format(i.getBalance(), i.getCurrencyCode(), true));
            return view;
        }

        public final View getView(int i, View view, ViewGroup viewGroup) {
            Intrinsics.checkParameterIsNotNull(viewGroup, "parent");
            if (view == null) {
                view = LayoutInflater.from(viewGroup.getContext()).inflate(C0859R.layout.deposit_account_item, viewGroup, false);
                if (view == null) {
                    Intrinsics.throwNpe();
                }
                view.setTag(new AccountViewHolder(view));
            }
            i = getItem(i);
            viewGroup = view.getTag();
            if (viewGroup == null) {
                throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.r2d2.fragments.deposit.FirstDepositRefillFragment.AccountViewHolder");
            }
            AccountViewHolder accountViewHolder = (AccountViewHolder) viewGroup;
            accountViewHolder.setName(i.getTitle());
            accountViewHolder.setBalance(this.moneyFormatter.format(i.getBalance(), i.getCurrencyCode(), true));
            return view;
        }
    }

    /* compiled from: FirstDepositRefillFragment.kt */
    private static final class AccountViewHolder {
        private final RocketTextView balanceView;
        private final RocketTextView nameView;

        public AccountViewHolder(View view) {
            Intrinsics.checkParameterIsNotNull(view, "view");
            View findViewById = view.findViewById(C0859R.id.name);
            if (findViewById == null) {
                throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketTextView");
            }
            this.nameView = (RocketTextView) findViewById;
            view = view.findViewById(C0859R.id.balance);
            if (view == null) {
                throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketTextView");
            }
            this.balanceView = (RocketTextView) view;
        }

        public final void setName(String str) {
            Intrinsics.checkParameterIsNotNull(str, "name");
            this.nameView.setText(str);
        }

        public final void setBalance(String str) {
            Intrinsics.checkParameterIsNotNull(str, "balance");
            this.balanceView.setText(str);
        }
    }

    /* compiled from: FirstDepositRefillFragment.kt */
    public static final class Companion {
        private Companion() {
        }

        public final FirstDepositRefillFragment newInstance(Deposit deposit, boolean z, String str, String str2, String str3) {
            Intrinsics.checkParameterIsNotNull(deposit, "deposit");
            Intrinsics.checkParameterIsNotNull(str, "onCard");
            Intrinsics.checkParameterIsNotNull(str2, "money");
            Intrinsics.checkParameterIsNotNull(str3, Param.CURRENCY);
            FirstDepositRefillFragment firstDepositRefillFragment = new FirstDepositRefillFragment();
            Bundle bundle = new Bundle();
            bundle.putParcelable(FirstDepositRefillFragment.DEPOSIT, deposit);
            deposit = "";
            if (z) {
                deposit = ServerProtocol.DIALOG_RETURN_SCOPES_TRUE;
            }
            bundle.putString(FirstDepositRefillFragment.REFILLABLE, deposit);
            bundle.putString(FirstDepositRefillFragment.CARD, str);
            bundle.putString(FirstDepositRefillFragment.MONEY, str2);
            bundle.putString("CURRENCY", str3);
            firstDepositRefillFragment.setArguments(bundle);
            return firstDepositRefillFragment;
        }
    }

    public static final FirstDepositRefillFragment newInstance(Deposit deposit, boolean z, String str, String str2, String str3) {
        return Companion.newInstance(deposit, z, str, str2, str3);
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

    public static final /* synthetic */ AccountAdapter access$getAccountAdapter$p(FirstDepositRefillFragment firstDepositRefillFragment) {
        firstDepositRefillFragment = firstDepositRefillFragment.accountAdapter;
        if (firstDepositRefillFragment == null) {
            Intrinsics.throwUninitializedPropertyAccessException("accountAdapter");
        }
        return firstDepositRefillFragment;
    }

    public static final /* synthetic */ RocketEditText access$getAmountView$p(FirstDepositRefillFragment firstDepositRefillFragment) {
        firstDepositRefillFragment = firstDepositRefillFragment.amountView;
        if (firstDepositRefillFragment == null) {
            Intrinsics.throwUninitializedPropertyAccessException("amountView");
        }
        return firstDepositRefillFragment;
    }

    public static final /* synthetic */ Authorization access$getAuthorization$p(FirstDepositRefillFragment firstDepositRefillFragment) {
        firstDepositRefillFragment = firstDepositRefillFragment.authorization;
        if (firstDepositRefillFragment == null) {
            Intrinsics.throwUninitializedPropertyAccessException("authorization");
        }
        return firstDepositRefillFragment;
    }

    public static final /* synthetic */ Account access$getCurrentAccount$p(FirstDepositRefillFragment firstDepositRefillFragment) {
        firstDepositRefillFragment = firstDepositRefillFragment.currentAccount;
        if (firstDepositRefillFragment == null) {
            Intrinsics.throwUninitializedPropertyAccessException("currentAccount");
        }
        return firstDepositRefillFragment;
    }

    public static final /* synthetic */ String access$getCurrentCurrency$p(FirstDepositRefillFragment firstDepositRefillFragment) {
        firstDepositRefillFragment = firstDepositRefillFragment.currentCurrency;
        if (firstDepositRefillFragment == null) {
            Intrinsics.throwUninitializedPropertyAccessException("currentCurrency");
        }
        return firstDepositRefillFragment;
    }

    public static final /* synthetic */ Deposit access$getDeposit$p(FirstDepositRefillFragment firstDepositRefillFragment) {
        firstDepositRefillFragment = firstDepositRefillFragment.deposit;
        if (firstDepositRefillFragment == null) {
            Intrinsics.throwUninitializedPropertyAccessException("deposit");
        }
        return firstDepositRefillFragment;
    }

    public static final /* synthetic */ RocketTextInputLayout access$getInputLayoutAmountView$p(FirstDepositRefillFragment firstDepositRefillFragment) {
        firstDepositRefillFragment = firstDepositRefillFragment.inputLayoutAmountView;
        if (firstDepositRefillFragment == null) {
            Intrinsics.throwUninitializedPropertyAccessException("inputLayoutAmountView");
        }
        return firstDepositRefillFragment;
    }

    public static final /* synthetic */ MoneyFormatter access$getMoneyFormatter$p(FirstDepositRefillFragment firstDepositRefillFragment) {
        firstDepositRefillFragment = firstDepositRefillFragment.moneyFormatter;
        if (firstDepositRefillFragment == null) {
            Intrinsics.throwUninitializedPropertyAccessException("moneyFormatter");
        }
        return firstDepositRefillFragment;
    }

    public static final /* synthetic */ ProgressBar access$getProgressBar$p(FirstDepositRefillFragment firstDepositRefillFragment) {
        firstDepositRefillFragment = firstDepositRefillFragment.progressBar;
        if (firstDepositRefillFragment == null) {
            Intrinsics.throwUninitializedPropertyAccessException("progressBar");
        }
        return firstDepositRefillFragment;
    }

    public static final /* synthetic */ RocketTextView access$getRefillInformationView$p(FirstDepositRefillFragment firstDepositRefillFragment) {
        firstDepositRefillFragment = firstDepositRefillFragment.refillInformationView;
        if (firstDepositRefillFragment == null) {
            Intrinsics.throwUninitializedPropertyAccessException("refillInformationView");
        }
        return firstDepositRefillFragment;
    }

    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(layoutInflater, "inflater");
        layoutInflater = layoutInflater.inflate(C0859R.layout.fragment_first_refill_deposit, viewGroup, false);
        viewGroup = layoutInflater.findViewById(C0859R.id.toolbar);
        if (viewGroup == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.support.v7.widget.Toolbar");
        }
        this.toolbar = (Toolbar) viewGroup;
        viewGroup = layoutInflater.findViewById(C0859R.id.minimal);
        if (viewGroup == null) {
            throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketTextView");
        }
        this.minimalView = (RocketTextView) viewGroup;
        viewGroup = layoutInflater.findViewById(C0859R.id.refillInformation);
        if (viewGroup == null) {
            throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketTextView");
        }
        this.refillInformationView = (RocketTextView) viewGroup;
        viewGroup = layoutInflater.findViewById(C0859R.id.amount);
        if (viewGroup == null) {
            throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketEditText");
        }
        this.amountView = (RocketEditText) viewGroup;
        viewGroup = layoutInflater.findViewById(C0859R.id.input_layout_amount);
        if (viewGroup == null) {
            throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketTextInputLayout");
        }
        this.inputLayoutAmountView = (RocketTextInputLayout) viewGroup;
        viewGroup = layoutInflater.findViewById(C0859R.id.input_from);
        if (viewGroup == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.widget.Spinner");
        }
        this.spinnerView = (Spinner) viewGroup;
        viewGroup = layoutInflater.findViewById(C0859R.id.full_description);
        if (viewGroup == null) {
            throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketTextView");
        }
        this.fullDescriptionView = (RocketTextView) viewGroup;
        viewGroup = layoutInflater.findViewById(C0859R.id.open);
        if (viewGroup == null) {
            throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketTextView");
        }
        this.openView = (RocketTextView) viewGroup;
        viewGroup = layoutInflater.findViewById(C0859R.id.openCard);
        Intrinsics.checkExpressionValueIsNotNull(viewGroup, "view.findViewById(R.id.openCard)");
        this.openCard = viewGroup;
        viewGroup = layoutInflater.findViewById(C0859R.id.currency_button);
        if (viewGroup == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.widget.TextView");
        }
        this.currencyButton = (TextView) viewGroup;
        viewGroup = layoutInflater.findViewById(C0859R.id.summ_status);
        if (viewGroup == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.widget.ProgressBar");
        }
        this.progressBar = (ProgressBar) viewGroup;
        Intrinsics.checkExpressionValueIsNotNull(layoutInflater, "view");
        return layoutInflater;
    }

    public final void onViewCreated(View view, Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        super.onViewCreated(view, bundle);
        this.authorization = getInjector().getAuthorization();
        this.depositApi = getInjector().getDepositApi();
        this.moneyFormatter = getInjector().getMoneyFormatter();
        view = getActivity();
        if (view == null) {
            Intrinsics.throwNpe();
        }
        Intrinsics.checkExpressionValueIsNotNull(view, "activity!!");
        view = view.getWindowManager();
        Intrinsics.checkExpressionValueIsNotNull(view, "activity!!.windowManager");
        view.getDefaultDisplay().getMetrics(this.displayMetrics);
        view = this.toolbar;
        if (view == null) {
            Intrinsics.throwUninitializedPropertyAccessException("toolbar");
        }
        setToolbarSize(view, getStatusBarHeight());
        view = this.toolbar;
        if (view == null) {
            Intrinsics.throwUninitializedPropertyAccessException("toolbar");
        }
        setToolbarActionBar(view);
        view = this.toolbar;
        if (view == null) {
            Intrinsics.throwUninitializedPropertyAccessException("toolbar");
        }
        bundle = getContext();
        if (bundle == null) {
            Intrinsics.throwNpe();
        }
        view.setTitleTextColor(ContextCompat.getColor(bundle, C0859R.color.rocketBlack));
        view = this.toolbar;
        if (view == null) {
            Intrinsics.throwUninitializedPropertyAccessException("toolbar");
        }
        view.setNavigationOnClickListener(this.navigationOnClickListener);
        view = getArguments();
        if (view != null) {
            bundle = view.getParcelable(DEPOSIT);
            Intrinsics.checkExpressionValueIsNotNull(bundle, "bundle.getParcelable(DEPOSIT)");
            this.deposit = (Deposit) bundle;
            bundle = view.getString(REFILLABLE);
            Intrinsics.checkExpressionValueIsNotNull(bundle, "bundle.getString(REFILLABLE)");
            this.refillable = bundle;
            bundle = view.getString(CARD, "deposit");
            Intrinsics.checkExpressionValueIsNotNull(bundle, "bundle.getString(CARD, \"deposit\")");
            this.card = bundle;
            bundle = this.amountView;
            if (bundle == null) {
                Intrinsics.throwUninitializedPropertyAccessException("amountView");
            }
            bundle.setText(view.getString(MONEY, ""));
            view = this.deposit;
            if (view == null) {
                Intrinsics.throwUninitializedPropertyAccessException("deposit");
            }
            view = view.getCurrency();
            if (view == null) {
                Intrinsics.throwNpe();
            }
            this.currentCurrency = view;
        }
        view = this.fullDescriptionView;
        if (view == null) {
            Intrinsics.throwUninitializedPropertyAccessException("fullDescriptionView");
        }
        view.setOnClickListener((OnClickListener) new FirstDepositRefillFragment$onViewCreated$1(this));
        bundle = this.amountView;
        if (bundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("amountView");
        }
        this.textChangeListener = (AddCurrencyListener) new FirstDepositRefillFragment$onViewCreated$2(this, (EditText) bundle);
        view = this.openView;
        if (view == null) {
            Intrinsics.throwUninitializedPropertyAccessException("openView");
        }
        view.setOnClickListener((OnClickListener) new FirstDepositRefillFragment$onViewCreated$3(this));
        view = this.amountView;
        if (view == null) {
            Intrinsics.throwUninitializedPropertyAccessException("amountView");
        }
        view.setOnKeyListener((OnKeyListener) new DepositOnKeyListener());
        view = this.currencyButton;
        if (view == null) {
            Intrinsics.throwUninitializedPropertyAccessException("currencyButton");
        }
        view.setOnClickListener((OnClickListener) new FirstDepositRefillFragment$onViewCreated$4(this));
    }

    private final void updateCurrentCurrencyButton() {
        TextView textView;
        Deposit deposit = this.deposit;
        if (deposit == null) {
            Intrinsics.throwUninitializedPropertyAccessException("deposit");
        }
        String currency = deposit.getCurrency();
        Account account = this.currentAccount;
        if (account == null) {
            Intrinsics.throwUninitializedPropertyAccessException("currentAccount");
        }
        TextView textView2;
        View view;
        if (Intrinsics.areEqual(currency, account.getCurrencyCode())) {
            textView2 = this.currencyButton;
            if (textView2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("currencyButton");
            }
            view = textView2;
            Intrinsics.checkParameterIsNotNull(view, "$receiver");
            view.setVisibility(8);
        } else {
            textView2 = this.currencyButton;
            if (textView2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("currencyButton");
            }
            view = textView2;
            Intrinsics.checkParameterIsNotNull(view, "$receiver");
            view.setVisibility(0);
        }
        if (this.isDepositCurrency) {
            deposit = this.deposit;
            if (deposit == null) {
                Intrinsics.throwUninitializedPropertyAccessException("deposit");
            }
            currency = deposit.getCurrency();
            if (currency == null) {
                Intrinsics.throwNpe();
            }
        } else {
            Account account2 = this.currentAccount;
            if (account2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("currentAccount");
            }
            currency = account2.getCurrencyCode();
        }
        this.currentCurrency = currency;
        currency = this.currentCurrency;
        if (currency == null) {
            Intrinsics.throwUninitializedPropertyAccessException("currentCurrency");
        }
        int hashCode = currency.hashCode();
        if (hashCode != 69026) {
            if (hashCode == 84326) {
                if (currency.equals("USD")) {
                    currency = "в долларах";
                    textView = this.currencyButton;
                    if (textView == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("currencyButton");
                    }
                    textView.setText(currency);
                }
            }
        } else if (currency.equals("EUR")) {
            currency = "в евро";
            textView = this.currencyButton;
            if (textView == null) {
                Intrinsics.throwUninitializedPropertyAccessException("currencyButton");
            }
            textView.setText(currency);
        }
        currency = "в рублях";
        textView = this.currencyButton;
        if (textView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("currencyButton");
        }
        textView.setText(currency);
    }

    @SuppressLint({"SetTextI18n"})
    private final void updateCurrencySymbol() {
        RocketEditText rocketEditText = this.amountView;
        if (rocketEditText == null) {
            Intrinsics.throwUninitializedPropertyAccessException("amountView");
        }
        String bigDecimal = TextObserverToDecimal.convertTextToBigDecimal(rocketEditText.getText().toString()).toString();
        RocketEditText rocketEditText2 = this.amountView;
        if (rocketEditText2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("amountView");
        }
        int selectionStart = rocketEditText2.getSelectionStart();
        RocketEditText rocketEditText3 = this.amountView;
        if (rocketEditText3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("amountView");
        }
        rocketEditText3.setText(bigDecimal);
        rocketEditText = this.amountView;
        if (rocketEditText == null) {
            Intrinsics.throwUninitializedPropertyAccessException("amountView");
        }
        rocketEditText.setSelection(selectionStart);
    }

    public final void onUserModel(UserModel userModel) {
        Intrinsics.checkParameterIsNotNull(userModel, "userModel");
        super.onUserModel(userModel);
        if (this.authorization == null) {
            Intrinsics.throwUninitializedPropertyAccessException("authorization");
        }
        this.accountList = Authorization.getActiveAccountsImmediate(userModel);
        List list = this.accountList;
        if (list == null) {
            Intrinsics.throwUninitializedPropertyAccessException("accountList");
        }
        MoneyFormatter moneyFormatter = this.moneyFormatter;
        if (moneyFormatter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("moneyFormatter");
        }
        this.accountAdapter = new AccountAdapter(list, moneyFormatter);
        userModel = this.spinnerView;
        if (userModel == null) {
            Intrinsics.throwUninitializedPropertyAccessException("spinnerView");
        }
        AccountAdapter accountAdapter = this.accountAdapter;
        if (accountAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("accountAdapter");
        }
        userModel.setAdapter(accountAdapter);
        userModel = this.spinnerView;
        if (userModel == null) {
            Intrinsics.throwUninitializedPropertyAccessException("spinnerView");
        }
        userModel.setOnItemSelectedListener(this.itemSelectedListener);
        UserModel<Account> userModel2 = this.accountList;
        if (userModel2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("accountList");
        }
        for (Account account : userModel2) {
            String str = TAG;
            StringBuilder stringBuilder = new StringBuilder("Account: ");
            stringBuilder.append(account.getToken());
            stringBuilder.append(" amount ");
            stringBuilder.append(account.getBalance());
            Log.v(str, stringBuilder.toString());
        }
        userModel = this.accountList;
        if (userModel == null) {
            Intrinsics.throwUninitializedPropertyAccessException("accountList");
        }
        boolean z = false;
        if (userModel.isEmpty() == null) {
            userModel = this.accountList;
            if (userModel == null) {
                Intrinsics.throwUninitializedPropertyAccessException("accountList");
            }
            this.currentAccount = (Account) userModel.get(0);
        }
        userModel = this.moneyFormatter;
        if (userModel == null) {
            Intrinsics.throwUninitializedPropertyAccessException("moneyFormatter");
        }
        Deposit deposit = this.deposit;
        if (deposit == null) {
            Intrinsics.throwUninitializedPropertyAccessException("deposit");
        }
        Double minAmount = deposit.getMinAmount();
        if (minAmount == null) {
            Intrinsics.throwNpe();
        }
        double doubleValue = minAmount.doubleValue();
        Deposit deposit2 = this.deposit;
        if (deposit2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("deposit");
        }
        String currency = deposit2.getCurrency();
        if (currency == null) {
            Intrinsics.throwNpe();
        }
        userModel = userModel.format(doubleValue, currency, false);
        userModel = getString(C0859R.string.minimal_text, new Object[]{userModel});
        RocketTextView rocketTextView = this.minimalView;
        if (rocketTextView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("minimalView");
        }
        rocketTextView.setText((CharSequence) userModel);
        try {
            userModel = this.amountView;
            if (userModel == null) {
                Intrinsics.throwUninitializedPropertyAccessException("amountView");
            }
            if (userModel.getText().toString().length() == null) {
                z = true;
            }
            if (z) {
                userModel = this.amountView;
                if (userModel == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("amountView");
                }
                MoneyFormatter moneyFormatter2 = this.moneyFormatter;
                if (moneyFormatter2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("moneyFormatter");
                }
                deposit = this.deposit;
                if (deposit == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("deposit");
                }
                minAmount = deposit.getMinAmount();
                if (minAmount == null) {
                    Intrinsics.throwNpe();
                }
                double doubleValue2 = minAmount.doubleValue();
                deposit = this.deposit;
                if (deposit == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("deposit");
                }
                str = deposit.getCurrency();
                if (str == null) {
                    Intrinsics.throwNpe();
                }
                userModel.setText(moneyFormatter2.format(doubleValue2, str, true));
            }
        } catch (UserModel userModel3) {
            AnalyticsManager.logException((Throwable) userModel3);
        }
        userModel3 = this.inputLayoutAmountView;
        if (userModel3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("inputLayoutAmountView");
        }
        userModel3.setOnFocusChangeListener(new FirstDepositRefillFragment$onUserModel$1(this));
        userModel3 = this.amountView;
        if (userModel3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("amountView");
        }
        this.textSubscription = RxTextView.afterTextChangeEvents((TextView) userModel3).map(new TextObserverToDecimal()).subscribe(this.amountChangeSubscriber);
        updateCurrentCurrencyButton();
    }

    public final void onPause() {
        RocketEditText rocketEditText = this.amountView;
        if (rocketEditText == null) {
            Intrinsics.throwUninitializedPropertyAccessException("amountView");
        }
        rocketEditText.removeTextChangedListener(this.textChangeListener);
        super.onPause();
    }

    public final void onResume() {
        super.onResume();
        Toolbar toolbar = this.toolbar;
        if (toolbar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("toolbar");
        }
        toolbar.setTitle(C0859R.string.new_deposit);
        RocketEditText rocketEditText = this.amountView;
        if (rocketEditText == null) {
            Intrinsics.throwUninitializedPropertyAccessException("amountView");
        }
        rocketEditText.addTextChangedListener(this.textChangeListener);
    }

    public final void refreshOpenButton(boolean z) {
        View view = this.openCard;
        if (view == null) {
            Intrinsics.throwUninitializedPropertyAccessException("openCard");
        }
        view.setVisibility(z ? false : true);
    }

    private final void openDeposit() {
        RocketFragment.showSpinner$default(this, 0, 1, null);
        DepositApi depositApi = this.depositApi;
        if (depositApi == null) {
            Intrinsics.throwUninitializedPropertyAccessException("depositApi");
        }
        Deposit deposit = this.deposit;
        if (deposit == null) {
            Intrinsics.throwUninitializedPropertyAccessException("deposit");
        }
        String permalink = deposit.getPermalink();
        Account account = this.currentAccount;
        if (account == null) {
            Intrinsics.throwUninitializedPropertyAccessException("currentAccount");
        }
        String token = account.getToken();
        BigDecimal bigDecimal = this.amount;
        if (bigDecimal == null) {
            Intrinsics.throwNpe();
        }
        this.depositSubscription = depositApi.openOpen(permalink, token, bigDecimal.doubleValue(), this.refillable, this.card).observeOn(AndroidSchedulers.mainThread()).subscribe((Subscriber) new FirstDepositRefillFragment$openDeposit$1(this));
    }

    private final void refreshDepositStatus(BigDecimal bigDecimal) {
        RocketTextView rocketTextView = this.refillInformationView;
        if (rocketTextView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("refillInformationView");
        }
        rocketTextView.setVisibility(4);
        ProgressBar progressBar = this.progressBar;
        if (progressBar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("progressBar");
        }
        View view = progressBar;
        Intrinsics.checkParameterIsNotNull(view, "$receiver");
        view.setVisibility(0);
        this.depositApiSubscriptions.unsubscribe();
        refreshOpenButton(false);
        String str = TAG;
        Deposit deposit = this.deposit;
        if (deposit == null) {
            Intrinsics.throwUninitializedPropertyAccessException("deposit");
        }
        Log.v(str, deposit.toString());
        DepositApi depositApi = this.depositApi;
        if (depositApi == null) {
            Intrinsics.throwUninitializedPropertyAccessException("depositApi");
        }
        Deposit deposit2 = this.deposit;
        if (deposit2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("deposit");
        }
        String permalink = deposit2.getPermalink();
        Account account = this.currentAccount;
        if (account == null) {
            Intrinsics.throwUninitializedPropertyAccessException("currentAccount");
        }
        String token = account.getToken();
        double doubleValue = bigDecimal.doubleValue();
        String str2 = "open";
        String str3 = this.currentCurrency;
        if (str3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("currentCurrency");
        }
        this.depositApiSubscriptions = depositApi.openRefillAmount(permalink, token, doubleValue, str2, str3).subscribeOn(Schedulers.io()).observeOn(AndroidSchedulers.mainThread()).subscribe((Subscriber) new FirstDepositRefillFragment$refreshDepositStatus$1(this));
    }

    public final void onDestroyView() {
        super.onDestroyView();
        unsubscribe(this.depositSubscription);
        _$_clearFindViewByIdCache();
    }
}
