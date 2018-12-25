package ru.rocketbank.r2d2.root.transfer;

import android.content.Context;
import android.databinding.ViewDataBinding;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.content.ContextCompat;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.DepositModel;
import ru.rocketbank.core.model.RocketDepositModel;
import ru.rocketbank.core.model.SafeAccount;
import ru.rocketbank.core.model.enums.Currency;
import ru.rocketbank.core.model.facade.Account;
import ru.rocketbank.core.user.Authorization;
import ru.rocketbank.core.utils.MoneyFormatter;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.RocketApplication;
import ru.rocketbank.r2d2.databinding.FragmentSmallAccountBinding;
import rx.Subscription;

/* compiled from: SmallAccountFragment.kt */
public class SmallAccountFragment extends Fragment {
    public static final Companion Companion = new Companion();
    public static final String TOKEN = "TOKEN";
    private HashMap _$_findViewCache;
    private final SmallAccountData accountData = new SmallAccountData();
    public Authorization authorization;
    public MoneyFormatter moneyFormatter;
    private Subscription refreshSubscription;

    /* compiled from: SmallAccountFragment.kt */
    public static final class Companion {
        private Companion() {
        }

        public final Bundle createArguments(String str) {
            Intrinsics.checkParameterIsNotNull(str, "token");
            Bundle bundle = new Bundle();
            bundle.putString(SmallAccountFragment.TOKEN, str);
            return bundle;
        }

        public final SmallAccountFragment newInstance(String str) {
            Intrinsics.checkParameterIsNotNull(str, "token");
            SmallAccountFragment smallAccountFragment = new SmallAccountFragment();
            smallAccountFragment.setArguments(createArguments(str));
            return smallAccountFragment;
        }
    }

    public final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;

