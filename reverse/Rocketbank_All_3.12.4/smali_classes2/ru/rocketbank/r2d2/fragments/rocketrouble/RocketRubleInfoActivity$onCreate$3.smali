.class final Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity$onCreate$3;
.super Ljava/lang/Object;
.source "RocketRubleInfoActivity.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity$onCreate$3;->this$0:Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 89
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity$onCreate$3;->this$0:Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity;

    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity$onCreate$3;->this$0:Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity;

    iget-object v2, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity$onCreate$3;->this$0:Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity;

    invoke-static {v2}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity;->access$getMContentView$p(Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity;)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-static {v1, v2}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity;->access$createAnimator(Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity;Landroid/view/View;)Lio/codetail/animation/SupportAnimator;

    move-result-object v1

    invoke-static {v0, v1}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity;->access$setAnimator$p(Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity;Lio/codetail/animation/SupportAnimator;)V

    .line 90
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity$onCreate$3;->this$0:Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity;

    invoke-static {v0}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity;->access$getAnimator$p(Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity;)Lio/codetail/animation/SupportAnimator;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {v0}, Lio/codetail/animation/SupportAnimator;->start()V

    return-void
.end method
