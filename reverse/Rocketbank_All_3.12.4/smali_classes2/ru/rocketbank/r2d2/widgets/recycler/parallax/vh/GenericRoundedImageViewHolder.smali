.class public final Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericRoundedImageViewHolder;
.super Lru/rocketbank/r2d2/widgets/recycler/parallax/GenericViewHolder;
.source "GenericRoundedImageViewHolder.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final binding:Lru/rocketbank/r2d2/databinding/ParallaxRoundImageItemBinding;

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


# direct methods
.method public constructor <init>(Lru/rocketbank/r2d2/databinding/ParallaxRoundImageItemBinding;)V
    .locals 1

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p1}, Lru/rocketbank/r2d2/databinding/ParallaxRoundImageItemBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lru/rocketbank/r2d2/widgets/recycler/parallax/GenericViewHolder;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericRoundedImageViewHolder;->binding:Lru/rocketbank/r2d2/databinding/ParallaxRoundImageItemBinding;

    .line 13
    iget-object p1, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericRoundedImageViewHolder;->binding:Lru/rocketbank/r2d2/databinding/ParallaxRoundImageItemBinding;

    new-instance v0, Lru/rocketbank/r2d2/data/binding/parallax/ParallaxRoundItem;

    invoke-direct {v0}, Lru/rocketbank/r2d2/data/binding/parallax/ParallaxRoundItem;-><init>()V

    invoke-virtual {p1, v0}, Lru/rocketbank/r2d2/databinding/ParallaxRoundImageItemBinding;->setData(Lru/rocketbank/r2d2/data/binding/parallax/ParallaxRoundItem;)V

    .line 14
    iget-object p1, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericRoundedImageViewHolder;->itemView:Landroid/view/View;

    move-object v0, p0

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public final getBinding()Lru/rocketbank/r2d2/databinding/ParallaxRoundImageItemBinding;
    .locals 1

    .line 8
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericRoundedImageViewHolder;->binding:Lru/rocketbank/r2d2/databinding/ParallaxRoundImageItemBinding;

    return-object v0
.end method

.method public final onBind(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 22
    iput-object p1, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericRoundedImageViewHolder;->onClickAction:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 18
    iget-object p1, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericRoundedImageViewHolder;->onClickAction:Lkotlin/jvm/functions/Function1;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericRoundedImageViewHolder;->getItem()Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    return-void
.end method
