.class final Lru/rocketbank/r2d2/root/chat/RatingDialogFragment$showProgressExecution$$inlined$with$lambda$1;
.super Ljava/lang/Object;
.source "RatingDialogFragment.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/root/chat/RatingDialogFragment;->showProgressExecution()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/root/chat/RatingDialogFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/root/chat/RatingDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/root/chat/RatingDialogFragment$showProgressExecution$$inlined$with$lambda$1;->this$0:Lru/rocketbank/r2d2/root/chat/RatingDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 175
    iget-object p1, p0, Lru/rocketbank/r2d2/root/chat/RatingDialogFragment$showProgressExecution$$inlined$with$lambda$1;->this$0:Lru/rocketbank/r2d2/root/chat/RatingDialogFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lru/rocketbank/r2d2/root/chat/RatingDialogFragment;->access$setProgressDialog$p(Lru/rocketbank/r2d2/root/chat/RatingDialogFragment;Landroid/app/ProgressDialog;)V

    return-void
.end method
