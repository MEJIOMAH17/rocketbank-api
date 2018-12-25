.class public Lru/rocketbank/r2d2/root/chat/adapter/LinearBindingAdapter;
.super Ljava/lang/Object;
.source "LinearBindingAdapter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setMarginRight(Landroid/widget/LinearLayout;F)V
    .locals 1
    .annotation build Landroid/databinding/BindingAdapter;
        value = {
            "android:layout_marginRight"
        }
    .end annotation

    .line 11
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    float-to-int p1, p1

    .line 12
    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 13
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    return-void
.end method
