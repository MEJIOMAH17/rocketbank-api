.class Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$3;
.super Ljava/lang/Object;
.source "SafeAccountFragment.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->refresh()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;)V
    .locals 0

    .line 262
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$3;->this$0:Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    .line 265
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$3;->this$0:Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;

    iget-object v0, v0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    return-void
.end method
