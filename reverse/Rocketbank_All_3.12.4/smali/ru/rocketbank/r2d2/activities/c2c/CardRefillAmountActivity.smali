.class public final Lru/rocketbank/r2d2/activities/c2c/CardRefillAmountActivity;
.super Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity;
.source "CardRefillAmountActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/activities/c2c/CardRefillAmountActivity$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCardRefillAmountActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CardRefillAmountActivity.kt\nru/rocketbank/r2d2/activities/c2c/CardRefillAmountActivity\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,86:1\n591#2,9:87\n49#3,2:96\n49#3,2:98\n*E\n*S KotlinDebug\n*F\n+ 1 CardRefillAmountActivity.kt\nru/rocketbank/r2d2/activities/c2c/CardRefillAmountActivity\n*L\n64#1,9:87\n66#1,2:96\n67#1,2:98\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lru/rocketbank/r2d2/activities/c2c/CardRefillAmountActivity$Companion;


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private enoughMoney:Z

.field private isPressedNext:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/r2d2/activities/c2c/CardRefillAmountActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/activities/c2c/CardRefillAmountActivity$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/r2d2/activities/c2c/CardRefillAmountActivity;->Companion:Lru/rocketbank/r2d2/activities/c2c/CardRefillAmountActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity;-><init>()V

    const/4 v0, 0x1

    .line 31
    iput-boolean v0, p0, Lru/rocketbank/r2d2/activities/c2c/CardRefillAmountActivity;->enoughMoney:Z

    return-void
.end method


# virtual methods
.method public final _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/activities/c2c/CardRefillAmountActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/activities/c2c/CardRefillAmountActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public final _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lru/rocketbank/r2d2/activities/c2c/CardRefillAmountActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/activities/c2c/CardRefillAmountActivity;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/c2c/CardRefillAmountActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/r2d2/activities/c2c/CardRefillAmountActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final bridge synthetic createPresenter()Lru/rocketbank/core/utils/presenter/Presenter;
    .locals 1

    .line 17
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/c2c/CardRefillAmountActivity;->createPresenter()Lru/rocketbank/r2d2/activities/c2c/TransferAmountPresenter;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/utils/presenter/Presenter;

    return-object v0
.end method

.method public final createPresenter()Lru/rocketbank/r2d2/activities/c2c/TransferAmountPresenter;
    .locals 2

    .line 18
    sget-object v0, Lru/rocketbank/core/manager/PresenterManager;->INSTANCE:Lru/rocketbank/core/manager/PresenterManager;

    const-string v0, "767775fc-cfde-4df1-8324-8369cd4874ef"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    const-string v1, "UUID.fromString(\"767775f\u2026-4df1-8324-8369cd4874ef\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v1, Lru/rocketbank/r2d2/activities/c2c/TransferAmountPresenter;

    invoke-static {v0, v1}, Lru/rocketbank/core/manager/PresenterManager;->getOrCreatePresenter(Ljava/util/UUID;Ljava/lang/Class;)Lru/rocketbank/core/utils/presenter/Presenter;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/activities/c2c/TransferAmountPresenter;

    return-object v0
.end method

