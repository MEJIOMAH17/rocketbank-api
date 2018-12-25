.class public final Lio/codetail/animation/RevealAnimator$RevealInfo;
.super Ljava/lang/Object;
.source "RevealAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/codetail/animation/RevealAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RevealInfo"
.end annotation


# instance fields
.field public final centerX:I

.field public final centerY:I

.field public final endRadius:F

.field public final startRadius:F

.field public final target:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(IIFFLjava/lang/ref/WeakReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIFF",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput p1, p0, Lio/codetail/animation/RevealAnimator$RevealInfo;->centerX:I

    .line 83
    iput p2, p0, Lio/codetail/animation/RevealAnimator$RevealInfo;->centerY:I

    .line 84
    iput p3, p0, Lio/codetail/animation/RevealAnimator$RevealInfo;->startRadius:F

    .line 85
    iput p4, p0, Lio/codetail/animation/RevealAnimator$RevealInfo;->endRadius:F

    .line 86
    iput-object p5, p0, Lio/codetail/animation/RevealAnimator$RevealInfo;->target:Ljava/lang/ref/WeakReference;

    return-void
.end method
