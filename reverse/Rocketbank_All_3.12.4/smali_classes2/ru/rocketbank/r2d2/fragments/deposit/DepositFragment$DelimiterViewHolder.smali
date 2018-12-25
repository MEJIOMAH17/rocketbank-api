.class Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$DelimiterViewHolder;
.super Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$FeedViewHolder;
.source "DepositFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DelimiterViewHolder"
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;

.field titleView:Lru/rocketbank/core/widgets/RocketTextView;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;Landroid/view/View;)V
    .locals 0

    .line 658
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$DelimiterViewHolder;->this$0:Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;

    .line 659
    invoke-direct {p0, p1, p2}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$FeedViewHolder;-><init>(Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;Landroid/view/View;)V

    const p1, 0x7f0903cc

    .line 661
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$DelimiterViewHolder;->titleView:Lru/rocketbank/core/widgets/RocketTextView;

    return-void
.end method


# virtual methods
.method public setText(I)V
    .locals 1

    .line 665
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$DelimiterViewHolder;->titleView:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v0, p1}, Lru/rocketbank/core/widgets/RocketTextView;->setText(I)V

    return-void
.end method
