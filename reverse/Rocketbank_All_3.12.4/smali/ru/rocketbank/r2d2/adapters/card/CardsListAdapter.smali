.class public final Lru/rocketbank/r2d2/adapters/card/CardsListAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "CardsListAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/adapters/card/CardsListAdapter$CardViewHolder;,
        Lru/rocketbank/r2d2/adapters/card/CardsListAdapter$HeaderViewHolder;,
        Lru/rocketbank/r2d2/adapters/card/CardsListAdapter$Wrapper;,
        Lru/rocketbank/r2d2/adapters/card/CardsListAdapter$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field public static final Companion:Lru/rocketbank/r2d2/adapters/card/CardsListAdapter$Companion;

.field private static final TAG:Ljava/lang/String; = "CLAdapter"


# instance fields
.field private final abilityData:Lru/rocketbank/r2d2/data/binding/card/CardAbilityData;

.field private final abilityHandler:Lru/rocketbank/r2d2/data/binding/card/CardAbilityHandler;

.field private final actionsListener:Lru/rocketbank/core/widgets/CardViewMini$CardActionsListener;

.field private final cardChangeListener:Lru/rocketbank/r2d2/adapters/card/CardChangeListener;

.field private cardData:Lru/rocketbank/core/model/CardData;

.field private final cards:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/CardModel;",
            ">;"
        }
    .end annotation
.end field

.field private final clickListener:Landroid/view/View$OnClickListener;

.field private final fullMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/r2d2/adapters/card/CardsListAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/adapters/card/CardsListAdapter$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/r2d2/adapters/card/CardsListAdapter;->Companion:Lru/rocketbank/r2d2/adapters/card/CardsListAdapter$Companion;

    return-void
.end method

.method public constructor <init>(Lru/rocketbank/core/widgets/CardViewMini$CardActionsListener;Lru/rocketbank/r2d2/adapters/card/CardChangeListener;Landroid/view/View$OnClickListener;ZLru/rocketbank/r2d2/data/binding/card/CardAbilityData;Lru/rocketbank/r2d2/data/binding/card/CardAbilityHandler;)V
    .locals 1

    const-string v0, "actionsListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cardChangeListener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clickListener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "abilityData"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "abilityHandler"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lru/rocketbank/r2d2/adapters/card/CardsListAdapter;->actionsListener:Lru/rocketbank/core/widgets/CardViewMini$CardActionsListener;

    iput-object p2, p0, Lru/rocketbank/r2d2/adapters/card/CardsListAdapter;->cardChangeListener:Lru/rocketbank/r2d2/adapters/card/CardChangeListener;

    iput-object p3, p0, Lru/rocketbank/r2d2/adapters/card/CardsListAdapter;->clickListener:Landroid/view/View$OnClickListener;

    iput-boolean p4, p0, Lru/rocketbank/r2d2/adapters/card/CardsListAdapter;->fullMode:Z

    iput-object p5, p0, Lru/rocketbank/r2d2/adapters/card/CardsListAdapter;->abilityData:Lru/rocketbank/r2d2/data/binding/card/CardAbilityData;

    iput-object p6, p0, Lru/rocketbank/r2d2/adapters/card/CardsListAdapter;->abilityHandler:Lru/rocketbank/r2d2/data/binding/card/CardAbilityHandler;

    .line 30
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lru/rocketbank/r2d2/adapters/card/CardsListAdapter;->cards:Ljava/util/List;

    .line 31
    new-instance p1, Lru/rocketbank/core/model/CardData;

    const-string p2, ""

    const-string p3, ""

    const-string p4, ""

    invoke-direct {p1, p2, p3, p4}, Lru/rocketbank/core/model/CardData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/adapters/card/CardsListAdapter;->cardData:Lru/rocketbank/core/model/CardData;

    return-void
.end method

.method public static final synthetic access$getActionsListener$p(Lru/rocketbank/r2d2/adapters/card/CardsListAdapter;)Lru/rocketbank/core/widgets/CardViewMini$CardActionsListener;
    .locals 0

    .line 23
    iget-object p0, p0, Lru/rocketbank/r2d2/adapters/card/CardsListAdapter;->actionsListener:Lru/rocketbank/core/widgets/CardViewMini$CardActionsListener;

    return-object p0
.end method

.method public static final synthetic access$getCardChangeListener$p(Lru/rocketbank/r2d2/adapters/card/CardsListAdapter;)Lru/rocketbank/r2d2/adapters/card/CardChangeListener;
    .locals 0

    .line 23
    iget-object p0, p0, Lru/rocketbank/r2d2/adapters/card/CardsListAdapter;->cardChangeListener:Lru/rocketbank/r2d2/adapters/card/CardChangeListener;

    return-object p0
