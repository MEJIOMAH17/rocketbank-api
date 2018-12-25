.class public final Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity$RefreshUpdate;
.super Ljava/lang/Object;
.source "AbstractDetailOperationActivity.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "RefreshUpdate"
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity;


# direct methods
.method public constructor <init>(Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 152
    iput-object p1, p0, Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity$RefreshUpdate;->this$0:Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 154
    iget-object v0, p0, Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity$RefreshUpdate;->this$0:Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity;

    invoke-static {v0}, Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity;->access$getOperationPresenter$p(Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity;)Lru/rocketbank/r2d2/root/operation/OperationContract$Presenter;

    move-result-object v0

    invoke-interface {v0}, Lru/rocketbank/r2d2/root/operation/OperationContract$Presenter;->refresh()V

    return-void
.end method
