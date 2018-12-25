.class public Landroid/databinding/adapters/CardViewBindingAdapter;
.super Ljava/lang/Object;
.source "CardViewBindingAdapter.java"


# annotations
.annotation build Landroid/databinding/BindingMethods;
    value = {
        .subannotation Landroid/databinding/BindingMethod;
            attribute = "cardCornerRadius"
            method = "setRadius"
            type = Landroid/support/v7/widget/CardView;
        .end subannotation,
        .subannotation Landroid/databinding/BindingMethod;
            attribute = "cardMaxElevation"
            method = "setMaxCardElevation"
            type = Landroid/support/v7/widget/CardView;
        .end subannotation,
        .subannotation Landroid/databinding/BindingMethod;
            attribute = "cardPreventCornerOverlap"
            method = "setPreventCornerOverlap"
            type = Landroid/support/v7/widget/CardView;
        .end subannotation,
        .subannotation Landroid/databinding/BindingMethod;
            attribute = "cardUseCompatPadding"
            method = "setUseCompatPadding"
            type = Landroid/support/v7/widget/CardView;
        .end subannotation
    }
.end annotation

.annotation build Landroid/support/annotation/RestrictTo;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setContentPadding(Landroid/support/v7/widget/CardView;I)V
    .locals 0
    .annotation build Landroid/databinding/BindingAdapter;
        value = {
            "contentPadding"
        }
    .end annotation

    .line 38
    invoke-virtual {p0, p1, p1, p1, p1}, Landroid/support/v7/widget/CardView;->setContentPadding(IIII)V

    return-void
.end method

.method public static setContentPaddingBottom(Landroid/support/v7/widget/CardView;I)V
    .locals 3
    .annotation build Landroid/databinding/BindingAdapter;
        value = {
            "contentPaddingBottom"
        }
    .end annotation

    .line 67
    invoke-virtual {p0}, Landroid/support/v7/widget/CardView;->getContentPaddingLeft()I

    move-result v0

    .line 68
    invoke-virtual {p0}, Landroid/support/v7/widget/CardView;->getContentPaddingTop()I

    move-result v1

    .line 69
    invoke-virtual {p0}, Landroid/support/v7/widget/CardView;->getContentPaddingRight()I

    move-result v2

    .line 70
    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/support/v7/widget/CardView;->setContentPadding(IIII)V

    return-void
.end method

.method public static setContentPaddingLeft(Landroid/support/v7/widget/CardView;I)V
    .locals 3
    .annotation build Landroid/databinding/BindingAdapter;
        value = {
            "contentPaddingLeft"
        }
    .end annotation

    .line 43
    invoke-virtual {p0}, Landroid/support/v7/widget/CardView;->getContentPaddingTop()I

    move-result v0

    .line 44
    invoke-virtual {p0}, Landroid/support/v7/widget/CardView;->getContentPaddingRight()I

    move-result v1

    .line 45
    invoke-virtual {p0}, Landroid/support/v7/widget/CardView;->getContentPaddingBottom()I

    move-result v2

    .line 46
    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/support/v7/widget/CardView;->setContentPadding(IIII)V

    return-void
.end method

.method public static setContentPaddingRight(Landroid/support/v7/widget/CardView;I)V
    .locals 3
    .annotation build Landroid/databinding/BindingAdapter;
        value = {
            "contentPaddingRight"
        }
    .end annotation

    .line 59
    invoke-virtual {p0}, Landroid/support/v7/widget/CardView;->getContentPaddingLeft()I

    move-result v0

    .line 60
    invoke-virtual {p0}, Landroid/support/v7/widget/CardView;->getContentPaddingTop()I

    move-result v1

    .line 61
    invoke-virtual {p0}, Landroid/support/v7/widget/CardView;->getContentPaddingBottom()I

    move-result v2

    .line 62
    invoke-virtual {p0, v0, v1, p1, v2}, Landroid/support/v7/widget/CardView;->setContentPadding(IIII)V

    return-void
.end method

.method public static setContentPaddingTop(Landroid/support/v7/widget/CardView;I)V
    .locals 3
    .annotation build Landroid/databinding/BindingAdapter;
        value = {
            "contentPaddingTop"
        }
    .end annotation

    .line 51
    invoke-virtual {p0}, Landroid/support/v7/widget/CardView;->getContentPaddingLeft()I

    move-result v0

    .line 52
    invoke-virtual {p0}, Landroid/support/v7/widget/CardView;->getContentPaddingRight()I

    move-result v1

    .line 53
    invoke-virtual {p0}, Landroid/support/v7/widget/CardView;->getContentPaddingBottom()I

    move-result v2

    .line 54
    invoke-virtual {p0, v0, p1, v1, v2}, Landroid/support/v7/widget/CardView;->setContentPadding(IIII)V

    return-void
.end method
