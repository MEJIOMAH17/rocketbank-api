.class public Lru/rocketbank/r2d2/widgets/behavior/RocketSnackbarBehavior;
.super Landroid/support/design/widget/CoordinatorLayout$Behavior;
.source "RocketSnackbarBehavior.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/design/widget/CoordinatorLayout$Behavior<",
        "Landroid/widget/RelativeLayout;",
        ">;"
    }
.end annotation


# instance fields
.field context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Landroid/support/design/widget/CoordinatorLayout$Behavior;-><init>()V

    .line 15
    iput-object p1, p0, Lru/rocketbank/r2d2/widgets/behavior/RocketSnackbarBehavior;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public bridge synthetic layoutDependsOn(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    .line 11
    check-cast p2, Landroid/widget/RelativeLayout;

    invoke-virtual {p0, p1, p2, p3}, Lru/rocketbank/r2d2/widgets/behavior/RocketSnackbarBehavior;->layoutDependsOn(Landroid/support/design/widget/CoordinatorLayout;Landroid/widget/RelativeLayout;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public layoutDependsOn(Landroid/support/design/widget/CoordinatorLayout;Landroid/widget/RelativeLayout;Landroid/view/View;)Z
    .locals 0

    .line 20
    instance-of p1, p3, Lru/rocketbank/core/widgets/RocketSnackbar$SnackbarLayout;

    return p1
.end method

.method public bridge synthetic onDependentViewChanged(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    .line 11
    check-cast p2, Landroid/widget/RelativeLayout;

    invoke-virtual {p0, p1, p2, p3}, Lru/rocketbank/r2d2/widgets/behavior/RocketSnackbarBehavior;->onDependentViewChanged(Landroid/support/design/widget/CoordinatorLayout;Landroid/widget/RelativeLayout;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public onDependentViewChanged(Landroid/support/design/widget/CoordinatorLayout;Landroid/widget/RelativeLayout;Landroid/view/View;)Z
    .locals 0

    .line 25
    invoke-virtual {p3}, Landroid/view/View;->getTranslationY()F

    move-result p1

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result p3

    int-to-float p3, p3

    sub-float/2addr p1, p3

    const/4 p3, 0x0

    invoke-static {p3, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 26
    invoke-virtual {p2, p1}, Landroid/widget/RelativeLayout;->setTranslationY(F)V

    const/4 p1, 0x1

    return p1
.end method
