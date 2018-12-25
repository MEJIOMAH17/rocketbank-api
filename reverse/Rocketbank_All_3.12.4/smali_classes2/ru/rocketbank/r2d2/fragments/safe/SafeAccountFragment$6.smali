.class Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$6;
.super Ljava/lang/Object;
.source "SafeAccountFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 394
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$6;->this$0:Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 397
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$6;->this$0:Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$6;->this$0:Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;

    invoke-static {v0}, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->access$800(Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->access$802(Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;Z)Z

    .line 398
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$6;->this$0:Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->access$300(Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;)V

    return-void
.end method
