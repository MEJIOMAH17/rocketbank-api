.class Lru/rocketbank/r2d2/fragments/safe/RenameSafeDialogFragment$1;
.super Ljava/lang/Object;
.source "RenameSafeDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/safe/RenameSafeDialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/safe/RenameSafeDialogFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/fragments/safe/RenameSafeDialogFragment;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/safe/RenameSafeDialogFragment$1;->this$0:Lru/rocketbank/r2d2/fragments/safe/RenameSafeDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 104
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/safe/RenameSafeDialogFragment$1;->this$0:Lru/rocketbank/r2d2/fragments/safe/RenameSafeDialogFragment;

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/fragments/safe/RenameSafeDialogFragment;->onOkClick(Landroid/view/View;)V

    return-void
.end method
