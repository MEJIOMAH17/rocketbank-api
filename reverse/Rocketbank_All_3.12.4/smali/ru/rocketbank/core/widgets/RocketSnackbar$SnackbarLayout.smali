.class public Lru/rocketbank/core/widgets/RocketSnackbar$SnackbarLayout;
.super Landroid/widget/LinearLayout;
.source "RocketSnackbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/core/widgets/RocketSnackbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SnackbarLayout"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/core/widgets/RocketSnackbar$SnackbarLayout$OnAttachStateChangeListener;,
        Lru/rocketbank/core/widgets/RocketSnackbar$SnackbarLayout$OnLayoutChangeListener;
    }
.end annotation


# instance fields
.field private mActionView:Landroid/widget/Button;

.field private mMaxInlineActionWidth:I

.field private mMaxWidth:I

.field private mMessageView:Landroid/widget/TextView;

.field private mOnAttachStateChangeListener:Lru/rocketbank/core/widgets/RocketSnackbar$SnackbarLayout$OnAttachStateChangeListener;

.field private mOnLayoutChangeListener:Lru/rocketbank/core/widgets/RocketSnackbar$SnackbarLayout$OnLayoutChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 728
    invoke-direct {p0, p1, v0}, Lru/rocketbank/core/widgets/RocketSnackbar$SnackbarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 732
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 733
    sget-object v0, Lru/rocketbank/core/R$styleable;->SnackbarLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 734
    sget v0, Lru/rocketbank/core/R$styleable;->SnackbarLayout_android_maxWidth:I

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lru/rocketbank/core/widgets/RocketSnackbar$SnackbarLayout;->mMaxWidth:I

    .line 735
    sget v0, Lru/rocketbank/core/R$styleable;->SnackbarLayout_maxActionInlineWidth:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lru/rocketbank/core/widgets/RocketSnackbar$SnackbarLayout;->mMaxInlineActionWidth:I

    .line 737
    sget v0, Lru/rocketbank/core/R$styleable;->SnackbarLayout_elevation:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 738
    sget v0, Lru/rocketbank/core/R$styleable;->SnackbarLayout_elevation:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    int-to-float v0, v0

    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    .line 741
    :cond_0
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    const/4 p2, 0x1

    .line 743
    invoke-virtual {p0, p2}, Lru/rocketbank/core/widgets/RocketSnackbar$SnackbarLayout;->setClickable(Z)V

    .line 748
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0c0096

    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 750
    invoke-static {p0, p2}, Landroid/support/v4/view/ViewCompat;->setAccessibilityLiveRegion(Landroid/view/View;I)V

    return-void
.end method

