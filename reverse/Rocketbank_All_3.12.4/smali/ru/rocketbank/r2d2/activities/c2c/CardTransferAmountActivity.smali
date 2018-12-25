.class public final Lru/rocketbank/r2d2/activities/c2c/CardTransferAmountActivity;
.super Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity;
.source "CardTransferAmountActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/activities/c2c/CardTransferAmountActivity$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lru/rocketbank/r2d2/activities/c2c/CardTransferAmountActivity$Companion;


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private isPressedNext:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/r2d2/activities/c2c/CardTransferAmountActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/activities/c2c/CardTransferAmountActivity$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/r2d2/activities/c2c/CardTransferAmountActivity;->Companion:Lru/rocketbank/r2d2/activities/c2c/CardTransferAmountActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity;-><init>()V

    return-void
.end method

.method private final makeTransfer()V
    .locals 5

    .line 50
    iget-boolean v0, p0, Lru/rocketbank/r2d2/activities/c2c/CardTransferAmountActivity;->isPressedNext:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 54
    iput-boolean v0, p0, Lru/rocketbank/r2d2/activities/c2c/CardTransferAmountActivity;->isPressedNext:Z

    .line 56
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/c2c/CardTransferAmountActivity;->getCardModel()Lru/rocketbank/core/model/CardModel;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/c2c/CardTransferAmountActivity;->getCardModel()Lru/rocketbank/core/model/CardModel;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    invoke-virtual {v0}, Lru/rocketbank/core/model/CardModel;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 58
    :goto_0
    new-instance v1, Lru/rocketbank/core/network/model/SendMoneyBody;

    invoke-direct {v1}, Lru/rocketbank/core/network/model/SendMoneyBody;-><init>()V

    .line 59
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/c2c/CardTransferAmountActivity;->getAmount()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lru/rocketbank/core/network/model/SendMoneyBody;->setAmount(D)V

    .line 60
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/c2c/CardTransferAmountActivity;->extractPan()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lru/rocketbank/core/network/model/SendMoneyBody;->setSourceCard(Ljava/lang/String;)V

    .line 61
    invoke-virtual {v1, v0}, Lru/rocketbank/core/network/model/SendMoneyBody;->setLinkedCardId(Ljava/lang/String;)V

    .line 63
    sget-object v0, Lru/rocketbank/r2d2/activities/c2c/CardTransferProcessActivity;->Companion:Lru/rocketbank/r2d2/activities/c2c/CardTransferProcessActivity$Companion;

    move-object v2, p0

    check-cast v2, Landroid/content/Context;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/c2c/CardTransferAmountActivity;->getCardModel()Lru/rocketbank/core/model/CardModel;

    move-result-object v3

    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/c2c/CardTransferAmountActivity;->getCardData()Lru/rocketbank/core/model/CardData;

    move-result-object v4

    invoke-virtual {v0, v2, v1, v3, v4}, Lru/rocketbank/r2d2/activities/c2c/CardTransferProcessActivity$Companion;->newInstance(Landroid/content/Context;Lru/rocketbank/core/network/model/SendMoneyBody;Lru/rocketbank/core/model/CardModel;Lru/rocketbank/core/model/CardData;)V

    return-void
.end method


# virtual methods
.method public final _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/activities/c2c/CardTransferAmountActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/activities/c2c/CardTransferAmountActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public final _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lru/rocketbank/r2d2/activities/c2c/CardTransferAmountActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/activities/c2c/CardTransferAmountActivity;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/c2c/CardTransferAmountActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/r2d2/activities/c2c/CardTransferAmountActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final bridge synthetic createPresenter()Lru/rocketbank/core/utils/presenter/Presenter;
    .locals 1

    .line 17
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/c2c/CardTransferAmountActivity;->createPresenter()Lru/rocketbank/r2d2/activities/c2c/TransferAmountPresenter;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/utils/presenter/Presenter;

    return-object v0
