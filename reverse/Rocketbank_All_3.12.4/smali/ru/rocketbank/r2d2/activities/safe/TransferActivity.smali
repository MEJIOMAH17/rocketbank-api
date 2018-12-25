.class public final Lru/rocketbank/r2d2/activities/safe/TransferActivity;
.super Lru/rocketbank/r2d2/PresenterSecuredActivity;
.source "TransferActivity.kt"

# interfaces
.implements Lru/rocketbank/r2d2/data/binding/transfer/TransferAccountsHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/activities/safe/TransferActivity$CurrencyAdapter;,
        Lru/rocketbank/r2d2/activities/safe/TransferActivity$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lru/rocketbank/r2d2/PresenterSecuredActivity<",
        "Lru/rocketbank/r2d2/fragments/transfers/SafeAndCardTransferPresenter;",
        ">;",
        "Lru/rocketbank/r2d2/data/binding/transfer/TransferAccountsHandler;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTransferActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TransferActivity.kt\nru/rocketbank/r2d2/activities/safe/TransferActivity\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n*L\n1#1,622:1\n1246#2:623\n1315#2,3:624\n1246#2:627\n1315#2,3:628\n1053#3,2:631\n*E\n*S KotlinDebug\n*F\n+ 1 TransferActivity.kt\nru/rocketbank/r2d2/activities/safe/TransferActivity\n*L\n311#1:623\n311#1,3:624\n312#1:627\n312#1,3:628\n374#1,2:631\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lru/rocketbank/r2d2/activities/safe/TransferActivity$Companion;

.field private static final KEY_TOKEN:Ljava/lang/String; = "KEY_TOKEN"

.field private static final SENDING:Ljava/lang/String; = "SENDING"

.field private static final TAG:Ljava/lang/String; = "TransferCard"


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private final amountChangeSubscription:Lrx/functions/Action1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Action1<",
            "Ljava/math/BigDecimal;",
            ">;"
        }
    .end annotation
.end field

.field private binding:Lru/rocketbank/r2d2/databinding/FragmentTransferBetweenCardsBinding;

.field public currencyAdapter:Lru/rocketbank/r2d2/activities/safe/TransferActivity$CurrencyAdapter;

.field public currencyManager:Lru/rocketbank/core/manager/CurrencyManager;

.field private currentAmount:Ljava/math/BigDecimal;

.field public debouncedEventEmitter:Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observable<",
            "Lru/rocketbank/core/network/model/MoveMoneyBody;",
            ">;"
        }
    .end annotation
.end field

.field private destinationAdapter:Lru/rocketbank/r2d2/root/transfer/ProductPager;

.field private destinationToken:Ljava/lang/String;

.field private fromToken:Ljava/lang/String;

.field private infoSubscription:Lrx/Subscription;

.field public moneyFormatter:Lru/rocketbank/core/utils/MoneyFormatter;

.field private moveMoneyBodyRxBus:Lru/rocketbank/core/utils/rx/RxBus;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lru/rocketbank/core/utils/rx/RxBus<",
            "Lru/rocketbank/core/network/model/MoveMoneyBody;",
            ">;"
        }
    .end annotation
.end field

.field private progressDialog:Landroid/app/ProgressDialog;

.field private selectedCurrency:Ljava/lang/String;

.field private sourceAdapter:Lru/rocketbank/r2d2/root/transfer/ProductPager;

.field private token:Ljava/lang/String;

.field private transferMessage:Ljava/lang/String;

.field public updateEventEmitter:Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observable<",
            "Lru/rocketbank/core/network/model/MoveMoneyBody;",
            ">;"
        }
    .end annotation
.end field

.field private userModel:Lru/rocketbank/core/model/UserModel;

.field private vibrator:Landroid/os/Vibrator;

.field private viewData:Lru/rocketbank/r2d2/data/binding/transfer/TransferAccountData;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/r2d2/activities/safe/TransferActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/activities/safe/TransferActivity$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->Companion:Lru/rocketbank/r2d2/activities/safe/TransferActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 61
    invoke-direct {p0}, Lru/rocketbank/r2d2/PresenterSecuredActivity;-><init>()V

    .line 390
    new-instance v0, Lru/rocketbank/r2d2/activities/safe/TransferActivity$amountChangeSubscription$1;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/activities/safe/TransferActivity$amountChangeSubscription$1;-><init>(Lru/rocketbank/r2d2/activities/safe/TransferActivity;)V

    check-cast v0, Lrx/functions/Action1;

    iput-object v0, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->amountChangeSubscription:Lrx/functions/Action1;

    return-void
.end method

.method public static final synthetic access$getAuthorization$p(Lru/rocketbank/r2d2/activities/safe/TransferActivity;)Lru/rocketbank/core/user/Authorization;
    .locals 0

    .line 61
    iget-object p0, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->authorization:Lru/rocketbank/core/user/Authorization;

    return-object p0
.end method

.method public static final synthetic access$getCurrentAmount$p(Lru/rocketbank/r2d2/activities/safe/TransferActivity;)Ljava/math/BigDecimal;
    .locals 0

    .line 61
    iget-object p0, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->currentAmount:Ljava/math/BigDecimal;

    return-object p0
.end method

.method public static final synthetic access$getDestinationAdapter$p(Lru/rocketbank/r2d2/activities/safe/TransferActivity;)Lru/rocketbank/r2d2/root/transfer/ProductPager;
    .locals 1

    .line 61
    iget-object p0, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->destinationAdapter:Lru/rocketbank/r2d2/root/transfer/ProductPager;

    if-nez p0, :cond_0

    const-string v0, "destinationAdapter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$getDestinationToken$p(Lru/rocketbank/r2d2/activities/safe/TransferActivity;)Ljava/lang/String;
    .locals 0

    .line 61
    iget-object p0, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->destinationToken:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getFromToken$p(Lru/rocketbank/r2d2/activities/safe/TransferActivity;)Ljava/lang/String;
    .locals 0

    .line 61
    iget-object p0, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->fromToken:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getKEY_TOKEN$cp()Ljava/lang/String;
    .locals 1

    .line 61
    sget-object v0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->KEY_TOKEN:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getProgressDialog$p(Lru/rocketbank/r2d2/activities/safe/TransferActivity;)Landroid/app/ProgressDialog;
    .locals 0

    .line 61
    iget-object p0, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->progressDialog:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method public static final synthetic access$getSelectedCurrency$p(Lru/rocketbank/r2d2/activities/safe/TransferActivity;)Ljava/lang/String;
    .locals 0

    .line 61
    iget-object p0, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->selectedCurrency:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getSourceAdapter$p(Lru/rocketbank/r2d2/activities/safe/TransferActivity;)Lru/rocketbank/r2d2/root/transfer/ProductPager;
    .locals 1

    .line 61
    iget-object p0, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->sourceAdapter:Lru/rocketbank/r2d2/root/transfer/ProductPager;

    if-nez p0, :cond_0

    const-string v0, "sourceAdapter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$getVibrator$p(Lru/rocketbank/r2d2/activities/safe/TransferActivity;)Landroid/os/Vibrator;
    .locals 0

    .line 61
    iget-object p0, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->vibrator:Landroid/os/Vibrator;

    return-object p0
.end method

