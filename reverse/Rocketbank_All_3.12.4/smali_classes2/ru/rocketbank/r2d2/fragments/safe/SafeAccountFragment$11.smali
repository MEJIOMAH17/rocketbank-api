.class Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$11;
.super Ljava/lang/Object;
.source "SafeAccountFragment.java"

# interfaces
.implements Landroid/support/v7/widget/Toolbar$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->setupToolbar()V
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

    .line 467
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$11;->this$0:Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    .line 470
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x7f0902dc

    const/4 v1, 0x1

    if-eq p1, v0, :cond_1

    const v0, 0x7f090367

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 476
    :cond_0
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$11;->this$0:Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->access$1100(Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;)V

    return v1

    .line 472
    :cond_1
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$11;->this$0:Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->access$1000(Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;)V

    return v1
.end method
