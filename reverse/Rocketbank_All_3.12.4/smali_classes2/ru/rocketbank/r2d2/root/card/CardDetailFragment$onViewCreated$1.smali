.class final Lru/rocketbank/r2d2/root/card/CardDetailFragment$onViewCreated$1;
.super Ljava/lang/Object;
.source "CardDetailFragment.kt"

# interfaces
.implements Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/root/card/CardDetailFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/root/card/CardDetailFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/root/card/CardDetailFragment;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/root/card/CardDetailFragment$onViewCreated$1;->this$0:Lru/rocketbank/r2d2/root/card/CardDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRefresh()V
    .locals 1

    .line 100
    iget-object v0, p0, Lru/rocketbank/r2d2/root/card/CardDetailFragment$onViewCreated$1;->this$0:Lru/rocketbank/r2d2/root/card/CardDetailFragment;

    invoke-static {v0}, Lru/rocketbank/r2d2/root/card/CardDetailFragment;->access$getCardPresenter$p(Lru/rocketbank/r2d2/root/card/CardDetailFragment;)Lru/rocketbank/r2d2/root/card/binding/CardPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/card/binding/CardPresenter;->refresh()V

    return-void
.end method
