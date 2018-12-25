.class final Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ViewPositionComparator;
.super Ljava/lang/Object;
.source "VerticalViewPager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfr/castorflex/android/verticalviewpager/VerticalViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewPositionComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 2778
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .line 2778
    check-cast p1, Landroid/view/View;

    check-cast p2, Landroid/view/View;

    .line 3781
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$LayoutParams;

    .line 3782
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$LayoutParams;

    .line 3783
    iget-boolean v0, p1, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$LayoutParams;->isDecor:Z

    iget-boolean v1, p2, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$LayoutParams;->isDecor:Z

    if-eq v0, v1, :cond_1

    .line 3784
    iget-boolean p1, p1, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$LayoutParams;->isDecor:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1

    .line 3786
    :cond_1
    iget p1, p1, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$LayoutParams;->position:I

    iget p2, p2, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$LayoutParams;->position:I

    sub-int/2addr p1, p2

    return p1
.end method
