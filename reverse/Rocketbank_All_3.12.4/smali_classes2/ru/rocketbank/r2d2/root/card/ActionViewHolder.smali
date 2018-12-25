.class public final Lru/rocketbank/r2d2/root/card/ActionViewHolder;
.super Lru/rocketbank/r2d2/widgets/recycler/parallax/GenericViewHolder;
.source "ActionViewHolder.kt"

# interfaces
.implements Lru/rocketbank/r2d2/root/card/binding/BlockHandler;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nActionViewHolder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ActionViewHolder.kt\nru/rocketbank/r2d2/root/card/ActionViewHolder\n*L\n1#1,30:1\n*E\n"
.end annotation


# instance fields
.field private final binding:Lru/rocketbank/r2d2/databinding/ListItemCardDeleteBinding;

.field private final data:Lru/rocketbank/r2d2/root/card/binding/BlockModel;

.field private onClick:Lkotlin/jvm/functions/Function1;
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
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/widgets/recycler/parallax/GenericViewHolder;-><init>(Landroid/view/View;)V

    .line 11
    invoke-static {p1}, Lru/rocketbank/r2d2/databinding/ListItemCardDeleteBinding;->bind(Landroid/view/View;)Lru/rocketbank/r2d2/databinding/ListItemCardDeleteBinding;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/root/card/ActionViewHolder;->binding:Lru/rocketbank/r2d2/databinding/ListItemCardDeleteBinding;

    .line 12
    new-instance p1, Lru/rocketbank/r2d2/root/card/binding/BlockModel;

    invoke-direct {p1}, Lru/rocketbank/r2d2/root/card/binding/BlockModel;-><init>()V

    iput-object p1, p0, Lru/rocketbank/r2d2/root/card/ActionViewHolder;->data:Lru/rocketbank/r2d2/root/card/binding/BlockModel;

    .line 27
    iget-object p1, p0, Lru/rocketbank/r2d2/root/card/ActionViewHolder;->binding:Lru/rocketbank/r2d2/databinding/ListItemCardDeleteBinding;

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lru/rocketbank/r2d2/root/card/ActionViewHolder;->data:Lru/rocketbank/r2d2/root/card/binding/BlockModel;

    invoke-virtual {p1, v0}, Lru/rocketbank/r2d2/databinding/ListItemCardDeleteBinding;->setData(Lru/rocketbank/r2d2/root/card/binding/BlockModel;)V

    .line 28
    iget-object p1, p0, Lru/rocketbank/r2d2/root/card/ActionViewHolder;->binding:Lru/rocketbank/r2d2/databinding/ListItemCardDeleteBinding;

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    check-cast v0, Lru/rocketbank/r2d2/root/card/binding/BlockHandler;

    invoke-virtual {p1, v0}, Lru/rocketbank/r2d2/databinding/ListItemCardDeleteBinding;->setHandler(Lru/rocketbank/r2d2/root/card/binding/BlockHandler;)V

    return-void
.end method


# virtual methods
.method public final onBind(Ljava/lang/String;I)V
    .locals 1

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    iget-object v0, p0, Lru/rocketbank/r2d2/root/card/ActionViewHolder;->data:Lru/rocketbank/r2d2/root/card/binding/BlockModel;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/card/binding/BlockModel;->getText()Landroid/databinding/ObservableField;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 17
    iget-object p1, p0, Lru/rocketbank/r2d2/root/card/ActionViewHolder;->data:Lru/rocketbank/r2d2/root/card/binding/BlockModel;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/card/binding/BlockModel;->getTextColor()Landroid/databinding/ObservableField;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 19
    iget-object p1, p0, Lru/rocketbank/r2d2/root/card/ActionViewHolder;->onClick:Lkotlin/jvm/functions/Function1;

    iput-object p1, p0, Lru/rocketbank/r2d2/root/card/ActionViewHolder;->onClick:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final onClickBlock()V
    .locals 2

    .line 23
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/card/ActionViewHolder;->getItem()Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;

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
