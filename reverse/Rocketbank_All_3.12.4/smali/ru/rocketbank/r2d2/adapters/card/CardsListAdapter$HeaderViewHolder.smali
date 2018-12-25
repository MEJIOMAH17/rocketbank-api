.class public final Lru/rocketbank/r2d2/adapters/card/CardsListAdapter$HeaderViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "CardsListAdapter.kt"

# interfaces
.implements Lru/rocketbank/core/widgets/listener/CardNumberListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/adapters/card/CardsListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "HeaderViewHolder"
.end annotation


# instance fields
.field private recentCards:Landroid/widget/TextView;

.field private rocketCard:Lru/rocketbank/core/widgets/CreditCardView;

.field final synthetic this$0:Lru/rocketbank/r2d2/adapters/card/CardsListAdapter;

.field private wrapper:Lru/rocketbank/r2d2/adapters/card/CardsListAdapter$Wrapper;


# direct methods
.method public constructor <init>(Lru/rocketbank/r2d2/adapters/card/CardsListAdapter;Lru/rocketbank/r2d2/adapters/card/CardsListAdapter$Wrapper;Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lru/rocketbank/r2d2/adapters/card/CardsListAdapter$Wrapper;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    const-string v0, "wrapper"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemView"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    iput-object p1, p0, Lru/rocketbank/r2d2/adapters/card/CardsListAdapter$HeaderViewHolder;->this$0:Lru/rocketbank/r2d2/adapters/card/CardsListAdapter;

    invoke-direct {p0, p3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 146
    iput-object p2, p0, Lru/rocketbank/r2d2/adapters/card/CardsListAdapter$HeaderViewHolder;->wrapper:Lru/rocketbank/r2d2/adapters/card/CardsListAdapter$Wrapper;

    .line 147
    invoke-virtual {p2}, Lru/rocketbank/r2d2/adapters/card/CardsListAdapter$Wrapper;->getCreditCard()Lru/rocketbank/core/widgets/CreditCardView;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/adapters/card/CardsListAdapter$HeaderViewHolder;->rocketCard:Lru/rocketbank/core/widgets/CreditCardView;

    .line 148
    invoke-virtual {p2}, Lru/rocketbank/r2d2/adapters/card/CardsListAdapter$Wrapper;->getRecentCard()Landroid/widget/TextView;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/adapters/card/CardsListAdapter$HeaderViewHolder;->recentCards:Landroid/widget/TextView;

    .line 149
    iget-object p1, p0, Lru/rocketbank/r2d2/adapters/card/CardsListAdapter$HeaderViewHolder;->rocketCard:Lru/rocketbank/core/widgets/CreditCardView;

    move-object p2, p0

    check-cast p2, Lru/rocketbank/core/widgets/listener/CardNumberListener;

    invoke-virtual {p1, p2}, Lru/rocketbank/core/widgets/CreditCardView;->setCardNumberListener(Lru/rocketbank/core/widgets/listener/CardNumberListener;)V

    return-void
.end method


# virtual methods
.method public final allCardIsValid(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "cardNumber"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "date"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "cvv"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 193
    iget-object p1, p0, Lru/rocketbank/r2d2/adapters/card/CardsListAdapter$HeaderViewHolder;->this$0:Lru/rocketbank/r2d2/adapters/card/CardsListAdapter;

    invoke-static {p1}, Lru/rocketbank/r2d2/adapters/card/CardsListAdapter;->access$getCardChangeListener$p(Lru/rocketbank/r2d2/adapters/card/CardsListAdapter;)Lru/rocketbank/r2d2/adapters/card/CardChangeListener;

    move-result-object p1

    invoke-interface {p1}, Lru/rocketbank/r2d2/adapters/card/CardChangeListener;->cardValid()V

    return-void
.end method

.method public final binReady(Ljava/lang/String;)V
    .locals 1

    const-string v0, "cardNumber"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final bind(Lru/rocketbank/core/model/CardData;)V
    .locals 2

    const-string v0, "cardData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lru/rocketbank/r2d2/adapters/card/CardsListAdapter$HeaderViewHolder;->rocketCard:Lru/rocketbank/core/widgets/CreditCardView;

    invoke-virtual {p1}, Lru/rocketbank/core/model/CardData;->getPan()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/CreditCardView;->setCardNumber(Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lru/rocketbank/r2d2/adapters/card/CardsListAdapter$HeaderViewHolder;->rocketCard:Lru/rocketbank/core/widgets/CreditCardView;

    invoke-virtual {p1}, Lru/rocketbank/core/model/CardData;->getCvv()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/CreditCardView;->setCvv(Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lru/rocketbank/r2d2/adapters/card/CardsListAdapter$HeaderViewHolder;->rocketCard:Lru/rocketbank/core/widgets/CreditCardView;

    invoke-virtual {p1}, Lru/rocketbank/core/model/CardData;->getExpirationDate()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lru/rocketbank/core/widgets/CreditCardView;->setRawValidThru(Ljava/lang/String;)V

    .line 157
    iget-object p1, p0, Lru/rocketbank/r2d2/adapters/card/CardsListAdapter$HeaderViewHolder;->recentCards:Landroid/widget/TextView;

    iget-object v0, p0, Lru/rocketbank/r2d2/adapters/card/CardsListAdapter$HeaderViewHolder;->this$0:Lru/rocketbank/r2d2/adapters/card/CardsListAdapter;

    invoke-static {v0}, Lru/rocketbank/r2d2/adapters/card/CardsListAdapter;->access$getCards$p(Lru/rocketbank/r2d2/adapters/card/CardsListAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public final cancelBin()V
    .locals 0

    return-void
.end method

.method public final cardChanged()V
    .locals 4

    .line 201
    invoke-static {}, Lru/rocketbank/r2d2/adapters/card/CardsListAdapter;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Card changed"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object v0, p0, Lru/rocketbank/r2d2/adapters/card/CardsListAdapter$HeaderViewHolder;->rocketCard:Lru/rocketbank/core/widgets/CreditCardView;

    invoke-virtual {v0}, Lru/rocketbank/core/widgets/CreditCardView;->getCardNumber()Ljava/lang/String;

    move-result-object v0

    .line 204
    iget-object v1, p0, Lru/rocketbank/r2d2/adapters/card/CardsListAdapter$HeaderViewHolder;->rocketCard:Lru/rocketbank/core/widgets/CreditCardView;

    invoke-virtual {v1}, Lru/rocketbank/core/widgets/CreditCardView;->getCvv()Ljava/lang/String;

    move-result-object v1

    .line 205
    iget-object v2, p0, Lru/rocketbank/r2d2/adapters/card/CardsListAdapter$HeaderViewHolder;->rocketCard:Lru/rocketbank/core/widgets/CreditCardView;

    invoke-virtual {v2}, Lru/rocketbank/core/widgets/CreditCardView;->getValidThru()Ljava/lang/String;

    move-result-object v2

    .line 207
    new-instance v3, Lru/rocketbank/core/model/CardData;

    invoke-direct {v3, v0, v2, v1}, Lru/rocketbank/core/model/CardData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    iget-object v0, p0, Lru/rocketbank/r2d2/adapters/card/CardsListAdapter$HeaderViewHolder;->this$0:Lru/rocketbank/r2d2/adapters/card/CardsListAdapter;

    invoke-static {v0, v3}, Lru/rocketbank/r2d2/adapters/card/CardsListAdapter;->access$setCardData$p(Lru/rocketbank/r2d2/adapters/card/CardsListAdapter;Lru/rocketbank/core/model/CardData;)V

    .line 209
    iget-object v0, p0, Lru/rocketbank/r2d2/adapters/card/CardsListAdapter$HeaderViewHolder;->this$0:Lru/rocketbank/r2d2/adapters/card/CardsListAdapter;

    invoke-static {v0}, Lru/rocketbank/r2d2/adapters/card/CardsListAdapter;->access$getCardChangeListener$p(Lru/rocketbank/r2d2/adapters/card/CardsListAdapter;)Lru/rocketbank/r2d2/adapters/card/CardChangeListener;

    move-result-object v0

    invoke-interface {v0, v3}, Lru/rocketbank/r2d2/adapters/card/CardChangeListener;->cardChanged(Lru/rocketbank/core/model/CardData;)V

    return-void
.end method

.method public final cardInvalid()V
    .locals 1

    .line 197
    iget-object v0, p0, Lru/rocketbank/r2d2/adapters/card/CardsListAdapter$HeaderViewHolder;->this$0:Lru/rocketbank/r2d2/adapters/card/CardsListAdapter;

    invoke-static {v0}, Lru/rocketbank/r2d2/adapters/card/CardsListAdapter;->access$getCardChangeListener$p(Lru/rocketbank/r2d2/adapters/card/CardsListAdapter;)Lru/rocketbank/r2d2/adapters/card/CardChangeListener;

    move-result-object v0

    invoke-interface {v0}, Lru/rocketbank/r2d2/adapters/card/CardChangeListener;->cardInvalid()V

    return-void
.end method

.method public final cardNumberIsInvalid(Ljava/lang/String;)V
    .locals 1

    const-string v0, "cardNumber"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final cardNumberIsValid(Ljava/lang/String;)V
    .locals 1

    const-string v0, "cardNumber"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final cvvIsInvalid()V
    .locals 0

    return-void
.end method

.method public final cvvIsValid()V
    .locals 0

    return-void
.end method

.method public final dateIsInvalid()V
    .locals 0

    return-void
.end method

.method public final dateIsValid()V
    .locals 0

    return-void
.end method

.method public final getRecentCards()Landroid/widget/TextView;
    .locals 1

    .line 142
    iget-object v0, p0, Lru/rocketbank/r2d2/adapters/card/CardsListAdapter$HeaderViewHolder;->recentCards:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getRocketCard()Lru/rocketbank/core/widgets/CreditCardView;
    .locals 1

    .line 141
    iget-object v0, p0, Lru/rocketbank/r2d2/adapters/card/CardsListAdapter$HeaderViewHolder;->rocketCard:Lru/rocketbank/core/widgets/CreditCardView;

    return-object v0
.end method

.method public final getWrapper()Lru/rocketbank/r2d2/adapters/card/CardsListAdapter$Wrapper;
    .locals 1

    .line 143
    iget-object v0, p0, Lru/rocketbank/r2d2/adapters/card/CardsListAdapter$HeaderViewHolder;->wrapper:Lru/rocketbank/r2d2/adapters/card/CardsListAdapter$Wrapper;

    return-object v0
.end method

.method public final setRecentCards(Landroid/widget/TextView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    iput-object p1, p0, Lru/rocketbank/r2d2/adapters/card/CardsListAdapter$HeaderViewHolder;->recentCards:Landroid/widget/TextView;

    return-void
.end method

.method public final setRocketCard(Lru/rocketbank/core/widgets/CreditCardView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    iput-object p1, p0, Lru/rocketbank/r2d2/adapters/card/CardsListAdapter$HeaderViewHolder;->rocketCard:Lru/rocketbank/core/widgets/CreditCardView;

    return-void
.end method

.method public final setWrapper(Lru/rocketbank/r2d2/adapters/card/CardsListAdapter$Wrapper;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    iput-object p1, p0, Lru/rocketbank/r2d2/adapters/card/CardsListAdapter$HeaderViewHolder;->wrapper:Lru/rocketbank/r2d2/adapters/card/CardsListAdapter$Wrapper;

    return-void
.end method

.method public final update(Lru/rocketbank/r2d2/data/binding/card/CardAbilityData;Lru/rocketbank/r2d2/data/binding/card/CardAbilityHandler;)V
    .locals 1

    const-string v0, "abilityData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "abilityHandler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lru/rocketbank/r2d2/adapters/card/CardsListAdapter$HeaderViewHolder;->wrapper:Lru/rocketbank/r2d2/adapters/card/CardsListAdapter$Wrapper;

    invoke-virtual {v0, p1, p2}, Lru/rocketbank/r2d2/adapters/card/CardsListAdapter$Wrapper;->update(Lru/rocketbank/r2d2/data/binding/card/CardAbilityData;Lru/rocketbank/r2d2/data/binding/card/CardAbilityHandler;)V

    return-void
.end method