.method protected final getEnoughMoney()Z
    .locals 1

    .line 31
    iget-boolean v0, p0, Lru/rocketbank/r2d2/activities/c2c/CardRefillAmountActivity;->enoughMoney:Z

    return v0
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 23
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lru/rocketbank/r2d2/activities/c2c/CardRefillAmountActivity;->isPressedNext:Z

    const v0, 0x7f1103b4

    .line 27
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/activities/c2c/CardRefillAmountActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(R.string.refill_cap)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f110055

    invoke-virtual {p0, v1}, Lru/rocketbank/r2d2/activities/c2c/CardRefillAmountActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(R.string.amount_title)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1, p1}, Lru/rocketbank/r2d2/activities/c2c/CardRefillAmountActivity;->init(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 28
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/c2c/CardRefillAmountActivity;->getActivityCardTransferAmountBinding()Lru/rocketbank/r2d2/databinding/ActivityCardTransferAmountBinding;

    move-result-object p1

    iget-object p1, p1, Lru/rocketbank/r2d2/databinding/ActivityCardTransferAmountBinding;->accountWidget:Lru/rocketbank/r2d2/widget/AccountWidget;

    const-string v0, "activityCardTransferAmountBinding.accountWidget"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    const-string v0, "$receiver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x8

    .line 1014
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final onNextPressed()V
    .locals 6

    .line 47
    iget-boolean v0, p0, Lru/rocketbank/r2d2/activities/c2c/CardRefillAmountActivity;->isPressedNext:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 51
    iput-boolean v0, p0, Lru/rocketbank/r2d2/activities/c2c/CardRefillAmountActivity;->isPressedNext:Z

    .line 53
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/c2c/CardRefillAmountActivity;->getCardModel()Lru/rocketbank/core/model/CardModel;

    move-result-object v1

    .line 54
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/c2c/CardRefillAmountActivity;->getCardData()Lru/rocketbank/core/model/CardData;

    move-result-object v2

    .line 56
    new-instance v3, Lru/rocketbank/core/network/model/CardBody;

    invoke-direct {v3}, Lru/rocketbank/core/network/model/CardBody;-><init>()V

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    .line 57
    invoke-virtual {v1}, Lru/rocketbank/core/model/CardModel;->getToken()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_1
    move-object v5, v4

    :goto_0
    invoke-virtual {v3, v5}, Lru/rocketbank/core/network/model/CardBody;->setCardId(Ljava/lang/String;)V

    if-eqz v1, :cond_2

    .line 58
    invoke-virtual {v1}, Lru/rocketbank/core/model/CardModel;->getPan()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_2
    move-object v5, v4

    :goto_1
    invoke-virtual {v3, v5}, Lru/rocketbank/core/network/model/CardBody;->setCardNumber(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/c2c/CardRefillAmountActivity;->getCardData()Lru/rocketbank/core/model/CardData;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lru/rocketbank/core/model/CardData;->getCvv()Ljava/lang/String;

    move-result-object v4

    :cond_3
    invoke-virtual {v3, v4}, Lru/rocketbank/core/network/model/CardBody;->setCvv(Ljava/lang/String;)V

    if-nez v1, :cond_b

    if-eqz v2, :cond_b

    .line 62
    invoke-virtual {v2}, Lru/rocketbank/core/model/CardData;->getPan()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lru/rocketbank/core/network/model/CardBody;->setCardNumber(Ljava/lang/String;)V

    .line 63
    invoke-virtual {v2}, Lru/rocketbank/core/model/CardData;->getExpirationDate()Ljava/lang/String;

    move-result-object v1

    .line 64
    check-cast v1, Ljava/lang/CharSequence;

    const-string v2, "/"

    new-instance v4, Lkotlin/text/Regex;

    invoke-direct {v4, v2}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v4, v1, v2}, Lkotlin/text/Regex;->split(Ljava/lang/CharSequence;I)Ljava/util/List;

    move-result-object v1

    .line 87
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6

    .line 88
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v1, v4}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v4

    .line 89
    :cond_4
    invoke-interface {v4}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 90
    invoke-interface {v4}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 64
    check-cast v5, Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_5

    move v5, v0

    goto :goto_2

    :cond_5
    move v5, v2

    :goto_2
    if-nez v5, :cond_4

    .line 91
    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v4}, Ljava/util/ListIterator;->nextIndex()I

    move-result v4

    add-int/2addr v4, v0

    invoke-static {v1, v4}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v1

    goto :goto_3

    .line 95
    :cond_6
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 66
    :goto_3
    check-cast v1, Ljava/util/Collection;

    if-nez v1, :cond_7

    .line 96
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type java.util.Collection<T>"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_7
    new-array v4, v2, [Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_8

    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    check-cast v4, [Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Lru/rocketbank/core/network/model/CardBody;->setExpiryMonth(Ljava/lang/String;)V

    if-nez v1, :cond_9

    .line 98
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type java.util.Collection<T>"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_9
    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_a

    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    check-cast v1, [Ljava/lang/String;

    aget-object v0, v1, v0

    invoke-virtual {v3, v0}, Lru/rocketbank/core/network/model/CardBody;->setExpiryYear(Ljava/lang/String;)V

    .line 70
    :cond_b
    sget-object v0, Lru/rocketbank/r2d2/activities/c2c/CardRefillActivity;->Companion:Lru/rocketbank/r2d2/activities/c2c/CardRefillActivity$Companion;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/c2c/CardRefillAmountActivity;->getAmount()D

    move-result-wide v4

    invoke-virtual {v0, v1, v4, v5, v3}, Lru/rocketbank/r2d2/activities/c2c/CardRefillActivity$Companion;->newInstance(Landroid/content/Context;DLru/rocketbank/core/network/model/CardBody;)V

    .line 71
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/c2c/CardRefillAmountActivity;->finish()V

    return-void
.end method

.method public final requestComission()V
    .locals 0

    .line 44
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/c2c/CardRefillAmountActivity;->requestIncomeComeComission()V

    return-void
.end method

.method protected final setEnoughMoney(Z)V
    .locals 0

    .line 31
    iput-boolean p1, p0, Lru/rocketbank/r2d2/activities/c2c/CardRefillAmountActivity;->enoughMoney:Z

    return-void
.end method

.method public final updateBin(Lru/rocketbank/core/model/dto/BinResponseData;)V
    .locals 2

    const-string v0, "binResponseData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/BinResponseData;->getRefillAdvice()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 35
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/c2c/CardRefillAmountActivity;->getAmountCardBinding()Lru/rocketbank/r2d2/data/binding/AmountCardBinding;

    move-result-object v0

    invoke-virtual {v0}, Lru/rocketbank/r2d2/data/binding/AmountCardBinding;->getCommentVisibility()Landroid/databinding/ObservableInt;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/databinding/ObservableInt;->set(I)V

    .line 36
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/c2c/CardRefillAmountActivity;->getAmountCardBinding()Lru/rocketbank/r2d2/data/binding/AmountCardBinding;

    move-result-object v0

    invoke-virtual {v0}, Lru/rocketbank/r2d2/data/binding/AmountCardBinding;->getComment()Landroid/databinding/ObservableField;

    move-result-object v0

    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/BinResponseData;->getRefillAdvice()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 37
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/c2c/CardRefillAmountActivity;->getAmountCardBinding()Lru/rocketbank/r2d2/data/binding/AmountCardBinding;

    move-result-object p1

    invoke-virtual {p1}, Lru/rocketbank/r2d2/data/binding/AmountCardBinding;->getCommentVisibility()Landroid/databinding/ObservableInt;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/databinding/ObservableInt;->set(I)V

    return-void

    .line 40
    :cond_0
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/c2c/CardRefillAmountActivity;->getAmountCardBinding()Lru/rocketbank/r2d2/data/binding/AmountCardBinding;

    move-result-object p1

    invoke-virtual {p1}, Lru/rocketbank/r2d2/data/binding/AmountCardBinding;->getCommentVisibility()Landroid/databinding/ObservableInt;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/databinding/ObservableInt;->set(I)V

    return-void
.end method
