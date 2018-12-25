.class public final Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity$timeOutcheckRunnable$1;
.super Ljava/lang/Object;
.source "Enter3dSecActivity.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 35
    iput-object p1, p0, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity$timeOutcheckRunnable$1;->this$0:Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 37
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity$timeOutcheckRunnable$1;->this$0:Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;

    invoke-static {v0}, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;->access$getTimeout$p(Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity$timeOutcheckRunnable$1;->this$0:Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;->setErrorTimeout()V

    return-void

    .line 40
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity$timeOutcheckRunnable$1;->this$0:Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;

    invoke-static {v0}, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;->access$getHandler$p(Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;)Landroid/os/Handler;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
