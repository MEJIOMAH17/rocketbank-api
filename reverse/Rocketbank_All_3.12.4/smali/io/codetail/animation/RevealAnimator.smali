.class public interface abstract Lio/codetail/animation/RevealAnimator;
.super Ljava/lang/Object;
.source "RevealAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/codetail/animation/RevealAnimator$RevealRadius;,
        Lio/codetail/animation/RevealAnimator$RevealFinishedIceCreamSandwich;,
        Lio/codetail/animation/RevealAnimator$RevealInfo;
    }
.end annotation


# static fields
.field public static final CLIP_RADIUS:Lio/codetail/animation/RevealAnimator$RevealRadius;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    new-instance v0, Lio/codetail/animation/RevealAnimator$RevealRadius;

    invoke-direct {v0}, Lio/codetail/animation/RevealAnimator$RevealRadius;-><init>()V

    sput-object v0, Lio/codetail/animation/RevealAnimator;->CLIP_RADIUS:Lio/codetail/animation/RevealAnimator$RevealRadius;

    return-void
.end method


# virtual methods
.method public abstract attachRevealInfo(Lio/codetail/animation/RevealAnimator$RevealInfo;)V
.end method

.method public abstract getRevealRadius()F
.end method

.method public abstract onRevealAnimationCancel()V
.end method

.method public abstract onRevealAnimationEnd()V
.end method

.method public abstract onRevealAnimationStart()V
.end method

.method public abstract setRevealRadius(F)V
.end method

.method public abstract startReverseAnimation()Lio/codetail/animation/SupportAnimator;
.end method
