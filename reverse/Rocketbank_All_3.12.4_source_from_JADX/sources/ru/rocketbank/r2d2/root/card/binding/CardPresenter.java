package ru.rocketbank.r2d2.root.card.binding;

import android.annotation.SuppressLint;
import android.content.res.Resources;
import android.view.View;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import ru.rocketbank.core.model.AccountModel;
import ru.rocketbank.core.model.OptionModel;
import ru.rocketbank.core.model.TariffModel;
import ru.rocketbank.core.model.enums.Currency;
import ru.rocketbank.core.network.api.AccountApi;
import ru.rocketbank.core.network.api.AndroidPayApi;
import ru.rocketbank.core.network.api.RocketAPI;
import ru.rocketbank.core.pay.google.RxTapAndPay;
import ru.rocketbank.core.pay.google.RxTapAndPay.RxTokenState;
import ru.rocketbank.core.pay.samsung.RxSPay;
import ru.rocketbank.core.pay.samsung.RxSPay.Status;
import ru.rocketbank.core.user.Authorization;
import ru.rocketbank.core.utils.MoneyFormatter;
import ru.rocketbank.r2d2.RocketApplication;
import ru.rocketbank.r2d2.widgets.NotificationDialog.NotificationDialogListener;
import rx.Observable;
import rx.Subscriber;
import rx.Subscription;
import rx.android.schedulers.AndroidSchedulers;
import rx.schedulers.Schedulers;
import rx.subscriptions.CompositeSubscription;
import rx.subscriptions.Subscriptions;

/* compiled from: CardPresenter.kt */
public final class CardPresenter implements CardHandler, NotificationDialogListener {
    public static final Companion Companion = new Companion();
    private static final String TAG = "CardPresenter";
    private final AccountApi accountApi;
    private final AndroidPayApi androidPayApi = RocketApplication.Companion.getInjector().getAndroidPayApi();
    private Subscription androidPayWalletSubscription = Subscriptions.empty();
    private final Authorization authorization;
    private Subscription blockSubscription;
    private boolean canUseAndroidPay;
    private final CompositeSubscription compositeSubscription = new CompositeSubscription();
    private final MoneyFormatter floorMoneyFormatter;
    private boolean isFullMode;
    private AccountModel lastAccountModel;
    private final MoneyFormatter moneyFormatter;
    private final String plasticToken;
    private Subscription refreshSubscription;
    private final RocketAPI rocketAPI;
    private final RxSPay rxSpay = RocketApplication.Companion.getInjector().getRxSPay();
    private final RxTapAndPay rxTapAndPay = RocketApplication.Companion.getInjector().getRxTapAndPay();
    private Subscription tariffSubscription;
    private final String token;
    private Subscription userSubscription;
    private CardDetailView view;

    /* compiled from: CardPresenter.kt */
    private enum AndroidPayStatus {
    }

    /* compiled from: CardPresenter.kt */
    private static final class ApCheckResult {
        private boolean isDefault;
        private boolean pending;
        private AndroidPayStatus status;
        private String tur;
        private String walletId;

        public static /* bridge */ /* synthetic */ ApCheckResult copy$default(ApCheckResult apCheckResult, AndroidPayStatus androidPayStatus, String str, String str2, boolean z, boolean z2, int i, Object obj) {
            if ((i & 1) != 0) {
                androidPayStatus = apCheckResult.status;
            }
            if ((i & 2) != 0) {
                str = apCheckResult.walletId;
            }
            String str3 = str;
            if ((i & 4) != 0) {
                str2 = apCheckResult.tur;
            }
            String str4 = str2;
            if ((i & 8) != 0) {
                z = apCheckResult.isDefault;
            }
            boolean z3 = z;
            if ((i & 16) != 0) {
                z2 = apCheckResult.pending;
            }
            return apCheckResult.copy(androidPayStatus, str3, str4, z3, z2);
        }

        public final AndroidPayStatus component1() {
            return this.status;
        }

        public final String component2() {
            return this.walletId;
        }

        public final String component3() {
            return this.tur;
        }

        public final boolean component4() {
            return this.isDefault;
        }

        public final boolean component5() {
            return this.pending;
        }