.end method

.method public final createPresenter()Lru/rocketbank/r2d2/activities/c2c/TransferAmountPresenter;
    .locals 2

    .line 30
    sget-object v0, Lru/rocketbank/core/manager/PresenterManager;->INSTANCE:Lru/rocketbank/core/manager/PresenterManager;

    const-string v0, "a9ebb036-cbb1-4975-8df5-dcc42534873f"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    const-string v1, "UUID.fromString(\"a9ebb03\u2026-4975-8df5-dcc42534873f\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v1, Lru/rocketbank/r2d2/activities/c2c/TransferAmountPresenter;

    invoke-static {v0, v1}, Lru/rocketbank/core/manager/PresenterManager;->getOrCreatePresenter(Ljava/util/UUID;Ljava/lang/Class;)Lru/rocketbank/core/utils/presenter/Presenter;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/activities/c2c/TransferAmountPresenter;

    return-object v0
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 39
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Lru/rocketbank/r2d2/activities/c2c/CardTransferAmountActivity;->isPressedNext:Z

    const v0, 0x7f11047f

    .line 42
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/activities/c2c/CardTransferAmountActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(R.string.transfer_cap)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f110115

    invoke-virtual {p0, v1}, Lru/rocketbank/r2d2/activities/c2c/CardTransferAmountActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(R.string.cta_amount)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1, p1}, Lru/rocketbank/r2d2/activities/c2c/CardTransferAmountActivity;->init(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final onNextPressed()V
    .locals 1

    .line 33
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/mikepenz/materialize/util/KeyboardUtil;->hideKeyboard(Landroid/app/Activity;)V

    .line 34
    invoke-direct {p0}, Lru/rocketbank/r2d2/activities/c2c/CardTransferAmountActivity;->makeTransfer()V

    .line 35
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/c2c/CardTransferAmountActivity;->finish()V

    return-void
.end method

.method public final requestComission()V
    .locals 0

    .line 46
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/c2c/CardTransferAmountActivity;->requestOutComeComission()V

    return-void
.end method

.method public final updateBin(Lru/rocketbank/core/model/dto/BinResponseData;)V
    .locals 2

    const-string v0, "binResponseData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/BinResponseData;->getTransferAdvice()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 22
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/c2c/CardTransferAmountActivity;->getAmountCardBinding()Lru/rocketbank/r2d2/data/binding/AmountCardBinding;

    move-result-object v0

    invoke-virtual {v0}, Lru/rocketbank/r2d2/data/binding/AmountCardBinding;->getCommentVisibility()Landroid/databinding/ObservableInt;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/databinding/ObservableInt;->set(I)V

    .line 23
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/c2c/CardTransferAmountActivity;->getAmountCardBinding()Lru/rocketbank/r2d2/data/binding/AmountCardBinding;

    move-result-object v0

    invoke-virtual {v0}, Lru/rocketbank/r2d2/data/binding/AmountCardBinding;->getComment()Landroid/databinding/ObservableField;

    move-result-object v0

    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/BinResponseData;->getTransferAdvice()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 24
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/c2c/CardTransferAmountActivity;->getAmountCardBinding()Lru/rocketbank/r2d2/data/binding/AmountCardBinding;

    move-result-object p1

    invoke-virtual {p1}, Lru/rocketbank/r2d2/data/binding/AmountCardBinding;->getCommentVisibility()Landroid/databinding/ObservableInt;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/databinding/ObservableInt;->set(I)V

    return-void

    .line 26
    :cond_0
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/c2c/CardTransferAmountActivity;->getAmountCardBinding()Lru/rocketbank/r2d2/data/binding/AmountCardBinding;

    move-result-object p1

    invoke-virtual {p1}, Lru/rocketbank/r2d2/data/binding/AmountCardBinding;->getCommentVisibility()Landroid/databinding/ObservableInt;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/databinding/ObservableInt;->set(I)V

    return-void
.end method
