.class final Landroid/support/v4/widget/PopupWindowCompat$PopupWindowCompatApi23Impl;
.super Landroid/support/v4/widget/PopupWindowCompat$PopupWindowCompatApi21Impl;
.source "PopupWindowCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/PopupWindowCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PopupWindowCompatApi23Impl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 159
    invoke-direct {p0}, Landroid/support/v4/widget/PopupWindowCompat$PopupWindowCompatApi21Impl;-><init>()V

    return-void
.end method


# virtual methods
.method public final setOverlapAnchor(Landroid/widget/PopupWindow;Z)V
    .locals 0

    .line 162
    invoke-virtual {p1, p2}, Landroid/widget/PopupWindow;->setOverlapAnchor(Z)V

    return-void
.end method

.method public final setWindowLayoutType(Landroid/widget/PopupWindow;I)V
    .locals 0

    .line 172
    invoke-virtual {p1, p2}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    return-void
.end method
