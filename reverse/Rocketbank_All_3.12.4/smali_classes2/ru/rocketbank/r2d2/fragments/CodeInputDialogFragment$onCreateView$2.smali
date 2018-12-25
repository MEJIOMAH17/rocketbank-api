.class final Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment$onCreateView$2;
.super Ljava/lang/Object;
.source "CodeInputDialogFragment.kt"

# interfaces
.implements Lru/rocketbank/core/widgets/RocketSMSGroup$OnCodeResetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment$onCreateView$2;->this$0:Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCodeReset()V
    .locals 4

    .line 102
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment$onCreateView$2;->this$0:Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment$onCreateView$2;->this$0:Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;

    invoke-virtual {v2}, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    const-class v3, Lru/rocketbank/r2d2/activities/CodeResetActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
