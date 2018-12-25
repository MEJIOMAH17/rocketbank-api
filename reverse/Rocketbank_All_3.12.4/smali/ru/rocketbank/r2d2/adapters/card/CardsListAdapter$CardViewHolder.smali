.class public final Lru/rocketbank/r2d2/adapters/card/CardsListAdapter$CardViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "CardsListAdapter.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/adapters/card/CardsListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "CardViewHolder"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCardsListAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CardsListAdapter.kt\nru/rocketbank/r2d2/adapters/card/CardsListAdapter$CardViewHolder\n*L\n1#1,260:1\n*E\n"
.end annotation


# instance fields
.field private cardModel:Lru/rocketbank/core/model/CardModel;

.field private final cardView:Lru/rocketbank/core/widgets/CardViewMini;

.field final synthetic this$0:Lru/rocketbank/r2d2/adapters/card/CardsListAdapter;


# direct methods
.method public constructor <init>(Lru/rocketbank/r2d2/adapters/card/CardsListAdapter;Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    const-string v0, "itemView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    iput-object p1, p0, Lru/rocketbank/r2d2/adapters/card/CardsListAdapter$CardViewHolder;->this$0:Lru/rocketbank/r2d2/adapters/card/CardsListAdapter;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 114
    move-object v0, p2

    check-cast v0, Lru/rocketbank/core/widgets/CardViewMini;

    iput-object v0, p0, Lru/rocketbank/r2d2/adapters/card/CardsListAdapter$CardViewHolder;->cardView:Lru/rocketbank/core/widgets/CardViewMini;

    .line 115
    iget-object v0, p0, Lru/rocketbank/r2d2/adapters/card/CardsListAdapter$CardViewHolder;->cardView:Lru/rocketbank/core/widgets/CardViewMini;

    invoke-static {p1}, Lru/rocketbank/r2d2/adapters/card/CardsListAdapter;->access$getClickListener$p(Lru/rocketbank/r2d2/adapters/card/CardsListAdapter;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/CardViewMini;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    iget-object v0, p0, Lru/rocketbank/r2d2/adapters/card/CardsListAdapter$CardViewHolder;->cardView:Lru/rocketbank/core/widgets/CardViewMini;

    invoke-static {p1}, Lru/rocketbank/r2d2/adapters/card/CardsListAdapter;->access$getActionsListener$p(Lru/rocketbank/r2d2/adapters/card/CardsListAdapter;)Lru/rocketbank/core/widgets/CardViewMini$CardActionsListener;

    move-result-object p1

    invoke-virtual {v0, p1}, Lru/rocketbank/core/widgets/CardViewMini;->setCardActionsListener(Lru/rocketbank/core/widgets/CardViewMini$CardActionsListener;)V

    .line 118
    move-object p1, p0

    check-cast p1, Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public final bind(Lru/rocketbank/core/model/CardModel;)V
    .locals 1

    const-string v0, "cardModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    iput-object p1, p0, Lru/rocketbank/r2d2/adapters/card/CardsListAdapter$CardViewHolder;->cardModel:Lru/rocketbank/core/model/CardModel;

    .line 124
    iget-object v0, p0, Lru/rocketbank/r2d2/adapters/card/CardsListAdapter$CardViewHolder;->cardView:Lru/rocketbank/core/widgets/CardViewMini;

    invoke-virtual {v0}, Lru/rocketbank/core/widgets/CardViewMini;->resetImage()V

    .line 125
    iget-object v0, p0, Lru/rocketbank/r2d2/adapters/card/CardsListAdapter$CardViewHolder;->cardView:Lru/rocketbank/core/widgets/CardViewMini;

    invoke-virtual {v0, p1}, Lru/rocketbank/core/widgets/CardViewMini;->setCard(Lru/rocketbank/core/model/CardModel;)V

    .line 127
    invoke-virtual {p1}, Lru/rocketbank/core/model/CardModel;->getImage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lru/rocketbank/core/model/CardModel;->getImage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    .line 128
    iget-object v0, p0, Lru/rocketbank/r2d2/adapters/card/CardsListAdapter$CardViewHolder;->cardView:Lru/rocketbank/core/widgets/CardViewMini;

    invoke-virtual {p1}, Lru/rocketbank/core/model/CardModel;->getImage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lru/rocketbank/core/widgets/CardViewMini;->setImageUrl(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 1

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    iget-object p1, p0, Lru/rocketbank/r2d2/adapters/card/CardsListAdapter$CardViewHolder;->cardModel:Lru/rocketbank/core/model/CardModel;

    if-eqz p1, :cond_0

    .line 135
    iget-object v0, p0, Lru/rocketbank/r2d2/adapters/card/CardsListAdapter$CardViewHolder;->this$0:Lru/rocketbank/r2d2/adapters/card/CardsListAdapter;

    invoke-static {v0}, Lru/rocketbank/r2d2/adapters/card/CardsListAdapter;->access$getCardChangeListener$p(Lru/rocketbank/r2d2/adapters/card/CardsListAdapter;)Lru/rocketbank/r2d2/adapters/card/CardChangeListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lru/rocketbank/r2d2/adapters/card/CardChangeListener;->smallCardPressed(Lru/rocketbank/core/model/CardModel;)V

    :cond_0
    return-void
.end method
