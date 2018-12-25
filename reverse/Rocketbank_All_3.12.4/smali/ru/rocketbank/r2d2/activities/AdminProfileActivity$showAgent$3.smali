.class final Lru/rocketbank/r2d2/activities/AdminProfileActivity$showAgent$3;
.super Ljava/lang/Object;
.source "AdminProfileActivity.kt"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/activities/AdminProfileActivity;->showAgent(Lru/rocketbank/core/network/model/AgentResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $toolbar:Landroid/support/v7/widget/Toolbar;

.field final synthetic this$0:Lru/rocketbank/r2d2/activities/AdminProfileActivity;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/activities/AdminProfileActivity;Landroid/support/v7/widget/Toolbar;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/activities/AdminProfileActivity$showAgent$3;->this$0:Lru/rocketbank/r2d2/activities/AdminProfileActivity;

    iput-object p2, p0, Lru/rocketbank/r2d2/activities/AdminProfileActivity$showAgent$3;->$toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 193
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/AdminProfileActivity$showAgent$3;->this$0:Lru/rocketbank/r2d2/activities/AdminProfileActivity;

    iget-object v1, p0, Lru/rocketbank/r2d2/activities/AdminProfileActivity$showAgent$3;->$toolbar:Landroid/support/v7/widget/Toolbar;

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    const-string v2, "animator"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, v1, p1}, Lru/rocketbank/r2d2/activities/AdminProfileActivity;->access$setToolbar(Lru/rocketbank/r2d2/activities/AdminProfileActivity;Landroid/support/v7/widget/Toolbar;F)V

    return-void
.end method