        public final ApCheckResult copy(AndroidPayStatus androidPayStatus, String str, String str2, boolean z, boolean z2) {
            Intrinsics.checkParameterIsNotNull(androidPayStatus, "status");
            Intrinsics.checkParameterIsNotNull(str, "walletId");
            return new ApCheckResult(androidPayStatus, str, str2, z, z2);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof ApCheckResult) {
                ApCheckResult apCheckResult = (ApCheckResult) obj;
                if (Intrinsics.areEqual(this.status, apCheckResult.status) && Intrinsics.areEqual(this.walletId, apCheckResult.walletId) && Intrinsics.areEqual(this.tur, apCheckResult.tur)) {
                    if (this.isDefault == apCheckResult.isDefault) {
                        if (this.pending == apCheckResult.pending) {
                            return true;
                        }
                    }
                }
            }
            return false;
        }

        public final int hashCode() {
            AndroidPayStatus androidPayStatus = this.status;
            int i = 0;
            int hashCode = (androidPayStatus != null ? androidPayStatus.hashCode() : 0) * 31;
            String str = this.walletId;
            hashCode = (hashCode + (str != null ? str.hashCode() : 0)) * 31;
            str = this.tur;
            if (str != null) {
                i = str.hashCode();
            }
            hashCode = (hashCode + i) * 31;
            i = this.isDefault;
            if (i != 0) {
                i = 1;
            }
            hashCode = (hashCode + i) * 31;
            i = this.pending;
            if (i != 0) {
                i = 1;
            }
            return hashCode + i;
        }

        public final String toString() {
            StringBuilder stringBuilder = new StringBuilder("ApCheckResult(status=");
            stringBuilder.append(this.status);
            stringBuilder.append(", walletId=");
            stringBuilder.append(this.walletId);
            stringBuilder.append(", tur=");
            stringBuilder.append(this.tur);
            stringBuilder.append(", isDefault=");
            stringBuilder.append(this.isDefault);
            stringBuilder.append(", pending=");
            stringBuilder.append(this.pending);
            stringBuilder.append(")");
            return stringBuilder.toString();
        }

        public ApCheckResult(AndroidPayStatus androidPayStatus, String str, String str2, boolean z, boolean z2) {
            Intrinsics.checkParameterIsNotNull(androidPayStatus, "status");
            Intrinsics.checkParameterIsNotNull(str, "walletId");
            this.status = androidPayStatus;
            this.walletId = str;
            this.tur = str2;
            this.isDefault = z;
            this.pending = z2;
        }

        public final AndroidPayStatus getStatus() {
            return this.status;
        }

        public final void setStatus(AndroidPayStatus androidPayStatus) {
            Intrinsics.checkParameterIsNotNull(androidPayStatus, "<set-?>");
            this.status = androidPayStatus;
        }

        public final String getWalletId() {
            return this.walletId;
        }

        public final void setWalletId(String str) {
            Intrinsics.checkParameterIsNotNull(str, "<set-?>");
            this.walletId = str;
        }

        public final String getTur() {
            return this.tur;
        }

        public final void setTur(String str) {
            this.tur = str;
        }

        public final boolean isDefault() {
            return this.isDefault;
        }

        public final void setDefault(boolean z) {
            this.isDefault = z;
        }

        public /* synthetic */ ApCheckResult(AndroidPayStatus androidPayStatus, String str, String str2, boolean z, boolean z2, int i, Ref ref) {
            if ((i & 2) != null) {
                str = "";
            }
            String str3 = str;
            if ((i & 4) != null) {
                str2 = null;
            }
            this(androidPayStatus, str3, str2, (i & 8) != null ? false : z, (i & 16) != null ? false : z2);
        }

        public final boolean getPending() {
            return this.pending;
        }

