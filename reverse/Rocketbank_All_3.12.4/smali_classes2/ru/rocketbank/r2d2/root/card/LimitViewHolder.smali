.class public final Lru/rocketbank/r2d2/root/card/LimitViewHolder;
.super Lru/rocketbank/r2d2/widgets/recycler/parallax/GenericViewHolder;
.source "LimitViewHolder.kt"

# interfaces
.implements Lru/rocketbank/r2d2/root/card/binding/BlockHandler;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLimitViewHolder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LimitViewHolder.kt\nru/rocketbank/r2d2/root/card/LimitViewHolder\n*L\n1#1,26:1\n*E\n"
.end annotation


# instance fields
.field private final binding:Lru/rocketbank/r2d2/databinding/ListItemCardLimitBinding;

.field private final data:Lru/rocketbank/r2d2/data/binding/LimitData;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/widgets/recycler/parallax/GenericViewHolder;-><init>(Landroid/view/View;)V

    .line 10
    invoke-static {p1}, Lru/rocketbank/r2d2/databinding/ListItemCardLimitBinding;->bind(Landroid/view/View;)Lru/rocketbank/r2d2/databinding/ListItemCardLimitBinding;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/root/card/LimitViewHolder;->binding:Lru/rocketbank/r2d2/databinding/ListItemCardLimitBinding;

    .line 11
    new-instance p1, Lru/rocketbank/r2d2/data/binding/LimitData;

    invoke-direct {p1}, Lru/rocketbank/r2d2/data/binding/LimitData;-><init>()V

    iput-object p1, p0, Lru/rocketbank/r2d2/root/card/LimitViewHolder;->data:Lru/rocketbank/r2d2/data/binding/LimitData;

    .line 24
    iget-object p1, p0, Lru/rocketbank/r2d2/root/card/LimitViewHolder;->binding:Lru/rocketbank/r2d2/databinding/ListItemCardLimitBinding;

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lru/rocketbank/r2d2/root/card/LimitViewHolder;->data:Lru/rocketbank/r2d2/data/binding/LimitData;

    invoke-virtual {p1, v0}, Lru/rocketbank/r2d2/databinding/ListItemCardLimitBinding;->setData(Lru/rocketbank/r2d2/data/binding/LimitData;)V

    return-void
.end method


# virtual methods
.method public final onBind(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "limitName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "limitValue"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iget-object v0, p0, Lru/rocketbank/r2d2/root/card/LimitViewHolder;->data:Lru/rocketbank/r2d2/data/binding/LimitData;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/data/binding/LimitData;->getLimit()Landroid/databinding/ObservableField;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 15
    iget-object p2, p0, Lru/rocketbank/r2d2/root/card/LimitViewHolder;->data:Lru/rocketbank/r2d2/data/binding/LimitData;

    invoke-virtual {p2}, Lru/rocketbank/r2d2/data/binding/LimitData;->getName()Landroid/databinding/ObservableField;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/databinding/ObservableField;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final onClickBlock()V
    .locals 2

    .line 20
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/card/LimitViewHolder;->getItem()Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->getOnClick()Lkotlin/jvm/functions/Function1;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void

    :cond_1
    return-void
.end method
