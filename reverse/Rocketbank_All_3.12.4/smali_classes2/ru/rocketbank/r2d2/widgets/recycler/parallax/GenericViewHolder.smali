.class public Lru/rocketbank/r2d2/widgets/recycler/parallax/GenericViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "GenericViewHolder.kt"


# instance fields
.field private item:Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final getItem()Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;
    .locals 1

    .line 8
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/GenericViewHolder;->item:Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;

    return-object v0
.end method

.method public final setItem(Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;)V
    .locals 0

    .line 8
    iput-object p1, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/GenericViewHolder;->item:Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;

    return-void
.end method
