.class public abstract Lru/rocketbank/r2d2/adapters/discounts/holders/AbstractDiscountHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "AbstractDiscountHolder.kt"


# instance fields
.field private final imagesLinks:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final inflater:Landroid/view/LayoutInflater;

.field private final resources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 19
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/adapters/discounts/holders/AbstractDiscountHolder;->imagesLinks:Ljava/util/LinkedList;

    .line 23
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "LayoutInflater.from(v.context)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lru/rocketbank/r2d2/adapters/discounts/holders/AbstractDiscountHolder;->inflater:Landroid/view/LayoutInflater;

    .line 24
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const-string v0, "v.resources"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/adapters/discounts/holders/AbstractDiscountHolder;->resources:Landroid/content/res/Resources;

    return-void
.end method


# virtual methods
.method public bind(Lru/rocketbank/r2d2/adapters/discounts/ItemWrapper;)V
    .locals 1

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    iget-object p1, p0, Lru/rocketbank/r2d2/adapters/discounts/holders/AbstractDiscountHolder;->imagesLinks:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->clear()V

    return-void
.end method

.method protected final getImagesLinks()Ljava/util/LinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 19
    iget-object v0, p0, Lru/rocketbank/r2d2/adapters/discounts/holders/AbstractDiscountHolder;->imagesLinks:Ljava/util/LinkedList;

    return-object v0
.end method

.method protected final getInflater()Landroid/view/LayoutInflater;
    .locals 1

    .line 17
    iget-object v0, p0, Lru/rocketbank/r2d2/adapters/discounts/holders/AbstractDiscountHolder;->inflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method protected final getResources()Landroid/content/res/Resources;
    .locals 1

    .line 18
    iget-object v0, p0, Lru/rocketbank/r2d2/adapters/discounts/holders/AbstractDiscountHolder;->resources:Landroid/content/res/Resources;

    return-object v0
.end method

.method public abstract updateImages()V
.end method
