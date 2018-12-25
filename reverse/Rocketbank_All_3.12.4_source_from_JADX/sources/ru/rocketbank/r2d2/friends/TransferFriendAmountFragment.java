package ru.rocketbank.r2d2.friends;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import android.widget.ViewSwitcher;
import java.util.HashMap;
import java.util.LinkedHashSet;
import java.util.Set;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.UserModel;
import ru.rocketbank.core.model.contact.Contact;
import ru.rocketbank.core.model.enums.Currency;
import ru.rocketbank.core.network.api.Card2CardApi;
import ru.rocketbank.core.utils.MoneyFormatter;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.helpers.UIHelper;
import ru.rocketbank.r2d2.widget.AccountWidget;
import rx.Subscriber;
import rx.Subscription;
import rx.android.schedulers.AndroidSchedulers;
import rx.functions.Action1;
import rx.subscriptions.Subscriptions;

/* compiled from: TransferFriendAmountFragment.kt */
public final class TransferFriendAmountFragment extends FriendAmountBaseFragment {
    public static final Companion Companion = new Companion();
    private static final int STATE_COMMISSION_LOADED = 0;
    private static final int STATE_COMMISSION_LOADING = 1;
    private HashMap _$_findViewCache;
    private Subscription accountChangedSubscription = Subscriptions.empty();
    private Card2CardApi card2CardApi;
    private TextView commission;
    private Subscription commissionSubscription;
    private ViewSwitcher commissionSwitcher;
    private MoneyFormatter moneyFormatter;
    private String token;
    private UserModel userModel;

    /* compiled from: TransferFriendAmountFragment.kt */
    public static final class Companion {
        private Companion() {
        }

