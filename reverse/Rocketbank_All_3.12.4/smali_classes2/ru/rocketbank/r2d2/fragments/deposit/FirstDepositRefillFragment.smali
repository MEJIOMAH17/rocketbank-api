.class public final Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;
.super Lru/rocketbank/r2d2/fragments/RocketFragment;
.source "FirstDepositRefillFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment$AccountViewHolder;,
        Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment$AccountAdapter;,
        Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFirstDepositRefillFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FirstDepositRefillFragment.kt\nru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment\n*L\n1#1,493:1\n*E\n"
.end annotation


# static fields
.field private static final CARD:Ljava/lang/String; = "CARD"

.field private static final CURRENCY:Ljava/lang/String; = "CURRENCY"

.field public static final Companion:Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment$Companion;

.field private static final DEPOSIT:Ljava/lang/String; = "DEPOSIT"

.field private static final MONEY:Ljava/lang/String; = "MONEY"

.field private static final REFILLABLE:Ljava/lang/String; = "REFILLABLE"

.field private static final TAG:Ljava/lang/String; = "FirstDeposit"


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private accountAdapter:Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment$AccountAdapter;

.field private accountList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/facade/Account;",
            ">;"
        }
    .end annotation
.end field

.field private amount:Ljava/math/BigDecimal;

.field private final amountChangeSubscriber:Lrx/functions/Action1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Action1<",
            "Ljava/math/BigDecimal;",
            ">;"
        }
    .end annotation
.end field

.field private amountView:Lru/rocketbank/core/widgets/RocketEditText;

.field private authorization:Lru/rocketbank/core/user/Authorization;

.field private card:Ljava/lang/String;

.field private currencyButton:Landroid/widget/TextView;

.field private currentAccount:Lru/rocketbank/core/model/facade/Account;

.field private currentCurrency:Ljava/lang/String;

.field private deposit:Lru/rocketbank/core/network/model/Deposit;

.field private depositApi:Lru/rocketbank/core/network/api/DepositApi;

.field private depositApiSubscriptions:Lrx/Subscription;

.field private depositSubscription:Lrx/Subscription;

.field private final displayMetrics:Landroid/util/DisplayMetrics;

.field private fullDescriptionView:Lru/rocketbank/core/widgets/RocketTextView;

.field private inputLayoutAmountView:Lru/rocketbank/core/widgets/RocketTextInputLayout;

.field private isDepositCurrency:Z

.field private itemSelectedListener:Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment$itemSelectedListener$1;

.field private minimalView:Lru/rocketbank/core/widgets/RocketTextView;

.field private moneyFormatter:Lru/rocketbank/core/utils/MoneyFormatter;

.field private final navigationOnClickListener:Landroid/view/View$OnClickListener;

.field private openCard:Landroid/view/View;

.field private openView:Lru/rocketbank/core/widgets/RocketTextView;

.field private progressBar:Landroid/widget/ProgressBar;

.field private refillInformationView:Lru/rocketbank/core/widgets/RocketTextView;

.field private refillable:Ljava/lang/String;

.field private spinnerView:Landroid/widget/Spinner;

.field private textChangeListener:Lru/rocketbank/core/widgets/listener/AddCurrencyListener;

.field private textSubscription:Lrx/Subscription;

