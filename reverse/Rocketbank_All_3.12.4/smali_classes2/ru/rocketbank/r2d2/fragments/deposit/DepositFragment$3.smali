.class Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$3;
.super Ljava/lang/Object;
.source "DepositFragment.java"

# interfaces
.implements Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;)V
    .locals 0

    .line 223
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$3;->this$0:Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh()V
    .locals 1

    .line 226
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$3;->this$0:Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;

    invoke-static {v0}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->access$300(Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;)Lru/rocketbank/core/user/Authorization;

    move-result-object v0

    invoke-virtual {v0}, Lru/rocketbank/core/user/Authorization;->refreshBackgroundProfile()V

    return-void
.end method
