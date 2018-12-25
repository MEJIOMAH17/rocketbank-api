.class Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$ActionCloseViewHolder$2;
.super Ljava/lang/Object;
.source "SafeAccountFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$ActionCloseViewHolder;->onClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$ActionCloseViewHolder;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$ActionCloseViewHolder;)V
    .locals 0

    .line 771
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$ActionCloseViewHolder$2;->this$1:Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$ActionCloseViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 774
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 775
    sget-object p1, Lru/rocketbank/r2d2/activities/safe/CloseSafeStatusActivity;->Companion:Lru/rocketbank/r2d2/activities/safe/CloseSafeStatusActivity$Companion;

    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$ActionCloseViewHolder$2;->this$1:Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$ActionCloseViewHolder;

    iget-object p2, p2, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$ActionCloseViewHolder;->this$0:Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;

    invoke-virtual {p2}, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$ActionCloseViewHolder$2;->this$1:Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$ActionCloseViewHolder;

    invoke-static {v0}, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$ActionCloseViewHolder;->access$1400(Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$ActionCloseViewHolder;)Lru/rocketbank/core/model/SafeAccount;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lru/rocketbank/r2d2/activities/safe/CloseSafeStatusActivity$Companion;->createIntent(Landroid/content/Context;Lru/rocketbank/core/model/SafeAccount;)Landroid/content/Intent;

    move-result-object p1

    .line 776
    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$ActionCloseViewHolder$2;->this$1:Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$ActionCloseViewHolder;

    iget-object p2, p2, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$ActionCloseViewHolder;->this$0:Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
