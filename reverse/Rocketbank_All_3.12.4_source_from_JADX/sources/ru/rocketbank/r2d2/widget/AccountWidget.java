package ru.rocketbank.r2d2.widget;

import android.content.Context;
import android.databinding.ViewDataBinding;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.content.ContextCompat;
import android.support.v4.view.PagerAdapter;
import android.support.v4.view.ViewPager;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Set;
import kotlin.Pair;
import kotlin.TypeCastException;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptySet;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.UserModel;
import ru.rocketbank.core.model.enums.Currency;
import ru.rocketbank.core.model.facade.Account;
import ru.rocketbank.core.user.Authorization;
import ru.rocketbank.core.widgets.RocketAutofitTextView;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.RocketApplication;
import ru.rocketbank.r2d2.Utils;
import ru.rocketbank.r2d2.databinding.FragmentSmallAccountChooseBinding;
import ru.rocketbank.r2d2.root.transfer.ProductPager;
import ru.rocketbank.r2d2.root.transfer.SmallAccountData;
import ru.rocketbank.r2d2.root.transfer.SmallAccountFragment;
import rx.functions.Action1;
import rx.subjects.BehaviorSubject;
import rx.subjects.PublishSubject;

/* compiled from: AccountWidget.kt */
public final class AccountWidget extends ViewPager {
    public static final Companion Companion = new Companion();
    public static final Function1<UserModel, Function1<Account, Boolean>> ROCKET_FILTER = AccountWidget$Companion$ROCKET_FILTER$1.INSTANCE;
    private HashMap _$_findViewCache;
    private Account accountFrom;
    private List<Account> accounts;
    private Authorization authorization = RocketApplication.Companion.getInjector().getAuthorization();
    private Set<? extends Currency> currencies = ((Set) EmptySet.INSTANCE);
    private Function1<? super UserModel, ? extends Function1<? super Account, Boolean>> defaultFilter = ((Function1) new AccountWidget$defaultFilter$1(this));
    private String fromAccountToken;
    private final BehaviorSubject<Account> onAccountSelected;
    private AccountPagerAdapter sourceAdapter;
    private UserModel userModel;

    /* compiled from: AccountWidget.kt */
    public static final class Companion {
        private Companion() {
        }
    }

    /* compiled from: AccountWidget.kt */
    public static final class AccountPagerAdapter extends ProductPager {
        private SmallAccountChooseFragment currentFragment;
        private final PublishSubject<Pair<Integer, SmallAccountChooseFragment>> onSetPrimaryItem;

        public AccountPagerAdapter(FragmentManager fragmentManager) {
            super(fragmentManager);
            fragmentManager = PublishSubject.create();
            Intrinsics.checkExpressionValueIsNotNull(fragmentManager, "PublishSubject.create()");
            this.onSetPrimaryItem = fragmentManager;
        }

        public final PublishSubject<Pair<Integer, SmallAccountChooseFragment>> getOnSetPrimaryItem() {
            return this.onSetPrimaryItem;
        }

        public final Fragment getItem(int i) {
            Companion companion = SmallAccountChooseFragment.Companion;
            i = getProductsReady().get(i);
            Intrinsics.checkExpressionValueIsNotNull(i, "productsReady[position]");
            return companion.newInstance((String) i);
        }

        public final SmallAccountChooseFragment getCurrentFragment() {
            return this.currentFragment;
        }

        public final void setCurrentFragment(SmallAccountChooseFragment smallAccountChooseFragment) {
            this.currentFragment = smallAccountChooseFragment;
        }

        public final void setPrimaryItem(ViewGroup viewGroup, int i, Object obj) {
            Intrinsics.checkParameterIsNotNull(viewGroup, "container");
            Intrinsics.checkParameterIsNotNull(obj, "object");
            if (this.currentFragment != obj) {
                SmallAccountChooseFragment smallAccountChooseFragment = (SmallAccountChooseFragment) obj;
                this.currentFragment = smallAccountChooseFragment;
                this.onSetPrimaryItem.onNext(new Pair(Integer.valueOf(i), smallAccountChooseFragment));
            }
            super.setPrimaryItem(viewGroup, i, obj);
        }
    }

