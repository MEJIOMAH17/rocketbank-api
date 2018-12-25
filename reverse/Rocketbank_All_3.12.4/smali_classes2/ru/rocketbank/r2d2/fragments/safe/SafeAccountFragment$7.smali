.class Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$7;
.super Ljava/lang/Object;
.source "SafeAccountFragment.java"

# interfaces
.implements Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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

    .line 402
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$7;->this$0:Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh()V
    .locals 1

    .line 405
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$7;->this$0:Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;

    invoke-static {v0}, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->access$900(Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;)Z

    return-void
.end method
