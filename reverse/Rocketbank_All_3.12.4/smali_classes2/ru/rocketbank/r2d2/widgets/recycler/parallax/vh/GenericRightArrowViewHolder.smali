.class public final Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericRightArrowViewHolder;
.super Lru/rocketbank/r2d2/widgets/recycler/parallax/GenericViewHolder;
.source "GenericRightArrowViewHolder.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final arrow:Landroid/view/View;

.field private onClickAction:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final selectView:Lru/rocketbank/core/widgets/RocketTextView;

.field private final subtitleView:Lru/rocketbank/core/widgets/RocketTextView;

.field private final titleView:Lru/rocketbank/core/widgets/RocketTextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/widgets/recycler/parallax/GenericViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0903cc

    .line 17
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketTextView"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    check-cast v0, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericRightArrowViewHolder;->titleView:Lru/rocketbank/core/widgets/RocketTextView;

    const v0, 0x7f090318

    .line 18
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketTextView"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    check-cast v0, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericRightArrowViewHolder;->selectView:Lru/rocketbank/core/widgets/RocketTextView;

    const v0, 0x7f090365

    .line 19
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketTextView"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    check-cast v0, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericRightArrowViewHolder;->subtitleView:Lru/rocketbank/core/widgets/RocketTextView;

    const v0, 0x7f09005c

    .line 20
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "itemView.findViewById(R.id.arrow)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericRightArrowViewHolder;->arrow:Landroid/view/View;

    .line 22
    move-object v0, p0

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static bridge synthetic onBind$default(Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericRightArrowViewHolder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ZILjava/lang/Object;)V
    .locals 6

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_0

    const/4 p5, 0x0

    :cond_0
    move v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 29
    invoke-virtual/range {v0 .. v5}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericRightArrowViewHolder;->onBind(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Z)V

    return-void
.end method


# virtual methods
.method public final onBind(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;",
            "Lkotlin/Unit;",
            ">;Z)V"
        }
    .end annotation

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    .line 31
    iget-object v2, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericRightArrowViewHolder;->subtitleView:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v2, v1}, Lru/rocketbank/core/widgets/RocketTextView;->setVisibility(I)V

    .line 32
    iget-object v2, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericRightArrowViewHolder;->subtitleView:Lru/rocketbank/core/widgets/RocketTextView;

    check-cast p3, Ljava/lang/CharSequence;

    invoke-virtual {v2, p3}, Lru/rocketbank/core/widgets/RocketTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 34
    :cond_0
    iget-object p3, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericRightArrowViewHolder;->subtitleView:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {p3, v0}, Lru/rocketbank/core/widgets/RocketTextView;->setVisibility(I)V

    .line 37
    :goto_0
    iget-object p3, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericRightArrowViewHolder;->selectView:Lru/rocketbank/core/widgets/RocketTextView;

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p3, p2}, Lru/rocketbank/core/widgets/RocketTextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    iget-object p2, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericRightArrowViewHolder;->titleView:Lru/rocketbank/core/widgets/RocketTextView;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p2, p1}, Lru/rocketbank/core/widgets/RocketTextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    iput-object p4, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericRightArrowViewHolder;->onClickAction:Lkotlin/jvm/functions/Function1;

    .line 40
    iget-object p1, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericRightArrowViewHolder;->arrow:Landroid/view/View;

    if-nez p5, :cond_1

    move v0, v1

    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 26
    iget-object p1, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericRightArrowViewHolder;->onClickAction:Lkotlin/jvm/functions/Function1;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericRightArrowViewHolder;->getItem()Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    return-void
.end method
