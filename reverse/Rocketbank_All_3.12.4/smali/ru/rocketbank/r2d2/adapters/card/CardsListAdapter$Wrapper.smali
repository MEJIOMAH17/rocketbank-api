.class public final Lru/rocketbank/r2d2/adapters/card/CardsListAdapter$Wrapper;
.super Ljava/lang/Object;
.source "CardsListAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/adapters/card/CardsListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Wrapper"
.end annotation


# instance fields
.field private final full:Lru/rocketbank/r2d2/databinding/LayoutCardWithActionsBinding;

.field private final onlyPan:Lru/rocketbank/r2d2/databinding/CardTransferHeaderLayoutBinding;


# direct methods
.method public constructor <init>(Lru/rocketbank/r2d2/databinding/LayoutCardWithActionsBinding;Lru/rocketbank/r2d2/databinding/CardTransferHeaderLayoutBinding;)V
    .locals 0

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/rocketbank/r2d2/adapters/card/CardsListAdapter$Wrapper;->full:Lru/rocketbank/r2d2/databinding/LayoutCardWithActionsBinding;

    iput-object p2, p0, Lru/rocketbank/r2d2/adapters/card/CardsListAdapter$Wrapper;->onlyPan:Lru/rocketbank/r2d2/databinding/CardTransferHeaderLayoutBinding;

    return-void
.end method

.method public static bridge synthetic copy$default(Lru/rocketbank/r2d2/adapters/card/CardsListAdapter$Wrapper;Lru/rocketbank/r2d2/databinding/LayoutCardWithActionsBinding;Lru/rocketbank/r2d2/databinding/CardTransferHeaderLayoutBinding;ILjava/lang/Object;)Lru/rocketbank/r2d2/adapters/card/CardsListAdapter$Wrapper;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lru/rocketbank/r2d2/adapters/card/CardsListAdapter$Wrapper;->full:Lru/rocketbank/r2d2/databinding/LayoutCardWithActionsBinding;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lru/rocketbank/r2d2/adapters/card/CardsListAdapter$Wrapper;->onlyPan:Lru/rocketbank/r2d2/databinding/CardTransferHeaderLayoutBinding;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lru/rocketbank/r2d2/adapters/card/CardsListAdapter$Wrapper;->copy(Lru/rocketbank/r2d2/databinding/LayoutCardWithActionsBinding;Lru/rocketbank/r2d2/databinding/CardTransferHeaderLayoutBinding;)Lru/rocketbank/r2d2/adapters/card/CardsListAdapter$Wrapper;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lru/rocketbank/r2d2/databinding/LayoutCardWithActionsBinding;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/adapters/card/CardsListAdapter$Wrapper;->full:Lru/rocketbank/r2d2/databinding/LayoutCardWithActionsBinding;

    return-object v0
.end method

.method public final component2()Lru/rocketbank/r2d2/databinding/CardTransferHeaderLayoutBinding;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/adapters/card/CardsListAdapter$Wrapper;->onlyPan:Lru/rocketbank/r2d2/databinding/CardTransferHeaderLayoutBinding;

    return-object v0
.end method

