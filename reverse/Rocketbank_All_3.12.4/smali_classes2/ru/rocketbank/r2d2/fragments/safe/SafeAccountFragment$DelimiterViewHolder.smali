.class Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$DelimiterViewHolder;
.super Lru/rocketbank/r2d2/root/feed/viewholder/FeedViewHolder;
.source "SafeAccountFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DelimiterViewHolder"
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;

.field private titleView:Lru/rocketbank/core/widgets/RocketTextView;


# direct methods
.method public constructor <init>(Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;Landroid/view/View;)V
    .locals 0

    .line 732
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$DelimiterViewHolder;->this$0:Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;

    .line 733
    invoke-direct {p0, p2}, Lru/rocketbank/r2d2/root/feed/viewholder/FeedViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0903cc

    .line 735
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$DelimiterViewHolder;->titleView:Lru/rocketbank/core/widgets/RocketTextView;

    return-void
.end method


# virtual methods
.method public setText(I)V
    .locals 1

    .line 739
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$DelimiterViewHolder;->titleView:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v0, p1}, Lru/rocketbank/core/widgets/RocketTextView;->setText(I)V

    return-void
.end method