    /* compiled from: AccountWidget.kt */
    public static final class SmallAccountChooseFragment extends SmallAccountFragment {
        public static final Companion Companion = new Companion();
        private HashMap _$_findViewCache;
        private RocketAutofitTextView amountTextView;

        /* compiled from: AccountWidget.kt */
        public static final class Companion {
            private Companion() {
            }

            public final SmallAccountFragment newInstance(String str) {
                Intrinsics.checkParameterIsNotNull(str, "token");
                SmallAccountChooseFragment smallAccountChooseFragment = new SmallAccountChooseFragment();
                smallAccountChooseFragment.setArguments(SmallAccountFragment.Companion.createArguments(str));
                return smallAccountChooseFragment;
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

        public final ViewDataBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, SmallAccountData smallAccountData) {
            Intrinsics.checkParameterIsNotNull(layoutInflater, "inflater");
            Intrinsics.checkParameterIsNotNull(smallAccountData, "smallAccountData");
            layoutInflater = FragmentSmallAccountChooseBinding.inflate(layoutInflater, viewGroup, false);
            Intrinsics.checkExpressionValueIsNotNull(layoutInflater, "binding");
            layoutInflater.setData(smallAccountData);
            return (ViewDataBinding) layoutInflater;
        }

        public final void onViewCreated(View view, Bundle bundle) {
            Intrinsics.checkParameterIsNotNull(view, "view");
            super.onViewCreated(view, bundle);
            view = view.findViewById(C0859R.id.amount);
            if (view == null) {
                throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketAutofitTextView");
            }
            this.amountTextView = (RocketAutofitTextView) view;
        }

        public final void highlightAmount(int i) {
            RocketAutofitTextView rocketAutofitTextView = this.amountTextView;
            if (rocketAutofitTextView != null) {
                Context context = getContext();
                if (context == null) {
                    Intrinsics.throwNpe();
                }
                rocketAutofitTextView.setTextColor(ContextCompat.getColor(context, i));
            }
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

    public final void setup(FragmentManager fragmentManager) {
        setup$default(this, fragmentManager, null, null, 6, null);
    }

    public final void setup(FragmentManager fragmentManager, Function1<? super UserModel, ? extends Function1<? super Account, Boolean>> function1) {
        setup$default(this, fragmentManager, function1, null, 4, null);
    }

    public static final /* synthetic */ AccountPagerAdapter access$getSourceAdapter$p(AccountWidget accountWidget) {
        accountWidget = accountWidget.sourceAdapter;
        if (accountWidget == null) {
            Intrinsics.throwUninitializedPropertyAccessException("sourceAdapter");
        }
        return accountWidget;
    }

    public final BehaviorSubject<Account> getOnAccountSelected() {
        return this.onAccountSelected;
    }

    public AccountWidget(Context context) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        super(context);
        context = BehaviorSubject.create();
        Intrinsics.checkExpressionValueIsNotNull(context, "BehaviorSubject.create<Account>()");
        this.onAccountSelected = context;
    }

    public AccountWidget(Context context, AttributeSet attributeSet) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(attributeSet, "attrs");
        super(context, attributeSet);
        context = BehaviorSubject.create();
        Intrinsics.checkExpressionValueIsNotNull(context, "BehaviorSubject.create<Account>()");
        this.onAccountSelected = context;
        init();
    }

    public final void init() {
        this.authorization.getUser().subscribe((Action1) new AccountWidget$init$1(this));
    }

    private final void filterAccounts(Function1<? super Account, Boolean> function1) {
        if (getAdapter() != null) {
            AccountPagerAdapter accountPagerAdapter = this.sourceAdapter;
            if (accountPagerAdapter == null) {
                Intrinsics.throwUninitializedPropertyAccessException("sourceAdapter");
            }
            List list = this.accounts;
            if (list != null) {
                Collection arrayList = new ArrayList();
                for (Object next : list) {
                    if (((Boolean) function1.invoke(next)).booleanValue()) {
                        arrayList.add(next);
                    }
                }
                Iterable<Account> iterable = (List) arrayList;
                Collection collection = (Collection) new ArrayList(CollectionsKt.collectionSizeOrDefault$251b5948(iterable));
                for (Account account : iterable) {
                    collection.add(new Pair(account.getToken(), account.getCurrencyCode()));
                }
                function1 = (List) collection;
            } else {
                function1 = CollectionsKt.emptyList();
            }
            accountPagerAdapter.setProducts(function1);
            setDefaultSource();
        }
    }

