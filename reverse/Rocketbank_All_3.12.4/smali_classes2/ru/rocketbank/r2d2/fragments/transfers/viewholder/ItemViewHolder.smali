.class public final Lru/rocketbank/r2d2/fragments/transfers/viewholder/ItemViewHolder;
.super Ljava/lang/Object;
.source "ItemViewHolder.kt"


# instance fields
.field private final accountBalance:Lru/rocketbank/core/widgets/RocketTextView;

.field private position:I

.field private final textView:Lru/rocketbank/core/widgets/RocketTextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f090381

    .line 12
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketTextView"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    check-cast v0, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/viewholder/ItemViewHolder;->textView:Lru/rocketbank/core/widgets/RocketTextView;

    const v0, 0x7f090010

    .line 13
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_1

    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketTextView"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    check-cast p1, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/viewholder/ItemViewHolder;->accountBalance:Lru/rocketbank/core/widgets/RocketTextView;

    return-void
.end method


# virtual methods
.method public final getAccountBalance()Lru/rocketbank/core/widgets/RocketTextView;
    .locals 1

    .line 9
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/viewholder/ItemViewHolder;->accountBalance:Lru/rocketbank/core/widgets/RocketTextView;

    return-object v0
.end method

.method public final getPosition()I
    .locals 1

    .line 16
    iget v0, p0, Lru/rocketbank/r2d2/fragments/transfers/viewholder/ItemViewHolder;->position:I

    return v0
.end method

.method public final getTextView()Lru/rocketbank/core/widgets/RocketTextView;
    .locals 1

    .line 8
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/viewholder/ItemViewHolder;->textView:Lru/rocketbank/core/widgets/RocketTextView;

    return-object v0
.end method

.method public final setPosition(I)V
    .locals 0

    .line 16
    iput p1, p0, Lru/rocketbank/r2d2/fragments/transfers/viewholder/ItemViewHolder;->position:I

    return-void
.end method
