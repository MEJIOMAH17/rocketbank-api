.class final Landroid/support/transition/TransitionUtils;
.super Ljava/lang/Object;
.source "TransitionUtils.java"

# interfaces
.implements Landroid/support/transition/ViewGroupOverlayImpl;


# instance fields
.field private final mViewGroupOverlay:Landroid/view/ViewGroupOverlay;


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;)V
    .locals 0

    .line 1031
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1032
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object p1

    iput-object p1, p0, Landroid/support/transition/TransitionUtils;->mViewGroupOverlay:Landroid/view/ViewGroupOverlay;

    return-void
.end method


# virtual methods
.method public final add(Landroid/view/View;)V
    .locals 1

    .line 1052
    iget-object v0, p0, Landroid/support/transition/TransitionUtils;->mViewGroupOverlay:Landroid/view/ViewGroupOverlay;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    return-void
.end method

.method public final remove(Landroid/view/View;)V
    .locals 1

    .line 1057
    iget-object v0, p0, Landroid/support/transition/TransitionUtils;->mViewGroupOverlay:Landroid/view/ViewGroupOverlay;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    return-void
.end method