        static {
            int[] iArr = new int[Currency.values().length];
            $EnumSwitchMapping$0 = iArr;
            iArr[Currency.ROUBLE.ordinal()] = 1;
            $EnumSwitchMapping$0[Currency.EURO.ordinal()] = 2;
            $EnumSwitchMapping$0[Currency.DOLLAR.ordinal()] = 3;
            iArr = new int[Currency.values().length];
            $EnumSwitchMapping$1 = iArr;
            iArr[Currency.DOLLAR.ordinal()] = 1;
            $EnumSwitchMapping$1[Currency.EURO.ordinal()] = 2;
        }
    }

    public void _$_clearFindViewByIdCache() {
        if (this._$_findViewCache != null) {
            this._$_findViewCache.clear();
        }
    }

    public View _$_findCachedViewById(int i) {
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

    public /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        _$_clearFindViewByIdCache();
    }

    public final Authorization getAuthorization() {
        Authorization authorization = this.authorization;
        if (authorization == null) {
            Intrinsics.throwUninitializedPropertyAccessException("authorization");
        }
        return authorization;
    }

    public final void setAuthorization(Authorization authorization) {
        Intrinsics.checkParameterIsNotNull(authorization, "<set-?>");
        this.authorization = authorization;
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

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(layoutInflater, "inflater");
        return inflate(layoutInflater, viewGroup, this.accountData).getRoot();
    }

    public ViewDataBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, SmallAccountData smallAccountData) {
        Intrinsics.checkParameterIsNotNull(layoutInflater, "inflater");
        Intrinsics.checkParameterIsNotNull(smallAccountData, "smallAccountData");
        layoutInflater = FragmentSmallAccountBinding.inflate(layoutInflater, viewGroup, false);
        Intrinsics.checkExpressionValueIsNotNull(layoutInflater, "binding");
        layoutInflater.setData(smallAccountData);
        return (ViewDataBinding) layoutInflater;
    }

    public void onViewCreated(View view, Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        this.authorization = RocketApplication.Companion.getInjector().getAuthorization();
        this.moneyFormatter = RocketApplication.Companion.getInjector().getMoneyFormatter();
    }

    public void onResume() {
        super.onResume();
        Bundle arguments = getArguments();
        if (arguments == null) {
            Intrinsics.throwNpe();
        }
        String string = arguments.getString(TOKEN);
        Authorization authorization = this.authorization;
        if (authorization == null) {
            Intrinsics.throwUninitializedPropertyAccessException("authorization");
        }
        Object productImmediate = authorization.getProductImmediate(string);
        if (productImmediate != null) {
            String format;
            if (productImmediate instanceof Account) {
                MoneyFormatter moneyFormatter = this.moneyFormatter;
                if (moneyFormatter == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("moneyFormatter");
                }
                Account account = (Account) productImmediate;
                format = moneyFormatter.format(account.getBalance(), account.getCurrency(), true);
                this.accountData.getName().set(account.getTitle());
                this.accountData.getAmount().set(format);
                this.accountData.getImage().set(chooseIcon(account));
            }
            if (productImmediate instanceof DepositModel) {
                DepositModel depositModel = (DepositModel) productImmediate;
                RocketDepositModel rocketDeposit = depositModel.getRocketDeposit();
                if (rocketDeposit != null) {
                    MoneyFormatter moneyFormatter2 = this.moneyFormatter;
                    if (moneyFormatter2 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("moneyFormatter");
                    }
                    double balance = (double) depositModel.getBalance();
                    format = rocketDeposit.getCurrency();
                    if (format == null) {
                        Intrinsics.throwNpe();
                    }
                    this.accountData.getAmount().set(moneyFormatter2.format(balance, format, true));
                }
                this.accountData.getName().set(depositModel.getTitle());
                this.accountData.getImage().set(chooseIcon(depositModel.getRocketDeposit()));
            }
        }
    }

    private final Drawable chooseIcon(RocketDepositModel rocketDepositModel) {
        rocketDepositModel = Currency.fromString(rocketDepositModel != null ? rocketDepositModel.getCurrency() : null);
        if (rocketDepositModel == null) {
            rocketDepositModel = Currency.ROUBLE;
        }
        switch (WhenMappings.$EnumSwitchMapping$0[rocketDepositModel.ordinal()]) {
            case 1:
                rocketDepositModel = getContext();
                if (rocketDepositModel == null) {
                    Intrinsics.throwNpe();
                }
                rocketDepositModel = ContextCompat.getDrawable(rocketDepositModel, C0859R.drawable.ic_ruble_deposit);
                if (rocketDepositModel == null) {
                    Intrinsics.throwNpe();
                }
                Intrinsics.checkExpressionValueIsNotNull(rocketDepositModel, "ContextCompat.getDrawabl…wable.ic_ruble_deposit)!!");
                return rocketDepositModel;
            case 2:
                rocketDepositModel = getContext();
                if (rocketDepositModel == null) {
                    Intrinsics.throwNpe();
                }
                rocketDepositModel = ContextCompat.getDrawable(rocketDepositModel, C0859R.drawable.ic_euro_deposit);
                if (rocketDepositModel == null) {
                    Intrinsics.throwNpe();
                }
                Intrinsics.checkExpressionValueIsNotNull(rocketDepositModel, "ContextCompat.getDrawabl…awable.ic_euro_deposit)!!");
                return rocketDepositModel;
            case 3:
                rocketDepositModel = getContext();
                if (rocketDepositModel == null) {
                    Intrinsics.throwNpe();
                }
                rocketDepositModel = ContextCompat.getDrawable(rocketDepositModel, C0859R.drawable.ic_dollar_deposit);
                if (rocketDepositModel == null) {
                    Intrinsics.throwNpe();
                }
                Intrinsics.checkExpressionValueIsNotNull(rocketDepositModel, "ContextCompat.getDrawabl…able.ic_dollar_deposit)!!");
                return rocketDepositModel;
            default:
                rocketDepositModel = getContext();
                if (rocketDepositModel == null) {
                    Intrinsics.throwNpe();
                }
                rocketDepositModel = ContextCompat.getDrawable(rocketDepositModel, C0859R.drawable.ic_ruble_deposit);
                if (rocketDepositModel == null) {
                    Intrinsics.throwNpe();
                }
                Intrinsics.checkExpressionValueIsNotNull(rocketDepositModel, "ContextCompat.getDrawabl…wable.ic_ruble_deposit)!!");
                return rocketDepositModel;
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private final android.graphics.drawable.Drawable chooseIcon(ru.rocketbank.core.model.facade.Account r2) {
        /*
        r1 = this;
        r0 = r2.getAccountModel();
        if (r0 == 0) goto L_0x000c;
    L_0x0006:
        r0 = r1.getAccountModelIcon(r0);
        if (r0 != 0) goto L_0x0018;
    L_0x000c:
        r2 = r2.getSafeAccount();
        if (r2 == 0) goto L_0x0017;
    L_0x0012:
        r0 = r1.getSafeAccountIcon(r2);
        goto L_0x0018;
    L_0x0017:
        r0 = 0;
    L_0x0018:
        if (r0 != 0) goto L_0x0036;
    L_0x001a:
        r2 = r1.getActivity();
        if (r2 != 0) goto L_0x0023;
    L_0x0020:
        kotlin.jvm.internal.Intrinsics.throwNpe();
    L_0x0023:
        r2 = (android.content.Context) r2;
        r0 = 2131231099; // 0x7f08017b float:1.807827E38 double:1.0529680694E-314;
        r0 = android.support.v4.content.ContextCompat.getDrawable(r2, r0);
        if (r0 != 0) goto L_0x0031;
    L_0x002e:
        kotlin.jvm.internal.Intrinsics.throwNpe();
    L_0x0031:
        r2 = "ContextCompat.getDrawabl…, R.drawable.ic_rocket)!!";
        kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r0, r2);
    L_0x0036:
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: ru.rocketbank.r2d2.root.transfer.SmallAccountFragment.chooseIcon(ru.rocketbank.core.model.facade.Account):android.graphics.drawable.Drawable");
    }

    private final Drawable getSafeAccountIcon(SafeAccount safeAccount) {
        safeAccount = safeAccount.getCurrency();
        if (safeAccount != null) {
            switch (WhenMappings.$EnumSwitchMapping$1[safeAccount.ordinal()]) {
                case 1:
                    safeAccount = getActivity();
                    if (safeAccount == null) {
                        Intrinsics.throwNpe();
                    }
                    safeAccount = ContextCompat.getDrawable((Context) safeAccount, C0859R.drawable.ic_dollar);
                    if (safeAccount == null) {
                        Intrinsics.throwNpe();
                    }
                    Intrinsics.checkExpressionValueIsNotNull(safeAccount, "ContextCompat.getDrawabl…, R.drawable.ic_dollar)!!");
                    return safeAccount;
                case 2:
                    safeAccount = getActivity();
                    if (safeAccount == null) {
                        Intrinsics.throwNpe();
                    }
                    safeAccount = ContextCompat.getDrawable((Context) safeAccount, C0859R.drawable.ic_euro);
                    if (safeAccount == null) {
                        Intrinsics.throwNpe();
                    }
                    Intrinsics.checkExpressionValueIsNotNull(safeAccount, "ContextCompat.getDrawabl…!!, R.drawable.ic_euro)!!");
                    return safeAccount;
                default:
                    break;
            }
        }
        safeAccount = getActivity();
        if (safeAccount == null) {
            Intrinsics.throwNpe();
        }
        safeAccount = ContextCompat.getDrawable((Context) safeAccount, C0859R.drawable.ic_rouble);
        if (safeAccount == null) {
            Intrinsics.throwNpe();
        }
        Intrinsics.checkExpressionValueIsNotNull(safeAccount, "ContextCompat.getDrawabl…, R.drawable.ic_rouble)!!");
        return safeAccount;
    }

    private final android.graphics.drawable.Drawable getAccountModelIcon(ru.rocketbank.core.model.AccountModel r4) {
        /* JADX: method processing error */
/*
Error: java.lang.NullPointerException
*/
        /*
        r3 = this;
        r0 = 2131231099; // 0x7f08017b float:1.807827E38 double:1.0529680694E-314;
        r4 = r4.getIconUrl();	 Catch:{ Exception -> 0x00e2 }
        r4 = android.net.Uri.parse(r4);	 Catch:{ Exception -> 0x00e2 }
        r1 = "Uri.parse(iconUrl)";	 Catch:{ Exception -> 0x00e2 }
        kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r4, r1);	 Catch:{ Exception -> 0x00e2 }
        r4 = r4.getLastPathSegment();	 Catch:{ Exception -> 0x00e2 }
        if (r4 != 0) goto L_0x0018;	 Catch:{ Exception -> 0x00e2 }
    L_0x0016:
        goto L_0x00c8;	 Catch:{ Exception -> 0x00e2 }
    L_0x0018:
        r1 = r4.hashCode();	 Catch:{ Exception -> 0x00e2 }
        r2 = -1110079478; // 0xffffffffbdd5880a float:-0.10426338 double:NaN;	 Catch:{ Exception -> 0x00e2 }
        if (r1 == r2) goto L_0x00a3;	 Catch:{ Exception -> 0x00e2 }
    L_0x0021:
        r2 = -425985346; // 0xffffffffe69bfabe float:-3.682961E23 double:NaN;	 Catch:{ Exception -> 0x00e2 }
        if (r1 == r2) goto L_0x007e;	 Catch:{ Exception -> 0x00e2 }
    L_0x0026:
        r2 = 3540563; // 0x360653 float:4.961385E-39 double:1.7492705E-317;	 Catch:{ Exception -> 0x00e2 }
        if (r1 == r2) goto L_0x0058;	 Catch:{ Exception -> 0x00e2 }
    L_0x002b:
        r2 = 1724687179; // 0x66cca34b float:4.831875E23 double:8.52108685E-315;	 Catch:{ Exception -> 0x00e2 }
        if (r1 == r2) goto L_0x0032;	 Catch:{ Exception -> 0x00e2 }
    L_0x0030:
        goto L_0x00c8;	 Catch:{ Exception -> 0x00e2 }
    L_0x0032:
        r1 = "onetwotrip";	 Catch:{ Exception -> 0x00e2 }
        r4 = r4.equals(r1);	 Catch:{ Exception -> 0x00e2 }
        if (r4 == 0) goto L_0x00c8;	 Catch:{ Exception -> 0x00e2 }
    L_0x003a:
        r4 = r3.getActivity();	 Catch:{ Exception -> 0x00e2 }
        if (r4 != 0) goto L_0x0043;	 Catch:{ Exception -> 0x00e2 }
    L_0x0040:
        kotlin.jvm.internal.Intrinsics.throwNpe();	 Catch:{ Exception -> 0x00e2 }
    L_0x0043:
        r4 = (android.content.Context) r4;	 Catch:{ Exception -> 0x00e2 }
        r1 = 2131231207; // 0x7f0801e7 float:1.8078488E38 double:1.0529681227E-314;	 Catch:{ Exception -> 0x00e2 }
        r4 = android.support.v4.content.ContextCompat.getDrawable(r4, r1);	 Catch:{ Exception -> 0x00e2 }
        if (r4 != 0) goto L_0x0051;	 Catch:{ Exception -> 0x00e2 }
    L_0x004e:
        kotlin.jvm.internal.Intrinsics.throwNpe();	 Catch:{ Exception -> 0x00e2 }
    L_0x0051:
        r1 = "ContextCompat.getDrawabl…vity!!, R.drawable.ott)!!";	 Catch:{ Exception -> 0x00e2 }
        kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r4, r1);	 Catch:{ Exception -> 0x00e2 }
        goto L_0x00f6;	 Catch:{ Exception -> 0x00e2 }
    L_0x0058:
        r1 = "stas";	 Catch:{ Exception -> 0x00e2 }
        r4 = r4.equals(r1);	 Catch:{ Exception -> 0x00e2 }
        if (r4 == 0) goto L_0x00c8;	 Catch:{ Exception -> 0x00e2 }
    L_0x0060:
        r4 = r3.getActivity();	 Catch:{ Exception -> 0x00e2 }
        if (r4 != 0) goto L_0x0069;	 Catch:{ Exception -> 0x00e2 }
    L_0x0066:
        kotlin.jvm.internal.Intrinsics.throwNpe();	 Catch:{ Exception -> 0x00e2 }
    L_0x0069:
        r4 = (android.content.Context) r4;	 Catch:{ Exception -> 0x00e2 }
        r1 = 2131231095; // 0x7f080177 float:1.8078261E38 double:1.0529680674E-314;	 Catch:{ Exception -> 0x00e2 }
        r4 = android.support.v4.content.ContextCompat.getDrawable(r4, r1);	 Catch:{ Exception -> 0x00e2 }
        if (r4 != 0) goto L_0x0077;	 Catch:{ Exception -> 0x00e2 }
    L_0x0074:
        kotlin.jvm.internal.Intrinsics.throwNpe();	 Catch:{ Exception -> 0x00e2 }
    L_0x0077:
        r1 = "ContextCompat.getDrawabl…R.drawable.ic_polyakov)!!";	 Catch:{ Exception -> 0x00e2 }
        kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r4, r1);	 Catch:{ Exception -> 0x00e2 }
        goto L_0x00f6;	 Catch:{ Exception -> 0x00e2 }
    L_0x007e:
        r1 = "metropolis";	 Catch:{ Exception -> 0x00e2 }
        r4 = r4.equals(r1);	 Catch:{ Exception -> 0x00e2 }
        if (r4 == 0) goto L_0x00c8;	 Catch:{ Exception -> 0x00e2 }
    L_0x0086:
        r4 = r3.getActivity();	 Catch:{ Exception -> 0x00e2 }
        if (r4 != 0) goto L_0x008f;	 Catch:{ Exception -> 0x00e2 }
    L_0x008c:
        kotlin.jvm.internal.Intrinsics.throwNpe();	 Catch:{ Exception -> 0x00e2 }
    L_0x008f:
        r4 = (android.content.Context) r4;	 Catch:{ Exception -> 0x00e2 }
        r1 = 2131231077; // 0x7f080165 float:1.8078225E38 double:1.0529680585E-314;	 Catch:{ Exception -> 0x00e2 }
        r4 = android.support.v4.content.ContextCompat.getDrawable(r4, r1);	 Catch:{ Exception -> 0x00e2 }
        if (r4 != 0) goto L_0x009d;	 Catch:{ Exception -> 0x00e2 }
    L_0x009a:
        kotlin.jvm.internal.Intrinsics.throwNpe();	 Catch:{ Exception -> 0x00e2 }
    L_0x009d:
        r1 = "ContextCompat.getDrawabl…drawable.ic_metropolis)!!";	 Catch:{ Exception -> 0x00e2 }
        kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r4, r1);	 Catch:{ Exception -> 0x00e2 }
        goto L_0x00f6;	 Catch:{ Exception -> 0x00e2 }
    L_0x00a3:
        r1 = "lampas";	 Catch:{ Exception -> 0x00e2 }
        r4 = r4.equals(r1);	 Catch:{ Exception -> 0x00e2 }
        if (r4 == 0) goto L_0x00c8;	 Catch:{ Exception -> 0x00e2 }
    L_0x00ab:
        r4 = r3.getActivity();	 Catch:{ Exception -> 0x00e2 }
        if (r4 != 0) goto L_0x00b4;	 Catch:{ Exception -> 0x00e2 }
    L_0x00b1:
        kotlin.jvm.internal.Intrinsics.throwNpe();	 Catch:{ Exception -> 0x00e2 }
    L_0x00b4:
        r4 = (android.content.Context) r4;	 Catch:{ Exception -> 0x00e2 }
        r1 = 2131231062; // 0x7f080156 float:1.8078194E38 double:1.052968051E-314;	 Catch:{ Exception -> 0x00e2 }
        r4 = android.support.v4.content.ContextCompat.getDrawable(r4, r1);	 Catch:{ Exception -> 0x00e2 }
        if (r4 != 0) goto L_0x00c2;	 Catch:{ Exception -> 0x00e2 }
    L_0x00bf:
        kotlin.jvm.internal.Intrinsics.throwNpe();	 Catch:{ Exception -> 0x00e2 }
    L_0x00c2:
        r1 = "ContextCompat.getDrawabl…, R.drawable.ic_lampas)!!";	 Catch:{ Exception -> 0x00e2 }
        kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r4, r1);	 Catch:{ Exception -> 0x00e2 }
        goto L_0x00f6;	 Catch:{ Exception -> 0x00e2 }
    L_0x00c8:
        r4 = r3.getActivity();	 Catch:{ Exception -> 0x00e2 }
        if (r4 != 0) goto L_0x00d1;	 Catch:{ Exception -> 0x00e2 }
    L_0x00ce:
        kotlin.jvm.internal.Intrinsics.throwNpe();	 Catch:{ Exception -> 0x00e2 }
    L_0x00d1:
        r4 = (android.content.Context) r4;	 Catch:{ Exception -> 0x00e2 }
        r4 = android.support.v4.content.ContextCompat.getDrawable(r4, r0);	 Catch:{ Exception -> 0x00e2 }
        if (r4 != 0) goto L_0x00dc;	 Catch:{ Exception -> 0x00e2 }
    L_0x00d9:
        kotlin.jvm.internal.Intrinsics.throwNpe();	 Catch:{ Exception -> 0x00e2 }
    L_0x00dc:
        r1 = "ContextCompat.getDrawabl…, R.drawable.ic_rocket)!!";	 Catch:{ Exception -> 0x00e2 }
        kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r4, r1);	 Catch:{ Exception -> 0x00e2 }
        goto L_0x00f6;
    L_0x00e2:
        r4 = r3.getActivity();
        if (r4 != 0) goto L_0x00eb;
    L_0x00e8:
        kotlin.jvm.internal.Intrinsics.throwNpe();
    L_0x00eb:
        r4 = (android.content.Context) r4;
        r4 = android.support.v4.content.ContextCompat.getDrawable(r4, r0);
        if (r4 != 0) goto L_0x00f6;
    L_0x00f3:
        kotlin.jvm.internal.Intrinsics.throwNpe();
    L_0x00f6:
        return r4;
        */
        throw new UnsupportedOperationException("Method not decompiled: ru.rocketbank.r2d2.root.transfer.SmallAccountFragment.getAccountModelIcon(ru.rocketbank.core.model.AccountModel):android.graphics.drawable.Drawable");
    }

    public void onPause() {
        Subscription subscription = this.refreshSubscription;
        if (subscription != null) {
            subscription.unsubscribe();
        }
        this.refreshSubscription = null;
        super.onPause();
    }
}
