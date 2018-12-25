.class final Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton$PositionAnimation;
.super Landroid/view/animation/Animation;
.source "SwitchAvatarButton.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PositionAnimation"
.end annotation


# instance fields
.field private final mDiff:F

.field private final mStartPosition:F

.field final synthetic this$0:Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;


# direct methods
.method public constructor <init>(Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;FF)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF)V"
        }
    .end annotation

    .line 257
    iput-object p1, p0, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton$PositionAnimation;->this$0:Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    iput p2, p0, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton$PositionAnimation;->mStartPosition:F

    .line 261
    new-instance p1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    check-cast p1, Landroid/view/animation/Interpolator;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton$PositionAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 262
    iget p1, p0, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton$PositionAnimation;->mStartPosition:F

    sub-float/2addr p3, p1

    iput p3, p0, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton$PositionAnimation;->mDiff:F

    return-void
.end method


# virtual methods
.method protected final applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 2

    const-string v0, "t"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 267
    iget-object p2, p0, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton$PositionAnimation;->this$0:Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;

    iget v0, p0, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton$PositionAnimation;->mStartPosition:F

    iget v1, p0, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton$PositionAnimation;->mDiff:F

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    invoke-static {p2, v0}, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;->access$setPosition(Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;F)V

    return-void
.end method

.method public final getMDiff$App_prodRelease()F
    .locals 1

    .line 258
    iget v0, p0, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton$PositionAnimation;->mDiff:F

    return v0
.end method

.method public final getMStartPosition()F
    .locals 1

    .line 257
    iget v0, p0, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton$PositionAnimation;->mStartPosition:F

    return v0
.end method