.method public static final synthetic access$getViewData$p(Lru/rocketbank/r2d2/activities/safe/TransferActivity;)Lru/rocketbank/r2d2/data/binding/transfer/TransferAccountData;
    .locals 1

    .line 61
    iget-object p0, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->viewData:Lru/rocketbank/r2d2/data/binding/transfer/TransferAccountData;

    if-nez p0, :cond_0

    const-string v0, "viewData"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$onDetailMoneyError(Lru/rocketbank/r2d2/activities/safe/TransferActivity;Ljava/lang/Throwable;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->onDetailMoneyError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static final synthetic access$onDetailMoneyResult(Lru/rocketbank/r2d2/activities/safe/TransferActivity;Lru/rocketbank/core/network/model/RefillCardResponse;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->onDetailMoneyResult(Lru/rocketbank/core/network/model/RefillCardResponse;)V

    return-void
.end method

.method public static final synthetic access$onSendMoneyError(Lru/rocketbank/r2d2/activities/safe/TransferActivity;Ljava/lang/Throwable;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->onSendMoneyError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static final synthetic access$onSendMoneyResult(Lru/rocketbank/r2d2/activities/safe/TransferActivity;Lru/rocketbank/core/network/model/RefillCardResponse;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->onSendMoneyResult(Lru/rocketbank/core/network/model/RefillCardResponse;)V

    return-void
.end method

.method public static final synthetic access$refreshDrawableState(Lru/rocketbank/r2d2/activities/safe/TransferActivity;II)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2}, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->refreshDrawableState(II)V

    return-void
.end method

.method public static final synthetic access$refreshTextInfo(Lru/rocketbank/r2d2/activities/safe/TransferActivity;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->refreshTextInfo()V

    return-void
.end method

.method public static final synthetic access$sendMoney(Lru/rocketbank/r2d2/activities/safe/TransferActivity;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->sendMoney()V

    return-void
.end method

.method public static final synthetic access$setAuthorization$p(Lru/rocketbank/r2d2/activities/safe/TransferActivity;Lru/rocketbank/core/user/Authorization;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->authorization:Lru/rocketbank/core/user/Authorization;

    return-void
.end method

.method public static final synthetic access$setCurrentAmount$p(Lru/rocketbank/r2d2/activities/safe/TransferActivity;Ljava/math/BigDecimal;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->currentAmount:Ljava/math/BigDecimal;

    return-void
.end method

.method public static final synthetic access$setDestinationAdapter$p(Lru/rocketbank/r2d2/activities/safe/TransferActivity;Lru/rocketbank/r2d2/root/transfer/ProductPager;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->destinationAdapter:Lru/rocketbank/r2d2/root/transfer/ProductPager;

    return-void
.end method

.method public static final synthetic access$setDestinationToken$p(Lru/rocketbank/r2d2/activities/safe/TransferActivity;Ljava/lang/String;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->destinationToken:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setFromToken$p(Lru/rocketbank/r2d2/activities/safe/TransferActivity;Ljava/lang/String;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->fromToken:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setProgressDialog$p(Lru/rocketbank/r2d2/activities/safe/TransferActivity;Landroid/app/ProgressDialog;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->progressDialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method public static final synthetic access$setSelectedCurrency$p(Lru/rocketbank/r2d2/activities/safe/TransferActivity;Ljava/lang/String;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->selectedCurrency:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setSourceAdapter$p(Lru/rocketbank/r2d2/activities/safe/TransferActivity;Lru/rocketbank/r2d2/root/transfer/ProductPager;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->sourceAdapter:Lru/rocketbank/r2d2/root/transfer/ProductPager;

    return-void
.end method

.method public static final synthetic access$setVibrator$p(Lru/rocketbank/r2d2/activities/safe/TransferActivity;Landroid/os/Vibrator;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->vibrator:Landroid/os/Vibrator;

    return-void
.end method

.method public static final synthetic access$setViewData$p(Lru/rocketbank/r2d2/activities/safe/TransferActivity;Lru/rocketbank/r2d2/data/binding/transfer/TransferAccountData;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->viewData:Lru/rocketbank/r2d2/data/binding/transfer/TransferAccountData;

    return-void
.end method

.method public static final synthetic access$validateAmount(Lru/rocketbank/r2d2/activities/safe/TransferActivity;Ljava/math/BigDecimal;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->validateAmount(Ljava/math/BigDecimal;)V

    return-void
.end method

.method private final addCurrencies(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 541
    new-instance v0, Lru/rocketbank/r2d2/activities/safe/TransferActivity$CurrencyAdapter;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lru/rocketbank/r2d2/activities/safe/TransferActivity$CurrencyAdapter;-><init>(Lru/rocketbank/r2d2/activities/safe/TransferActivity;Landroid/support/v4/app/FragmentManager;)V

    iput-object v0, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->currencyAdapter:Lru/rocketbank/r2d2/activities/safe/TransferActivity$CurrencyAdapter;

    .line 542
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->currencyAdapter:Lru/rocketbank/r2d2/activities/safe/TransferActivity$CurrencyAdapter;

    if-nez v0, :cond_0

    const-string v1, "currencyAdapter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/activities/safe/TransferActivity$CurrencyAdapter;->setCurrencies(Ljava/util/List;)V

    return-void
.end method

.method private final getFormattedString(FLjava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 505
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->moneyFormatter:Lru/rocketbank/core/utils/MoneyFormatter;

    if-nez v0, :cond_0

    const-string v1, "moneyFormatter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    float-to-double v1, p1

    const/4 p1, 0x1

    invoke-virtual {v0, v1, v2, p2, p1}, Lru/rocketbank/core/utils/MoneyFormatter;->format(DLjava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final hideProgress()V
    .locals 1

    .line 591
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 592
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->progressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    .line 593
    iput-object v0, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->progressDialog:Landroid/app/ProgressDialog;

    :cond_1
    return-void
.end method

.method private final onDetailMoneyError(Ljava/lang/Throwable;)V
    .locals 3

    .line 428
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->getErrorString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 430
    sget-object v1, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->TAG:Ljava/lang/String;

    const-string v2, "Can not get text"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 431
    new-instance p1, Landroid/text/SpannedString;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-direct {p1, v0}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    .line 432
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->viewData:Lru/rocketbank/r2d2/data/binding/transfer/TransferAccountData;

    if-nez v0, :cond_0

    const-string v1, "viewData"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lru/rocketbank/r2d2/data/binding/transfer/TransferAccountData;->getInfoText()Landroid/databinding/ObservableField;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 433
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->viewData:Lru/rocketbank/r2d2/data/binding/transfer/TransferAccountData;

    if-nez p1, :cond_1

    const-string v0, "viewData"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, Lru/rocketbank/r2d2/data/binding/transfer/TransferAccountData;->getInfoTextColor()Landroid/databinding/ObservableInt;

    move-result-object p1

    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    const v1, 0x7f060220

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/databinding/ObservableInt;->set(I)V

    .line 435
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->viewData:Lru/rocketbank/r2d2/data/binding/transfer/TransferAccountData;

    if-nez p1, :cond_2

    const-string v0, "viewData"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p1}, Lru/rocketbank/r2d2/data/binding/transfer/TransferAccountData;->getButtonEnabled()Landroid/databinding/ObservableBoolean;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/databinding/ObservableBoolean;->set(Z)V

    .line 436
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->viewData:Lru/rocketbank/r2d2/data/binding/transfer/TransferAccountData;

    if-nez p1, :cond_3

    const-string v1, "viewData"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p1}, Lru/rocketbank/r2d2/data/binding/transfer/TransferAccountData;->getProgressVisible()Landroid/databinding/ObservableBoolean;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/databinding/ObservableBoolean;->set(Z)V

    return-void
.end method

.method private final onDetailMoneyResult(Lru/rocketbank/core/network/model/RefillCardResponse;)V
    .locals 8

    const/4 v0, 0x0

    .line 440
    iput-object v0, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->transferMessage:Ljava/lang/String;

    .line 441
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->destinationToken:Ljava/lang/String;

    const v1, 0x7f060220

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 442
    iget-object v3, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->authorization:Lru/rocketbank/core/user/Authorization;

    invoke-virtual {v3, v0}, Lru/rocketbank/core/user/Authorization;->getProductImmediate(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 443
    instance-of v3, v0, Lru/rocketbank/core/model/DepositModel;

    if-eqz v3, :cond_4

    .line 444
    check-cast v0, Lru/rocketbank/core/model/DepositModel;

    invoke-virtual {v0}, Lru/rocketbank/core/model/DepositModel;->getBalanceWithoutPercents()F

    move-result v3

    float-to-double v3, v3

    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->getAmount()D

    move-result-wide v5

    add-double/2addr v3, v5

    invoke-virtual {v0}, Lru/rocketbank/core/model/DepositModel;->getMaxAmount()F

    move-result v0

    float-to-double v5, v0

    cmpl-double v0, v3, v5

    if-lez v0, :cond_4

    .line 446
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->viewData:Lru/rocketbank/r2d2/data/binding/transfer/TransferAccountData;

    if-nez p1, :cond_0

    const-string v0, "viewData"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Lru/rocketbank/r2d2/data/binding/transfer/TransferAccountData;->getButtonEnabled()Landroid/databinding/ObservableBoolean;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/databinding/ObservableBoolean;->set(Z)V

    .line 447
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->viewData:Lru/rocketbank/r2d2/data/binding/transfer/TransferAccountData;

    if-nez p1, :cond_1

    const-string v0, "viewData"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, Lru/rocketbank/r2d2/data/binding/transfer/TransferAccountData;->getProgressVisible()Landroid/databinding/ObservableBoolean;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/databinding/ObservableBoolean;->set(Z)V

    .line 448
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->viewData:Lru/rocketbank/r2d2/data/binding/transfer/TransferAccountData;

    if-nez p1, :cond_2

    const-string v0, "viewData"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p1}, Lru/rocketbank/r2d2/data/binding/transfer/TransferAccountData;->getInfoTextColor()Landroid/databinding/ObservableInt;

    move-result-object p1

    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/databinding/ObservableInt;->set(I)V

    .line 449
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->viewData:Lru/rocketbank/r2d2/data/binding/transfer/TransferAccountData;

    if-nez p1, :cond_3

    const-string v0, "viewData"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p1}, Lru/rocketbank/r2d2/data/binding/transfer/TransferAccountData;->getInfoText()Landroid/databinding/ObservableField;

    move-result-object p1

    const v0, 0x7f1103bc

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/databinding/ObservableField;->set(Ljava/lang/Object;)V

    return-void

    .line 454
    :cond_4
    invoke-virtual {p1}, Lru/rocketbank/core/network/model/RefillCardResponse;->getStatus()Ljava/lang/String;

    move-result-object v0

    const-string v3, "ok"

    const/4 v4, 0x1

    invoke-static {v0, v3, v4}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 455
    invoke-virtual {p1}, Lru/rocketbank/core/network/model/RefillCardResponse;->getFrom()Lru/rocketbank/core/network/model/RefillCardResponse$RefillModel;

    move-result-object v0

    const-string v1, "refillCardResponse.from"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lru/rocketbank/core/network/model/RefillCardResponse$RefillModel;->getAmount()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_7

    .line 456
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->viewData:Lru/rocketbank/r2d2/data/binding/transfer/TransferAccountData;

    if-nez p1, :cond_5

    const-string v0, "viewData"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {p1}, Lru/rocketbank/r2d2/data/binding/transfer/TransferAccountData;->getButtonEnabled()Landroid/databinding/ObservableBoolean;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/databinding/ObservableBoolean;->set(Z)V

    .line 457
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->viewData:Lru/rocketbank/r2d2/data/binding/transfer/TransferAccountData;

    if-nez p1, :cond_6

    const-string v0, "viewData"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_6
    invoke-virtual {p1}, Lru/rocketbank/r2d2/data/binding/transfer/TransferAccountData;->getProgressVisible()Landroid/databinding/ObservableBoolean;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/databinding/ObservableBoolean;->set(Z)V

    return-void

    .line 461
    :cond_7
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->viewData:Lru/rocketbank/r2d2/data/binding/transfer/TransferAccountData;

    if-nez v0, :cond_8

    const-string v1, "viewData"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_8
    invoke-virtual {v0}, Lru/rocketbank/r2d2/data/binding/transfer/TransferAccountData;->getButtonEnabled()Landroid/databinding/ObservableBoolean;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/databinding/ObservableBoolean;->set(Z)V

    .line 464
    invoke-virtual {p1}, Lru/rocketbank/core/network/model/RefillCardResponse;->getFrom()Lru/rocketbank/core/network/model/RefillCardResponse$RefillModel;

    move-result-object v0

    const-string v1, "refillCardResponse.from"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lru/rocketbank/core/network/model/RefillCardResponse$RefillModel;->getAmount()F

    move-result v0

    invoke-virtual {p1}, Lru/rocketbank/core/network/model/RefillCardResponse;->getFrom()Lru/rocketbank/core/network/model/RefillCardResponse$RefillModel;

    move-result-object v1

    const-string v3, "refillCardResponse.from"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lru/rocketbank/core/network/model/RefillCardResponse$RefillModel;->getCurrencyCode()Ljava/lang/String;

    move-result-object v1

    const-string v3, "refillCardResponse.from.currencyCode"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->getFormattedString(FLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 465
    invoke-virtual {p1}, Lru/rocketbank/core/network/model/RefillCardResponse;->getTo()Lru/rocketbank/core/network/model/RefillCardResponse$RefillModel;

    move-result-object v1

    const-string v3, "refillCardResponse.to"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lru/rocketbank/core/network/model/RefillCardResponse$RefillModel;->getAmount()F

    move-result v1

    invoke-virtual {p1}, Lru/rocketbank/core/network/model/RefillCardResponse;->getTo()Lru/rocketbank/core/network/model/RefillCardResponse$RefillModel;

    move-result-object v3

    const-string v5, "refillCardResponse.to"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lru/rocketbank/core/network/model/RefillCardResponse$RefillModel;->getCurrencyCode()Ljava/lang/String;

    move-result-object v3

    const-string v5, "refillCardResponse.to.currencyCode"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1, v3}, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->getFormattedString(FLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 467
    invoke-virtual {p1}, Lru/rocketbank/core/network/model/RefillCardResponse;->getFrom()Lru/rocketbank/core/network/model/RefillCardResponse$RefillModel;

    move-result-object v3

    const-string v5, "refillCardResponse.from"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lru/rocketbank/core/network/model/RefillCardResponse$RefillModel;->getCurrency()Lru/rocketbank/core/model/enums/Currency;

    move-result-object v3

    invoke-virtual {p1}, Lru/rocketbank/core/network/model/RefillCardResponse;->getTo()Lru/rocketbank/core/network/model/RefillCardResponse$RefillModel;

    move-result-object v5

    const-string v6, "refillCardResponse.to"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Lru/rocketbank/core/network/model/RefillCardResponse$RefillModel;->getCurrency()Lru/rocketbank/core/model/enums/Currency;

    move-result-object v5

    const/4 v6, 0x2

    if-eq v3, v5, :cond_9

    const v3, 0x7f110483

    .line 468
    invoke-virtual {p0, v3}, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v5, "getString(R.string.transfer_desciption_currency)"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 469
    sget-object v5, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    const/4 v5, 0x3

    new-array v7, v5, [Ljava/lang/Object;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    invoke-virtual {p1}, Lru/rocketbank/core/network/model/RefillCardResponse;->getRate()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v6

    invoke-static {v7, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "java.lang.String.format(format, *args)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 470
    iput-object v0, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->transferMessage:Ljava/lang/String;

    goto :goto_0

    :cond_9
    const v3, 0x7f110482

    .line 472
    invoke-virtual {p0, v3}, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v5, "getString(R.string.transfer_desciption)"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 473
    sget-object v5, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    new-array v5, v6, [Ljava/lang/Object;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    invoke-static {v5, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "java.lang.String.format(format, *args)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 476
    :goto_0
    invoke-virtual {p1}, Lru/rocketbank/core/network/model/RefillCardResponse;->getText()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 478
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 481
    :cond_a
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->viewData:Lru/rocketbank/r2d2/data/binding/transfer/TransferAccountData;

    if-nez p1, :cond_b

    const-string v1, "viewData"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_b
    invoke-virtual {p1}, Lru/rocketbank/r2d2/data/binding/transfer/TransferAccountData;->getInfoTextColor()Landroid/databinding/ObservableInt;

    move-result-object p1

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    const v3, 0x7f060228

    invoke-static {v1, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/databinding/ObservableInt;->set(I)V

    .line 482
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->viewData:Lru/rocketbank/r2d2/data/binding/transfer/TransferAccountData;

    if-nez p1, :cond_c

    const-string v1, "viewData"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_c
    invoke-virtual {p1}, Lru/rocketbank/r2d2/data/binding/transfer/TransferAccountData;->getInfoText()Landroid/databinding/ObservableField;

    move-result-object p1

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/databinding/ObservableField;->set(Ljava/lang/Object;)V

    goto :goto_1

    .line 484
    :cond_d
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->viewData:Lru/rocketbank/r2d2/data/binding/transfer/TransferAccountData;

    if-nez v0, :cond_e

    const-string v3, "viewData"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_e
    invoke-virtual {v0}, Lru/rocketbank/r2d2/data/binding/transfer/TransferAccountData;->getButtonEnabled()Landroid/databinding/ObservableBoolean;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/databinding/ObservableBoolean;->set(Z)V

    .line 486
    new-instance v0, Landroid/text/SpannedString;

    invoke-virtual {p1}, Lru/rocketbank/core/network/model/RefillCardResponse;->getText()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-direct {v0, p1}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    .line 487
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->viewData:Lru/rocketbank/r2d2/data/binding/transfer/TransferAccountData;

    if-nez p1, :cond_f

    const-string v3, "viewData"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_f
    invoke-virtual {p1}, Lru/rocketbank/r2d2/data/binding/transfer/TransferAccountData;->getInfoTextColor()Landroid/databinding/ObservableInt;

    move-result-object p1

    move-object v3, p0

    check-cast v3, Landroid/content/Context;

    invoke-static {v3, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/databinding/ObservableInt;->set(I)V

    .line 488
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->viewData:Lru/rocketbank/r2d2/data/binding/transfer/TransferAccountData;

    if-nez p1, :cond_10

    const-string v1, "viewData"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_10
    invoke-virtual {p1}, Lru/rocketbank/r2d2/data/binding/transfer/TransferAccountData;->getInfoText()Landroid/databinding/ObservableField;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 491
    :goto_1
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->viewData:Lru/rocketbank/r2d2/data/binding/transfer/TransferAccountData;

    if-nez p1, :cond_11

    const-string v0, "viewData"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_11
    invoke-virtual {p1}, Lru/rocketbank/r2d2/data/binding/transfer/TransferAccountData;->getProgressVisible()Landroid/databinding/ObservableBoolean;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/databinding/ObservableBoolean;->set(Z)V

    return-void
.end method

.method private final onSendMoneyError(Ljava/lang/Throwable;)V
    .locals 0

    .line 410
    invoke-direct {p0}, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->hideProgress()V

    const p1, 0x7f110322

    .line 411
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->showAlert(I)V

    .line 412
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->getPresenter()Lru/rocketbank/core/utils/presenter/Presenter;

    move-result-object p1

    check-cast p1, Lru/rocketbank/r2d2/fragments/transfers/SafeAndCardTransferPresenter;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/fragments/transfers/SafeAndCardTransferPresenter;->removeSendMoney()V

    return-void
.end method

.method private final onSendMoneyResult(Lru/rocketbank/core/network/model/RefillCardResponse;)V
    .locals 0

    .line 416
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->authorization:Lru/rocketbank/core/user/Authorization;

    invoke-virtual {p1}, Lru/rocketbank/core/user/Authorization;->refreshBackgroundProfile()V

    .line 417
    invoke-direct {p0}, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->hideProgress()V

    .line 418
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->finish()V

    return-void
.end method

.method private final refreshDrawableState(II)V
    .locals 4

    const v0, 0x7f080125

    const v1, 0x7f080124

    if-nez p1, :cond_1

    .line 218
    iget-object v2, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->viewData:Lru/rocketbank/r2d2/data/binding/transfer/TransferAccountData;

    if-nez v2, :cond_0

    const-string v3, "viewData"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v2}, Lru/rocketbank/r2d2/data/binding/transfer/TransferAccountData;->getCurrencyUpDrawable()Landroid/databinding/ObservableField;

    move-result-object v2

    move-object v3, p0

    check-cast v3, Landroid/content/Context;

    invoke-static {v3, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/databinding/ObservableField;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 220
    :cond_1
    iget-object v2, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->viewData:Lru/rocketbank/r2d2/data/binding/transfer/TransferAccountData;

    if-nez v2, :cond_2

    const-string v3, "viewData"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v2}, Lru/rocketbank/r2d2/data/binding/transfer/TransferAccountData;->getCurrencyUpDrawable()Landroid/databinding/ObservableField;

    move-result-object v2

    move-object v3, p0

    check-cast v3, Landroid/content/Context;

    invoke-static {v3, v0}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/databinding/ObservableField;->set(Ljava/lang/Object;)V

    :goto_0
    add-int/lit8 p2, p2, -0x1

    if-ne p1, p2, :cond_4

    .line 224
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->viewData:Lru/rocketbank/r2d2/data/binding/transfer/TransferAccountData;

    if-nez p1, :cond_3

    const-string p2, "viewData"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p1}, Lru/rocketbank/r2d2/data/binding/transfer/TransferAccountData;->getCurrencyDownDrawable()Landroid/databinding/ObservableField;

    move-result-object p1

    move-object p2, p0

    check-cast p2, Landroid/content/Context;

    invoke-static {p2, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/databinding/ObservableField;->set(Ljava/lang/Object;)V

    return-void

    .line 226
    :cond_4
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->viewData:Lru/rocketbank/r2d2/data/binding/transfer/TransferAccountData;

    if-nez p1, :cond_5

    const-string p2, "viewData"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {p1}, Lru/rocketbank/r2d2/data/binding/transfer/TransferAccountData;->getCurrencyDownDrawable()Landroid/databinding/ObservableField;

    move-result-object p1

    move-object p2, p0

    check-cast p2, Landroid/content/Context;

    invoke-static {p2, v0}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/databinding/ObservableField;->set(Ljava/lang/Object;)V

    return-void
.end method

.method private final refreshTextInfo()V
    .locals 8

    .line 422
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->viewData:Lru/rocketbank/r2d2/data/binding/transfer/TransferAccountData;

    if-nez v0, :cond_0

    const-string v1, "viewData"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lru/rocketbank/r2d2/data/binding/transfer/TransferAccountData;->getProgressVisible()Landroid/databinding/ObservableBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/databinding/ObservableBoolean;->set(Z)V

    .line 423
    new-instance v0, Lru/rocketbank/core/network/model/MoveMoneyBody;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->getAmount()D

    move-result-wide v3

    iget-object v5, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->selectedCurrency:Ljava/lang/String;

    iget-object v6, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->fromToken:Ljava/lang/String;

    iget-object v7, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->destinationToken:Ljava/lang/String;

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lru/rocketbank/core/network/model/MoveMoneyBody;-><init>(DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    iget-object v1, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->moveMoneyBodyRxBus:Lru/rocketbank/core/utils/rx/RxBus;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Lru/rocketbank/core/utils/rx/RxBus;->send(Ljava/lang/Object;)V

    return-void

    :cond_1
    return-void
.end method

.method private final registerTextUpdate()V
    .locals 2

    .line 495
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->debouncedEventEmitter:Lrx/Observable;

    if-nez v0, :cond_0

    const-string v1, "debouncedEventEmitter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 496
    :cond_0
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 497
    new-instance v1, Lru/rocketbank/r2d2/activities/safe/TransferActivity$registerTextUpdate$1;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/activities/safe/TransferActivity$registerTextUpdate$1;-><init>(Lru/rocketbank/r2d2/activities/safe/TransferActivity;)V

    check-cast v1, Lrx/functions/Action1;

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->infoSubscription:Lrx/Subscription;

    return-void
.end method

.method private final sendMoney()V
    .locals 7

    .line 123
    invoke-direct {p0}, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->showProgressExecution()V

    .line 124
    new-instance v6, Lru/rocketbank/core/network/model/MoveMoneyBody;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->getAmount()D

    move-result-wide v1

    iget-object v3, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->selectedCurrency:Ljava/lang/String;

    iget-object v4, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->fromToken:Ljava/lang/String;

    iget-object v5, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->destinationToken:Ljava/lang/String;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lru/rocketbank/core/network/model/MoveMoneyBody;-><init>(DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->getPresenter()Lru/rocketbank/core/utils/presenter/Presenter;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/fragments/transfers/SafeAndCardTransferPresenter;

    .line 126
    sget-object v1, Lru/rocketbank/r2d2/activities/safe/TransferActivity$sendMoney$1;->INSTANCE:Lru/rocketbank/r2d2/activities/safe/TransferActivity$sendMoney$1;

    check-cast v1, Lkotlin/jvm/functions/Function2;

    .line 127
    sget-object v2, Lru/rocketbank/r2d2/activities/safe/TransferActivity$sendMoney$2;->INSTANCE:Lru/rocketbank/r2d2/activities/safe/TransferActivity$sendMoney$2;

    check-cast v2, Lkotlin/jvm/functions/Function2;

    .line 128
    sget-object v3, Lru/rocketbank/r2d2/activities/safe/TransferActivity$sendMoney$3;->INSTANCE:Lru/rocketbank/r2d2/activities/safe/TransferActivity$sendMoney$3;

    check-cast v3, Lkotlin/jvm/functions/Function2;

    .line 125
    invoke-virtual {v0, v6, v1, v2, v3}, Lru/rocketbank/r2d2/fragments/transfers/SafeAndCardTransferPresenter;->sendMoney(Lru/rocketbank/core/network/model/MoveMoneyBody;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method private final setCurrencies(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 518
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->fromToken:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 519
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->getCurrency(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->selectedCurrency:Ljava/lang/String;

    .line 522
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->currentAmount:Ljava/math/BigDecimal;

    if-nez v0, :cond_1

    sget-object v0, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    const-string v1, "BigDecimal.ZERO"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    invoke-direct {p0, v0}, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->validateAmount(Ljava/math/BigDecimal;)V

    .line 523
    invoke-direct {p0}, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->refreshTextInfo()V

    .line 525
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    .line 526
    new-array v0, v0, [Ljava/lang/String;

    aput-object p1, v0, v2

    aput-object p2, v0, v1

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->addCurrencies(Ljava/util/List;)V

    goto :goto_0

    .line 528
    :cond_2
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->addCurrencies(Ljava/util/List;)V

    .line 531
    :goto_0
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->binding:Lru/rocketbank/r2d2/databinding/FragmentTransferBetweenCardsBinding;

    if-nez p1, :cond_3

    const-string p2, "binding"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    iget-object p1, p1, Lru/rocketbank/r2d2/databinding/FragmentTransferBetweenCardsBinding;->currencies:Lfr/castorflex/android/verticalviewpager/VerticalViewPager;

    const-string p2, "binding.currencies"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->currencyAdapter:Lru/rocketbank/r2d2/activities/safe/TransferActivity$CurrencyAdapter;

    if-nez p2, :cond_4

    const-string v0, "currencyAdapter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    check-cast p2, Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {p1, p2}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 533
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->binding:Lru/rocketbank/r2d2/databinding/FragmentTransferBetweenCardsBinding;

    if-nez p1, :cond_5

    const-string p2, "binding"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_5
    iget-object p1, p1, Lru/rocketbank/r2d2/databinding/FragmentTransferBetweenCardsBinding;->currencies:Lfr/castorflex/android/verticalviewpager/VerticalViewPager;

    invoke-virtual {p1, v2, v2}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->setCurrentItem(IZ)V

    .line 535
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->currencyAdapter:Lru/rocketbank/r2d2/activities/safe/TransferActivity$CurrencyAdapter;

    if-nez p1, :cond_6

    const-string p2, "currencyAdapter"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_6
    invoke-virtual {p1}, Lru/rocketbank/r2d2/activities/safe/TransferActivity$CurrencyAdapter;->notifyDataSetChanged()V

    .line 537
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->currencyAdapter:Lru/rocketbank/r2d2/activities/safe/TransferActivity$CurrencyAdapter;

    if-nez p1, :cond_7

    const-string p2, "currencyAdapter"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_7
    invoke-virtual {p1}, Lru/rocketbank/r2d2/activities/safe/TransferActivity$CurrencyAdapter;->getCount()I

    move-result p1

    invoke-direct {p0, v2, p1}, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->refreshDrawableState(II)V

    return-void
.end method

.method private final setDefaultDestination(Landroid/support/v4/view/ViewPager;)V
    .locals 3

    .line 336
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->destinationToken:Ljava/lang/String;

    iget-object v1, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->fromToken:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 337
    iput-object v0, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->destinationToken:Ljava/lang/String;

    .line 340
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->destinationToken:Ljava/lang/String;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 342
    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 343
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->destinationAdapter:Lru/rocketbank/r2d2/root/transfer/ProductPager;

    if-nez p1, :cond_1

    const-string v1, "destinationAdapter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1, v0}, Lru/rocketbank/r2d2/root/transfer/ProductPager;->getToken(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->destinationToken:Ljava/lang/String;

    return-void

    .line 345
    :cond_2
    iget-object v1, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->destinationAdapter:Lru/rocketbank/r2d2/root/transfer/ProductPager;

    if-nez v1, :cond_3

    const-string v2, "destinationAdapter"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v1, v0}, Lru/rocketbank/r2d2/root/transfer/ProductPager;->findItem(Ljava/lang/String;)I

    move-result v0

    .line 346
    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 347
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->destinationAdapter:Lru/rocketbank/r2d2/root/transfer/ProductPager;

    if-nez p1, :cond_4

    const-string v1, "destinationAdapter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p1, v0}, Lru/rocketbank/r2d2/root/transfer/ProductPager;->getToken(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->destinationToken:Ljava/lang/String;

    return-void
.end method

.method private final setDefaultSource(Landroid/support/v4/view/ViewPager;)V
    .locals 3

    .line 352
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->fromToken:Ljava/lang/String;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 354
    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 355
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->sourceAdapter:Lru/rocketbank/r2d2/root/transfer/ProductPager;

    if-nez p1, :cond_0

    const-string v1, "sourceAdapter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1, v0}, Lru/rocketbank/r2d2/root/transfer/ProductPager;->getToken(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->fromToken:Ljava/lang/String;

    return-void

    .line 357
    :cond_1
    iget-object v1, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->sourceAdapter:Lru/rocketbank/r2d2/root/transfer/ProductPager;

    if-nez v1, :cond_2

    const-string v2, "sourceAdapter"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v1, v0}, Lru/rocketbank/r2d2/root/transfer/ProductPager;->findItem(Ljava/lang/String;)I

    move-result v0

    .line 358
    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 359
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->sourceAdapter:Lru/rocketbank/r2d2/root/transfer/ProductPager;

    if-nez p1, :cond_3

    const-string v1, "sourceAdapter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p1, v0}, Lru/rocketbank/r2d2/root/transfer/ProductPager;->getToken(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->fromToken:Ljava/lang/String;

    return-void
.end method

.method private final setupViewPagers(Landroid/support/v4/view/ViewPager;Landroid/support/v4/view/ViewPager;)V
    .locals 4

    const-string v0, "window"

    .line 231
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.view.WindowManager"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    check-cast v0, Landroid/view/WindowManager;

    .line 232
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 234
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 235
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 236
    iget v0, v1, Landroid/graphics/Point;->x:I

    .line 238
    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    const/16 v2, 0x112

    invoke-static {v1, v2}, Lru/rocketbank/r2d2/Utils;->dpToPx(Landroid/content/Context;I)I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    .line 239
    invoke-virtual {p1, v0, v1, v0, v1}, Landroid/support/v4/view/ViewPager;->setPadding(IIII)V

    .line 240
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0700f7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/support/v4/view/ViewPager;->setPageMargin(I)V

    .line 241
    iget-object v2, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->sourceAdapter:Lru/rocketbank/r2d2/root/transfer/ProductPager;

    if-nez v2, :cond_1

    const-string v3, "sourceAdapter"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    check-cast v2, Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {p1, v2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 243
    new-instance v2, Lru/rocketbank/r2d2/activities/safe/TransferActivity$setupViewPagers$1;

    invoke-direct {v2, p0}, Lru/rocketbank/r2d2/activities/safe/TransferActivity$setupViewPagers$1;-><init>(Lru/rocketbank/r2d2/activities/safe/TransferActivity;)V

    check-cast v2, Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {p1, v2}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 264
    invoke-virtual {p2, v0, v1, v0, v1}, Landroid/support/v4/view/ViewPager;->setPadding(IIII)V

    .line 265
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getPageMargin()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/support/v4/view/ViewPager;->setPageMargin(I)V

    .line 268
    new-instance p1, Lru/rocketbank/r2d2/activities/safe/TransferActivity$setupViewPagers$2;

    invoke-direct {p1, p0}, Lru/rocketbank/r2d2/activities/safe/TransferActivity$setupViewPagers$2;-><init>(Lru/rocketbank/r2d2/activities/safe/TransferActivity;)V

    check-cast p1, Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 267
    invoke-virtual {p2, p1}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    return-void
.end method

.method private final showAlert(I)V
    .locals 2

    .line 583
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 584
    invoke-virtual {v0, p1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 585
    sget-object v0, Lru/rocketbank/r2d2/activities/safe/TransferActivity$showAlert$1;->INSTANCE:Lru/rocketbank/r2d2/activities/safe/TransferActivity$showAlert$1;

    check-cast v0, Landroid/content/DialogInterface$OnClickListener;

    const v1, 0x104000a

    invoke-virtual {p1, v1, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 587
    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    return-void
.end method

.method private final showProgressExecution()V
    .locals 3

    .line 598
    new-instance v0, Landroid/app/ProgressDialog;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 599
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f110023

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    .line 600
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 601
    new-instance v1, Lru/rocketbank/r2d2/activities/safe/TransferActivity$showProgressExecution$$inlined$with$lambda$1;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/activities/safe/TransferActivity$showProgressExecution$$inlined$with$lambda$1;-><init>(Lru/rocketbank/r2d2/activities/safe/TransferActivity;)V

    check-cast v1, Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 602
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 603
    iput-object v0, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->progressDialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method public static final startActivity(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->Companion:Lru/rocketbank/r2d2/activities/safe/TransferActivity$Companion;

    invoke-virtual {v0, p0, p1}, Lru/rocketbank/r2d2/activities/safe/TransferActivity$Companion;->startActivity(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private final validateAmount(Ljava/math/BigDecimal;)V
    .locals 2

    .line 399
    sget-object v0, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 400
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->viewData:Lru/rocketbank/r2d2/data/binding/transfer/TransferAccountData;

    if-nez p1, :cond_0

    const-string v0, "viewData"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Lru/rocketbank/r2d2/data/binding/transfer/TransferAccountData;->getButtonEnabled()Landroid/databinding/ObservableBoolean;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/databinding/ObservableBoolean;->set(Z)V

    .line 402
    new-instance p1, Landroid/text/SpannedString;

    const-string v0, ""

    check-cast v0, Ljava/lang/CharSequence;

    invoke-direct {p1, v0}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    .line 403
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->viewData:Lru/rocketbank/r2d2/data/binding/transfer/TransferAccountData;

    if-nez v0, :cond_1

    const-string v1, "viewData"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0}, Lru/rocketbank/r2d2/data/binding/transfer/TransferAccountData;->getInfoText()Landroid/databinding/ObservableField;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/databinding/ObservableField;->set(Ljava/lang/Object;)V

    return-void

    .line 405
    :cond_2
    invoke-direct {p0}, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->refreshTextInfo()V

    return-void
.end method


# virtual methods
.method public final _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public final _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final bridge synthetic createPresenter()Lru/rocketbank/core/utils/presenter/Presenter;
    .locals 1

    .line 61
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->createPresenter()Lru/rocketbank/r2d2/fragments/transfers/SafeAndCardTransferPresenter;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/utils/presenter/Presenter;

    return-object v0
.end method

.method public final createPresenter()Lru/rocketbank/r2d2/fragments/transfers/SafeAndCardTransferPresenter;
    .locals 2

    .line 62
    sget-object v0, Lru/rocketbank/core/manager/PresenterManager;->INSTANCE:Lru/rocketbank/core/manager/PresenterManager;

    const-string v0, "388e3157-2adb-4434-8a9b-0d683ee033f3"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    const-string v1, "UUID.fromString(\"388e315\u2026-4434-8a9b-0d683ee033f3\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v1, Lru/rocketbank/r2d2/fragments/transfers/SafeAndCardTransferPresenter;

    invoke-static {v0, v1}, Lru/rocketbank/core/manager/PresenterManager;->getOrCreatePresenter(Ljava/util/UUID;Ljava/lang/Class;)Lru/rocketbank/core/utils/presenter/Presenter;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/fragments/transfers/SafeAndCardTransferPresenter;

    return-object v0
.end method

.method public final getAmount()D
    .locals 2

    .line 510
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->currentAmount:Ljava/math/BigDecimal;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 513
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->currentAmount:Ljava/math/BigDecimal;

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public final getCurrency(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 373
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->authorization:Lru/rocketbank/core/user/Authorization;

    invoke-virtual {v0, p1}, Lru/rocketbank/core/user/Authorization;->getAccountImmediate(Ljava/lang/String;)Lru/rocketbank/core/model/facade/Account;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lru/rocketbank/core/model/facade/Account;->getCurrencyCode()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 374
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->userModel:Lru/rocketbank/core/model/UserModel;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 375
    invoke-virtual {v0}, Lru/rocketbank/core/model/UserModel;->getDeposits()Ljava/util/List;

    move-result-object v0

    const-string v2, "it.deposits"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    .line 376
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->asSequence(Ljava/lang/Iterable;)Lkotlin/sequences/Sequence;

    move-result-object v0

    .line 377
    new-instance v2, Lru/rocketbank/r2d2/activities/safe/TransferActivity$getCurrency$$inlined$let$lambda$1;

    invoke-direct {v2, p1}, Lru/rocketbank/r2d2/activities/safe/TransferActivity$getCurrency$$inlined$let$lambda$1;-><init>(Ljava/lang/String;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    const-string p1, "$receiver"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "predicate"

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3361
    new-instance p1, Lkotlin/sequences/FilteringSequence;

    const/4 v3, 0x1

    invoke-direct {p1, v0, v3, v2}, Lkotlin/sequences/FilteringSequence;-><init>(Lkotlin/sequences/Sequence;ZLkotlin/jvm/functions/Function1;)V

    check-cast p1, Lkotlin/sequences/Sequence;

    .line 631
    invoke-interface {p1}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/model/DepositModel;

    .line 378
    invoke-virtual {p1}, Lru/rocketbank/core/model/DepositModel;->getRocketDeposit()Lru/rocketbank/core/model/RocketDepositModel;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lru/rocketbank/core/model/RocketDepositModel;->getCurrency()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v1

    :cond_2
    return-object v1
.end method

.method public final getCurrencyAdapter()Lru/rocketbank/r2d2/activities/safe/TransferActivity$CurrencyAdapter;
    .locals 2

    .line 84
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->currencyAdapter:Lru/rocketbank/r2d2/activities/safe/TransferActivity$CurrencyAdapter;

    if-nez v0, :cond_0

    const-string v1, "currencyAdapter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getCurrencyManager()Lru/rocketbank/core/manager/CurrencyManager;
    .locals 2

    .line 79
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->currencyManager:Lru/rocketbank/core/manager/CurrencyManager;

    if-nez v0, :cond_0

    const-string v1, "currencyManager"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getDebouncedEventEmitter()Lrx/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable<",
            "Lru/rocketbank/core/network/model/MoveMoneyBody;",
            ">;"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->debouncedEventEmitter:Lrx/Observable;

    if-nez v0, :cond_0

    const-string v1, "debouncedEventEmitter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getMoneyFormatter()Lru/rocketbank/core/utils/MoneyFormatter;
    .locals 2

    .line 78
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->moneyFormatter:Lru/rocketbank/core/utils/MoneyFormatter;

    if-nez v0, :cond_0

    const-string v1, "moneyFormatter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getUpdateEventEmitter()Lrx/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable<",
            "Lru/rocketbank/core/network/model/MoveMoneyBody;",
            ">;"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->updateEventEmitter:Lrx/Observable;

    if-nez v0, :cond_0

    const-string v1, "updateEventEmitter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final nextPressed(Landroid/view/View;)V
    .locals 4

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->transferMessage:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->transferMessage:Ljava/lang/String;

    const v1, 0x7f110116

    .line 116
    new-instance v2, Lru/rocketbank/r2d2/activities/safe/TransferActivity$nextPressed$1;

    invoke-direct {v2, p0}, Lru/rocketbank/r2d2/activities/safe/TransferActivity$nextPressed$1;-><init>(Lru/rocketbank/r2d2/activities/safe/TransferActivity;)V

    check-cast v2, Ljava/lang/Runnable;

    sget-object v3, Lru/rocketbank/r2d2/activities/safe/TransferActivity$nextPressed$2;->INSTANCE:Lru/rocketbank/r2d2/activities/safe/TransferActivity$nextPressed$2;

    check-cast v3, Ljava/lang/Runnable;

    .line 115
    invoke-static {p1, v0, v1, v2, v3}, Lru/rocketbank/r2d2/helpers/UIHelper;->showAlertDialog(Landroid/content/Context;Ljava/lang/String;ILjava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void

    .line 118
    :cond_0
    invoke-direct {p0}, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->sendMoney()V

    return-void
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 132
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/PresenterSecuredActivity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "vibrator"

    .line 134
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Vibrator;

    iput-object p1, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->vibrator:Landroid/os/Vibrator;

    .line 136
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    sget-object v0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->KEY_TOKEN:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->fromToken:Ljava/lang/String;

    .line 138
    new-instance p1, Lru/rocketbank/r2d2/activities/safe/TransferActivity$CurrencyAdapter;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lru/rocketbank/r2d2/activities/safe/TransferActivity$CurrencyAdapter;-><init>(Lru/rocketbank/r2d2/activities/safe/TransferActivity;Landroid/support/v4/app/FragmentManager;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->currencyAdapter:Lru/rocketbank/r2d2/activities/safe/TransferActivity$CurrencyAdapter;

    .line 139
    new-instance p1, Lru/rocketbank/r2d2/root/transfer/ProductPager;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-direct {p1, v0}, Lru/rocketbank/r2d2/root/transfer/ProductPager;-><init>(Landroid/support/v4/app/FragmentManager;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->sourceAdapter:Lru/rocketbank/r2d2/root/transfer/ProductPager;

    .line 140
    new-instance p1, Lru/rocketbank/r2d2/root/transfer/ProductPager;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-direct {p1, v0}, Lru/rocketbank/r2d2/root/transfer/ProductPager;-><init>(Landroid/support/v4/app/FragmentManager;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->destinationAdapter:Lru/rocketbank/r2d2/root/transfer/ProductPager;

    .line 142
    new-instance p1, Lru/rocketbank/r2d2/data/binding/transfer/TransferAccountData;

    const v0, 0x7f110361

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(R.string.pa_transfer)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f11047f

    invoke-virtual {p0, v1}, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(R.string.transfer_cap)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-direct {p1, v0, v1, v2}, Lru/rocketbank/r2d2/data/binding/transfer/TransferAccountData;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object p1, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->viewData:Lru/rocketbank/r2d2/data/binding/transfer/TransferAccountData;

    .line 144
    move-object p1, p0

    check-cast p1, Landroid/app/Activity;

    const v0, 0x7f0c00fe

    invoke-static {p1, v0}, Landroid/databinding/DataBindingUtil;->setContentView(Landroid/app/Activity;I)Landroid/databinding/ViewDataBinding;

    move-result-object p1

    const-string v0, "DataBindingUtil.setConte\u2026t_transfer_between_cards)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lru/rocketbank/r2d2/databinding/FragmentTransferBetweenCardsBinding;

    iput-object p1, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->binding:Lru/rocketbank/r2d2/databinding/FragmentTransferBetweenCardsBinding;

    .line 145
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->binding:Lru/rocketbank/r2d2/databinding/FragmentTransferBetweenCardsBinding;

    if-nez p1, :cond_0

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    move-object v0, p0

    check-cast v0, Lru/rocketbank/r2d2/data/binding/transfer/TransferAccountsHandler;

    invoke-virtual {p1, v0}, Lru/rocketbank/r2d2/databinding/FragmentTransferBetweenCardsBinding;->setHandler(Lru/rocketbank/r2d2/data/binding/transfer/TransferAccountsHandler;)V

    .line 146
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->binding:Lru/rocketbank/r2d2/databinding/FragmentTransferBetweenCardsBinding;

    if-nez p1, :cond_1

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->viewData:Lru/rocketbank/r2d2/data/binding/transfer/TransferAccountData;

    if-nez v0, :cond_2

    const-string v1, "viewData"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p1, v0}, Lru/rocketbank/r2d2/databinding/FragmentTransferBetweenCardsBinding;->setData(Lru/rocketbank/r2d2/data/binding/transfer/TransferAccountData;)V

    .line 148
    new-instance p1, Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawable;

    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    invoke-direct {p1, v0}, Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawable;-><init>(Landroid/content/Context;)V

    const v1, 0x7f060032

    .line 149
    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    .line 151
    invoke-virtual {p1, v1}, Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawable;->setTint(I)V

    .line 152
    iget-object v1, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->binding:Lru/rocketbank/r2d2/databinding/FragmentTransferBetweenCardsBinding;

    if-nez v1, :cond_3

    const-string v3, "binding"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    iget-object v1, v1, Lru/rocketbank/r2d2/databinding/FragmentTransferBetweenCardsBinding;->indeterminateProgress:Landroid/widget/ProgressBar;

    const-string v3, "binding.indeterminateProgress"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 154
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->binding:Lru/rocketbank/r2d2/databinding/FragmentTransferBetweenCardsBinding;

    if-nez p1, :cond_4

    const-string v1, "binding"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    iget-object p1, p1, Lru/rocketbank/r2d2/databinding/FragmentTransferBetweenCardsBinding;->source:Landroid/support/v4/view/ViewPager;

    const-string v1, "binding.source"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->binding:Lru/rocketbank/r2d2/databinding/FragmentTransferBetweenCardsBinding;

    if-nez v1, :cond_5

    const-string v3, "binding"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_5
    iget-object v1, v1, Lru/rocketbank/r2d2/databinding/FragmentTransferBetweenCardsBinding;->destination:Landroid/support/v4/view/ViewPager;

    const-string v3, "binding.destination"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, v1}, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->setupViewPagers(Landroid/support/v4/view/ViewPager;Landroid/support/v4/view/ViewPager;)V

    .line 157
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object p1

    invoke-interface {p1}, Lru/rocketbank/core/dagger/component/RocketComponent;->getMoneyFormatter()Lru/rocketbank/core/utils/MoneyFormatter;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->moneyFormatter:Lru/rocketbank/core/utils/MoneyFormatter;

    .line 158
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object p1

    invoke-interface {p1}, Lru/rocketbank/core/dagger/component/RocketComponent;->getCurrencyManager()Lru/rocketbank/core/manager/CurrencyManager;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->currencyManager:Lru/rocketbank/core/manager/CurrencyManager;

    .line 160
    new-instance p1, Lru/rocketbank/core/utils/rx/RxBus;

    invoke-direct {p1}, Lru/rocketbank/core/utils/rx/RxBus;-><init>()V

    iput-object p1, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->moveMoneyBodyRxBus:Lru/rocketbank/core/utils/rx/RxBus;

    .line 161
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->moveMoneyBodyRxBus:Lru/rocketbank/core/utils/rx/RxBus;

    if-nez p1, :cond_6

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_6
    invoke-virtual {p1}, Lru/rocketbank/core/utils/rx/RxBus;->toObserverable()Lrx/Observable;

    move-result-object p1

    invoke-virtual {p1}, Lrx/Observable;->share()Lrx/Observable;

    move-result-object p1

    const-string v1, "moveMoneyBodyRxBus!!.toObserverable().share()"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->updateEventEmitter:Lrx/Observable;

    .line 162
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->updateEventEmitter:Lrx/Observable;

    if-nez p1, :cond_7

    const-string v1, "updateEventEmitter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_7
    const-wide/16 v3, 0x1f4

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v3, v4, v1}, Lrx/Observable;->debounce(JLjava/util/concurrent/TimeUnit;)Lrx/Observable;

    move-result-object p1

    const-string v1, "updateEventEmitter.debou\u20260, TimeUnit.MILLISECONDS)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->debouncedEventEmitter:Lrx/Observable;

    .line 164
    sget-object p1, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object p1

    invoke-interface {p1}, Lru/rocketbank/core/dagger/component/RocketComponent;->getAuthorization()Lru/rocketbank/core/user/Authorization;

    move-result-object p1

    .line 165
    sget-object v1, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object v1

    invoke-interface {v1}, Lru/rocketbank/core/dagger/component/RocketComponent;->getCurrencyManager()Lru/rocketbank/core/manager/CurrencyManager;

    move-result-object v1

    const-string v3, "context"

    .line 167
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "authorization"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1043
    new-instance v3, Lru/rocketbank/core/utils/MoneyFormatter;

    invoke-direct {v3, v0, p1, v1}, Lru/rocketbank/core/utils/MoneyFormatter;-><init>(Landroid/content/Context;Lru/rocketbank/core/user/Authorization;Lru/rocketbank/core/manager/CurrencyManager;)V

    const/4 p1, 0x1

    .line 1044
    invoke-virtual {v3, p1}, Lru/rocketbank/core/utils/MoneyFormatter;->setFloorAmount(Z)V

    .line 167
    iput-object v3, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->moneyFormatter:Lru/rocketbank/core/utils/MoneyFormatter;

    .line 169
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->binding:Lru/rocketbank/r2d2/databinding/FragmentTransferBetweenCardsBinding;

    if-nez v0, :cond_8

    const-string v1, "binding"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_8
    iget-object v0, v0, Lru/rocketbank/r2d2/databinding/FragmentTransferBetweenCardsBinding;->toolbarBlock:Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;

    if-nez v0, :cond_9

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_9
    iget-object v0, v0, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;->toolbar:Landroid/support/v7/widget/Toolbar;

    const-string v1, "binding.toolbarBlock!!.toolbar"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 171
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 173
    :cond_a
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->viewData:Lru/rocketbank/r2d2/data/binding/transfer/TransferAccountData;

    if-nez p1, :cond_b

    const-string v0, "viewData"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_b
    invoke-virtual {p1}, Lru/rocketbank/r2d2/data/binding/transfer/TransferAccountData;->getButtonEnabled()Landroid/databinding/ObservableBoolean;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/databinding/ObservableBoolean;->set(Z)V

    .line 175
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->binding:Lru/rocketbank/r2d2/databinding/FragmentTransferBetweenCardsBinding;

    if-nez p1, :cond_c

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_c
    iget-object p1, p1, Lru/rocketbank/r2d2/databinding/FragmentTransferBetweenCardsBinding;->currencies:Lfr/castorflex/android/verticalviewpager/VerticalViewPager;

    const-string v0, "binding.currencies"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->currencyAdapter:Lru/rocketbank/r2d2/activities/safe/TransferActivity$CurrencyAdapter;

    if-nez v0, :cond_d

    const-string v1, "currencyAdapter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_d
    check-cast v0, Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {p1, v0}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 176
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->binding:Lru/rocketbank/r2d2/databinding/FragmentTransferBetweenCardsBinding;

    if-nez p1, :cond_e

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_e
    iget-object p1, p1, Lru/rocketbank/r2d2/databinding/FragmentTransferBetweenCardsBinding;->currencies:Lfr/castorflex/android/verticalviewpager/VerticalViewPager;

    new-instance v0, Lru/rocketbank/r2d2/activities/safe/TransferActivity$onCreate$1;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/activities/safe/TransferActivity$onCreate$1;-><init>(Lru/rocketbank/r2d2/activities/safe/TransferActivity;)V

    check-cast v0, Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {p1, v0}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    return-void
.end method

.method public final onDownPressed()V
    .locals 4

    .line 106
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->binding:Lru/rocketbank/r2d2/databinding/FragmentTransferBetweenCardsBinding;

    if-nez v0, :cond_0

    const-string v1, "binding"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget-object v0, v0, Lru/rocketbank/r2d2/databinding/FragmentTransferBetweenCardsBinding;->currencies:Lfr/castorflex/android/verticalviewpager/VerticalViewPager;

    const-string v1, "currencyViewPage"

    .line 107
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->getCurrentItem()I

    move-result v1

    .line 108
    iget-object v2, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->currencyAdapter:Lru/rocketbank/r2d2/activities/safe/TransferActivity$CurrencyAdapter;

    if-nez v2, :cond_1

    const-string v3, "currencyAdapter"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v2}, Lru/rocketbank/r2d2/activities/safe/TransferActivity$CurrencyAdapter;->getCount()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_2

    add-int/2addr v1, v3

    .line 109
    invoke-virtual {v0, v1, v3}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->setCurrentItem(IZ)V

    :cond_2
    return-void
.end method

.method protected final onPause()V
    .locals 1

    .line 384
    invoke-super {p0}, Lru/rocketbank/r2d2/PresenterSecuredActivity;->onPause()V

    .line 386
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->infoSubscription:Lrx/Subscription;

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->unsubscribe(Lrx/Subscription;)V

    .line 387
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/mikepenz/materialdrawer/util/KeyboardUtil;->hideKeyboard(Landroid/app/Activity;)V

    return-void
.end method

.method protected final onResume()V
    .locals 3

    .line 297
    invoke-super {p0}, Lru/rocketbank/r2d2/PresenterSecuredActivity;->onResume()V

    .line 298
    invoke-direct {p0}, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->registerTextUpdate()V

    .line 300
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->binding:Lru/rocketbank/r2d2/databinding/FragmentTransferBetweenCardsBinding;

    if-nez v0, :cond_0

    const-string v1, "binding"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget-object v0, v0, Lru/rocketbank/r2d2/databinding/FragmentTransferBetweenCardsBinding;->inputAmount:Lru/rocketbank/core/widgets/RocketEditText;

    const-string v1, "binding.inputAmount"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 301
    new-instance v1, Lru/rocketbank/core/widgets/listener/AddFormatListener;

    move-object v2, v0

    check-cast v2, Landroid/widget/EditText;

    invoke-direct {v1, v2}, Lru/rocketbank/core/widgets/listener/AddFormatListener;-><init>(Landroid/widget/EditText;)V

    check-cast v1, Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 302
    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0}, Lcom/jakewharton/rxbinding/widget/RxTextView;->afterTextChangeEvents(Landroid/widget/TextView;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lru/rocketbank/core/utils/rx/TextObserverToDecimal;

    invoke-direct {v1}, Lru/rocketbank/core/utils/rx/TextObserverToDecimal;-><init>()V

    check-cast v1, Lrx/functions/Func1;

    invoke-virtual {v0, v1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->amountChangeSubscription:Lrx/functions/Action1;

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    return-void
.end method

.method public final onUpPressed()V
    .locals 3

    .line 98
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->binding:Lru/rocketbank/r2d2/databinding/FragmentTransferBetweenCardsBinding;

    if-nez v0, :cond_0

    const-string v1, "binding"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget-object v0, v0, Lru/rocketbank/r2d2/databinding/FragmentTransferBetweenCardsBinding;->currencies:Lfr/castorflex/android/verticalviewpager/VerticalViewPager;

    const-string v1, "currencyViewPage"

    .line 99
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->getCurrentItem()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .line 101
    invoke-virtual {v0, v1, v2}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->setCurrentItem(IZ)V

    :cond_1
    return-void
.end method

.method public final onUserModel(Lru/rocketbank/core/model/UserModel;)V
    .locals 6

    const-string v0, "userModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 306
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/PresenterSecuredActivity;->onUserModel(Lru/rocketbank/core/model/UserModel;)V

    .line 308
    iput-object p1, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->userModel:Lru/rocketbank/core/model/UserModel;

    .line 310
    invoke-static {p1}, Lru/rocketbank/core/user/Authorization;->getAccountsImmediate(Lru/rocketbank/core/model/UserModel;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 623
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault$251b5948(Ljava/lang/Iterable;)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 624
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 625
    check-cast v1, Lru/rocketbank/core/model/facade/Account;

    .line 311
    invoke-virtual {v1}, Lru/rocketbank/core/model/facade/Account;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lru/rocketbank/core/model/facade/Account;->getCurrencyCode()Ljava/lang/String;

    move-result-object v1

    .line 2037
    new-instance v3, Lkotlin/Pair;

    invoke-direct {v3, v2, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 311
    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 626
    :cond_0
    check-cast v0, Ljava/util/List;

    .line 312
    move-object p1, v0

    check-cast p1, Ljava/lang/Iterable;

    .line 627
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault$251b5948(Ljava/lang/Iterable;)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 628
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 629
    check-cast v2, Lkotlin/Pair;

    .line 312
    invoke-virtual {v2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 630
    :cond_1
    check-cast v1, Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    .line 312
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->fromToken:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/collections/CollectionsKt;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_5

    .line 314
    iget-object v1, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->fromToken:Ljava/lang/String;

    iput-object v1, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->destinationToken:Ljava/lang/String;

    .line 315
    iget-object v1, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->authorization:Lru/rocketbank/core/user/Authorization;

    iget-object v2, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->destinationToken:Ljava/lang/String;

    if-nez v2, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    invoke-virtual {v1, v2}, Lru/rocketbank/core/user/Authorization;->getProductImmediate(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 316
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 317
    instance-of v3, v1, Lru/rocketbank/core/model/DepositModel;

    if-eqz v3, :cond_7

    .line 318
    iget-object v3, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->destinationAdapter:Lru/rocketbank/r2d2/root/transfer/ProductPager;

    if-nez v3, :cond_3

    const-string v4, "destinationAdapter"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    check-cast v2, Ljava/util/Collection;

    check-cast v1, Lru/rocketbank/core/model/DepositModel;

    invoke-virtual {v1}, Lru/rocketbank/core/model/DepositModel;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lru/rocketbank/core/model/DepositModel;->getRocketDeposit()Lru/rocketbank/core/model/RocketDepositModel;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lru/rocketbank/core/model/RocketDepositModel;->getCurrency()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    .line 3037
    :goto_2
    new-instance v5, Lkotlin/Pair;

    invoke-direct {v5, v4, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 318
    invoke-static {v2, v5}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v3, v1}, Lru/rocketbank/r2d2/root/transfer/ProductPager;->setProducts(Ljava/util/List;)V

    goto :goto_3

    .line 320
    :cond_5
    iget-object v1, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->destinationAdapter:Lru/rocketbank/r2d2/root/transfer/ProductPager;

    if-nez v1, :cond_6

    const-string v2, "destinationAdapter"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_6
    invoke-virtual {v1, v0}, Lru/rocketbank/r2d2/root/transfer/ProductPager;->setProducts(Ljava/util/List;)V

    .line 322
    :cond_7
    :goto_3
    iget-object v1, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->sourceAdapter:Lru/rocketbank/r2d2/root/transfer/ProductPager;

    if-nez v1, :cond_8

    const-string v2, "sourceAdapter"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_8
    invoke-virtual {v1, v0}, Lru/rocketbank/r2d2/root/transfer/ProductPager;->setProducts(Ljava/util/List;)V

    .line 323
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->binding:Lru/rocketbank/r2d2/databinding/FragmentTransferBetweenCardsBinding;

    if-nez v0, :cond_9

    const-string v1, "binding"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_9
    iget-object v0, v0, Lru/rocketbank/r2d2/databinding/FragmentTransferBetweenCardsBinding;->source:Landroid/support/v4/view/ViewPager;

    const-string v1, "binding.source"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->setDefaultSource(Landroid/support/v4/view/ViewPager;)V

    .line 326
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->fromToken:Ljava/lang/String;

    if-eqz v0, :cond_c

    if-eqz p1, :cond_b

    .line 327
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->destinationToken:Ljava/lang/String;

    if-nez p1, :cond_a

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_a
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->getCurrency(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->refreshSource(Ljava/lang/String;)V

    .line 328
    :cond_b
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->refreshTargetDestination(Ljava/lang/String;)V

    .line 331
    :cond_c
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->binding:Lru/rocketbank/r2d2/databinding/FragmentTransferBetweenCardsBinding;

    if-nez p1, :cond_d

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_d
    iget-object p1, p1, Lru/rocketbank/r2d2/databinding/FragmentTransferBetweenCardsBinding;->destination:Landroid/support/v4/view/ViewPager;

    const-string v0, "binding.destination"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->setDefaultDestination(Landroid/support/v4/view/ViewPager;)V

    .line 332
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->updateScreen()V

    return-void
.end method

.method public final refreshSource(Ljava/lang/String;)V
    .locals 2

    .line 197
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->sourceAdapter:Lru/rocketbank/r2d2/root/transfer/ProductPager;

    if-nez v0, :cond_0

    const-string v1, "sourceAdapter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/root/transfer/ProductPager;->excludeCurrency(Ljava/lang/String;)V

    .line 199
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->binding:Lru/rocketbank/r2d2/databinding/FragmentTransferBetweenCardsBinding;

    if-nez p1, :cond_1

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    iget-object p1, p1, Lru/rocketbank/r2d2/databinding/FragmentTransferBetweenCardsBinding;->source:Landroid/support/v4/view/ViewPager;

    const-string v0, "sourceViewPager"

    .line 200
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->sourceAdapter:Lru/rocketbank/r2d2/root/transfer/ProductPager;

    if-nez v0, :cond_2

    const-string v1, "sourceAdapter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    check-cast v0, Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 201
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->sourceAdapter:Lru/rocketbank/r2d2/root/transfer/ProductPager;

    if-nez p1, :cond_3

    const-string v0, "sourceAdapter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/transfer/ProductPager;->notifyDataSetChanged()V

    .line 203
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->binding:Lru/rocketbank/r2d2/databinding/FragmentTransferBetweenCardsBinding;

    if-nez p1, :cond_4

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    iget-object p1, p1, Lru/rocketbank/r2d2/databinding/FragmentTransferBetweenCardsBinding;->source:Landroid/support/v4/view/ViewPager;

    const-string v0, "binding.source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->setDefaultSource(Landroid/support/v4/view/ViewPager;)V

    return-void
.end method

.method public final refreshTargetDestination(Ljava/lang/String;)V
    .locals 2

    const-string v0, "selectedSourceToken"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->destinationAdapter:Lru/rocketbank/r2d2/root/transfer/ProductPager;

    if-nez v0, :cond_0

    const-string v1, "destinationAdapter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/root/transfer/ProductPager;->excludeToken(Ljava/lang/String;)V

    .line 209
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->binding:Lru/rocketbank/r2d2/databinding/FragmentTransferBetweenCardsBinding;

    if-nez p1, :cond_1

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    iget-object p1, p1, Lru/rocketbank/r2d2/databinding/FragmentTransferBetweenCardsBinding;->destination:Landroid/support/v4/view/ViewPager;

    const-string v0, "destinationViewPager"

    .line 210
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->destinationAdapter:Lru/rocketbank/r2d2/root/transfer/ProductPager;

    if-nez v0, :cond_2

    const-string v1, "destinationAdapter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    check-cast v0, Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 211
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->destinationAdapter:Lru/rocketbank/r2d2/root/transfer/ProductPager;

    if-nez p1, :cond_3

    const-string v0, "destinationAdapter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/transfer/ProductPager;->notifyDataSetChanged()V

    .line 213
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->binding:Lru/rocketbank/r2d2/databinding/FragmentTransferBetweenCardsBinding;

    if-nez p1, :cond_4

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    iget-object p1, p1, Lru/rocketbank/r2d2/databinding/FragmentTransferBetweenCardsBinding;->destination:Landroid/support/v4/view/ViewPager;

    const-string v0, "binding.destination"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->setDefaultDestination(Landroid/support/v4/view/ViewPager;)V

    return-void
.end method

.method public final setCurrencyAdapter(Lru/rocketbank/r2d2/activities/safe/TransferActivity$CurrencyAdapter;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    iput-object p1, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->currencyAdapter:Lru/rocketbank/r2d2/activities/safe/TransferActivity$CurrencyAdapter;

    return-void
.end method

.method public final setCurrencyManager(Lru/rocketbank/core/manager/CurrencyManager;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    iput-object p1, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->currencyManager:Lru/rocketbank/core/manager/CurrencyManager;

    return-void
.end method

.method public final setDebouncedEventEmitter(Lrx/Observable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable<",
            "Lru/rocketbank/core/network/model/MoveMoneyBody;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    iput-object p1, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->debouncedEventEmitter:Lrx/Observable;

    return-void
.end method

.method public final setMoneyFormatter(Lru/rocketbank/core/utils/MoneyFormatter;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    iput-object p1, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->moneyFormatter:Lru/rocketbank/core/utils/MoneyFormatter;

    return-void
.end method

.method public final setToken(Ljava/lang/String;)V
    .locals 1

    const-string v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 579
    iput-object p1, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->token:Ljava/lang/String;

    return-void
.end method

.method public final setUpdateEventEmitter(Lrx/Observable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable<",
            "Lru/rocketbank/core/network/model/MoveMoneyBody;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    iput-object p1, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->updateEventEmitter:Lrx/Observable;

    return-void
.end method

.method public final updateScreen()V
    .locals 3

    .line 364
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->fromToken:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->fromToken:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->getCurrency(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 365
    :goto_0
    iget-object v2, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->destinationToken:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v1, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->destinationToken:Ljava/lang/String;

    if-nez v1, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    invoke-virtual {p0, v1}, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->getCurrency(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_3
    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    .line 367
    invoke-direct {p0, v0, v1}, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->setCurrencies(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void
.end method
