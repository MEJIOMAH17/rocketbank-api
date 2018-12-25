.class public final Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton$animateAvatar$1;
.super Ljava/lang/Object;
.source "SwitchAvatarButton.kt"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;->animateAvatar(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $isDoubleAvatar:Z

.field final synthetic this$0:Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .line 162
    iput-object p1, p0, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton$animateAvatar$1;->this$0:Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;

    iput-boolean p2, p0, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton$animateAvatar$1;->$isDoubleAvatar:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton$animateAvatar$1;->this$0:Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;

    invoke-static {v0}, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;->access$getPositionAnimator$p(Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;)Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton$PositionAnimation;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 168
    iget-object p1, p0, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton$animateAvatar$1;->this$0:Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;

    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton$animateAvatar$1;->this$0:Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;

    iget-boolean v1, p0, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton$animateAvatar$1;->$isDoubleAvatar:Z

    invoke-static {v0, v1}, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;->access$newAvatarPosition(Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;Z)F

    move-result v0

    invoke-static {p1, v0}, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;->access$setPosition(Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;F)V

    .line 169
    iget-object p1, p0, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton$animateAvatar$1;->this$0:Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;->access$setPositionAnimator$p(Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton$PositionAnimation;)V

    :cond_0
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
