.class public abstract Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "DrawableContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/core/widgets/DrawableContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "DrawableContainerState"
.end annotation


# instance fields
.field mCanConstantState:Z

.field mChangingConfigurations:I

.field mCheckedConstantState:Z

.field mChildrenChangingConfigurations:I

.field mComputedConstantSize:Z

.field mConstantHeight:I

.field mConstantMinimumHeight:I

.field mConstantMinimumWidth:I

.field mConstantPadding:Landroid/graphics/Rect;

.field mConstantSize:Z

.field mConstantWidth:I

.field mDither:Z

.field mDrawables:[Landroid/graphics/drawable/Drawable;

.field mEnterFadeDuration:I

.field mExitFadeDuration:I

.field mHaveStateful:Z

.field mNumChildren:I

.field mOpacity:I

.field final mOwner:Lru/rocketbank/core/widgets/DrawableContainer;

.field mPaddingChecked:Z

.field mStateful:Z

.field mVariablePadding:Z


# direct methods
.method constructor <init>(Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;Lru/rocketbank/core/widgets/DrawableContainer;Landroid/content/res/Resources;)V
    .locals 6

    .line 627
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    const/4 v0, 0x0

    .line 601
    iput-boolean v0, p0, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->mVariablePadding:Z

    const/4 v1, 0x0

    .line 602
    iput-object v1, p0, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->mConstantPadding:Landroid/graphics/Rect;

    .line 604
    iput-boolean v0, p0, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->mConstantSize:Z

    .line 605
    iput-boolean v0, p0, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->mComputedConstantSize:Z

    .line 613
    iput-boolean v0, p0, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->mHaveStateful:Z

    .line 619
    iput-boolean v0, p0, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->mPaddingChecked:Z

    const/4 v1, 0x1

    .line 621
    iput-boolean v1, p0, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->mDither:Z

    .line 628
    iput-object p2, p0, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->mOwner:Lru/rocketbank/core/widgets/DrawableContainer;

    if-eqz p1, :cond_3

    .line 631
    iget v2, p1, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->mChangingConfigurations:I

    iput v2, p0, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->mChangingConfigurations:I

    .line 632
    iget v2, p1, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->mChildrenChangingConfigurations:I

    iput v2, p0, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->mChildrenChangingConfigurations:I

    .line 634
    iget-object v2, p1, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    .line 636
    array-length v3, v2

    new-array v3, v3, [Landroid/graphics/drawable/Drawable;

    iput-object v3, p0, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    .line 637
    iget v3, p1, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->mNumChildren:I

    iput v3, p0, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->mNumChildren:I

    .line 639
    iget v3, p0, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->mNumChildren:I

    :goto_0
    if-ge v0, v3, :cond_1

    if-eqz p3, :cond_0

    .line 642
    iget-object v4, p0, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v2, v0

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v5

    invoke-virtual {v5, p3}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    aput-object v5, v4, v0

    goto :goto_1

    .line 644
    :cond_0
    iget-object v4, p0, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v2, v0

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    aput-object v5, v4, v0

    .line 646
    :goto_1
    iget-object v4, p0, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v4, v4, v0

    invoke-virtual {v4, p2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 649
    :cond_1
    iput-boolean v1, p0, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->mCanConstantState:Z

    iput-boolean v1, p0, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->mCheckedConstantState:Z

    .line 650
    iget-boolean p2, p1, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->mVariablePadding:Z

    iput-boolean p2, p0, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->mVariablePadding:Z

    .line 651
    iget-object p2, p1, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->mConstantPadding:Landroid/graphics/Rect;

    if-eqz p2, :cond_2

    .line 652
    new-instance p2, Landroid/graphics/Rect;

    iget-object p3, p1, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->mConstantPadding:Landroid/graphics/Rect;

    invoke-direct {p2, p3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object p2, p0, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->mConstantPadding:Landroid/graphics/Rect;

    .line 654
    :cond_2
    iget-boolean p2, p1, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->mConstantSize:Z

    iput-boolean p2, p0, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->mConstantSize:Z

    .line 655
    iget-boolean p2, p1, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->mComputedConstantSize:Z

    iput-boolean p2, p0, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->mComputedConstantSize:Z

    .line 656
    iget p2, p1, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->mConstantWidth:I

    iput p2, p0, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->mConstantWidth:I

    .line 657
    iget p2, p1, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->mConstantHeight:I

    iput p2, p0, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->mConstantHeight:I

    .line 659
    iget p2, p1, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->mOpacity:I

    iput p2, p0, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->mOpacity:I

    .line 660
    iget-boolean p2, p1, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->mHaveStateful:Z

    iput-boolean p2, p0, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->mHaveStateful:Z

    .line 661
    iget-boolean p2, p1, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->mStateful:Z

    iput-boolean p2, p0, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->mStateful:Z

    .line 663
    iget-boolean p2, p1, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->mDither:Z

    iput-boolean p2, p0, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->mDither:Z

    .line 665
    iget p2, p1, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->mEnterFadeDuration:I

    iput p2, p0, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->mEnterFadeDuration:I

    .line 666
    iget p1, p1, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->mExitFadeDuration:I

    iput p1, p0, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->mExitFadeDuration:I

    return-void

    :cond_3
    const/16 p1, 0xa

    .line 669
    new-array p1, p1, [Landroid/graphics/drawable/Drawable;

    iput-object p1, p0, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    .line 670
    iput v0, p0, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->mNumChildren:I

    .line 671
    iput-boolean v0, p0, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->mCanConstantState:Z

    iput-boolean v0, p0, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->mCheckedConstantState:Z

    return-void
.end method

.method private computeConstantSize()V
    .locals 6

    const/4 v0, 0x1

    .line 784
    iput-boolean v0, p0, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->mComputedConstantSize:Z

    .line 2703
    iget v0, p0, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->mNumChildren:I

    .line 787
    iget-object v1, p0, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    const/4 v2, -0x1

    .line 788
    iput v2, p0, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->mConstantHeight:I

    iput v2, p0, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->mConstantWidth:I

    const/4 v2, 0x0

    .line 789
    iput v2, p0, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->mConstantMinimumHeight:I

    iput v2, p0, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->mConstantMinimumWidth:I

    :goto_0
    if-ge v2, v0, :cond_4

    .line 791
    aget-object v3, v1, v2

    .line 792
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 793
    iget v5, p0, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->mConstantWidth:I

    if-le v4, v5, :cond_0

    iput v4, p0, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->mConstantWidth:I

    .line 794
    :cond_0
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 795
    iget v5, p0, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->mConstantHeight:I

    if-le v4, v5, :cond_1

    iput v4, p0, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->mConstantHeight:I

    .line 796
    :cond_1
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v4

    .line 797
    iget v5, p0, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->mConstantMinimumWidth:I

    if-le v4, v5, :cond_2

    iput v4, p0, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->mConstantMinimumWidth:I

    .line 798
    :cond_2
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v3

    .line 799
    iget v4, p0, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->mConstantMinimumHeight:I

    if-le v3, v4, :cond_3

    iput v3, p0, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->mConstantMinimumHeight:I

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method


# virtual methods
.method public final declared-synchronized canConstantState()Z
    .locals 5

    monitor-enter p0

    .line 856
    :try_start_0
    iget-boolean v0, p0, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->mCheckedConstantState:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 857
    iput-boolean v0, p0, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->mCanConstantState:Z

    .line 858
    iget v1, p0, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->mNumChildren:I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    .line 860
    iget-object v4, p0, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v4

    if-nez v4, :cond_0

    .line 861
    iput-boolean v2, p0, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->mCanConstantState:Z

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 865
    :cond_1
    :goto_1
    iput-boolean v0, p0, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->mCheckedConstantState:Z

    .line 868
    :cond_2
    iget-boolean v0, p0, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->mCanConstantState:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 855
    monitor-exit p0

    throw v0
.end method

.method public getChangingConfigurations()I
    .locals 1

    .line 677
    iget v0, p0, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->mChangingConfigurations:I

    return v0
.end method

.method public final getConstantHeight()I
    .locals 1

    .line 760
    iget-boolean v0, p0, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->mComputedConstantSize:Z

    if-nez v0, :cond_0

    .line 761
    invoke-direct {p0}, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->computeConstantSize()V

    .line 764
    :cond_0
    iget v0, p0, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->mConstantHeight:I

    return v0
.end method

.method public final getConstantMinimumHeight()I
    .locals 1

    .line 776
    iget-boolean v0, p0, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->mComputedConstantSize:Z

    if-nez v0, :cond_0

    .line 777
    invoke-direct {p0}, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->computeConstantSize()V

    .line 780
    :cond_0
    iget v0, p0, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->mConstantMinimumHeight:I

    return v0
.end method

.method public final getConstantMinimumWidth()I
    .locals 1

    .line 768
    iget-boolean v0, p0, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->mComputedConstantSize:Z

    if-nez v0, :cond_0

    .line 769
    invoke-direct {p0}, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->computeConstantSize()V

    .line 772
    :cond_0
    iget v0, p0, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->mConstantMinimumWidth:I

    return v0
.end method

.method public final getConstantPadding()Landroid/graphics/Rect;
    .locals 8

    .line 719
    iget-boolean v0, p0, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->mVariablePadding:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 722
    :cond_0
    iget-object v0, p0, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->mConstantPadding:Landroid/graphics/Rect;

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->mPaddingChecked:Z

    if-eqz v0, :cond_1

    goto :goto_1

    .line 727
    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1703
    iget v2, p0, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->mNumChildren:I

    .line 729
    iget-object v3, p0, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    move-object v5, v1

    move v1, v4

    :goto_0
    if-ge v1, v2, :cond_7

    .line 731
    aget-object v6, v3, v1

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v6

    if-eqz v6, :cond_6

    if-nez v5, :cond_2

    .line 732
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v4, v4, v4, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 733
    :cond_2
    iget v6, v0, Landroid/graphics/Rect;->left:I

    iget v7, v5, Landroid/graphics/Rect;->left:I

    if-le v6, v7, :cond_3

    iget v6, v0, Landroid/graphics/Rect;->left:I

    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 734
    :cond_3
    iget v6, v0, Landroid/graphics/Rect;->top:I

    iget v7, v5, Landroid/graphics/Rect;->top:I

    if-le v6, v7, :cond_4

    iget v6, v0, Landroid/graphics/Rect;->top:I

    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 735
    :cond_4
    iget v6, v0, Landroid/graphics/Rect;->right:I

    iget v7, v5, Landroid/graphics/Rect;->right:I

    if-le v6, v7, :cond_5

    iget v6, v0, Landroid/graphics/Rect;->right:I

    iput v6, v5, Landroid/graphics/Rect;->right:I

    .line 736
    :cond_5
    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    iget v7, v5, Landroid/graphics/Rect;->bottom:I

    if-le v6, v7, :cond_6

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_7
    const/4 v0, 0x1

    .line 739
    iput-boolean v0, p0, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->mPaddingChecked:Z

    .line 740
    iput-object v5, p0, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->mConstantPadding:Landroid/graphics/Rect;

    return-object v5

    .line 723
    :cond_8
    :goto_1
    iget-object v0, p0, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->mConstantPadding:Landroid/graphics/Rect;

    return-object v0
.end method

.method public final getConstantWidth()I
    .locals 1

    .line 752
    iget-boolean v0, p0, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->mComputedConstantSize:Z

    if-nez v0, :cond_0

    .line 753
    invoke-direct {p0}, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->computeConstantSize()V

    .line 756
    :cond_0
    iget v0, p0, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->mConstantWidth:I

    return v0
.end method

.method public final getOpacity()I
    .locals 5

    .line 3703
    iget v0, p0, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->mNumChildren:I

    .line 821
    iget-object v1, p0, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    if-lez v0, :cond_0

    const/4 v2, 0x0

    .line 822
    aget-object v2, v1, v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, -0x2

    :goto_0
    const/4 v3, 0x1

    :goto_1
    if-ge v3, v0, :cond_1

    .line 824
    aget-object v4, v1, v3

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v4

    invoke-static {v2, v4}, Landroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    move-result v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 826
    :cond_1
    iput v2, p0, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->mOpacity:I

    return v2
.end method

.method public growArray(II)V
    .locals 2

    .line 850
    new-array p2, p2, [Landroid/graphics/drawable/Drawable;

    .line 851
    iget-object v0, p0, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-static {v0, v1, p2, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 852
    iput-object p2, p0, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public final isStateful()Z
    .locals 5

    .line 831
    iget-boolean v0, p0, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->mHaveStateful:Z

    if-eqz v0, :cond_0

    .line 832
    iget-boolean v0, p0, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->mStateful:Z

    return v0

    .line 4703
    :cond_0
    iget v0, p0, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->mNumChildren:I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_2

    .line 838
    iget-object v4, p0, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v4

    if-eqz v4, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 844
    :cond_2
    :goto_1
    iput-boolean v1, p0, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->mStateful:Z

    .line 845
    iput-boolean v3, p0, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->mHaveStateful:Z

    return v1
.end method
