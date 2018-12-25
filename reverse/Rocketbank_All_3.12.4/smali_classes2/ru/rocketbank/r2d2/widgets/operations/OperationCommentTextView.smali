.class public Lru/rocketbank/r2d2/widgets/operations/OperationCommentTextView;
.super Lru/rocketbank/core/widgets/RocketTextView;
.source "OperationCommentTextView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/widgets/operations/OperationCommentTextView$LocalLinkMovementMethod;
    }
.end annotation


# instance fields
.field dontConsumeNonUrlClicks:Z

.field linkHit:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Lru/rocketbank/core/widgets/RocketTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 17
    iput-boolean p1, p0, Lru/rocketbank/r2d2/widgets/operations/OperationCommentTextView;->dontConsumeNonUrlClicks:Z

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lru/rocketbank/r2d2/widgets/operations/OperationCommentTextView;->linkHit:Z

    .line 27
    invoke-super {p0, p1}, Lru/rocketbank/core/widgets/RocketTextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    .line 29
    iget-boolean v0, p0, Lru/rocketbank/r2d2/widgets/operations/OperationCommentTextView;->dontConsumeNonUrlClicks:Z

    if-eqz v0, :cond_0

    .line 30
    iget-boolean p1, p0, Lru/rocketbank/r2d2/widgets/operations/OperationCommentTextView;->linkHit:Z

    return p1

    :cond_0
    return p1
.end method
