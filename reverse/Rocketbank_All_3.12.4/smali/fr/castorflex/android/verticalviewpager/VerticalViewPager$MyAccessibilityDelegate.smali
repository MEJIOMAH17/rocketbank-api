.class final Lfr/castorflex/android/verticalviewpager/VerticalViewPager$MyAccessibilityDelegate;
.super Landroid/support/v4/view/AccessibilityDelegateCompat;
.source "VerticalViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfr/castorflex/android/verticalviewpager/VerticalViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyAccessibilityDelegate"
.end annotation


# instance fields
.field final synthetic this$0:Lfr/castorflex/android/verticalviewpager/VerticalViewPager;


# direct methods
.method constructor <init>(Lfr/castorflex/android/verticalviewpager/VerticalViewPager;)V
    .locals 0

    .line 2656
    iput-object p1, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$MyAccessibilityDelegate;->this$0:Lfr/castorflex/android/verticalviewpager/VerticalViewPager;

    invoke-direct {p0}, Landroid/support/v4/view/AccessibilityDelegateCompat;-><init>()V

    return-void
.end method


# virtual methods
.method public final onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    .line 2660
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompat;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2661
    const-class p1, Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 2662
    invoke-static {}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->obtain()Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;

    move-result-object p1

    .line 3710
    iget-object v0, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$MyAccessibilityDelegate;->this$0:Lfr/castorflex/android/verticalviewpager/VerticalViewPager;

    invoke-static {v0}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->access$200(Lfr/castorflex/android/verticalviewpager/VerticalViewPager;)Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$MyAccessibilityDelegate;->this$0:Lfr/castorflex/android/verticalviewpager/VerticalViewPager;

    invoke-static {v0}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->access$200(Lfr/castorflex/android/verticalviewpager/VerticalViewPager;)Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2663
    :goto_0
    invoke-virtual {p1, v1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setScrollable(Z)V

    .line 2664
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result p2

    const/16 v0, 0x1000

    if-ne p2, v0, :cond_1

    iget-object p2, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$MyAccessibilityDelegate;->this$0:Lfr/castorflex/android/verticalviewpager/VerticalViewPager;

    invoke-static {p2}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->access$200(Lfr/castorflex/android/verticalviewpager/VerticalViewPager;)Landroid/support/v4/view/PagerAdapter;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 2666
    iget-object p2, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$MyAccessibilityDelegate;->this$0:Lfr/castorflex/android/verticalviewpager/VerticalViewPager;

    invoke-static {p2}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->access$200(Lfr/castorflex/android/verticalviewpager/VerticalViewPager;)Landroid/support/v4/view/PagerAdapter;

    move-result-object p2

    invoke-virtual {p2}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setItemCount(I)V

    .line 2667
    iget-object p2, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$MyAccessibilityDelegate;->this$0:Lfr/castorflex/android/verticalviewpager/VerticalViewPager;

    invoke-static {p2}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->access$300(Lfr/castorflex/android/verticalviewpager/VerticalViewPager;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setFromIndex(I)V

    .line 2668
    iget-object p2, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$MyAccessibilityDelegate;->this$0:Lfr/castorflex/android/verticalviewpager/VerticalViewPager;

    invoke-static {p2}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->access$300(Lfr/castorflex/android/verticalviewpager/VerticalViewPager;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setToIndex(I)V

    :cond_1
    return-void
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 1

    .line 2674
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 2675
    const-class p1, Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    .line 4710
    iget-object p1, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$MyAccessibilityDelegate;->this$0:Lfr/castorflex/android/verticalviewpager/VerticalViewPager;

    invoke-static {p1}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->access$200(Lfr/castorflex/android/verticalviewpager/VerticalViewPager;)Landroid/support/v4/view/PagerAdapter;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$MyAccessibilityDelegate;->this$0:Lfr/castorflex/android/verticalviewpager/VerticalViewPager;

    invoke-static {p1}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->access$200(Lfr/castorflex/android/verticalviewpager/VerticalViewPager;)Landroid/support/v4/view/PagerAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result p1

    if-le p1, v0, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2676
    :goto_0
    invoke-virtual {p2, p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setScrollable(Z)V

    .line 2677
    iget-object p1, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$MyAccessibilityDelegate;->this$0:Lfr/castorflex/android/verticalviewpager/VerticalViewPager;

    invoke-virtual {p1, v0}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->internalCanScrollVertically(I)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x1000

    .line 2678
    invoke-virtual {p2, p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 2680
    :cond_1
    iget-object p1, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$MyAccessibilityDelegate;->this$0:Lfr/castorflex/android/verticalviewpager/VerticalViewPager;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->internalCanScrollVertically(I)Z

    move-result p1

    if-eqz p1, :cond_2

    const/16 p1, 0x2000

    .line 2681
    invoke-virtual {p2, p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    :cond_2
    return-void
.end method

.method public final performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    .line 2687
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/view/AccessibilityDelegateCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    const/4 p3, 0x1

    if-eqz p1, :cond_0

    return p3

    :cond_0
    const/16 p1, 0x1000

    const/4 v0, 0x0

    if-eq p2, p1, :cond_3

    const/16 p1, 0x2000

    if-eq p2, p1, :cond_1

    return v0

    .line 2699
    :cond_1
    iget-object p1, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$MyAccessibilityDelegate;->this$0:Lfr/castorflex/android/verticalviewpager/VerticalViewPager;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->internalCanScrollVertically(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2700
    iget-object p1, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$MyAccessibilityDelegate;->this$0:Lfr/castorflex/android/verticalviewpager/VerticalViewPager;

    iget-object p2, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$MyAccessibilityDelegate;->this$0:Lfr/castorflex/android/verticalviewpager/VerticalViewPager;

    invoke-static {p2}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->access$300(Lfr/castorflex/android/verticalviewpager/VerticalViewPager;)I

    move-result p2

    sub-int/2addr p2, p3

    invoke-virtual {p1, p2}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->setCurrentItem(I)V

    return p3

    :cond_2
    return v0

    .line 2692
    :cond_3
    iget-object p1, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$MyAccessibilityDelegate;->this$0:Lfr/castorflex/android/verticalviewpager/VerticalViewPager;

    invoke-virtual {p1, p3}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->internalCanScrollVertically(I)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 2693
    iget-object p1, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$MyAccessibilityDelegate;->this$0:Lfr/castorflex/android/verticalviewpager/VerticalViewPager;

    iget-object p2, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$MyAccessibilityDelegate;->this$0:Lfr/castorflex/android/verticalviewpager/VerticalViewPager;

    invoke-static {p2}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->access$300(Lfr/castorflex/android/verticalviewpager/VerticalViewPager;)I

    move-result p2

    add-int/2addr p2, p3

    invoke-virtual {p1, p2}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->setCurrentItem(I)V

    return p3

    :cond_4
    return v0
.end method
