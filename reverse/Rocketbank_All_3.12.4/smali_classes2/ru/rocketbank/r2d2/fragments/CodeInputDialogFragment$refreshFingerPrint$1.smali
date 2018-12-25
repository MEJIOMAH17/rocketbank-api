.class final Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment$refreshFingerPrint$1;
.super Ljava/lang/Object;
.source "CodeInputDialogFragment.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->refreshFingerPrint()V
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

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment$refreshFingerPrint$1;->this$0:Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 153
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment$refreshFingerPrint$1;->this$0:Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;

    invoke-static {v0}, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->access$getRocketSMSGroup$p(Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;)Lru/rocketbank/core/widgets/RocketSMSGroup;

    move-result-object v0

    invoke-virtual {v0}, Lru/rocketbank/core/widgets/RocketSMSGroup;->setOffImidiate()V

    .line 154
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment$refreshFingerPrint$1;->this$0:Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;

    invoke-static {v0}, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->access$getFingerPrint$p(Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
