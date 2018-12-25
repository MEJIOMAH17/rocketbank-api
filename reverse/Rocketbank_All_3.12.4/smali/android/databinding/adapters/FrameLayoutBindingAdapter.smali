.class public Landroid/databinding/adapters/FrameLayoutBindingAdapter;
.super Ljava/lang/Object;
.source "FrameLayoutBindingAdapter.java"


# annotations
.annotation build Landroid/databinding/BindingMethods;
    value = {
        .subannotation Landroid/databinding/BindingMethod;
            attribute = "android:foregroundTint"
            method = "setForegroundTintList"
            type = Landroid/widget/FrameLayout;
        .end subannotation
    }
.end annotation

.annotation build Landroid/support/annotation/RestrictTo;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