.field private toolbar:Landroid/support/v7/widget/Toolbar;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->Companion:Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/RocketFragment;-><init>()V

    .line 72
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->displayMetrics:Landroid/util/DisplayMetrics;

    const-string v0, ""

    .line 78
    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->refillable:Ljava/lang/String;

    const-string v0, "deposit"

    .line 79
    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->card:Ljava/lang/String;

    .line 81
    invoke-static {}, Lrx/subscriptions/Subscriptions;->empty()Lrx/Subscription;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->depositSubscription:Lrx/Subscription;

    .line 82
    invoke-static {}, Lrx/subscriptions/Subscriptions;->empty()Lrx/Subscription;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->textSubscription:Lrx/Subscription;

    .line 85
    invoke-static {}, Lrx/subscriptions/Subscriptions;->empty()Lrx/Subscription;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->depositApiSubscriptions:Lrx/Subscription;

    .line 89
    new-instance v0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment$navigationOnClickListener$1;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment$navigationOnClickListener$1;-><init>(Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->navigationOnClickListener:Landroid/view/View$OnClickListener;

    .line 91
    new-instance v0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment$itemSelectedListener$1;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment$itemSelectedListener$1;-><init>(Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;)V

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->itemSelectedListener:Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment$itemSelectedListener$1;

    .line 108
    new-instance v0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment$amountChangeSubscriber$1;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment$amountChangeSubscriber$1;-><init>(Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;)V

    check-cast v0, Lrx/functions/Action1;

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->amountChangeSubscriber:Lrx/functions/Action1;

    const/4 v0, 0x1

    .line 110
    iput-boolean v0, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->isDepositCurrency:Z

    return-void
.end method

.method public static final synthetic access$getAccountAdapter$p(Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;)Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment$AccountAdapter;
    .locals 1

    .line 53
    iget-object p0, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->accountAdapter:Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment$AccountAdapter;

    if-nez p0, :cond_0

    const-string v0, "accountAdapter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$getAmount$p(Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;)Ljava/math/BigDecimal;
    .locals 0

    .line 53
    iget-object p0, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->amount:Ljava/math/BigDecimal;

    return-object p0
.end method

.method public static final synthetic access$getAmountChangeSubscriber$p(Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;)Lrx/functions/Action1;
    .locals 0

    .line 53
    iget-object p0, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->amountChangeSubscriber:Lrx/functions/Action1;

    return-object p0
.end method

.method public static final synthetic access$getAmountView$p(Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;)Lru/rocketbank/core/widgets/RocketEditText;
    .locals 1

    .line 53
    iget-object p0, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->amountView:Lru/rocketbank/core/widgets/RocketEditText;

    if-nez p0, :cond_0

    const-string v0, "amountView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$getAuthorization$p(Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;)Lru/rocketbank/core/user/Authorization;
    .locals 1

    .line 53
    iget-object p0, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->authorization:Lru/rocketbank/core/user/Authorization;

    if-nez p0, :cond_0

    const-string v0, "authorization"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$getCurrentAccount$p(Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;)Lru/rocketbank/core/model/facade/Account;
    .locals 1

    .line 53
    iget-object p0, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->currentAccount:Lru/rocketbank/core/model/facade/Account;

    if-nez p0, :cond_0

    const-string v0, "currentAccount"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$getCurrentCurrency$p(Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;)Ljava/lang/String;
    .locals 1

    .line 53
    iget-object p0, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->currentCurrency:Ljava/lang/String;

    if-nez p0, :cond_0

    const-string v0, "currentCurrency"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$getDeposit$p(Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;)Lru/rocketbank/core/network/model/Deposit;
    .locals 1

    .line 53
    iget-object p0, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->deposit:Lru/rocketbank/core/network/model/Deposit;

    if-nez p0, :cond_0

    const-string v0, "deposit"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$getDepositApiSubscriptions$p(Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;)Lrx/Subscription;
    .locals 0

    .line 53
    iget-object p0, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->depositApiSubscriptions:Lrx/Subscription;

    return-object p0
.end method

.method public static final synthetic access$getDepositSubscription$p(Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;)Lrx/Subscription;
    .locals 0

    .line 53
    iget-object p0, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->depositSubscription:Lrx/Subscription;

    return-object p0
.end method

.method public static final synthetic access$getDisplayMetrics$p(Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;)Landroid/util/DisplayMetrics;
    .locals 0

    .line 53
    iget-object p0, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->displayMetrics:Landroid/util/DisplayMetrics;

    return-object p0
.end method

.method public static final synthetic access$getInputLayoutAmountView$p(Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;)Lru/rocketbank/core/widgets/RocketTextInputLayout;
    .locals 1

    .line 53
    iget-object p0, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->inputLayoutAmountView:Lru/rocketbank/core/widgets/RocketTextInputLayout;

    if-nez p0, :cond_0

    const-string v0, "inputLayoutAmountView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$getMoneyFormatter$p(Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;)Lru/rocketbank/core/utils/MoneyFormatter;
    .locals 1

    .line 53
    iget-object p0, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->moneyFormatter:Lru/rocketbank/core/utils/MoneyFormatter;

    if-nez p0, :cond_0

    const-string v0, "moneyFormatter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$getProgressBar$p(Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;)Landroid/widget/ProgressBar;
    .locals 1

    .line 53
    iget-object p0, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->progressBar:Landroid/widget/ProgressBar;

    if-nez p0, :cond_0

    const-string v0, "progressBar"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$getRefillInformationView$p(Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;)Lru/rocketbank/core/widgets/RocketTextView;
    .locals 1

    .line 53
    iget-object p0, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->refillInformationView:Lru/rocketbank/core/widgets/RocketTextView;

    if-nez p0, :cond_0

    const-string v0, "refillInformationView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$hideSpinner(Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;)V
    .locals 0

    .line 53
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->hideSpinner()V

    return-void
.end method

.method public static final synthetic access$isDepositCurrency$p(Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;)Z
    .locals 0

    .line 53
    iget-boolean p0, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->isDepositCurrency:Z

    return p0
.end method

.method public static final synthetic access$openDeposit(Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->openDeposit()V

    return-void
.end method

.method public static final synthetic access$refreshDepositStatus(Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;Ljava/math/BigDecimal;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->refreshDepositStatus(Ljava/math/BigDecimal;)V

    return-void
.end method

.method public static final synthetic access$setAccountAdapter$p(Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment$AccountAdapter;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->accountAdapter:Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment$AccountAdapter;

    return-void
.end method

.method public static final synthetic access$setAmount$p(Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;Ljava/math/BigDecimal;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->amount:Ljava/math/BigDecimal;

    return-void
.end method

.method public static final synthetic access$setAmountView$p(Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;Lru/rocketbank/core/widgets/RocketEditText;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->amountView:Lru/rocketbank/core/widgets/RocketEditText;

    return-void
.end method

.method public static final synthetic access$setAuthorization$p(Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;Lru/rocketbank/core/user/Authorization;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->authorization:Lru/rocketbank/core/user/Authorization;

    return-void
.end method

.method public static final synthetic access$setCurrentAccount$p(Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;Lru/rocketbank/core/model/facade/Account;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->currentAccount:Lru/rocketbank/core/model/facade/Account;

    return-void
.end method

.method public static final synthetic access$setCurrentCurrency$p(Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;Ljava/lang/String;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->currentCurrency:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setDeposit$p(Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;Lru/rocketbank/core/network/model/Deposit;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->deposit:Lru/rocketbank/core/network/model/Deposit;

    return-void
.end method

.method public static final synthetic access$setDepositApiSubscriptions$p(Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;Lrx/Subscription;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->depositApiSubscriptions:Lrx/Subscription;

    return-void
.end method

.method public static final synthetic access$setDepositCurrency$p(Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;Z)V
    .locals 0

    .line 53
    iput-boolean p1, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->isDepositCurrency:Z

    return-void
.end method

.method public static final synthetic access$setDepositSubscription$p(Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;Lrx/Subscription;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->depositSubscription:Lrx/Subscription;

    return-void
.end method

.method public static final synthetic access$setInputLayoutAmountView$p(Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;Lru/rocketbank/core/widgets/RocketTextInputLayout;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->inputLayoutAmountView:Lru/rocketbank/core/widgets/RocketTextInputLayout;

    return-void
.end method

.method public static final synthetic access$setMoneyFormatter$p(Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;Lru/rocketbank/core/utils/MoneyFormatter;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->moneyFormatter:Lru/rocketbank/core/utils/MoneyFormatter;

    return-void
.end method

.method public static final synthetic access$setProgressBar$p(Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;Landroid/widget/ProgressBar;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->progressBar:Landroid/widget/ProgressBar;

    return-void
.end method

.method public static final synthetic access$setRefillInformationView$p(Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;Lru/rocketbank/core/widgets/RocketTextView;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->refillInformationView:Lru/rocketbank/core/widgets/RocketTextView;

    return-void
.end method

.method public static final synthetic access$updateCurrencySymbol(Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->updateCurrencySymbol()V

    return-void
.end method

.method public static final synthetic access$updateCurrentCurrencyButton(Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->updateCurrentCurrencyButton()V

    return-void
.end method

.method public static final newInstance(Lru/rocketbank/core/network/model/Deposit;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;
    .locals 6

    sget-object v0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->Companion:Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment$Companion;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment$Companion;->newInstance(Lru/rocketbank/core/network/model/Deposit;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;

    move-result-object p0

    return-object p0
.end method

.method private final openDeposit()V
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 263
    invoke-static {p0, v0, v1, v2}, Lru/rocketbank/r2d2/fragments/RocketFragment;->showSpinner$default(Lru/rocketbank/r2d2/fragments/RocketFragment;IILjava/lang/Object;)V

    .line 265
    iget-object v3, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->depositApi:Lru/rocketbank/core/network/api/DepositApi;

    if-nez v3, :cond_0

    const-string v0, "depositApi"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->deposit:Lru/rocketbank/core/network/model/Deposit;

    if-nez v0, :cond_1

    const-string v1, "deposit"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0}, Lru/rocketbank/core/network/model/Deposit;->getPermalink()Ljava/lang/String;

    move-result-object v4

    .line 266
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->currentAccount:Lru/rocketbank/core/model/facade/Account;

    if-nez v0, :cond_2

    const-string v1, "currentAccount"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v0}, Lru/rocketbank/core/model/facade/Account;->getToken()Ljava/lang/String;

    move-result-object v5

    .line 267
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->amount:Ljava/math/BigDecimal;

    if-nez v0, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v6

    .line 268
    iget-object v8, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->refillable:Ljava/lang/String;

    .line 269
    iget-object v9, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->card:Ljava/lang/String;

    .line 265
    invoke-interface/range {v3 .. v9}, Lru/rocketbank/core/network/api/DepositApi;->openOpen(Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    .line 270
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 271
    new-instance v1, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment$openDeposit$1;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment$openDeposit$1;-><init>(Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;)V

    check-cast v1, Lrx/Subscriber;

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->depositSubscription:Lrx/Subscription;

    return-void
.end method

.method private final refreshDepositStatus(Ljava/math/BigDecimal;)V
    .locals 9

    .line 302
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->refillInformationView:Lru/rocketbank/core/widgets/RocketTextView;

    if-nez v0, :cond_0

    const-string v1, "refillInformationView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketTextView;->setVisibility(I)V

    .line 304
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->progressBar:Landroid/widget/ProgressBar;

    if-nez v0, :cond_1

    const-string v1, "progressBar"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    check-cast v0, Landroid/view/View;

    const-string v1, "$receiver"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 3006
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 305
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->depositApiSubscriptions:Lrx/Subscription;

    invoke-interface {v0}, Lrx/Subscription;->unsubscribe()V

    .line 306
    invoke-virtual {p0, v1}, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->refreshOpenButton(Z)V

    const-string v0, "FirstDeposit"

    .line 307
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->deposit:Lru/rocketbank/core/network/model/Deposit;

    if-nez v1, :cond_2

    const-string v2, "deposit"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v1}, Lru/rocketbank/core/network/model/Deposit;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    iget-object v2, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->depositApi:Lru/rocketbank/core/network/api/DepositApi;

    if-nez v2, :cond_3

    const-string v0, "depositApi"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->deposit:Lru/rocketbank/core/network/model/Deposit;

    if-nez v0, :cond_4

    const-string v1, "deposit"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v0}, Lru/rocketbank/core/network/model/Deposit;->getPermalink()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->currentAccount:Lru/rocketbank/core/model/facade/Account;

    if-nez v0, :cond_5

    const-string v1, "currentAccount"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {v0}, Lru/rocketbank/core/model/facade/Account;->getToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v5

    const-string v7, "open"

    iget-object v8, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->currentCurrency:Ljava/lang/String;

    if-nez v8, :cond_6

    const-string p1, "currentCurrency"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_6
    invoke-interface/range {v2 .. v8}, Lru/rocketbank/core/network/api/DepositApi;->openRefillAmount(Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;)Lrx/Observable;

    move-result-object p1

    .line 309
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object p1

    .line 310
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object p1

    .line 311
    new-instance v0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment$refreshDepositStatus$1;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment$refreshDepositStatus$1;-><init>(Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;)V

    check-cast v0, Lrx/Subscriber;

    invoke-virtual {p1, v0}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->depositApiSubscriptions:Lrx/Subscription;

    return-void
.end method

.method private final updateCurrencySymbol()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .line 198
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->amountView:Lru/rocketbank/core/widgets/RocketEditText;

    if-nez v0, :cond_0

    const-string v1, "amountView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lru/rocketbank/core/widgets/RocketEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lru/rocketbank/core/utils/rx/TextObserverToDecimal;->convertTextToBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v0

    .line 199
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->amountView:Lru/rocketbank/core/widgets/RocketEditText;

    if-nez v1, :cond_1

    const-string v2, "amountView"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v1}, Lru/rocketbank/core/widgets/RocketEditText;->getSelectionStart()I

    move-result v1

    .line 200
    iget-object v2, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->amountView:Lru/rocketbank/core/widgets/RocketEditText;

    if-nez v2, :cond_2

    const-string v3, "amountView"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Lru/rocketbank/core/widgets/RocketEditText;->setText(Ljava/lang/CharSequence;)V

    .line 201
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->amountView:Lru/rocketbank/core/widgets/RocketEditText;

    if-nez v0, :cond_3

    const-string v2, "amountView"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketEditText;->setSelection(I)V

    return-void
.end method

.method private final updateCurrentCurrencyButton()V
    .locals 3

    .line 183
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->deposit:Lru/rocketbank/core/network/model/Deposit;

    if-nez v0, :cond_0

    const-string v1, "deposit"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lru/rocketbank/core/network/model/Deposit;->getCurrency()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->currentAccount:Lru/rocketbank/core/model/facade/Account;

    if-nez v1, :cond_1

    const-string v2, "currentAccount"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v1}, Lru/rocketbank/core/model/facade/Account;->getCurrencyCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 184
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->currencyButton:Landroid/widget/TextView;

    if-nez v0, :cond_2

    const-string v1, "currencyButton"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    check-cast v0, Landroid/view/View;

    const-string v1, "$receiver"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    .line 1014
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 185
    :cond_3
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->currencyButton:Landroid/widget/TextView;

    if-nez v0, :cond_4

    const-string v1, "currencyButton"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    check-cast v0, Landroid/view/View;

    const-string v1, "$receiver"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 2006
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 187
    :goto_0
    iget-boolean v0, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->isDepositCurrency:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->deposit:Lru/rocketbank/core/network/model/Deposit;

    if-nez v0, :cond_5

    const-string v1, "deposit"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {v0}, Lru/rocketbank/core/network/model/Deposit;->getCurrency()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->currentAccount:Lru/rocketbank/core/model/facade/Account;

    if-nez v0, :cond_7

    const-string v1, "currentAccount"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_7
    invoke-virtual {v0}, Lru/rocketbank/core/model/facade/Account;->getCurrencyCode()Ljava/lang/String;

    move-result-object v0

    :cond_8
    :goto_1
    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->currentCurrency:Ljava/lang/String;

    .line 188
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->currentCurrency:Ljava/lang/String;

    if-nez v0, :cond_9

    const-string v1, "currentCurrency"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_9
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x10da2

    if-eq v1, v2, :cond_b

    const v2, 0x14966

    if-eq v1, v2, :cond_a

    goto :goto_2

    :cond_a
    const-string v1, "USD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "\u0432 \u0434\u043e\u043b\u043b\u0430\u0440\u0430\u0445"

    goto :goto_3

    :cond_b
    const-string v1, "EUR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "\u0432 \u0435\u0432\u0440\u043e"

    goto :goto_3

    :cond_c
    :goto_2
    const-string v0, "\u0432 \u0440\u0443\u0431\u043b\u044f\u0445"

    .line 193
    :goto_3
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->currencyButton:Landroid/widget/TextView;

    if-nez v1, :cond_d

    const-string v2, "currencyButton"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_d
    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public final _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public final _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0c00d9

    const/4 v0, 0x0

    .line 114
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0903d8

    .line 116
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_0

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.support.v7.widget.Toolbar"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    check-cast p2, Landroid/support/v7/widget/Toolbar;

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    const p2, 0x7f090263

    .line 117
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_1

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketTextView"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    check-cast p2, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->minimalView:Lru/rocketbank/core/widgets/RocketTextView;

    const p2, 0x7f0902d3

    .line 118
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_2

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketTextView"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    check-cast p2, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->refillInformationView:Lru/rocketbank/core/widgets/RocketTextView;

    const p2, 0x7f09004d

    .line 119
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_3

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketEditText"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    check-cast p2, Lru/rocketbank/core/widgets/RocketEditText;

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->amountView:Lru/rocketbank/core/widgets/RocketEditText;

    const p2, 0x7f0901f5

    .line 120
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_4

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketTextInputLayout"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    check-cast p2, Lru/rocketbank/core/widgets/RocketTextInputLayout;

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->inputLayoutAmountView:Lru/rocketbank/core/widgets/RocketTextInputLayout;

    const p2, 0x7f0901f4

    .line 121
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_5

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.widget.Spinner"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    check-cast p2, Landroid/widget/Spinner;

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->spinnerView:Landroid/widget/Spinner;

    const p2, 0x7f090196

    .line 122
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_6

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketTextView"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    check-cast p2, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->fullDescriptionView:Lru/rocketbank/core/widgets/RocketTextView;

    const p2, 0x7f09028f

    .line 123
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_7

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketTextView"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    check-cast p2, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->openView:Lru/rocketbank/core/widgets/RocketTextView;

    const p2, 0x7f090290

    .line 124
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string p3, "view.findViewById(R.id.openCard)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->openCard:Landroid/view/View;

    const p2, 0x7f090118

    .line 125
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_8

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.widget.TextView"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->currencyButton:Landroid/widget/TextView;

    const p2, 0x7f090366

    .line 126
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_9

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.widget.ProgressBar"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    check-cast p2, Landroid/widget/ProgressBar;

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->progressBar:Landroid/widget/ProgressBar;

    const-string p2, "view"

    .line 127
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final onDestroyView()V
    .locals 1

    .line 462
    invoke-super {p0}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onDestroyView()V

    .line 464
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->depositSubscription:Lrx/Subscription;

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->unsubscribe(Lrx/Subscription;)V

    .line 465
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public final onPause()V
    .locals 2

    .line 248
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->amountView:Lru/rocketbank/core/widgets/RocketEditText;

    if-nez v0, :cond_0

    const-string v1, "amountView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->textChangeListener:Lru/rocketbank/core/widgets/listener/AddCurrencyListener;

    check-cast v1, Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketEditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 249
    invoke-super {p0}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onPause()V

    return-void
.end method

.method public final onResume()V
    .locals 2

    .line 253
    invoke-super {p0}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onResume()V

    .line 254
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    if-nez v0, :cond_0

    const-string v1, "toolbar"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    const v1, 0x7f11030f

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setTitle(I)V

    .line 255
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->amountView:Lru/rocketbank/core/widgets/RocketEditText;

    if-nez v0, :cond_1

    const-string v1, "amountView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->textChangeListener:Lru/rocketbank/core/widgets/listener/AddCurrencyListener;

    check-cast v1, Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public final onUserModel(Lru/rocketbank/core/model/UserModel;)V
    .locals 6

    const-string v0, "userModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 205
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onUserModel(Lru/rocketbank/core/model/UserModel;)V

    .line 207
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->authorization:Lru/rocketbank/core/user/Authorization;

    if-nez v0, :cond_0

    const-string v0, "authorization"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-static {p1}, Lru/rocketbank/core/user/Authorization;->getActiveAccountsImmediate(Lru/rocketbank/core/model/UserModel;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->accountList:Ljava/util/List;

    .line 209
    new-instance p1, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment$AccountAdapter;

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->accountList:Ljava/util/List;

    if-nez v0, :cond_1

    const-string v1, "accountList"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->moneyFormatter:Lru/rocketbank/core/utils/MoneyFormatter;

    if-nez v1, :cond_2

    const-string v2, "moneyFormatter"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-direct {p1, v0, v1}, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment$AccountAdapter;-><init>(Ljava/util/List;Lru/rocketbank/core/utils/MoneyFormatter;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->accountAdapter:Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment$AccountAdapter;

    .line 210
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->spinnerView:Landroid/widget/Spinner;

    if-nez p1, :cond_3

    const-string v0, "spinnerView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->accountAdapter:Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment$AccountAdapter;

    if-nez v0, :cond_4

    const-string v1, "accountAdapter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    check-cast v0, Landroid/widget/SpinnerAdapter;

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 211
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->spinnerView:Landroid/widget/Spinner;

    if-nez p1, :cond_5

    const-string v0, "spinnerView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_5
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->itemSelectedListener:Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment$itemSelectedListener$1;

    check-cast v0, Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 213
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->accountList:Ljava/util/List;

    if-nez p1, :cond_6

    const-string v0, "accountList"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/model/facade/Account;

    const-string v1, "FirstDeposit"

    .line 214
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Account: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lru/rocketbank/core/model/facade/Account;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " amount "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lru/rocketbank/core/model/facade/Account;->getBalance()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 218
    :cond_7
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->accountList:Ljava/util/List;

    if-nez p1, :cond_8

    const-string v0, "accountList"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_8
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_a

    .line 219
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->accountList:Ljava/util/List;

    if-nez p1, :cond_9

    const-string v1, "accountList"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_9
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/model/facade/Account;

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->currentAccount:Lru/rocketbank/core/model/facade/Account;

    .line 222
    :cond_a
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->moneyFormatter:Lru/rocketbank/core/utils/MoneyFormatter;

    if-nez p1, :cond_b

    const-string v1, "moneyFormatter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_b
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->deposit:Lru/rocketbank/core/network/model/Deposit;

    if-nez v1, :cond_c

    const-string v2, "deposit"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_c
    invoke-virtual {v1}, Lru/rocketbank/core/network/model/Deposit;->getMinAmount()Ljava/lang/Double;

    move-result-object v1

    if-nez v1, :cond_d

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_d
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    iget-object v3, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->deposit:Lru/rocketbank/core/network/model/Deposit;

    if-nez v3, :cond_e

    const-string v4, "deposit"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_e
    invoke-virtual {v3}, Lru/rocketbank/core/network/model/Deposit;->getCurrency()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_f

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_f
    invoke-virtual {p1, v1, v2, v3, v0}, Lru/rocketbank/core/utils/MoneyFormatter;->format(DLjava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    const v1, 0x7f1102e4

    const/4 v2, 0x1

    .line 223
    new-array v3, v2, [Ljava/lang/Object;

    aput-object p1, v3, v0

    invoke-virtual {p0, v1, v3}, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 224
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->minimalView:Lru/rocketbank/core/widgets/RocketTextView;

    if-nez v1, :cond_10

    const-string v3, "minimalView"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_10
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v1, p1}, Lru/rocketbank/core/widgets/RocketTextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    :try_start_0
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->amountView:Lru/rocketbank/core/widgets/RocketEditText;

    if-nez p1, :cond_11

    const-string v1, "amountView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_11
    invoke-virtual {p1}, Lru/rocketbank/core/widgets/RocketEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_12

    move v0, v2

    :cond_12
    if-eqz v0, :cond_19

    .line 228
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->amountView:Lru/rocketbank/core/widgets/RocketEditText;

    if-nez p1, :cond_13

    const-string v0, "amountView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_13
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->moneyFormatter:Lru/rocketbank/core/utils/MoneyFormatter;

    if-nez v0, :cond_14

    const-string v1, "moneyFormatter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_14
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->deposit:Lru/rocketbank/core/network/model/Deposit;

    if-nez v1, :cond_15

    const-string v3, "deposit"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_15
    invoke-virtual {v1}, Lru/rocketbank/core/network/model/Deposit;->getMinAmount()Ljava/lang/Double;

    move-result-object v1

    if-nez v1, :cond_16

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_16
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->deposit:Lru/rocketbank/core/network/model/Deposit;

    if-nez v1, :cond_17

    const-string v5, "deposit"

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_17
    invoke-virtual {v1}, Lru/rocketbank/core/network/model/Deposit;->getCurrency()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_18

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_18
    invoke-virtual {v0, v3, v4, v1, v2}, Lru/rocketbank/core/utils/MoneyFormatter;->format(DLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lru/rocketbank/core/widgets/RocketEditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 231
    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lru/rocketbank/core/manager/AnalyticsManager;->logException(Ljava/lang/Throwable;)V

    .line 234
    :cond_19
    :goto_1
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->inputLayoutAmountView:Lru/rocketbank/core/widgets/RocketTextInputLayout;

    if-nez p1, :cond_1a

    const-string v0, "inputLayoutAmountView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1a
    new-instance v0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment$onUserModel$1;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment$onUserModel$1;-><init>(Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;)V

    check-cast v0, Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {p1, v0}, Lru/rocketbank/core/widgets/RocketTextInputLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 240
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->amountView:Lru/rocketbank/core/widgets/RocketEditText;

    if-nez p1, :cond_1b

    const-string v0, "amountView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1b
    check-cast p1, Landroid/widget/TextView;

    invoke-static {p1}, Lcom/jakewharton/rxbinding/widget/RxTextView;->afterTextChangeEvents(Landroid/widget/TextView;)Lrx/Observable;

    move-result-object p1

    .line 241
    new-instance v0, Lru/rocketbank/core/utils/rx/TextObserverToDecimal;

    invoke-direct {v0}, Lru/rocketbank/core/utils/rx/TextObserverToDecimal;-><init>()V

    check-cast v0, Lrx/functions/Func1;

    invoke-virtual {p1, v0}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object p1

    .line 242
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->amountChangeSubscriber:Lrx/functions/Action1;

    invoke-virtual {p1, v0}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->textSubscription:Lrx/Subscription;

    .line 244
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->updateCurrentCurrencyButton()V

    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    invoke-super {p0, p1, p2}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 133
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object p1

    invoke-interface {p1}, Lru/rocketbank/core/dagger/component/RocketComponent;->getAuthorization()Lru/rocketbank/core/user/Authorization;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->authorization:Lru/rocketbank/core/user/Authorization;

    .line 134
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object p1

    invoke-interface {p1}, Lru/rocketbank/core/dagger/component/RocketComponent;->getDepositApi()Lru/rocketbank/core/network/api/DepositApi;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->depositApi:Lru/rocketbank/core/network/api/DepositApi;

    .line 135
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object p1

    invoke-interface {p1}, Lru/rocketbank/core/dagger/component/RocketComponent;->getMoneyFormatter()Lru/rocketbank/core/utils/MoneyFormatter;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->moneyFormatter:Lru/rocketbank/core/utils/MoneyFormatter;

    .line 137
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    const-string p2, "activity!!"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    const-string p2, "activity!!.windowManager"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->displayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {p1, p2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 139
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    if-nez p1, :cond_1

    const-string p2, "toolbar"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->getStatusBarHeight()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->setToolbarSize(Landroid/support/v7/widget/Toolbar;I)I

    .line 140
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    if-nez p1, :cond_2

    const-string p2, "toolbar"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->setToolbarActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 142
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    if-nez p1, :cond_3

    const-string p2, "toolbar"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    if-nez p2, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4
    const v0, 0x7f060228

    invoke-static {p2, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/Toolbar;->setTitleTextColor(I)V

    .line 143
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    if-nez p1, :cond_5

    const-string p2, "toolbar"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_5
    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->navigationOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_9

    const-string p2, "DEPOSIT"

    .line 147
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    const-string v0, "bundle.getParcelable(DEPOSIT)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lru/rocketbank/core/network/model/Deposit;

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->deposit:Lru/rocketbank/core/network/model/Deposit;

    const-string p2, "REFILLABLE"

    .line 148
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "bundle.getString(REFILLABLE)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->refillable:Ljava/lang/String;

    const-string p2, "CARD"

    const-string v0, "deposit"

    .line 149
    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "bundle.getString(CARD, \"deposit\")"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->card:Ljava/lang/String;

    .line 150
    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->amountView:Lru/rocketbank/core/widgets/RocketEditText;

    if-nez p2, :cond_6

    const-string v0, "amountView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_6
    const-string v0, "MONEY"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p2, p1}, Lru/rocketbank/core/widgets/RocketEditText;->setText(Ljava/lang/CharSequence;)V

    .line 151
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->deposit:Lru/rocketbank/core/network/model/Deposit;

    if-nez p1, :cond_7

    const-string p2, "deposit"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_7
    invoke-virtual {p1}, Lru/rocketbank/core/network/model/Deposit;->getCurrency()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_8

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_8
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->currentCurrency:Ljava/lang/String;

    .line 154
    :cond_9
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->fullDescriptionView:Lru/rocketbank/core/widgets/RocketTextView;

    if-nez p1, :cond_a

    const-string p2, "fullDescriptionView"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_a
    new-instance p2, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment$onViewCreated$1;

    invoke-direct {p2, p0}, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment$onViewCreated$1;-><init>(Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;)V

    check-cast p2, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Lru/rocketbank/core/widgets/RocketTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    new-instance p1, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment$onViewCreated$2;

    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->amountView:Lru/rocketbank/core/widgets/RocketEditText;

    if-nez p2, :cond_b

    const-string v0, "amountView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_b
    check-cast p2, Landroid/widget/EditText;

    invoke-direct {p1, p0, p2}, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment$onViewCreated$2;-><init>(Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;Landroid/widget/EditText;)V

    check-cast p1, Lru/rocketbank/core/widgets/listener/AddCurrencyListener;

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->textChangeListener:Lru/rocketbank/core/widgets/listener/AddCurrencyListener;

    .line 169
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->openView:Lru/rocketbank/core/widgets/RocketTextView;

    if-nez p1, :cond_c

    const-string p2, "openView"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_c
    new-instance p2, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment$onViewCreated$3;

    invoke-direct {p2, p0}, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment$onViewCreated$3;-><init>(Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;)V

    check-cast p2, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Lru/rocketbank/core/widgets/RocketTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->amountView:Lru/rocketbank/core/widgets/RocketEditText;

    if-nez p1, :cond_d

    const-string p2, "amountView"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_d
    new-instance p2, Lru/rocketbank/core/widgets/listener/DepositOnKeyListener;

    invoke-direct {p2}, Lru/rocketbank/core/widgets/listener/DepositOnKeyListener;-><init>()V

    check-cast p2, Landroid/view/View$OnKeyListener;

    invoke-virtual {p1, p2}, Lru/rocketbank/core/widgets/RocketEditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 173
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->currencyButton:Landroid/widget/TextView;

    if-nez p1, :cond_e

    const-string p2, "currencyButton"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_e
    new-instance p2, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment$onViewCreated$4;

    invoke-direct {p2, p0}, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment$onViewCreated$4;-><init>(Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;)V

    check-cast p2, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final refreshOpenButton(Z)V
    .locals 2

    .line 259
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->openCard:Landroid/view/View;

    if-nez v0, :cond_0

    const-string v1, "openCard"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/4 p1, 0x4

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
