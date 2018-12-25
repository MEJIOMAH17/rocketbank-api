.class public Landroid/databinding/adapters/ActionMenuViewBindingAdapter;
.super Ljava/lang/Object;
.source "ActionMenuViewBindingAdapter.java"


# annotations
.annotation build Landroid/databinding/BindingMethods;
    value = {
        .subannotation Landroid/databinding/BindingMethod;
            attribute = "android:onMenuItemClick"
            method = "setOnMenuItemClickListener"
            type = Landroid/widget/ActionMenuView;
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
