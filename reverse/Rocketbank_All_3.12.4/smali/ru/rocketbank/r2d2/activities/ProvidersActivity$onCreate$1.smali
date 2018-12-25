.class final Lru/rocketbank/r2d2/activities/ProvidersActivity$onCreate$1;
.super Ljava/lang/Object;
.source "ProvidersActivity.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/activities/ProvidersActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/activities/ProvidersActivity;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/activities/ProvidersActivity;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/activities/ProvidersActivity$onCreate$1;->this$0:Lru/rocketbank/r2d2/activities/ProvidersActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 36
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/ProvidersActivity$onCreate$1;->this$0:Lru/rocketbank/r2d2/activities/ProvidersActivity;

    iget-object v1, p0, Lru/rocketbank/r2d2/activities/ProvidersActivity$onCreate$1;->this$0:Lru/rocketbank/r2d2/activities/ProvidersActivity;

    iget-object v2, p0, Lru/rocketbank/r2d2/activities/ProvidersActivity$onCreate$1;->this$0:Lru/rocketbank/r2d2/activities/ProvidersActivity;

    invoke-static {v2}, Lru/rocketbank/r2d2/activities/ProvidersActivity;->access$getRootView$p(Lru/rocketbank/r2d2/activities/ProvidersActivity;)Landroid/view/View;

    move-result-object v2

    invoke-static {v1, v2}, Lru/rocketbank/r2d2/activities/ProvidersActivity;->access$createAnimator(Lru/rocketbank/r2d2/activities/ProvidersActivity;Landroid/view/View;)Lio/codetail/animation/SupportAnimator;

    move-result-object v1

    invoke-static {v0, v1}, Lru/rocketbank/r2d2/activities/ProvidersActivity;->access$setAnimator$p(Lru/rocketbank/r2d2/activities/ProvidersActivity;Lio/codetail/animation/SupportAnimator;)V

    .line 37
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/ProvidersActivity$onCreate$1;->this$0:Lru/rocketbank/r2d2/activities/ProvidersActivity;

    invoke-static {v0}, Lru/rocketbank/r2d2/activities/ProvidersActivity;->access$getAnimator$p(Lru/rocketbank/r2d2/activities/ProvidersActivity;)Lio/codetail/animation/SupportAnimator;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0}, Lio/codetail/animation/SupportAnimator;->start()V

    return-void
.end method