    private final void setDefaultSource() {
        String str = this.fromAccountToken;
        AccountPagerAdapter accountPagerAdapter;
        if (str == null) {
            setCurrentItem(0);
            accountPagerAdapter = this.sourceAdapter;
            if (accountPagerAdapter == null) {
                Intrinsics.throwUninitializedPropertyAccessException("sourceAdapter");
            }
            this.fromAccountToken = accountPagerAdapter.getToken(0);
        } else {
            accountPagerAdapter = this.sourceAdapter;
            if (accountPagerAdapter == null) {
                Intrinsics.throwUninitializedPropertyAccessException("sourceAdapter");
            }
            int findItem = accountPagerAdapter.findItem(str);
            setCurrentItem(findItem);
            accountPagerAdapter = this.sourceAdapter;
            if (accountPagerAdapter == null) {
                Intrinsics.throwUninitializedPropertyAccessException("sourceAdapter");
            }
            this.fromAccountToken = accountPagerAdapter.getToken(findItem);
        }
        str = this.fromAccountToken;
        this.accountFrom = str != null ? this.authorization.getAccountImmediate(str) : null;
        this.onAccountSelected.onNext(this.accountFrom);
    }

    public static /* bridge */ /* synthetic */ void setup$default(AccountWidget accountWidget, FragmentManager fragmentManager, Function1 function1, Set set, int i, Object obj) {
        if ((i & 2) != null) {
            function1 = accountWidget.defaultFilter;
        }
        if ((i & 4) != 0) {
            set = EmptySet.INSTANCE;
        }
        accountWidget.setup(fragmentManager, function1, set);
    }

    public final void setup(FragmentManager fragmentManager, Function1<? super UserModel, ? extends Function1<? super Account, Boolean>> function1, Set<? extends Currency> set) {
        Intrinsics.checkParameterIsNotNull(function1, "filter");
        Intrinsics.checkParameterIsNotNull(set, "currencies");
        this.sourceAdapter = new AccountPagerAdapter(fragmentManager);
        fragmentManager = this.sourceAdapter;
        if (fragmentManager == null) {
            Intrinsics.throwUninitializedPropertyAccessException("sourceAdapter");
        }
        setAdapter((PagerAdapter) fragmentManager);
        this.defaultFilter = function1;
        this.currencies = set;
        fragmentManager = this.userModel;
        if (fragmentManager != null) {
            filterAccounts((Function1) function1.invoke(fragmentManager));
        }
        this.onAccountSelected.onNext(this.accountFrom);
        fragmentManager = Utils.dpToPx(getContext(), 14);
        setPadding(fragmentManager, 0, fragmentManager, 0);
        setPageMargin(Utils.dpToPx(getContext(), 4));
        fragmentManager = this.sourceAdapter;
        if (fragmentManager == null) {
            Intrinsics.throwUninitializedPropertyAccessException("sourceAdapter");
        }
        fragmentManager.getOnSetPrimaryItem().subscribe((Action1) new AccountWidget$setup$2(this));
    }

    public final void setup(FragmentManager fragmentManager, Set<? extends Currency> set) {
        Intrinsics.checkParameterIsNotNull(set, "currencies");
        setup(fragmentManager, this.defaultFilter, set);
    }

    public final void highlightAmount(int i) {
        PagerAdapter adapter = getAdapter();
        if (adapter == null) {
            throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.r2d2.widget.AccountWidget.AccountPagerAdapter");
        }
        SmallAccountChooseFragment currentFragment = ((AccountPagerAdapter) adapter).getCurrentFragment();
        if (currentFragment != null) {
            currentFragment.highlightAmount(i);
        }
    }

    public static /* bridge */ /* synthetic */ void setup$default(AccountWidget accountWidget, FragmentManager fragmentManager, Set set, int i, Object obj) {
        if ((i & 2) != 0) {
            set = EmptySet.INSTANCE;
        }
        accountWidget.setup(fragmentManager, set);
    }
}
