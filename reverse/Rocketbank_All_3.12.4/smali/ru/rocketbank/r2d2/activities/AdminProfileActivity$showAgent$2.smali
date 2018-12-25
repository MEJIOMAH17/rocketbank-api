.class public final Lru/rocketbank/r2d2/activities/AdminProfileActivity$showAgent$2;
.super Lru/rocketbank/core/widgets/IAnimatorListener;
.source "AdminProfileActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/activities/AdminProfileActivity;->showAgent(Lru/rocketbank/core/network/model/AgentResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/activities/AdminProfileActivity;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/activities/AdminProfileActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 184
    iput-object p1, p0, Lru/rocketbank/r2d2/activities/AdminProfileActivity$showAgent$2;->this$0:Lru/rocketbank/r2d2/activities/AdminProfileActivity;

    invoke-direct {p0}, Lru/rocketbank/core/widgets/IAnimatorListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/AdminProfileActivity$showAgent$2;->this$0:Lru/rocketbank/r2d2/activities/AdminProfileActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lru/rocketbank/r2d2/activities/AdminProfileActivity;->access$setScroll$p(Lru/rocketbank/r2d2/activities/AdminProfileActivity;Z)V

    return-void
.end method
