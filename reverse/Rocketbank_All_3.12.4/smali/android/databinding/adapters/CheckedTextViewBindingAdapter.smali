.class public Landroid/databinding/adapters/CheckedTextViewBindingAdapter;
.super Ljava/lang/Object;
.source "CheckedTextViewBindingAdapter.java"


# annotations
.annotation build Landroid/databinding/BindingMethods;
    value = {
        .subannotation Landroid/databinding/BindingMethod;
            attribute = "android:checkMark"
            method = "setCheckMarkDrawable"
            type = Landroid/widget/CheckedTextView;
        .end subannotation,
        .subannotation Landroid/databinding/BindingMethod;
            attribute = "android:checkMarkTint"
            method = "setCheckMarkTintList"
            type = Landroid/widget/CheckedTextView;
        .end subannotation
    }
.end annotation

.annotation build Landroid/support/annotation/RestrictTo;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
