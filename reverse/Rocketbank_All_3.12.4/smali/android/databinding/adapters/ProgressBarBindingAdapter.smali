.class public Landroid/databinding/adapters/ProgressBarBindingAdapter;
.super Ljava/lang/Object;
.source "ProgressBarBindingAdapter.java"


# annotations
.annotation build Landroid/databinding/BindingMethods;
    value = {
        .subannotation Landroid/databinding/BindingMethod;
            attribute = "android:indeterminateTint"
            method = "setIndeterminateTintList"
            type = Landroid/widget/ProgressBar;
        .end subannotation,
        .subannotation Landroid/databinding/BindingMethod;
            attribute = "android:progressTint"
            method = "setProgressTintList"
            type = Landroid/widget/ProgressBar;
        .end subannotation,
        .subannotation Landroid/databinding/BindingMethod;
            attribute = "android:secondaryProgressTint"
            method = "setSecondaryProgressTintList"
            type = Landroid/widget/ProgressBar;
        .end subannotation
    }
.end annotation

.annotation build Landroid/support/annotation/RestrictTo;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
