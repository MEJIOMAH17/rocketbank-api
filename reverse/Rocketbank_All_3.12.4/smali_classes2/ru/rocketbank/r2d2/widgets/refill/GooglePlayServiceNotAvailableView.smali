.class public Lru/rocketbank/r2d2/widgets/refill/GooglePlayServiceNotAvailableView;
.super Landroid/widget/FrameLayout;
.source "GooglePlayServiceNotAvailableView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 14
    invoke-direct {p0, p1, v0}, Lru/rocketbank/r2d2/widgets/refill/GooglePlayServiceNotAvailableView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 18
    invoke-direct {p0, p1, p2, v0}, Lru/rocketbank/r2d2/widgets/refill/GooglePlayServiceNotAvailableView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 22
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const p3, 0x7f0c01c3

    const/4 v0, 0x1

    .line 25
    invoke-virtual {p2, p3, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const-string p2, "#ffffff"

    .line 27
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/widgets/refill/GooglePlayServiceNotAvailableView;->setBackgroundColor(I)V

    const/16 p2, 0xd

    .line 29
    invoke-static {p1, p2}, Lru/rocketbank/r2d2/Utils;->dpToPx(Landroid/content/Context;I)I

    move-result p1

    .line 31
    invoke-virtual {p0, p1, p1, p1, p1}, Lru/rocketbank/r2d2/widgets/refill/GooglePlayServiceNotAvailableView;->setPadding(IIII)V

    return-void
.end method