.end method

.method public static final synthetic access$getCardData$p(Lru/rocketbank/r2d2/adapters/card/CardsListAdapter;)Lru/rocketbank/core/model/CardData;
    .locals 0

    .line 23
    iget-object p0, p0, Lru/rocketbank/r2d2/adapters/card/CardsListAdapter;->cardData:Lru/rocketbank/core/model/CardData;

    return-object p0
.end method

.method public static final synthetic access$getCards$p(Lru/rocketbank/r2d2/adapters/card/CardsListAdapter;)Ljava/util/List;
    .locals 0

    .line 23
    iget-object p0, p0, Lru/rocketbank/r2d2/adapters/card/CardsListAdapter;->cards:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getClickListener$p(Lru/rocketbank/r2d2/adapters/card/CardsListAdapter;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 23
    iget-object p0, p0, Lru/rocketbank/r2d2/adapters/card/CardsListAdapter;->clickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    .line 23
    sget-object v0, Lru/rocketbank/r2d2/adapters/card/CardsListAdapter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$setCardData$p(Lru/rocketbank/r2d2/adapters/card/CardsListAdapter;Lru/rocketbank/core/model/CardData;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lru/rocketbank/r2d2/adapters/card/CardsListAdapter;->cardData:Lru/rocketbank/core/model/CardData;

    return-void
.end method


# virtual methods
.method public final getCardModel(I)Lru/rocketbank/core/model/CardModel;
    .locals 1

    .line 106
    iget-object v0, p0, Lru/rocketbank/r2d2/adapters/card/CardsListAdapter;->cards:Ljava/util/List;

    add-int/lit8 p1, p1, -0x1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/model/CardModel;

    return-object p1
.end method

.method public final getItemCount()I
    .locals 1

    .line 90
    iget-object v0, p0, Lru/rocketbank/r2d2/adapters/card/CardsListAdapter;->cards:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final getItemViewType(I)I
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public final initializeCardData(Lru/rocketbank/core/model/CardData;)V
    .locals 1

    const-string v0, "cardData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iput-object p1, p0, Lru/rocketbank/r2d2/adapters/card/CardsListAdapter;->cardData:Lru/rocketbank/core/model/CardData;

    const/4 p1, 0x0

    .line 39
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/adapters/card/CardsListAdapter;->notifyItemChanged(I)V

    return-void
.end method

.method public final onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 82
    iget-object v0, p0, Lru/rocketbank/r2d2/adapters/card/CardsListAdapter;->cards:Ljava/util/List;

    add-int/lit8 p2, p2, -0x1

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lru/rocketbank/core/model/CardModel;

    .line 83
    check-cast p1, Lru/rocketbank/r2d2/adapters/card/CardsListAdapter$CardViewHolder;

    .line 84
    invoke-virtual {p1, p2}, Lru/rocketbank/r2d2/adapters/card/CardsListAdapter$CardViewHolder;->bind(Lru/rocketbank/core/model/CardModel;)V

    return-void

    .line 76
    :cond_0
    check-cast p1, Lru/rocketbank/r2d2/adapters/card/CardsListAdapter$HeaderViewHolder;

    .line 77
    iget-object p2, p0, Lru/rocketbank/r2d2/adapters/card/CardsListAdapter;->cardData:Lru/rocketbank/core/model/CardData;

    invoke-virtual {p1, p2}, Lru/rocketbank/r2d2/adapters/card/CardsListAdapter$HeaderViewHolder;->bind(Lru/rocketbank/core/model/CardData;)V

    .line 78
    iget-object p2, p0, Lru/rocketbank/r2d2/adapters/card/CardsListAdapter;->abilityData:Lru/rocketbank/r2d2/data/binding/card/CardAbilityData;

    iget-object v0, p0, Lru/rocketbank/r2d2/adapters/card/CardsListAdapter;->abilityHandler:Lru/rocketbank/r2d2/data/binding/card/CardAbilityHandler;

    invoke-virtual {p1, p2, v0}, Lru/rocketbank/r2d2/adapters/card/CardsListAdapter$HeaderViewHolder;->update(Lru/rocketbank/r2d2/data/binding/card/CardAbilityData;Lru/rocketbank/r2d2/data/binding/card/CardAbilityHandler;)V

    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 4

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    packed-switch p2, :pswitch_data_0

    .line 69
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "No such type"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 66
    :pswitch_0
    new-instance p2, Lru/rocketbank/core/widgets/CardViewMini;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "parent.context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Lru/rocketbank/core/widgets/CardViewMini;-><init>(Landroid/content/Context;)V

    .line 67
    new-instance p1, Lru/rocketbank/r2d2/adapters/card/CardsListAdapter$CardViewHolder;

    check-cast p2, Landroid/view/View;

    invoke-direct {p1, p0, p2}, Lru/rocketbank/r2d2/adapters/card/CardsListAdapter$CardViewHolder;-><init>(Lru/rocketbank/r2d2/adapters/card/CardsListAdapter;Landroid/view/View;)V

    check-cast p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    return-object p1

    .line 46
    :pswitch_1
    new-instance p2, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {p2, v1, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;-><init>(II)V

    const/4 v1, 0x1

    .line 47
    invoke-virtual {p2, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->setFullSpan(Z)V

    .line 50
    iget-boolean v1, p0, Lru/rocketbank/r2d2/adapters/card/CardsListAdapter;->fullMode:Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const v1, 0x7f0c011b

    .line 51
    invoke-static {v0, v1, p1, v3}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroid/databinding/ViewDataBinding;

    move-result-object p1

    const-string v0, "DataBindingUtil.inflate(\u2026h_actions, parent, false)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lru/rocketbank/r2d2/databinding/LayoutCardWithActionsBinding;

    .line 52
    new-instance v0, Lru/rocketbank/r2d2/adapters/card/CardsListAdapter$Wrapper;

    invoke-direct {v0, p1, v2}, Lru/rocketbank/r2d2/adapters/card/CardsListAdapter$Wrapper;-><init>(Lru/rocketbank/r2d2/databinding/LayoutCardWithActionsBinding;Lru/rocketbank/r2d2/databinding/CardTransferHeaderLayoutBinding;)V

    goto :goto_0

    :cond_0
    const v1, 0x7f0c007f

    .line 55
    invoke-static {v0, v1, p1, v3}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroid/databinding/ViewDataBinding;

    move-result-object p1

    const-string v0, "DataBindingUtil.inflate(\u2026er_layout, parent, false)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lru/rocketbank/r2d2/databinding/CardTransferHeaderLayoutBinding;

    .line 56
    new-instance v0, Lru/rocketbank/r2d2/adapters/card/CardsListAdapter$Wrapper;

    invoke-direct {v0, v2, p1}, Lru/rocketbank/r2d2/adapters/card/CardsListAdapter$Wrapper;-><init>(Lru/rocketbank/r2d2/databinding/LayoutCardWithActionsBinding;Lru/rocketbank/r2d2/databinding/CardTransferHeaderLayoutBinding;)V

    .line 59
    :goto_0
    new-instance p1, Lru/rocketbank/r2d2/adapters/card/CardsListAdapter$HeaderViewHolder;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/adapters/card/CardsListAdapter$Wrapper;->getRoot()Landroid/view/View;

    move-result-object v1

    invoke-direct {p1, p0, v0, v1}, Lru/rocketbank/r2d2/adapters/card/CardsListAdapter$HeaderViewHolder;-><init>(Lru/rocketbank/r2d2/adapters/card/CardsListAdapter;Lru/rocketbank/r2d2/adapters/card/CardsListAdapter$Wrapper;Landroid/view/View;)V

    .line 60
    iget-object v0, p1, Lru/rocketbank/r2d2/adapters/card/CardsListAdapter$HeaderViewHolder;->itemView:Landroid/view/View;

    const-string v1, "headerViewHolder.itemView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 62
    check-cast p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final remove(Lru/rocketbank/core/model/CardModel;)V
    .locals 1

    const-string v0, "cardModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lru/rocketbank/r2d2/adapters/card/CardsListAdapter;->cards:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 102
    invoke-virtual {p0}, Lru/rocketbank/r2d2/adapters/card/CardsListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public final setData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/CardModel;",
            ">;)V"
        }
    .end annotation

    const-string v0, "cardsCollection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lru/rocketbank/r2d2/adapters/card/CardsListAdapter;->cards:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 95
    iget-object v0, p0, Lru/rocketbank/r2d2/adapters/card/CardsListAdapter;->cards:Ljava/util/List;

    check-cast p1, Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 97
    invoke-virtual {p0}, Lru/rocketbank/r2d2/adapters/card/CardsListAdapter;->notifyDataSetChanged()V

    return-void
.end method
