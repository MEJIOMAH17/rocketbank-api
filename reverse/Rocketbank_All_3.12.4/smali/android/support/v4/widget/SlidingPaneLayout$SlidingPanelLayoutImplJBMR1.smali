.class final Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImplJBMR1;
.super Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImplBase;
.source "SlidingPaneLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/SlidingPaneLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SlidingPanelLayoutImplJBMR1"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1532
    invoke-direct {p0}, Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImplBase;-><init>()V

    return-void
.end method


# virtual methods
.method public final invalidateChildRegion(Landroid/support/v4/widget/SlidingPaneLayout;Landroid/view/View;)V
    .locals 0

    .line 1535
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    const/4 p1, 0x0

    invoke-static {p2, p1}, Landroid/support/v4/view/ViewCompat;->setLayerPaint(Landroid/view/View;Landroid/graphics/Paint;)V

    return-void
.end method