.method private static updateTopBottomPadding(Landroid/view/View;II)V
    .locals 2

    .line 875
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->isPaddingRelative(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 877
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getPaddingStart(Landroid/view/View;)I

    move-result v0

    .line 878
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getPaddingEnd(Landroid/view/View;)I

    move-result v1

    .line 876
    invoke-static {p0, v0, p1, v1, p2}, Landroid/support/v4/view/ViewCompat;->setPaddingRelative(Landroid/view/View;IIII)V

    return-void

    .line 880
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    .line 881
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    .line 880
    invoke-virtual {p0, v0, p1, v1, p2}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method private updateViewsWithinLayout(III)Z
    .locals 2

    .line 862
    invoke-virtual {p0}, Lru/rocketbank/core/widgets/RocketSnackbar$SnackbarLayout;->getOrientation()I

    move-result v0

    const/4 v1, 0x1

    if-eq p1, v0, :cond_0

    .line 863
    invoke-virtual {p0, p1}, Lru/rocketbank/core/widgets/RocketSnackbar$SnackbarLayout;->setOrientation(I)V

    move p1, v1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 866
    :goto_0
    iget-object v0, p0, Lru/rocketbank/core/widgets/RocketSnackbar$SnackbarLayout;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v0

    if-ne v0, p2, :cond_1

    iget-object v0, p0, Lru/rocketbank/core/widgets/RocketSnackbar$SnackbarLayout;->mMessageView:Landroid/widget/TextView;

    .line 867
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v0

    if-eq v0, p3, :cond_2

    .line 868
    :cond_1
    iget-object p1, p0, Lru/rocketbank/core/widgets/RocketSnackbar$SnackbarLayout;->mMessageView:Landroid/widget/TextView;

    invoke-static {p1, p2, p3}, Lru/rocketbank/core/widgets/RocketSnackbar$SnackbarLayout;->updateTopBottomPadding(Landroid/view/View;II)V

    move p1, v1

    :cond_2
    return p1
.end method


# virtual methods
.method final animateChildrenIn$255f295()V
    .locals 7

    .line 804
    iget-object v0, p0, Lru/rocketbank/core/widgets/RocketSnackbar$SnackbarLayout;->mMessageView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 805
    iget-object v0, p0, Lru/rocketbank/core/widgets/RocketSnackbar$SnackbarLayout;->mMessageView:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    const-wide/16 v3, 0xb4

    invoke-virtual {v0, v3, v4}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    const-wide/16 v5, 0x46

    .line 806
    invoke-virtual {v0, v5, v6}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setStartDelay(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    .line 808
    iget-object v0, p0, Lru/rocketbank/core/widgets/RocketSnackbar$SnackbarLayout;->mActionView:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 809
    iget-object v0, p0, Lru/rocketbank/core/widgets/RocketSnackbar$SnackbarLayout;->mActionView:Landroid/widget/Button;

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 810
    iget-object v0, p0, Lru/rocketbank/core/widgets/RocketSnackbar$SnackbarLayout;->mActionView:Landroid/widget/Button;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 811
    invoke-virtual {v0, v5, v6}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setStartDelay(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    :cond_0
    return-void
.end method

.method final animateChildrenOut$255f295()V
    .locals 7

    .line 816
    iget-object v0, p0, Lru/rocketbank/core/widgets/RocketSnackbar$SnackbarLayout;->mMessageView:Landroid/widget/TextView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 817
    iget-object v0, p0, Lru/rocketbank/core/widgets/RocketSnackbar$SnackbarLayout;->mMessageView:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    const-wide/16 v3, 0xb4

    invoke-virtual {v0, v3, v4}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    const-wide/16 v5, 0x0

    .line 818
    invoke-virtual {v0, v5, v6}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setStartDelay(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    .line 820
    iget-object v0, p0, Lru/rocketbank/core/widgets/RocketSnackbar$SnackbarLayout;->mActionView:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 821
    iget-object v0, p0, Lru/rocketbank/core/widgets/RocketSnackbar$SnackbarLayout;->mActionView:Landroid/widget/Button;

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 822
    iget-object v0, p0, Lru/rocketbank/core/widgets/RocketSnackbar$SnackbarLayout;->mActionView:Landroid/widget/Button;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 823
    invoke-virtual {v0, v5, v6}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setStartDelay(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    :cond_0
    return-void
.end method

.method final getActionView()Landroid/widget/Button;
    .locals 1

    .line 766
    iget-object v0, p0, Lru/rocketbank/core/widgets/RocketSnackbar$SnackbarLayout;->mActionView:Landroid/widget/Button;

    return-object v0
.end method

.method final getMessageView()Landroid/widget/TextView;
    .locals 1

    .line 762
    iget-object v0, p0, Lru/rocketbank/core/widgets/RocketSnackbar$SnackbarLayout;->mMessageView:Landroid/widget/TextView;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 837
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 845
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 846
    iget-object v0, p0, Lru/rocketbank/core/widgets/RocketSnackbar$SnackbarLayout;->mOnAttachStateChangeListener:Lru/rocketbank/core/widgets/RocketSnackbar$SnackbarLayout$OnAttachStateChangeListener;

    if-eqz v0, :cond_0

    .line 847
    iget-object v0, p0, Lru/rocketbank/core/widgets/RocketSnackbar$SnackbarLayout;->mOnAttachStateChangeListener:Lru/rocketbank/core/widgets/RocketSnackbar$SnackbarLayout$OnAttachStateChangeListener;

    invoke-interface {v0}, Lru/rocketbank/core/widgets/RocketSnackbar$SnackbarLayout$OnAttachStateChangeListener;->onViewDetachedFromWindow$3c7ec8c3()V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 756
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f09032f

    .line 757
    invoke-virtual {p0, v0}, Lru/rocketbank/core/widgets/RocketSnackbar$SnackbarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lru/rocketbank/core/widgets/RocketSnackbar$SnackbarLayout;->mMessageView:Landroid/widget/TextView;

    const v0, 0x7f09032e

    .line 758
    invoke-virtual {p0, v0}, Lru/rocketbank/core/widgets/RocketSnackbar$SnackbarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lru/rocketbank/core/widgets/RocketSnackbar$SnackbarLayout;->mActionView:Landroid/widget/Button;

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 829
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    if-eqz p1, :cond_0

    .line 830
    iget-object p1, p0, Lru/rocketbank/core/widgets/RocketSnackbar$SnackbarLayout;->mOnLayoutChangeListener:Lru/rocketbank/core/widgets/RocketSnackbar$SnackbarLayout$OnLayoutChangeListener;

    if-eqz p1, :cond_0

    .line 831
    iget-object p1, p0, Lru/rocketbank/core/widgets/RocketSnackbar$SnackbarLayout;->mOnLayoutChangeListener:Lru/rocketbank/core/widgets/RocketSnackbar$SnackbarLayout$OnLayoutChangeListener;

    invoke-interface {p1}, Lru/rocketbank/core/widgets/RocketSnackbar$SnackbarLayout$OnLayoutChangeListener;->onLayoutChange$5b6f797d()V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7

    .line 771
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 773
    iget v0, p0, Lru/rocketbank/core/widgets/RocketSnackbar$SnackbarLayout;->mMaxWidth:I

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lru/rocketbank/core/widgets/RocketSnackbar$SnackbarLayout;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lru/rocketbank/core/widgets/RocketSnackbar$SnackbarLayout;->mMaxWidth:I

    if-le v0, v1, :cond_0

    .line 774
    iget p1, p0, Lru/rocketbank/core/widgets/RocketSnackbar$SnackbarLayout;->mMaxWidth:I

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 775
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 778
    :cond_0
    invoke-virtual {p0}, Lru/rocketbank/core/widgets/RocketSnackbar$SnackbarLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700c7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 780
    invoke-virtual {p0}, Lru/rocketbank/core/widgets/RocketSnackbar$SnackbarLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700c6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 782
    iget-object v2, p0, Lru/rocketbank/core/widgets/RocketSnackbar$SnackbarLayout;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-le v2, v4, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    if-eqz v2, :cond_2

    .line 785
    iget v5, p0, Lru/rocketbank/core/widgets/RocketSnackbar$SnackbarLayout;->mMaxInlineActionWidth:I

    if-lez v5, :cond_2

    iget-object v5, p0, Lru/rocketbank/core/widgets/RocketSnackbar$SnackbarLayout;->mActionView:Landroid/widget/Button;

    .line 786
    invoke-virtual {v5}, Landroid/widget/Button;->getMeasuredWidth()I

    move-result v5

    iget v6, p0, Lru/rocketbank/core/widgets/RocketSnackbar$SnackbarLayout;->mMaxInlineActionWidth:I

    if-le v5, v6, :cond_2

    sub-int v1, v0, v1

    .line 787
    invoke-direct {p0, v4, v0, v1}, Lru/rocketbank/core/widgets/RocketSnackbar$SnackbarLayout;->updateViewsWithinLayout(III)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_2
    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    move v0, v1

    .line 793
    :goto_1
    invoke-direct {p0, v3, v0, v0}, Lru/rocketbank/core/widgets/RocketSnackbar$SnackbarLayout;->updateViewsWithinLayout(III)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    move v4, v3

    :goto_2
    if-eqz v4, :cond_5

    .line 799
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    :cond_5
    return-void
.end method

.method final setOnAttachStateChangeListener(Lru/rocketbank/core/widgets/RocketSnackbar$SnackbarLayout$OnAttachStateChangeListener;)V
    .locals 0

    .line 856
    iput-object p1, p0, Lru/rocketbank/core/widgets/RocketSnackbar$SnackbarLayout;->mOnAttachStateChangeListener:Lru/rocketbank/core/widgets/RocketSnackbar$SnackbarLayout$OnAttachStateChangeListener;

    return-void
.end method

.method final setOnLayoutChangeListener(Lru/rocketbank/core/widgets/RocketSnackbar$SnackbarLayout$OnLayoutChangeListener;)V
    .locals 0

    .line 852
    iput-object p1, p0, Lru/rocketbank/core/widgets/RocketSnackbar$SnackbarLayout;->mOnLayoutChangeListener:Lru/rocketbank/core/widgets/RocketSnackbar$SnackbarLayout$OnLayoutChangeListener;

    return-void
.end method
