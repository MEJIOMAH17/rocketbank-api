.class final Lru/rocketbank/r2d2/fragments/OpenSafeAccountFragment$showProgressExecution$$inlined$let$lambda$1;
.super Ljava/lang/Object;
.source "OpenSafeAccountFragment.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/OpenSafeAccountFragment;->showProgressExecution()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/OpenSafeAccountFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/fragments/OpenSafeAccountFragment;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/OpenSafeAccountFragment$showProgressExecution$$inlined$let$lambda$1;->this$0:Lru/rocketbank/r2d2/fragments/OpenSafeAccountFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 168
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/OpenSafeAccountFragment$showProgressExecution$$inlined$let$lambda$1;->this$0:Lru/rocketbank/r2d2/fragments/OpenSafeAccountFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lru/rocketbank/r2d2/fragments/OpenSafeAccountFragment;->access$setProgressDialog$p(Lru/rocketbank/r2d2/fragments/OpenSafeAccountFragment;Landroid/app/ProgressDialog;)V

    return-void
.end method
