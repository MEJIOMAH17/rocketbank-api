.class public final Lru/rocketbank/r2d2/shop/details/GestureLockableObservableScrollView$YScrollDetector;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "GestureLockableObservableScrollView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/shop/details/GestureLockableObservableScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "YScrollDetector"
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/shop/details/GestureLockableObservableScrollView;


# direct methods
.method public constructor <init>(Lru/rocketbank/r2d2/shop/details/GestureLockableObservableScrollView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 45
    iput-object p1, p0, Lru/rocketbank/r2d2/shop/details/GestureLockableObservableScrollView$YScrollDetector;->this$0:Lru/rocketbank/r2d2/shop/details/GestureLockableObservableScrollView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    .line 47
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
