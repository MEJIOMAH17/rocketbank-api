.class Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$FeedViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "DepositFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FeedViewHolder"
.end annotation


# instance fields
.field private item:Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$Item;

.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;


# direct methods
.method public constructor <init>(Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;Landroid/view/View;)V
    .locals 0

    .line 650
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$FeedViewHolder;->this$0:Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;

    .line 651
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getItem()Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$Item;
    .locals 1

    .line 641
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$FeedViewHolder;->item:Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$Item;

    return-object v0
.end method

.method public setItem(Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$Item;)V
    .locals 0

    .line 645
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$FeedViewHolder;->item:Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$Item;

    return-void
.end method