.method public final copy(Lru/rocketbank/r2d2/databinding/LayoutCardWithActionsBinding;Lru/rocketbank/r2d2/databinding/CardTransferHeaderLayoutBinding;)Lru/rocketbank/r2d2/adapters/card/CardsListAdapter$Wrapper;
    .locals 1

    new-instance v0, Lru/rocketbank/r2d2/adapters/card/CardsListAdapter$Wrapper;

    invoke-direct {v0, p1, p2}, Lru/rocketbank/r2d2/adapters/card/CardsListAdapter$Wrapper;-><init>(Lru/rocketbank/r2d2/databinding/LayoutCardWithActionsBinding;Lru/rocketbank/r2d2/databinding/CardTransferHeaderLayoutBinding;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lru/rocketbank/r2d2/adapters/card/CardsListAdapter$Wrapper;

    if-eqz v0, :cond_0

    check-cast p1, Lru/rocketbank/r2d2/adapters/card/CardsListAdapter$Wrapper;

    iget-object v0, p0, Lru/rocketbank/r2d2/adapters/card/CardsListAdapter$Wrapper;->full:Lru/rocketbank/r2d2/databinding/LayoutCardWithActionsBinding;

    iget-object v1, p1, Lru/rocketbank/r2d2/adapters/card/CardsListAdapter$Wrapper;->full:Lru/rocketbank/r2d2/databinding/LayoutCardWithActionsBinding;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/adapters/card/CardsListAdapter$Wrapper;->onlyPan:Lru/rocketbank/r2d2/databinding/CardTransferHeaderLayoutBinding;

    iget-object p1, p1, Lru/rocketbank/r2d2/adapters/card/CardsListAdapter$Wrapper;->onlyPan:Lru/rocketbank/r2d2/databinding/CardTransferHeaderLayoutBinding;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getCreditCard()Lru/rocketbank/core/widgets/CreditCardView;
    .locals 2

    .line 240
    iget-object v0, p0, Lru/rocketbank/r2d2/adapters/card/CardsListAdapter$Wrapper;->full:Lru/rocketbank/r2d2/databinding/LayoutCardWithActionsBinding;

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lru/rocketbank/r2d2/adapters/card/CardsListAdapter$Wrapper;->full:Lru/rocketbank/r2d2/databinding/LayoutCardWithActionsBinding;

    iget-object v0, v0, Lru/rocketbank/r2d2/databinding/LayoutCardWithActionsBinding;->creditCard:Lru/rocketbank/core/widgets/CreditCardView;

    const-string v1, "full.creditCard"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 244
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/adapters/card/CardsListAdapter$Wrapper;->onlyPan:Lru/rocketbank/r2d2/databinding/CardTransferHeaderLayoutBinding;

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    iget-object v0, v0, Lru/rocketbank/r2d2/databinding/CardTransferHeaderLayoutBinding;->creditCard:Lru/rocketbank/core/widgets/CreditCardView;

    const-string v1, "onlyPan!!.creditCard"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getFull()Lru/rocketbank/r2d2/databinding/LayoutCardWithActionsBinding;
    .locals 1

    .line 218
    iget-object v0, p0, Lru/rocketbank/r2d2/adapters/card/CardsListAdapter$Wrapper;->full:Lru/rocketbank/r2d2/databinding/LayoutCardWithActionsBinding;

    return-object v0
.end method

.method public final getOnlyPan()Lru/rocketbank/r2d2/databinding/CardTransferHeaderLayoutBinding;
    .locals 1

    .line 219
    iget-object v0, p0, Lru/rocketbank/r2d2/adapters/card/CardsListAdapter$Wrapper;->onlyPan:Lru/rocketbank/r2d2/databinding/CardTransferHeaderLayoutBinding;

    return-object v0
.end method

.method public final getRecentCard()Landroid/widget/TextView;
    .locals 2

    .line 248
    iget-object v0, p0, Lru/rocketbank/r2d2/adapters/card/CardsListAdapter$Wrapper;->full:Lru/rocketbank/r2d2/databinding/LayoutCardWithActionsBinding;

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lru/rocketbank/r2d2/adapters/card/CardsListAdapter$Wrapper;->full:Lru/rocketbank/r2d2/databinding/LayoutCardWithActionsBinding;

    iget-object v0, v0, Lru/rocketbank/r2d2/databinding/LayoutCardWithActionsBinding;->rocketTextView:Lru/rocketbank/core/widgets/RocketTextView;

    const-string v1, "full.rocketTextView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    return-object v0

    .line 252
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/adapters/card/CardsListAdapter$Wrapper;->onlyPan:Lru/rocketbank/r2d2/databinding/CardTransferHeaderLayoutBinding;

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    iget-object v0, v0, Lru/rocketbank/r2d2/databinding/CardTransferHeaderLayoutBinding;->rocketTextView:Lru/rocketbank/core/widgets/RocketTextView;

    const-string v1, "onlyPan!!.rocketTextView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public final getRoot()Landroid/view/View;
    .locals 2

    .line 222
    iget-object v0, p0, Lru/rocketbank/r2d2/adapters/card/CardsListAdapter$Wrapper;->full:Lru/rocketbank/r2d2/databinding/LayoutCardWithActionsBinding;

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lru/rocketbank/r2d2/adapters/card/CardsListAdapter$Wrapper;->full:Lru/rocketbank/r2d2/databinding/LayoutCardWithActionsBinding;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/databinding/LayoutCardWithActionsBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    const-string v1, "full.root"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 226
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/adapters/card/CardsListAdapter$Wrapper;->onlyPan:Lru/rocketbank/r2d2/databinding/CardTransferHeaderLayoutBinding;

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {v0}, Lru/rocketbank/r2d2/databinding/CardTransferHeaderLayoutBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    const-string v1, "onlyPan!!.root"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lru/rocketbank/r2d2/adapters/card/CardsListAdapter$Wrapper;->full:Lru/rocketbank/r2d2/databinding/LayoutCardWithActionsBinding;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lru/rocketbank/r2d2/adapters/card/CardsListAdapter$Wrapper;->onlyPan:Lru/rocketbank/r2d2/databinding/CardTransferHeaderLayoutBinding;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Wrapper(full="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lru/rocketbank/r2d2/adapters/card/CardsListAdapter$Wrapper;->full:Lru/rocketbank/r2d2/databinding/LayoutCardWithActionsBinding;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", onlyPan="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lru/rocketbank/r2d2/adapters/card/CardsListAdapter$Wrapper;->onlyPan:Lru/rocketbank/r2d2/databinding/CardTransferHeaderLayoutBinding;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final update(Lru/rocketbank/r2d2/data/binding/card/CardAbilityData;Lru/rocketbank/r2d2/data/binding/card/CardAbilityHandler;)V
    .locals 1

    const-string v0, "abilityData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "abilityHandler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 230
    iget-object v0, p0, Lru/rocketbank/r2d2/adapters/card/CardsListAdapter$Wrapper;->full:Lru/rocketbank/r2d2/databinding/LayoutCardWithActionsBinding;

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lru/rocketbank/r2d2/adapters/card/CardsListAdapter$Wrapper;->full:Lru/rocketbank/r2d2/databinding/LayoutCardWithActionsBinding;

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/databinding/LayoutCardWithActionsBinding;->setAbility(Lru/rocketbank/r2d2/data/binding/card/CardAbilityData;)V

    .line 232
    iget-object p1, p0, Lru/rocketbank/r2d2/adapters/card/CardsListAdapter$Wrapper;->full:Lru/rocketbank/r2d2/databinding/LayoutCardWithActionsBinding;

    invoke-virtual {p1, p2}, Lru/rocketbank/r2d2/databinding/LayoutCardWithActionsBinding;->setActions(Lru/rocketbank/r2d2/data/binding/card/CardAbilityHandler;)V

    return-void

    .line 233
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/adapters/card/CardsListAdapter$Wrapper;->onlyPan:Lru/rocketbank/r2d2/databinding/CardTransferHeaderLayoutBinding;

    if-eqz v0, :cond_1

    .line 234
    iget-object v0, p0, Lru/rocketbank/r2d2/adapters/card/CardsListAdapter$Wrapper;->onlyPan:Lru/rocketbank/r2d2/databinding/CardTransferHeaderLayoutBinding;

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/databinding/CardTransferHeaderLayoutBinding;->setAbility(Lru/rocketbank/r2d2/data/binding/card/CardAbilityData;)V

    .line 235
    iget-object p1, p0, Lru/rocketbank/r2d2/adapters/card/CardsListAdapter$Wrapper;->onlyPan:Lru/rocketbank/r2d2/databinding/CardTransferHeaderLayoutBinding;

    invoke-virtual {p1, p2}, Lru/rocketbank/r2d2/databinding/CardTransferHeaderLayoutBinding;->setActions(Lru/rocketbank/r2d2/data/binding/card/CardAbilityHandler;)V

    :cond_1
    return-void
.end method