        public final FriendAmountBaseFragment newInstance(Contact contact) {
            Intrinsics.checkParameterIsNotNull(contact, "contact");
            TransferFriendAmountFragment transferFriendAmountFragment = new TransferFriendAmountFragment();
            Bundle bundle = new Bundle();
            bundle.putSerializable("contact", contact);
            transferFriendAmountFragment.setArguments(bundle);
            return transferFriendAmountFragment;
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

    public final boolean accountsVisible() {
        return true;
    }

    public final int getNextButtonText() {
        return C0859R.string.frient_send_money_caption;
    }

    protected final boolean isTransfer() {
        return true;
    }

    public static final /* synthetic */ String access$getToken$p(TransferFriendAmountFragment transferFriendAmountFragment) {
        transferFriendAmountFragment = transferFriendAmountFragment.token;
        if (transferFriendAmountFragment == null) {
            Intrinsics.throwUninitializedPropertyAccessException("token");
        }
        return transferFriendAmountFragment;
    }

    public final void onViewCreated(View view, Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        super.onViewCreated(view, bundle);
        setupAccountsView(getContact(), getAccountsView());
        this.accountChangedSubscription = getAccountsView().getOnAccountSelected().subscribe((Action1) new TransferFriendAmountFragment$onViewCreated$1(this));
        this.card2CardApi = getInjector().getCard2CardApi();
        this.moneyFormatter = getInjector().getMoneyFormatter();
        bundle = view.findViewById(C0859R.id.commission_switcher);
        if (bundle == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.widget.ViewSwitcher");
        }
        this.commissionSwitcher = (ViewSwitcher) bundle;
        view = view.findViewById(C0859R.id.commission);
        if (view == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.widget.TextView");
        }
        this.commission = (TextView) view;
    }

    public final void onDestroyView() {
        this.accountChangedSubscription.unsubscribe();
        super.onDestroyView();
        _$_clearFindViewByIdCache();
    }

    public final void onUserModel(UserModel userModel) {
        Intrinsics.checkParameterIsNotNull(userModel, "userModel");
        super.onUserModel(userModel);
        this.userModel = userModel;
        onTextChanged();
    }

    public final void onTextChanged() {
        if (this.userModel != null) {
            Contact contact = getContact();
            if (contact == null) {
                Intrinsics.throwNpe();
            }
            int i = 0;
            if (contact.isRocket()) {
                if (getAmountString().length() == 0) {
                    i = 1;
                }
                if (i != 0) {
                    disableNextButton();
                    return;
                } else if (isZero(getAmount())) {
                    disableNextButton();
                    return;
                } else {
                    enableNextButton();
                    return;
                }
            }
            if (this.commissionSubscription != null) {
                Subscription subscription = this.commissionSubscription;
                if (subscription == null) {
                    Intrinsics.throwNpe();
                }
                if (!subscription.isUnsubscribed()) {
                    subscription = this.commissionSubscription;
                    if (subscription == null) {
                        Intrinsics.throwNpe();
                    }
                    subscription.unsubscribe();
                    this.commissionSubscription = null;
                }
            }
            CharSequence amountString = getAmountString();
            if ((amountString.length() == 0 ? 1 : 0) == 0) {
                int i2 = 0;
                int length = amountString.length() - 1;
                int i3 = i2;
                while (i3 <= length) {
                    int i4 = amountString.charAt(i2 == 0 ? i3 : length) <= ' ' ? 1 : 0;
                    if (i2 != 0) {
                        if (i4 == 0) {
                            break;
                        }
                        length--;
                    } else if (i4 == 0) {
                        i2 = 1;
                    } else {
                        i3++;
                    }
                }
                if ((((CharSequence) amountString.subSequence(i3, length + 1).toString()).length() == 0 ? 1 : 0) == 0) {
                    ViewSwitcher viewSwitcher = this.commissionSwitcher;
                    if (viewSwitcher == null) {
                        Intrinsics.throwNpe();
                    }
                    viewSwitcher.setVisibility(0);
                    viewSwitcher = this.commissionSwitcher;
                    if (viewSwitcher == null) {
                        Intrinsics.throwNpe();
                    }
                    viewSwitcher.setDisplayedChild(1);
                    disableNextButton();
                    Card2CardApi card2CardApi = this.card2CardApi;
                    if (card2CardApi == null) {
                        Intrinsics.throwNpe();
                    }
                    this.commissionSubscription = card2CardApi.commission(getAmount()).observeOn(AndroidSchedulers.mainThread()).subscribe((Subscriber) new TransferFriendAmountFragment$onTextChanged$2(this));
                    return;
                }
            }
            emptyAmount();
        }
    }

    private final void setupAccountsView(Contact contact, AccountWidget accountWidget) {
        Set linkedHashSet = new LinkedHashSet();
        if (contact == null) {
            Intrinsics.throwNpe();
        }
        if (contact.getUsd()) {
            linkedHashSet.add(Currency.DOLLAR);
        }
        if (contact.getEur() != null) {
            linkedHashSet.add(Currency.EURO);
        }
        accountWidget.setup(getSupportFragmentManager(), linkedHashSet);
    }

    protected final void onRequestDataFilled(Contact contact, double d, String str, String str2) {
        Intrinsics.checkParameterIsNotNull(contact, "contact");
        Intrinsics.checkParameterIsNotNull(str, "comment");
        UIHelper.showAlertDialog((Context) getActivity(), getString(C0859R.string.transfer_friend_message), (int) 1.053259696E-314d, (Runnable) new TransferFriendAmountFragment$onRequestDataFilled$1(this, contact, d, str), (Runnable) new TransferFriendAmountFragment$onRequestDataFilled$2(this));
    }

    private final void emptyAmount() {
        ViewSwitcher viewSwitcher = this.commissionSwitcher;
        if (viewSwitcher == null) {
            Intrinsics.throwNpe();
        }
        viewSwitcher.setDisplayedChild(0);
        viewSwitcher = this.commissionSwitcher;
        if (viewSwitcher == null) {
            Intrinsics.throwNpe();
        }
        viewSwitcher.setVisibility(8);
        TextView textView = this.commission;
        if (textView == null) {
            Intrinsics.throwNpe();
        }
        textView.setText("");
        disableNextButton();
    }

    public final void onPause() {
        unsubscribe(this.commissionSubscription);
        super.onPause();
    }
}