        public final void setPending(boolean z) {
            this.pending = z;
        }
    }

    /* compiled from: CardPresenter.kt */
    public static final class Companion {
        private Companion() {
        }
    }

    /* compiled from: CardPresenter.kt */
    private static final class SpCheckResult {
        private final Status status;

        public static /* bridge */ /* synthetic */ SpCheckResult copy$default(SpCheckResult spCheckResult, Status status, int i, Object obj) {
            if ((i & 1) != 0) {
                status = spCheckResult.status;
            }
            return spCheckResult.copy(status);
        }

        public final Status component1() {
            return this.status;
        }

        public final SpCheckResult copy(Status status) {
            Intrinsics.checkParameterIsNotNull(status, "status");
            return new SpCheckResult(status);
        }

        public final boolean equals(Object obj) {
            if (this != obj) {
                if (obj instanceof SpCheckResult) {
                    if (Intrinsics.areEqual(this.status, ((SpCheckResult) obj).status)) {
                    }
                }
                return false;
            }
            return true;
        }

        public final int hashCode() {
            Status status = this.status;
            return status != null ? status.hashCode() : 0;
        }

        public final String toString() {
            StringBuilder stringBuilder = new StringBuilder("SpCheckResult(status=");
            stringBuilder.append(this.status);
            stringBuilder.append(")");
            return stringBuilder.toString();
        }

        public SpCheckResult(Status status) {
            Intrinsics.checkParameterIsNotNull(status, "status");
            this.status = status;
        }

        public final Status getStatus() {
            return this.status;
        }
    }

    public final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;
        public static final /* synthetic */ int[] $EnumSwitchMapping$2;

        static {
            int[] iArr = new int[AndroidPayStatus.values().length];
            $EnumSwitchMapping$0 = iArr;
            iArr[AndroidPayStatus.TUR_ACTIVE.ordinal()] = 1;
            $EnumSwitchMapping$0[AndroidPayStatus.NO_TUR.ordinal()] = 2;
            $EnumSwitchMapping$0[AndroidPayStatus.NOT_FOUND.ordinal()] = 3;
            $EnumSwitchMapping$0[AndroidPayStatus.NO_WALLET.ordinal()] = 4;
            $EnumSwitchMapping$0[AndroidPayStatus.TUR_NOT_ACTIVE.ordinal()] = 5;
            $EnumSwitchMapping$0[AndroidPayStatus.NOT_WORKS.ordinal()] = 6;
            $EnumSwitchMapping$0[AndroidPayStatus.PENDING_ADD.ordinal()] = 7;
            $EnumSwitchMapping$0[AndroidPayStatus.TUR_UNTOKENIZED.ordinal()] = 8;
            iArr = new int[Status.values().length];
            $EnumSwitchMapping$1 = iArr;
            iArr[Status.NOT_SUPPORTED.ordinal()] = 1;
            $EnumSwitchMapping$1[Status.CARD_ADDED.ordinal()] = 2;
            $EnumSwitchMapping$1[Status.NOT_READY.ordinal()] = 3;
            $EnumSwitchMapping$1[Status.UPDATE_NEED.ordinal()] = 4;
            $EnumSwitchMapping$1[Status.NO_CARD.ordinal()] = 5;
            iArr = new int[RxTokenState.values().length];
            $EnumSwitchMapping$2 = iArr;
            iArr[RxTokenState.OTHER.ordinal()] = 1;
            $EnumSwitchMapping$2[RxTokenState.NOT_FOUND.ordinal()] = 2;
            $EnumSwitchMapping$2[RxTokenState.UNTOKENIZED.ordinal()] = 3;
        }
    }

    public CardPresenter(String str, String str2, CardDetailView cardDetailView) {
        Intrinsics.checkParameterIsNotNull(str, "token");
        Intrinsics.checkParameterIsNotNull(str2, "plasticToken");
        this.token = str;
        this.plasticToken = str2;
        this.view = cardDetailView;
        str = RocketApplication.Companion.getInjector();
        this.authorization = str.getAuthorization();
        this.moneyFormatter = str.getMoneyFormatter();
        this.floorMoneyFormatter = str.getMoneyFormatter();
        this.rocketAPI = str.getRocketApi();
        this.accountApi = str.getAccountApi();
        this.floorMoneyFormatter.setFloorAmount(true);
    }

    private final boolean getCardAddedPending() {
        return RocketApplication.Companion.getContext().getSharedPreferences("card", 0).getBoolean(this.plasticToken, false);
    }

    @SuppressLint({"ApplySharedPref"})
    private final void setCardAddedPending(boolean z) {
        RocketApplication.Companion.getContext().getSharedPreferences("card", 0).edit().putBoolean(this.plasticToken, z).commit();
    }

    public final boolean isRoubleCard() {
        AccountModel accountModel = this.lastAccountModel;
        return (accountModel != null ? accountModel.getCurrency() : null) == Currency.ROUBLE;
    }

    private final void refreshMode(boolean z) {
        this.isFullMode = z;
        z = this.lastAccountModel;
        if (z) {
            updateBalance(z);
        }
    }

    public final void useAndroidPay(boolean z) {
        this.canUseAndroidPay = z;
    }

    private final void updateBalance(AccountModel accountModel) {
        accountModel = this.floorMoneyFormatter.format(accountModel.getBalance(), accountModel.getCurrency(), this.isFullMode);
        CardDetailView cardDetailView = this.view;
        if (cardDetailView != null) {
            cardDetailView.updateBalance(accountModel);
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private final void onAccount(ru.rocketbank.core.model.AccountModel r22, ru.rocketbank.r2d2.root.card.binding.CardPresenter.ApCheckResult r23, ru.rocketbank.r2d2.root.card.binding.CardPresenter.SpCheckResult r24) {
        /*
        r21 = this;
        r0 = r21;
        r1 = r23;
        r2 = r0.floorMoneyFormatter;
        r3 = r22.getBalance();
        r5 = r22.getCurrency();
        r6 = r0.isFullMode;
        r11 = r2.format(r3, r5, r6);
        r2 = r0.floorMoneyFormatter;
        r3 = r22.getBalance();
        r5 = r22.getCurrency();
        r6 = 1;
        r9 = r2.format(r3, r5, r6);
        r2 = r22.isBlocked();
        if (r2 == 0) goto L_0x0040;
    L_0x0029:
        r2 = ru.rocketbank.r2d2.RocketApplication.Companion;
        r2 = r2.getInjector();
        r2 = r2.getApplicationContext();
        r2 = r2.getResources();
        r3 = 2131821764; // 0x7f1104c4 float:1.927628E38 double:1.0532598966E-314;
        r2 = r2.getString(r3);
    L_0x003e:
        r15 = r2;
        goto L_0x0056;
    L_0x0040:
        r2 = ru.rocketbank.r2d2.RocketApplication.Companion;
        r2 = r2.getInjector();
        r2 = r2.getApplicationContext();
        r2 = r2.getResources();
        r3 = 2131820673; // 0x7f110081 float:1.9274068E38 double:1.0532593576E-314;
        r2 = r2.getString(r3);
        goto L_0x003e;
    L_0x0056:
        r2 = r22.isBlocked();
        if (r2 == 0) goto L_0x0070;
    L_0x005c:
        r2 = ru.rocketbank.r2d2.RocketApplication.Companion;
        r2 = r2.getInjector();
        r2 = r2.getApplicationContext();
        r3 = 2131100168; // 0x7f060208 float:1.781271E38 double:1.052903381E-314;
        r2 = android.support.v4.content.ContextCompat.getColor(r2, r3);
    L_0x006d:
        r16 = r2;
        goto L_0x0082;
    L_0x0070:
        r2 = ru.rocketbank.r2d2.RocketApplication.Companion;
        r2 = r2.getInjector();
        r2 = r2.getApplicationContext();
        r3 = 2131100193; // 0x7f060221 float:1.781276E38 double:1.052903393E-314;
        r2 = android.support.v4.content.ContextCompat.getColor(r2, r3);
        goto L_0x006d;
    L_0x0082:
        r2 = r22.getBetterLimits();
        if (r2 != 0) goto L_0x008d;
    L_0x0088:
        r2 = new java.util.LinkedHashMap;
        r2.<init>();
    L_0x008d:
        r20 = r22.getUnlimitedCashouts();
        r3 = r22.getCurrentTariff();
        if (r3 == 0) goto L_0x00c5;
    L_0x0097:
        r13 = r3.getName();
        r3 = r3.getOption();
        if (r3 == 0) goto L_0x00aa;
    L_0x00a1:
        r3 = r3.isActive();
        if (r3 != r6) goto L_0x00aa;
    L_0x00a7:
        r3 = "SMS";
        goto L_0x00ac;
    L_0x00aa:
        r3 = "PUSH";
    L_0x00ac:
        r14 = r3;
        r3 = new ru.rocketbank.r2d2.root.card.binding.CardParameters;
        r4 = "blockActionName";
        kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r15, r4);
        r17 = r22.isBlocked();
        r18 = r22.getPlasticToken();
        r19 = r2;
        r19 = (java.util.Map) r19;
        r12 = r3;
        r12.<init>(r13, r14, r15, r16, r17, r18, r19, r20);
        goto L_0x00e0;
    L_0x00c5:
        r3 = new ru.rocketbank.r2d2.root.card.binding.CardParameters;
        r13 = "";
        r14 = "";
        r4 = "blockActionName";
        kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r15, r4);
        r17 = r22.isBlocked();
        r18 = r22.getPlasticToken();
        r19 = r2;
        r19 = (java.util.Map) r19;
        r12 = r3;
        r12.<init>(r13, r14, r15, r16, r17, r18, r19, r20);
    L_0x00e0:
        r14 = r3;
        r2 = r22.isBlocked();
        if (r2 == 0) goto L_0x00ea;
    L_0x00e7:
        r2 = "blocked";
        goto L_0x00ec;
    L_0x00ea:
        r2 = "active";
    L_0x00ec:
        r3 = new java.lang.StringBuilder;
        r4 = "android/";
        r3.<init>(r4);
        r4 = r21.getDensityName();
        r3.append(r4);
        r4 = 47;
        r3.append(r4);
        r3.append(r2);
        r2 = ".png";
        r3.append(r2);
        r2 = r3.toString();
        r3 = r22.getIconUrl();
        if (r3 != 0) goto L_0x0113;
    L_0x0111:
        r3 = "";
    L_0x0113:
        r5 = r23.getStatus();
        r7 = "CardPresenter";
        r8 = "android pay status ";
        r10 = java.lang.String.valueOf(r5);
        r8 = r8.concat(r10);
        android.util.Log.v(r7, r8);
        r7 = "CardPresenter";
        r8 = new java.lang.StringBuilder;
        r10 = "samsung pay status ";
        r8.<init>(r10);
        r10 = r24.getStatus();
        r8.append(r10);
        r8 = r8.toString();
        android.util.Log.v(r7, r8);
        r7 = ru.rocketbank.r2d2.root.card.binding.CardPresenter.WhenMappings.$EnumSwitchMapping$0;
        r5 = r5.ordinal();
        r5 = r7[r5];
        r7 = 2131820632; // 0x7f110058 float:1.9273984E38 double:1.0532593374E-314;
        r8 = 2131820633; // 0x7f110059 float:1.9273986E38 double:1.053259338E-314;
        r10 = 0;
        switch(r5) {
            case 1: goto L_0x0185;
            case 2: goto L_0x0179;
            case 3: goto L_0x0179;
            case 4: goto L_0x0170;
            case 5: goto L_0x0167;
            case 6: goto L_0x0167;
            case 7: goto L_0x015d;
            case 8: goto L_0x0155;
            default: goto L_0x014f;
        };
    L_0x014f:
        r1 = new kotlin.NoWhenBranchMatchedException;
        r1.<init>();
        throw r1;
    L_0x0155:
        r5 = new ru.rocketbank.r2d2.root.card.binding.CardPresenter$onAccount$6;
        r5.<init>(r0, r1);
        r5 = (kotlin.jvm.functions.Function0) r5;
        goto L_0x018c;
    L_0x015d:
        r1 = 2131820634; // 0x7f11005a float:1.9273988E38 double:1.0532593384E-314;
        r5 = ru.rocketbank.r2d2.root.card.binding.CardPresenter$onAccount$5.INSTANCE;
        r5 = (kotlin.jvm.functions.Function0) r5;
        r12 = r5;
        r5 = r6;
        goto L_0x018f;
    L_0x0167:
        r1 = ru.rocketbank.r2d2.root.card.binding.CardPresenter$onAccount$4.INSTANCE;
        r5 = r1;
        r5 = (kotlin.jvm.functions.Function0) r5;
        r12 = r5;
        r1 = r10;
        r5 = r1;
        goto L_0x018f;
    L_0x0170:
        r1 = new ru.rocketbank.r2d2.root.card.binding.CardPresenter$onAccount$3;
        r1.<init>(r0);
        r5 = r1;
        r5 = (kotlin.jvm.functions.Function0) r5;
        goto L_0x0181;
    L_0x0179:
        r1 = new ru.rocketbank.r2d2.root.card.binding.CardPresenter$onAccount$2;
        r1.<init>(r0);
        r5 = r1;
        r5 = (kotlin.jvm.functions.Function0) r5;
    L_0x0181:
        r12 = r5;
        r5 = r6;
        r1 = r7;
        goto L_0x018f;
    L_0x0185:
        r5 = new ru.rocketbank.r2d2.root.card.binding.CardPresenter$onAccount$1;
        r5.<init>(r0, r1);
        r5 = (kotlin.jvm.functions.Function0) r5;
    L_0x018c:
        r12 = r5;
        r5 = r6;
        r1 = r8;
    L_0x018f:
        r13 = r24.getStatus();
        r15 = ru.rocketbank.r2d2.root.card.binding.CardPresenter.WhenMappings.$EnumSwitchMapping$1;
        r13 = r13.ordinal();
        r13 = r15[r13];
        r15 = 0;
        switch(r13) {
            case 1: goto L_0x019f;
            case 2: goto L_0x01bc;
            case 3: goto L_0x01b3;
            case 4: goto L_0x01aa;
            case 5: goto L_0x01a1;
            default: goto L_0x019f;
        };
    L_0x019f:
        r6 = r10;
        goto L_0x01bd;
    L_0x01a1:
        r8 = new ru.rocketbank.r2d2.root.card.binding.CardPresenter$onAccount$spOnClick$3;
        r8.<init>(r0);
        r15 = r8;
        r15 = (kotlin.jvm.functions.Function0) r15;
        goto L_0x01bd;
    L_0x01aa:
        r8 = new ru.rocketbank.r2d2.root.card.binding.CardPresenter$onAccount$spOnClick$2;
        r8.<init>(r0);
        r15 = r8;
        r15 = (kotlin.jvm.functions.Function0) r15;
        goto L_0x01bd;
    L_0x01b3:
        r8 = new ru.rocketbank.r2d2.root.card.binding.CardPresenter$onAccount$spOnClick$1;
        r8.<init>(r0);
        r15 = r8;
        r15 = (kotlin.jvm.functions.Function0) r15;
        goto L_0x01bd;
    L_0x01bc:
        r7 = r8;
    L_0x01bd:
        r13 = new ru.rocketbank.r2d2.root.card.binding.AndroidPayParameters;
        r13.<init>(r1, r5, r12);
        r1 = new ru.rocketbank.r2d2.root.card.binding.SPayParameters;
        r1.<init>(r6, r15, r7);
        r5 = new ru.rocketbank.r2d2.root.card.binding.DetailCardViewInputModel;
        r6 = new java.lang.StringBuilder;
        r6.<init>();
        r6.append(r3);
        r6.append(r4);
        r6.append(r2);
        r8 = r6.toString();
        r2 = r22.getPan();
        if (r2 == 0) goto L_0x01f7;
    L_0x01e1:
        r2 = (java.lang.CharSequence) r2;
        r3 = "([\\w, *]{1,4})";
        r4 = new kotlin.text.Regex;
        r4.<init>(r3);
        r3 = ru.rocketbank.r2d2.root.card.binding.CardPresenter$onAccount$inputModel$1$1.INSTANCE;
        r3 = (kotlin.jvm.functions.Function1) r3;
        r2 = r4.replace(r2, r3);
        if (r2 != 0) goto L_0x01f5;
    L_0x01f4:
        goto L_0x01f7;
    L_0x01f5:
        r12 = r2;
        goto L_0x01fa;
    L_0x01f7:
        r2 = "xxxx xxxx xxxx xxxx";
        goto L_0x01f5;
    L_0x01fa:
        r2 = r22.getTitle();
        if (r2 != 0) goto L_0x0202;
    L_0x0200:
        r2 = "";
    L_0x0202:
        r10 = r2;
        r2 = r22.getChangePin();
        r7 = r5;
        r3 = r13;
        r13 = r2;
        r15 = r3;
        r16 = r1;
        r7.<init>(r8, r9, r10, r11, r12, r13, r14, r15, r16);
        r0.sendViewModel(r5);
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: ru.rocketbank.r2d2.root.card.binding.CardPresenter.onAccount(ru.rocketbank.core.model.AccountModel, ru.rocketbank.r2d2.root.card.binding.CardPresenter$ApCheckResult, ru.rocketbank.r2d2.root.card.binding.CardPresenter$SpCheckResult):void");
    }

    public final void updateSpay() {
        this.rxSpay.updateApp().subscribeOn(Schedulers.io()).subscribe(CardPresenter$updateSpay$1.INSTANCE, CardPresenter$updateSpay$2.INSTANCE);
    }

    public final void setupSpay() {
        this.rxSpay.activateApp().subscribeOn(Schedulers.io()).subscribe(CardPresenter$setupSpay$1.INSTANCE, CardPresenter$setupSpay$2.INSTANCE);
    }

    private final String getDensityName() {
        Resources resources = RocketApplication.Companion.getContext().getResources();
        Intrinsics.checkExpressionValueIsNotNull(resources, "RocketApplication.getContext().resources");
        int i = resources.getDisplayMetrics().densityDpi;
        if (i == 120) {
            return "ldpi";
        }
        if (i == 160) {
            return "mdpi";
        }
        if (i == 240) {
            return "hdpi";
        }
        if (i == 320) {
            return "xhdpi";
        }
        if (i != 480) {
            return i != 640 ? "xxxhdpi" : "xxxhdpi";
        } else {
            return "xxhdpi";
        }
    }

    public final void onFabClicked(View view) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        view.setEnabled(false);
        CardDetailView cardDetailView;
        if (isRoubleCard()) {
            cardDetailView = this.view;
            if (cardDetailView != null) {
                cardDetailView.openRefill(this.token);
            }
        } else {
            cardDetailView = this.view;
            if (cardDetailView != null) {
                cardDetailView.openTransfers();
            }
        }
        view.setEnabled(true);
    }

    private final void sendViewModel(DetailCardViewInputModel detailCardViewInputModel) {
        CardDetailView cardDetailView = this.view;
        if (cardDetailView != null) {
            cardDetailView.onViewInput(detailCardViewInputModel);
        }
    }

    public final void onResume() {
        CardDetailView cardDetailView = this.view;
        if (cardDetailView != null) {
            cardDetailView.showLoader();
        }
        this.userSubscription = this.authorization.getAccount(this.token).flatMap(new CardPresenter$onResume$1(this)).observeOn(Schedulers.io()).flatMap(new CardPresenter$onResume$2(this)).subscribeOn(Schedulers.io()).observeOn(AndroidSchedulers.mainThread()).subscribe((Subscriber) new CardPresenter$onResume$3(this));
    }

    public final void onPause() {
        Subscription subscription = this.userSubscription;
        if (subscription != null) {
            subscription.unsubscribe();
        }
        this.userSubscription = null;
        Subscription subscription2 = this.tariffSubscription;
        if (subscription2 != null) {
            subscription2.unsubscribe();
        }
        this.tariffSubscription = null;
        subscription2 = this.blockSubscription;
        if (subscription2 != null) {
            subscription2.unsubscribe();
        }
        this.blockSubscription = null;
        subscription2 = this.refreshSubscription;
        if (subscription2 != null) {
            subscription2.unsubscribe();
        }
        this.refreshSubscription = null;
        this.androidPayWalletSubscription.unsubscribe();
        CardDetailView cardDetailView = this.view;
        if (cardDetailView != null) {
            cardDetailView.hideLoader();
        }
    }

    public final void cardAddedToAP() {
        setCardAddedPending(true);
        refresh();
    }

    public final void refresh() {
        this.authorization.refreshBackgroundProfile();
    }

    public final void onChange(boolean z) {
        AccountModel accountModel = this.lastAccountModel;
        if (accountModel != null) {
            CardDetailView cardDetailView = this.view;
            if (cardDetailView != null) {
                cardDetailView.showLoader();
            }
            TariffModel currentTariff = accountModel.getCurrentTariff();
            if (currentTariff == null) {
                Intrinsics.throwNpe();
            }
            OptionModel option = currentTariff.getOption();
            this.tariffSubscription = this.rocketAPI.setTariffEnabled(z ? "apply" : "disable", option != null ? option.getPermalink() : null, accountModel.getToken(), "").subscribeOn(Schedulers.io()).observeOn(AndroidSchedulers.mainThread()).subscribe((Subscriber) new CardPresenter$onChange$$inlined$let$lambda$1(accountModel, this, z));
        }
    }

    public final void onDestroy() {
        CardDetailView cardDetailView = this.view;
        if (cardDetailView != null) {
            cardDetailView.destroyNotificationDialog();
        }
        this.view = null;
        this.compositeSubscription.unsubscribe();
    }

    public final void changeMode() {
        refreshMode(this.isFullMode ^ 1);
    }

    public final void lockCard(Function0<Unit> function0, Function1<? super String, Unit> function1) {
        Intrinsics.checkParameterIsNotNull(function0, "onSuccess");
        Intrinsics.checkParameterIsNotNull(function1, "onError");
        AccountApi accountApi = this.accountApi;
        AccountModel accountModel = this.lastAccountModel;
        this.blockSubscription = accountApi.blockCard(accountModel != null ? accountModel.getToken() : null, "").observeOn(AndroidSchedulers.mainThread()).subscribe((Subscriber) new CardPresenter$lockCard$1(this, function1, function0));
    }

    public final void unlockCard(Function0<Unit> function0, Function1<? super String, Unit> function1) {
        Intrinsics.checkParameterIsNotNull(function0, "onSuccess");
        Intrinsics.checkParameterIsNotNull(function1, "onError");
        AccountApi accountApi = this.accountApi;
        AccountModel accountModel = this.lastAccountModel;
        this.blockSubscription = accountApi.activateCard(accountModel != null ? accountModel.getToken() : null, "").observeOn(AndroidSchedulers.mainThread()).subscribe((Subscriber) new CardPresenter$unlockCard$1(this, function1, function0));
    }

    public final void refreshProfile(Function0<Unit> function0) {
        Intrinsics.checkParameterIsNotNull(function0, "onSuccess");
        this.refreshSubscription = this.authorization.refreshProfile().subscribe((Subscriber) new CardPresenter$refreshProfile$1(this, function0));
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final java.lang.String getErrorString(java.lang.Throwable r5) {
        /*
        r4 = this;
        r0 = "e";
        kotlin.jvm.internal.Intrinsics.checkParameterIsNotNull(r5, r0);
        r0 = ru.rocketbank.r2d2.RocketApplication.Companion;
        r0 = r0.getInjector();
        r0 = r0.getApplicationContext();
        r1 = r5 instanceof ru.rocketbank.core.network.exception.RocketResponseException;
        r2 = 2131820941; // 0x7f11018d float:1.9274611E38 double:1.05325949E-314;
        if (r1 == 0) goto L_0x003b;
    L_0x0016:
        r5 = (ru.rocketbank.core.network.exception.RocketResponseException) r5;
        r1 = r5.getGenericRequestResponseData();
        if (r1 == 0) goto L_0x0031;
    L_0x001e:
        r1 = r1.getResponse();
        if (r1 == 0) goto L_0x0031;
    L_0x0024:
        r1 = r1.getShowIt();
        r3 = 1;
        if (r1 != r3) goto L_0x0031;
    L_0x002b:
        r5 = r5.getDescription();
        if (r5 != 0) goto L_0x0035;
    L_0x0031:
        r5 = r0.getString(r2);
    L_0x0035:
        r0 = "if (genericRequestRespon…rror_occur)\n            }";
        kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r5, r0);
        return r5;
    L_0x003b:
        r5 = r0.getString(r2);
        r0 = "context.getString(R.string.error_occur)";
        kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r5, r0);
        return r5;
        */
        throw new UnsupportedOperationException("Method not decompiled: ru.rocketbank.r2d2.root.card.binding.CardPresenter.getErrorString(java.lang.Throwable):java.lang.String");
    }

    private final Observable<ApCheckResult> refreshAndroidPay() {
        Observable<ApCheckResult> flatMap = this.rxTapAndPay.getActiveWalledId().flatMap(new CardPresenter$refreshAndroidPay$1(this)).flatMap(new CardPresenter$refreshAndroidPay$2(this));
        Intrinsics.checkExpressionValueIsNotNull(flatMap, "rxTapAndPay.getActiveWal…                        }");
        return flatMap;
    }

    public final void walletCreated() {
        CardDetailView cardDetailView = this.view;
        if (cardDetailView != null) {
            cardDetailView.addCartToApWithGreenWay();
        }
    }
}
