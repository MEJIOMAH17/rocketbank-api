.class public Lfr/castorflex/android/verticalviewpager/VerticalViewPager;
.super Landroid/view/ViewGroup;
.source "VerticalViewPager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ViewPositionComparator;,
        Lfr/castorflex/android/verticalviewpager/VerticalViewPager$LayoutParams;,
        Lfr/castorflex/android/verticalviewpager/VerticalViewPager$PagerObserver;,
        Lfr/castorflex/android/verticalviewpager/VerticalViewPager$MyAccessibilityDelegate;,
        Lfr/castorflex/android/verticalviewpager/VerticalViewPager$SavedState;,
        Lfr/castorflex/android/verticalviewpager/VerticalViewPager$Decor;,
        Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ItemInfo;
    }
.end annotation


# static fields
.field private static final COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final LAYOUT_ATTRS:[I

.field private static final sInterpolator:Landroid/view/animation/Interpolator;

.field private static final sPositionComparator:Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ViewPositionComparator;


# instance fields
.field private mActivePointerId:I

.field private mAdapter:Landroid/support/v4/view/PagerAdapter;

.field private mBottomEdge:Landroid/support/v4/widget/EdgeEffectCompat;

.field private mCalledSuper:Z

.field private mChildHeightMeasureSpec:I

.field private mChildWidthMeasureSpec:I

.field private mCloseEnough:I

.field private mCurItem:I

.field private mDecorChildCount:I

.field private mDefaultGutterSize:I

.field private final mEndScrollRunnable:Ljava/lang/Runnable;

.field private mExpectedAdapterCount:I

.field private mFirstLayout:Z

.field private mFirstOffset:F

.field private mFlingDistance:I

.field private mGutterSize:I

.field private mInLayout:Z

.field private mInitialMotionX:F

.field private mInitialMotionY:F

.field private mIsBeingDragged:Z

.field private mIsUnableToDrag:Z

.field private final mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mLastOffset:F

.field private mLeftPageBounds:I

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mNeedCalculatePageOffsets:Z

.field private mObserver:Lfr/castorflex/android/verticalviewpager/VerticalViewPager$PagerObserver;

.field private mOffscreenPageLimit:I

.field private mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private mPopulatePending:Z

.field private mRestoredAdapterState:Landroid/os/Parcelable;

.field private mRestoredClassLoader:Ljava/lang/ClassLoader;

.field private mRestoredCurItem:I

.field private mRightPageBounds:I

.field private mScrollState:I

.field private mScroller:Landroid/widget/Scroller;

.field private mScrollingCacheEnabled:Z

.field private final mTempItem:Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ItemInfo;

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTopEdge:Landroid/support/v4/widget/EdgeEffectCompat;

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    .line 69
    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100b3

    aput v2, v0, v1

    sput-object v0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->LAYOUT_ATTRS:[I

    .line 87
    new-instance v0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$1;

    invoke-direct {v0}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$1;-><init>()V

    sput-object v0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->COMPARATOR:Ljava/util/Comparator;

    .line 94
    new-instance v0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$2;

    invoke-direct {v0}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$2;-><init>()V

    sput-object v0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->sInterpolator:Landroid/view/animation/Interpolator;

    .line 194
    new-instance v0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ViewPositionComparator;

    invoke-direct {v0}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ViewPositionComparator;-><init>()V

    sput-object v0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->sPositionComparator:Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ViewPositionComparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 236
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 101
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    .line 102
    new-instance p1, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ItemInfo;

    invoke-direct {p1}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ItemInfo;-><init>()V

    iput-object p1, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mTempItem:Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ItemInfo;

    .line 104
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mTempRect:Landroid/graphics/Rect;

    const/4 p1, -0x1

    .line 108
    iput p1, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mRestoredCurItem:I

    const/4 v0, 0x0

    .line 109
    iput-object v0, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 110
    iput-object v0, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    const v0, -0x800001

    .line 122
    iput v0, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mFirstOffset:F

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 123
    iput v0, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mLastOffset:F

    const/4 v0, 0x1

    .line 132
    iput v0, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mOffscreenPageLimit:I

    .line 151
    iput p1, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mActivePointerId:I

    .line 178
    iput-boolean v0, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mFirstLayout:Z

    const/4 p1, 0x0

    .line 179
    iput-boolean p1, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mNeedCalculatePageOffsets:Z

    .line 212
    new-instance v0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$3;

    invoke-direct {v0, p0}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$3;-><init>(Lfr/castorflex/android/verticalviewpager/VerticalViewPager;)V

    iput-object v0, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    .line 219
    iput p1, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mScrollState:I

    .line 237
    invoke-direct {p0}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->initViewPager()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 241
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 101
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    .line 102
    new-instance p1, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ItemInfo;

    invoke-direct {p1}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ItemInfo;-><init>()V

    iput-object p1, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mTempItem:Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ItemInfo;

    .line 104
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mTempRect:Landroid/graphics/Rect;

    const/4 p1, -0x1

    .line 108
    iput p1, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mRestoredCurItem:I

    const/4 p2, 0x0

    .line 109
    iput-object p2, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 110
    iput-object p2, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    const p2, -0x800001

    .line 122
    iput p2, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mFirstOffset:F

    const p2, 0x7f7fffff    # Float.MAX_VALUE

    .line 123
    iput p2, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mLastOffset:F

    const/4 p2, 0x1

    .line 132
    iput p2, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mOffscreenPageLimit:I

    .line 151
    iput p1, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mActivePointerId:I

    .line 178
    iput-boolean p2, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mFirstLayout:Z

    const/4 p1, 0x0

    .line 179
    iput-boolean p1, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mNeedCalculatePageOffsets:Z

    .line 212
    new-instance p2, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$3;

    invoke-direct {p2, p0}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$3;-><init>(Lfr/castorflex/android/verticalviewpager/VerticalViewPager;)V

    iput-object p2, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    .line 219
    iput p1, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mScrollState:I

    .line 242
    invoke-direct {p0}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->initViewPager()V

    return-void
.end method

.method static synthetic access$000$7cf87c47(Lfr/castorflex/android/verticalviewpager/VerticalViewPager;)V
    .locals 2

    .line 27280
    iget v0, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mScrollState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 27284
    iput v0, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mScrollState:I

    .line 27289
    iget-object v1, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v1, :cond_0

    .line 27290
    iget-object p0, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {p0, v0}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    :cond_0
    return-void
.end method

.method static synthetic access$200(Lfr/castorflex/android/verticalviewpager/VerticalViewPager;)Landroid/support/v4/view/PagerAdapter;
    .locals 0

    .line 54
    iget-object p0, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    return-object p0
.end method

.method static synthetic access$300(Lfr/castorflex/android/verticalviewpager/VerticalViewPager;)I
    .locals 0

    .line 54
    iget p0, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mCurItem:I

    return p0
.end method

.method static synthetic access$400()[I
    .locals 1

    .line 54
    sget-object v0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->LAYOUT_ATTRS:[I

    return-object v0
.end method

.method private addNewItem(II)Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ItemInfo;
    .locals 2

    .line 727
    new-instance v0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ItemInfo;

    invoke-direct {v0}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ItemInfo;-><init>()V

    .line 728
    iput p1, v0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ItemInfo;->position:I

    .line 729
    iget-object v1, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v1, p0, p1}, Landroid/support/v4/view/PagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ItemInfo;->object:Ljava/lang/Object;

    .line 730
    iget-object v1, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v1, p1}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result p1

    iput p1, v0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ItemInfo;->heightFactor:F

    if-ltz p2, :cond_1

    .line 731
    iget-object p1, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lt p2, p1, :cond_0

    goto :goto_0

    .line 734
    :cond_0
    iget-object p1, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 732
    :cond_1
    :goto_0
    iget-object p1, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    return-object v0
.end method

.method private arrowScroll(I)Z
    .locals 7

    .line 2410
    invoke-virtual {p0}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->findFocus()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, p0, :cond_0

    goto :goto_3

    :cond_0
    if-eqz v0, :cond_4

    .line 2415
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    :goto_0
    instance-of v5, v4, Landroid/view/ViewGroup;

    if-eqz v5, :cond_2

    if-ne v4, p0, :cond_1

    move v4, v3

    goto :goto_1

    .line 2416
    :cond_1
    invoke-interface {v4}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    goto :goto_0

    :cond_2
    move v4, v2

    :goto_1
    if-nez v4, :cond_4

    .line 2424
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 2425
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2426
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_2
    instance-of v5, v0, Landroid/view/ViewGroup;

    if-eqz v5, :cond_3

    const-string v5, " => "

    .line 2428
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2427
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_2

    :cond_3
    const-string v0, "ViewPager"

    .line 2430
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "arrowScroll tried to find focus based on non-child current focused view "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_4
    move-object v1, v0

    .line 2438
    :goto_3
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    invoke-virtual {v0, p0, v1, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    const/16 v4, 0x82

    const/16 v5, 0x21

    if-eqz v0, :cond_8

    if-eq v0, v1, :cond_8

    if-ne p1, v5, :cond_6

    .line 2444
    iget-object v4, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v4, v0}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->top:I

    .line 2445
    iget-object v5, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v5, v1}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->top:I

    if-eqz v1, :cond_5

    if-lt v4, v5, :cond_5

    .line 24502
    iget v0, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mCurItem:I

    if-lez v0, :cond_c

    .line 24503
    iget v0, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mCurItem:I

    sub-int/2addr v0, v3

    invoke-virtual {p0, v0, v3}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->setCurrentItem(IZ)V

    :goto_4
    move v2, v3

    goto :goto_6

    .line 2449
    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    move-result v2

    goto :goto_6

    :cond_6
    if-ne p1, v4, :cond_c

    .line 2454
    iget-object v2, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v2, v0}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    .line 2455
    iget-object v3, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v3, v1}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    if-eqz v1, :cond_7

    if-le v2, v3, :cond_a

    .line 2459
    :cond_7
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    move-result v2

    goto :goto_6

    :cond_8
    if-eq p1, v5, :cond_b

    if-ne p1, v3, :cond_9

    goto :goto_5

    :cond_9
    if-eq p1, v4, :cond_a

    const/4 v0, 0x2

    if-ne p1, v0, :cond_c

    .line 2467
    :cond_a
    invoke-direct {p0}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->pageDown()Z

    move-result v2

    goto :goto_6

    .line 25502
    :cond_b
    :goto_5
    iget v0, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mCurItem:I

    if-lez v0, :cond_c

    .line 25503
    iget v0, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mCurItem:I

    sub-int/2addr v0, v3

    invoke-virtual {p0, v0, v3}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->setCurrentItem(IZ)V

    goto :goto_4

    :cond_c
    :goto_6
    if-eqz v2, :cond_d

    .line 2470
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->playSoundEffect(I)V

    :cond_d
    return v2
.end method

.method private calculatePageOffsets(Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ItemInfo;ILfr/castorflex/android/verticalviewpager/VerticalViewPager$ItemInfo;)V
    .locals 10

    .line 1019
    iget-object v0, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    .line 14374
    invoke-virtual {p0}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    if-lez v1, :cond_0

    int-to-float v1, v1

    div-float/2addr v2, v1

    :cond_0
    const/4 v1, 0x0

    if-eqz p3, :cond_6

    .line 1024
    iget v3, p3, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ItemInfo;->position:I

    .line 1026
    iget v4, p1, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ItemInfo;->position:I

    if-ge v3, v4, :cond_3

    .line 1029
    iget v4, p3, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ItemInfo;->offset:F

    iget p3, p3, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ItemInfo;->heightFactor:F

    add-float/2addr v4, p3

    add-float/2addr v4, v2

    add-int/lit8 v3, v3, 0x1

    move p3, v1

    .line 1031
    :goto_0
    iget v5, p1, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ItemInfo;->position:I

    if-gt v3, v5, :cond_6

    iget-object v5, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge p3, v5, :cond_6

    .line 1032
    iget-object v5, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ItemInfo;

    .line 1033
    :goto_1
    iget v6, v5, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ItemInfo;->position:I

    if-le v3, v6, :cond_1

    iget-object v6, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge p3, v6, :cond_1

    add-int/lit8 p3, p3, 0x1

    .line 1035
    iget-object v5, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ItemInfo;

    goto :goto_1

    .line 1037
    :cond_1
    :goto_2
    iget v6, v5, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ItemInfo;->position:I

    if-ge v3, v6, :cond_2

    .line 1040
    iget-object v6, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v6, v3}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result v6

    add-float/2addr v6, v2

    add-float/2addr v4, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1043
    :cond_2
    iput v4, v5, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ItemInfo;->offset:F

    .line 1044
    iget v5, v5, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ItemInfo;->heightFactor:F

    add-float/2addr v5, v2

    add-float/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1046
    :cond_3
    iget v4, p1, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ItemInfo;->position:I

    if-le v3, v4, :cond_6

    .line 1047
    iget-object v4, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .line 1049
    iget p3, p3, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ItemInfo;->offset:F

    add-int/lit8 v3, v3, -0x1

    .line 1051
    :goto_3
    iget v5, p1, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ItemInfo;->position:I

    if-lt v3, v5, :cond_6

    if-ltz v4, :cond_6

    .line 1052
    iget-object v5, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ItemInfo;

    .line 1053
    :goto_4
    iget v6, v5, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ItemInfo;->position:I

    if-ge v3, v6, :cond_4

    if-lez v4, :cond_4

    add-int/lit8 v4, v4, -0x1

    .line 1055
    iget-object v5, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ItemInfo;

    goto :goto_4

    .line 1057
    :cond_4
    :goto_5
    iget v6, v5, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ItemInfo;->position:I

    if-le v3, v6, :cond_5

    .line 1060
    iget-object v6, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v6, v3}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result v6

    add-float/2addr v6, v2

    sub-float/2addr p3, v6

    add-int/lit8 v3, v3, -0x1

    goto :goto_5

    .line 1063
    :cond_5
    iget v6, v5, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ItemInfo;->heightFactor:F

    add-float/2addr v6, v2

    sub-float/2addr p3, v6

    .line 1064
    iput p3, v5, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ItemInfo;->offset:F

    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    .line 1070
    :cond_6
    iget-object p3, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    .line 1071
    iget v3, p1, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ItemInfo;->offset:F

    .line 1072
    iget v4, p1, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ItemInfo;->position:I

    add-int/lit8 v4, v4, -0x1

    .line 1073
    iget v5, p1, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ItemInfo;->position:I

    if-nez v5, :cond_7

    iget v5, p1, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ItemInfo;->offset:F

    goto :goto_6

    :cond_7
    const v5, -0x800001

    :goto_6
    iput v5, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mFirstOffset:F

    .line 1074
    iget v5, p1, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ItemInfo;->position:I

    add-int/lit8 v0, v0, -0x1

    const/high16 v6, 0x3f800000    # 1.0f

    if-ne v5, v0, :cond_8

    iget v5, p1, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ItemInfo;->offset:F

    iget v7, p1, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ItemInfo;->heightFactor:F

    add-float/2addr v5, v7

    sub-float/2addr v5, v6

    goto :goto_7

    :cond_8
    const v5, 0x7f7fffff    # Float.MAX_VALUE

    :goto_7
    iput v5, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mLastOffset:F

    add-int/lit8 v5, p2, -0x1

    :goto_8
    if-ltz v5, :cond_b

    .line 1078
    iget-object v7, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ItemInfo;

    .line 1079
    :goto_9
    iget v8, v7, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ItemInfo;->position:I

    if-le v4, v8, :cond_9

    .line 1080
    iget-object v8, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    add-int/lit8 v9, v4, -0x1

    invoke-virtual {v8, v4}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result v4

    add-float/2addr v4, v2

    sub-float/2addr v3, v4

    move v4, v9

    goto :goto_9

    .line 1082
    :cond_9
    iget v8, v7, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ItemInfo;->heightFactor:F

    add-float/2addr v8, v2

    sub-float/2addr v3, v8

    .line 1083
    iput v3, v7, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ItemInfo;->offset:F

    .line 1084
    iget v7, v7, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ItemInfo;->position:I

    if-nez v7, :cond_a

    iput v3, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mFirstOffset:F

    :cond_a
    add-int/lit8 v5, v5, -0x1

    add-int/lit8 v4, v4, -0x1

    goto :goto_8

    .line 1086
    :cond_b
    iget v3, p1, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ItemInfo;->offset:F

    iget v4, p1, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ItemInfo;->heightFactor:F

    add-float/2addr v3, v4

    add-float/2addr v3, v2

    .line 1087
    iget p1, p1, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ItemInfo;->position:I

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p2, p2, 0x1

    :goto_a
    if-ge p2, p3, :cond_e

    .line 1090
    iget-object v4, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ItemInfo;

    .line 1091
    :goto_b
    iget v5, v4, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ItemInfo;->position:I

    if-ge p1, v5, :cond_c

    .line 1092
    iget-object v5, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    add-int/lit8 v7, p1, 0x1

    invoke-virtual {v5, p1}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result p1

    add-float/2addr p1, v2

    add-float/2addr v3, p1

    move p1, v7

    goto :goto_b

    .line 1094
    :cond_c
    iget v5, v4, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ItemInfo;->position:I

    if-ne v5, v0, :cond_d

    .line 1095
    iget v5, v4, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ItemInfo;->heightFactor:F

    add-float/2addr v5, v3

    sub-float/2addr v5, v6

    iput v5, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mLastOffset:F

    .line 1097
    :cond_d
    iput v3, v4, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ItemInfo;->offset:F

    .line 1098
    iget v4, v4, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ItemInfo;->heightFactor:F

    add-float/2addr v4, v2

    add-float/2addr v3, v4

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_a

    .line 1101
    :cond_e
    iput-boolean v1, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mNeedCalculatePageOffsets:Z

    return-void
.end method

.method private canScroll(Landroid/view/View;ZIII)Z
    .locals 13

    move-object v0, p1

    .line 2347
    instance-of v1, v0, Landroid/view/ViewGroup;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 2348
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    .line 2349
    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v3

    .line 2350
    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v4

    .line 2351
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    sub-int/2addr v5, v2

    :goto_0
    if-ltz v5, :cond_1

    .line 2356
    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    add-int v6, p5, v4

    .line 2357
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v8

    if-lt v6, v8, :cond_0

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v8

    if-ge v6, v8, :cond_0

    add-int v8, p4, v3

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v9

    if-lt v8, v9, :cond_0

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v9

    if-ge v8, v9, :cond_0

    const/4 v9, 0x1

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v10

    sub-int v10, v8, v10

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v8

    sub-int v11, v6, v8

    move-object v6, p0

    move v8, v9

    move/from16 v9, p3

    invoke-direct/range {v6 .. v11}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->canScroll(Landroid/view/View;ZIII)Z

    move-result v6

    if-eqz v6, :cond_0

    return v2

    :cond_0
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    move/from16 v1, p3

    neg-int v1, v1

    .line 2366
    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private completeScroll(Z)V
    .locals 7

    .line 1634
    iget v0, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mScrollState:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_3

    .line 17305
    iget-boolean v3, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mScrollingCacheEnabled:Z

    if-eqz v3, :cond_1

    .line 17306
    iput-boolean v2, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mScrollingCacheEnabled:Z

    .line 1638
    :cond_1
    iget-object v3, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1639
    invoke-virtual {p0}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->getScrollX()I

    move-result v3

    .line 1640
    invoke-virtual {p0}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->getScrollY()I

    move-result v4

    .line 1641
    iget-object v5, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrX()I

    move-result v5

    .line 1642
    iget-object v6, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->getCurrY()I

    move-result v6

    if-ne v3, v5, :cond_2

    if-eq v4, v6, :cond_3

    .line 1644
    :cond_2
    invoke-virtual {p0, v5, v6}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->scrollTo(II)V

    .line 1647
    :cond_3
    iput-boolean v2, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mPopulatePending:Z

    move v3, v0

    move v0, v2

    .line 1648
    :goto_1
    iget-object v4, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_5

    .line 1649
    iget-object v4, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ItemInfo;

    .line 1650
    iget-boolean v5, v4, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ItemInfo;->scrolling:Z

    if-eqz v5, :cond_4

    .line 1652
    iput-boolean v2, v4, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ItemInfo;->scrolling:Z

    move v3, v1

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    if-eqz v3, :cond_7

    if-eqz p1, :cond_6

    .line 1657
    iget-object p1, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    invoke-static {p0, p1}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    return-void

    .line 1659
    :cond_6
    iget-object p1, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_7
    return-void
.end method

.method private getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;
    .locals 2

    if-nez p1, :cond_0

    .line 2477
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    :cond_0
    if-nez p2, :cond_1

    const/4 p2, 0x0

    .line 2480
    invoke-virtual {p1, p2, p2, p2, p2}, Landroid/graphics/Rect;->set(IIII)V

    return-object p1

    .line 2483
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 2484
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 2485
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 2486
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 2488
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    .line 2489
    :goto_0
    instance-of v0, p2, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    if-eq p2, p0, :cond_2

    .line 2490
    check-cast p2, Landroid/view/ViewGroup;

    .line 2491
    iget v0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getLeft()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 2492
    iget v0, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getRight()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 2493
    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getTop()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 2494
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getBottom()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 2496
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method private infoForAnyChild(Landroid/view/View;)Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ItemInfo;
    .locals 1

    .line 1235
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_2

    if-eqz v0, :cond_1

    .line 1236
    instance-of p1, v0, Landroid/view/View;

    if-nez p1, :cond_0

    goto :goto_1

    .line 1239
    :cond_0
    move-object p1, v0

    check-cast p1, Landroid/view/View;

    goto :goto_0

    :cond_1
    :goto_1
    const/4 p1, 0x0

    return-object p1

    .line 1241
    :cond_2
    invoke-direct {p0, p1}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->infoForChild(Landroid/view/View;)Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ItemInfo;

    move-result-object p1

    return-object p1
.end method

.method private infoForChild(Landroid/view/View;)Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ItemInfo;
    .locals 4

    const/4 v0, 0x0

    .line 1224
    :goto_0
    iget-object v1, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1225
    iget-object v1, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ItemInfo;

    .line 1226
    iget-object v2, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget-object v3, v1, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Landroid/support/v4/view/PagerAdapter;->isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private infoForCurrentScrollPosition()Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ItemInfo;
    .locals 12

    .line 23374
    invoke-virtual {p0}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 2008
    invoke-virtual {p0}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->getScrollY()I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, v0

    div-float/2addr v2, v3

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-lez v0, :cond_1

    int-to-float v0, v0

    div-float v0, v1, v0

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x1

    move v8, v1

    move v9, v8

    move v1, v4

    move v7, v5

    move-object v5, v3

    move v3, v6

    .line 2016
    :goto_2
    iget-object v10, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v1, v10, :cond_7

    .line 2017
    iget-object v10, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ItemInfo;

    if-nez v3, :cond_2

    .line 2019
    iget v11, v10, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ItemInfo;->position:I

    add-int/2addr v7, v6

    if-eq v11, v7, :cond_2

    .line 2021
    iget-object v10, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mTempItem:Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ItemInfo;

    add-float/2addr v8, v9

    add-float/2addr v8, v0

    .line 2022
    iput v8, v10, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ItemInfo;->offset:F

    .line 2023
    iput v7, v10, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ItemInfo;->position:I

    .line 2024
    iget-object v7, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget v8, v10, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ItemInfo;->position:I

    invoke-virtual {v7, v8}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result v7

    iput v7, v10, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ItemInfo;->heightFactor:F

    add-int/lit8 v1, v1, -0x1

    .line 2027
    :cond_2
    iget v8, v10, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ItemInfo;->offset:F

    .line 2030
    iget v7, v10, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ItemInfo;->heightFactor:F

    add-float/2addr v7, v8

    add-float/2addr v7, v0

    if-nez v3, :cond_4

    cmpl-float v3, v2, v8

    if-ltz v3, :cond_3

    goto :goto_3

    :cond_3
    return-object v5

    :cond_4
    :goto_3
    cmpg-float v3, v2, v7

    if-ltz v3, :cond_6

    .line 2032
    iget-object v3, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v6

    if-ne v1, v3, :cond_5

    goto :goto_4

    .line 2039
    :cond_5
    iget v7, v10, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ItemInfo;->position:I

    .line 2041
    iget v9, v10, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ItemInfo;->heightFactor:F

    add-int/lit8 v1, v1, 0x1

    move v3, v4

    move-object v5, v10

    goto :goto_2

    :cond_6
    :goto_4
    return-object v10

    :cond_7
    return-object v5
.end method

.method private infoForPosition(I)Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ItemInfo;
    .locals 3

    const/4 v0, 0x0

    .line 1245
    :goto_0
    iget-object v1, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1246
    iget-object v1, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ItemInfo;

    .line 1247
    iget v2, v1, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ItemInfo;->position:I

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private initViewPager()V
    .locals 5

    const/4 v0, 0x0

    .line 246
    invoke-virtual {p0, v0}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->setWillNotDraw(Z)V

    const/high16 v0, 0x40000

    .line 247
    invoke-virtual {p0, v0}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->setDescendantFocusability(I)V

    const/4 v0, 0x1

    .line 248
    invoke-virtual {p0, v0}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->setFocusable(Z)V

    .line 249
    invoke-virtual {p0}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 250
    new-instance v2, Landroid/widget/Scroller;

    sget-object v3, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->sInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {v2, v1, v3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v2, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mScroller:Landroid/widget/Scroller;

    .line 251
    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    .line 252
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    .line 254
    invoke-static {v2}, Landroid/support/v4/view/ViewConfigurationCompat;->getScaledPagingTouchSlop(Landroid/view/ViewConfiguration;)I

    move-result v4

    iput v4, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mTouchSlop:I

    const/high16 v4, 0x43c80000    # 400.0f

    mul-float/2addr v4, v3

    float-to-int v4, v4

    .line 255
    iput v4, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mMinimumVelocity:I

    .line 256
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v2

    iput v2, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mMaximumVelocity:I

    .line 257
    new-instance v2, Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-direct {v2, v1}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mTopEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 258
    new-instance v2, Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-direct {v2, v1}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mBottomEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    const/high16 v1, 0x41c80000    # 25.0f

    mul-float/2addr v1, v3

    float-to-int v1, v1

    .line 260
    iput v1, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mFlingDistance:I

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v1, v3

    float-to-int v1, v1

    .line 261
    iput v1, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mCloseEnough:I

    const/high16 v1, 0x41800000    # 16.0f

    mul-float/2addr v1, v3

    float-to-int v1, v1

    .line 262
    iput v1, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mDefaultGutterSize:I

    .line 264
    new-instance v1, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$MyAccessibilityDelegate;

    invoke-direct {v1, p0}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$MyAccessibilityDelegate;-><init>(Lfr/castorflex/android/verticalviewpager/VerticalViewPager;)V

    invoke-static {p0, v1}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    .line 266
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v1

    if-nez v1, :cond_0

    .line 268
    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method private onPageScrolled(IFI)V
    .locals 10

    .line 1570
    iget v0, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mDecorChildCount:I

    if-lez v0, :cond_5

    .line 1571
    invoke-virtual {p0}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->getScrollY()I

    move-result v0

    .line 1572
    invoke-virtual {p0}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->getPaddingTop()I

    move-result v1

    .line 1573
    invoke-virtual {p0}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->getPaddingBottom()I

    move-result v2

    .line 1574
    invoke-virtual {p0}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->getHeight()I

    move-result v3

    .line 1575
    invoke-virtual {p0}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->getChildCount()I

    move-result v4

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_5

    .line 1577
    invoke-virtual {p0, v5}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1578
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$LayoutParams;

    .line 1579
    iget-boolean v8, v7, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$LayoutParams;->isDecor:Z

    if-eqz v8, :cond_4

    .line 1581
    iget v7, v7, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$LayoutParams;->gravity:I

    and-int/lit8 v7, v7, 0x70

    const/16 v8, 0x10

    if-eq v7, v8, :cond_2

    const/16 v8, 0x30

    if-eq v7, v8, :cond_1

    const/16 v8, 0x50

    if-eq v7, v8, :cond_0

    move v7, v1

    goto :goto_2

    :cond_0
    sub-int v7, v3, v2

    .line 1596
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    sub-int/2addr v7, v8

    .line 1597
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v2, v8

    goto :goto_1

    .line 1589
    :cond_1
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int/2addr v7, v1

    goto :goto_2

    .line 1592
    :cond_2
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    sub-int v7, v3, v7

    div-int/lit8 v7, v7, 0x2

    invoke-static {v7, v1}, Ljava/lang/Math;->max(II)I

    move-result v7

    :goto_1
    move v9, v7

    move v7, v1

    move v1, v9

    :goto_2
    add-int/2addr v1, v0

    .line 1602
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v8

    sub-int/2addr v1, v8

    if-eqz v1, :cond_3

    .line 1604
    invoke-virtual {v6, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    :cond_3
    move v1, v7

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1609
    :cond_5
    iget-object v0, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_6

    .line 1610
    iget-object v0, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    :cond_6
    const/4 p1, 0x1

    .line 1630
    iput-boolean p1, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mCalledSuper:Z

    return-void
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 3

    .line 2280
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v0

    .line 2281
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v1

    .line 2282
    iget v2, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mActivePointerId:I

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2286
    :goto_0
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v1

    iput v1, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mLastMotionY:F

    .line 2287
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result p1

    iput p1, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mActivePointerId:I

    .line 2288
    iget-object p1, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_1

    .line 2289
    iget-object p1, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    :cond_1
    return-void
.end method

.method private pageDown()Z
    .locals 4

    .line 2510
    iget-object v0, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget v0, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mCurItem:I

    iget-object v2, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v2}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ge v0, v2, :cond_0

    .line 2511
    iget v0, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mCurItem:I

    add-int/2addr v0, v3

    .line 26397
    iput-boolean v1, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mPopulatePending:Z

    .line 26406
    invoke-direct {p0, v0, v3, v1, v1}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->setCurrentItemInternal(IZZI)V

    return v3

    :cond_0
    return v1
.end method

.method private pageScrolled(I)Z
    .locals 6

    .line 1529
    iget-object v0, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 1530
    iput-boolean v2, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mCalledSuper:Z

    .line 1531
    invoke-direct {p0, v2, v1, v2}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->onPageScrolled(IFI)V

    .line 1532
    iget-boolean p1, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mCalledSuper:Z

    if-nez p1, :cond_0

    .line 1533
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "onPageScrolled did not call superclass implementation"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    return v2

    .line 1538
    :cond_1
    invoke-direct {p0}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->infoForCurrentScrollPosition()Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ItemInfo;

    move-result-object v0

    .line 16374
    invoke-virtual {p0}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {p0}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v1, v3

    .line 1542
    iget v4, v0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ItemInfo;->position:I

    int-to-float p1, p1

    div-float/2addr p1, v3

    .line 1543
    iget v5, v0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ItemInfo;->offset:F

    sub-float/2addr p1, v5

    iget v0, v0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ItemInfo;->heightFactor:F

    add-float/2addr v0, v1

    div-float/2addr p1, v0

    mul-float/2addr v3, p1

    float-to-int v0, v3

    .line 1547
    iput-boolean v2, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mCalledSuper:Z

    .line 1548
    invoke-direct {p0, v4, p1, v0}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->onPageScrolled(IFI)V

    .line 1549
    iget-boolean p1, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mCalledSuper:Z

    if-nez p1, :cond_2

    .line 1550
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "onPageScrolled did not call superclass implementation"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method private performDrag(F)Z
    .locals 9

    .line 1958
    iget v0, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mLastMotionY:F

    sub-float/2addr v0, p1

    .line 1959
    iput p1, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mLastMotionY:F

    .line 1961
    invoke-virtual {p0}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->getScrollY()I

    move-result p1

    int-to-float p1, p1

    add-float/2addr p1, v0

    .line 22374
    invoke-virtual {p0}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    .line 1965
    iget v1, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mFirstOffset:F

    mul-float/2addr v1, v0

    .line 1966
    iget v2, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mLastOffset:F

    mul-float/2addr v2, v0

    .line 1970
    iget-object v3, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ItemInfo;

    .line 1971
    iget-object v5, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    iget-object v6, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ItemInfo;

    .line 1972
    iget v6, v3, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ItemInfo;->position:I

    if-eqz v6, :cond_0

    .line 1974
    iget v1, v3, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ItemInfo;->offset:F

    mul-float/2addr v1, v0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v7

    .line 1976
    :goto_0
    iget v6, v5, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ItemInfo;->position:I

    iget-object v8, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v8}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v8

    sub-int/2addr v8, v7

    if-eq v6, v8, :cond_1

    .line 1978
    iget v2, v5, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ItemInfo;->offset:F

    mul-float/2addr v2, v0

    move v7, v4

    :cond_1
    cmpg-float v5, p1, v1

    if-gez v5, :cond_3

    if-eqz v3, :cond_2

    sub-float p1, v1, p1

    .line 1984
    iget-object v2, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mTopEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    div-float/2addr p1, v0

    invoke-virtual {v2, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->onPull(F)Z

    move-result p1

    move v4, p1

    :cond_2
    move p1, v1

    goto :goto_1

    :cond_3
    cmpl-float v1, p1, v2

    if-lez v1, :cond_5

    if-eqz v7, :cond_4

    sub-float/2addr p1, v2

    .line 1990
    iget-object v1, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mBottomEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    div-float/2addr p1, v0

    invoke-virtual {v1, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->onPull(F)Z

    move-result p1

    move v4, p1

    :cond_4
    move p1, v2

    .line 1995
    :cond_5
    :goto_1
    iget v0, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mLastMotionX:F

    float-to-int v1, p1

    int-to-float v2, v1

    sub-float/2addr p1, v2

    add-float/2addr v0, p1

    iput v0, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mLastMotionX:F

    .line 1996
    invoke-virtual {p0}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->getScrollX()I

    move-result p1

    invoke-virtual {p0, p1, v1}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->scrollTo(II)V

    .line 1997
    invoke-direct {p0, v1}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->pageScrolled(I)Z

    return v4
.end method

.method private populate(I)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 817
    iget v2, v0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mCurItem:I

    if-eq v2, v1, :cond_1

    .line 818
    iget v2, v0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mCurItem:I

    if-ge v2, v1, :cond_0

    const/16 v2, 0x82

    goto :goto_0

    :cond_0
    const/16 v2, 0x21

    .line 819
    :goto_0
    iget v4, v0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mCurItem:I

    invoke-direct {v0, v4}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->infoForPosition(I)Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ItemInfo;

    move-result-object v4

    .line 820
    iput v1, v0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mCurItem:I

    goto :goto_1

    :cond_1
    const/4 v2, 0x2

    const/4 v4, 0x0

    .line 823
    :goto_1
    iget-object v1, v0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-nez v1, :cond_2

    return-void

    .line 832
    :cond_2
    iget-boolean v1, v0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mPopulatePending:Z

    if-eqz v1, :cond_3

    return-void

    .line 841
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_4

    return-void

    .line 845
    :cond_4
    iget-object v1, v0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v1, v0}, Landroid/support/v4/view/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    .line 847
    iget v1, v0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mOffscreenPageLimit:I

    .line 848
    iget v5, v0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mCurItem:I

    sub-int/2addr v5, v1

    const/4 v6, 0x0

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 849
    iget-object v7, v0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v7}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v7

    add-int/lit8 v8, v7, -0x1

    .line 850
    iget v9, v0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mCurItem:I

    add-int/2addr v9, v1

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 852
    iget v8, v0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mExpectedAdapterCount:I

    if-eq v7, v8, :cond_5

    .line 855
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 857
    :catch_0
    invoke-virtual/range {p0 .. p0}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 859
    :goto_2
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "The application\'s PagerAdapter changed the adapter\'s contents without calling PagerAdapter#notifyDataSetChanged! Expected adapter item count: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mExpectedAdapterCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " Pager id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Pager class: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " Problematic adapter: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_5
    move v8, v6

    .line 870
    :goto_3
    iget-object v9, v0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_7

    .line 871
    iget-object v9, v0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ItemInfo;

    .line 872
    iget v10, v9, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ItemInfo;->position:I

    iget v11, v0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mCurItem:I

    if-lt v10, v11, :cond_6

    .line 873
    iget v10, v9, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ItemInfo;->position:I

    iget v11, v0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mCurItem:I

    if-ne v10, v11, :cond_7

    goto :goto_4

    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_7
    const/4 v9, 0x0

    :goto_4
    if-nez v9, :cond_8

    if-lez v7, :cond_8

    .line 879
    iget v9, v0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mCurItem:I

    invoke-direct {v0, v9, v8}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->addNewItem(II)Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ItemInfo;

    move-result-object v9

    :cond_8
    if-eqz v9, :cond_17

    add-int/lit8 v11, v8, -0x1

    if-ltz v11, :cond_9

    .line 888
    iget-object v12, v0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ItemInfo;

    goto :goto_5

    :cond_9
    const/4 v12, 0x0

    .line 13374
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->getMeasuredHeight()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->getPaddingTop()I

    move-result v14

    sub-int/2addr v13, v14

    invoke-virtual/range {p0 .. p0}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->getPaddingBottom()I

    move-result v14

    sub-int/2addr v13, v14

    const/high16 v14, 0x40000000    # 2.0f

    if-gtz v13, :cond_a

    const/4 v3, 0x0

    goto :goto_6

    .line 890
    :cond_a
    iget v15, v9, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ItemInfo;->heightFactor:F

    sub-float v15, v14, v15

    invoke-virtual/range {p0 .. p0}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->getPaddingLeft()I

    move-result v3

    int-to-float v3, v3

    int-to-float v6, v13

    div-float/2addr v3, v6

    add-float/2addr v3, v15

    .line 892
    :goto_6
    iget v6, v0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mCurItem:I

    add-int/lit8 v6, v6, -0x1

    move v15, v11

    move v11, v8

    const/4 v8, 0x0

    :goto_7
    if-ltz v6, :cond_f

    cmpl-float v16, v8, v3

    if-ltz v16, :cond_b

    if-ge v6, v5, :cond_b

    if-eqz v12, :cond_f

    .line 897
    iget v10, v12, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ItemInfo;->position:I

    if-ne v6, v10, :cond_e

    iget-boolean v10, v12, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ItemInfo;->scrolling:Z

    if-nez v10, :cond_e

    .line 898
    iget-object v10, v0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 899
    iget-object v10, v0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget-object v12, v12, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v10, v0, v6, v12}, Landroid/support/v4/view/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    add-int/lit8 v15, v15, -0x1

    add-int/lit8 v11, v11, -0x1

    if-ltz v15, :cond_d

    .line 906
    iget-object v10, v0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ItemInfo;

    goto :goto_8

    :cond_b
    if-eqz v12, :cond_c

    .line 908
    iget v10, v12, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ItemInfo;->position:I

    if-ne v6, v10, :cond_c

    .line 909
    iget v10, v12, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ItemInfo;->heightFactor:F

    add-float/2addr v8, v10

    add-int/lit8 v15, v15, -0x1

    if-ltz v15, :cond_d

    .line 911
    iget-object v10, v0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ItemInfo;

    goto :goto_8

    :cond_c
    add-int/lit8 v10, v15, 0x1

    .line 913
    invoke-direct {v0, v6, v10}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->addNewItem(II)Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ItemInfo;

    move-result-object v10

    .line 914
    iget v10, v10, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ItemInfo;->heightFactor:F

    add-float/2addr v8, v10

    add-int/lit8 v11, v11, 0x1

    if-ltz v15, :cond_d

    .line 916
    iget-object v10, v0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ItemInfo;

    goto :goto_8

    :cond_d
    const/4 v10, 0x0

    :goto_8
    move-object v12, v10

    :cond_e
    add-int/lit8 v6, v6, -0x1

    goto :goto_7

    .line 920
    :cond_f
    iget v3, v9, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ItemInfo;->heightFactor:F

    add-int/lit8 v5, v11, 0x1

    cmpg-float v6, v3, v14

    if-gez v6, :cond_16

    .line 923
    iget-object v6, v0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_10

    iget-object v6, v0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ItemInfo;

    goto :goto_9

    :cond_10
    const/4 v6, 0x0

    :goto_9
    if-gtz v13, :cond_11

    const/4 v10, 0x0

    goto :goto_a

    .line 924
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->getPaddingRight()I

    move-result v8

    int-to-float v8, v8

    int-to-float v10, v13

    div-float/2addr v8, v10

    add-float v10, v8, v14

    .line 926
    :goto_a
    iget v8, v0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mCurItem:I

    :goto_b
    add-int/lit8 v8, v8, 0x1

    if-ge v8, v7, :cond_16

    cmpl-float v12, v3, v10

    if-ltz v12, :cond_13

    if-le v8, v1, :cond_13

    if-eqz v6, :cond_16

    .line 931
    iget v12, v6, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ItemInfo;->position:I

    if-ne v8, v12, :cond_15

    iget-boolean v12, v6, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ItemInfo;->scrolling:Z

    if-nez v12, :cond_15

    .line 932
    iget-object v12, v0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 933
    iget-object v12, v0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget-object v6, v6, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v12, v0, v8, v6}, Landroid/support/v4/view/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 938
    iget-object v6, v0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_12

    iget-object v6, v0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ItemInfo;

    goto :goto_c

    :cond_12
    const/4 v6, 0x0

    goto :goto_c

    :cond_13
    if-eqz v6, :cond_14

    .line 940
    iget v12, v6, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ItemInfo;->position:I

    if-ne v8, v12, :cond_14

    .line 941
    iget v6, v6, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ItemInfo;->heightFactor:F

    add-float/2addr v3, v6

    add-int/lit8 v5, v5, 0x1

    .line 943
    iget-object v6, v0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_12

    iget-object v6, v0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ItemInfo;

    goto :goto_c

    .line 945
    :cond_14
    invoke-direct {v0, v8, v5}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->addNewItem(II)Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ItemInfo;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    .line 947
    iget v6, v6, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ItemInfo;->heightFactor:F

    add-float/2addr v3, v6

    .line 948
    iget-object v6, v0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_12

    iget-object v6, v0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ItemInfo;

    :cond_15
    :goto_c
    goto :goto_b

    .line 953
    :cond_16
    invoke-direct {v0, v9, v11, v4}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->calculatePageOffsets(Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ItemInfo;ILfr/castorflex/android/verticalviewpager/VerticalViewPager$ItemInfo;)V

    .line 963
    :cond_17
    iget-object v1, v0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget v3, v0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mCurItem:I

    if-eqz v9, :cond_18

    iget-object v4, v9, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ItemInfo;->object:Ljava/lang/Object;

    goto :goto_d

    :cond_18
    const/4 v4, 0x0

    :goto_d
    invoke-virtual {v1, v0, v3, v4}, Landroid/support/v4/view/PagerAdapter;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 965
    iget-object v1, v0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v1, v0}, Landroid/support/v4/view/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 969
    invoke-virtual/range {p0 .. p0}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->getChildCount()I

    move-result v1

    const/4 v3, 0x0

    :goto_e
    if-ge v3, v1, :cond_1b

    .line 971
    invoke-virtual {v0, v3}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 972
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$LayoutParams;

    .line 973
    iput v3, v5, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$LayoutParams;->childIndex:I

    .line 974
    iget-boolean v6, v5, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$LayoutParams;->isDecor:Z

    if-nez v6, :cond_19

    iget v6, v5, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$LayoutParams;->heightFactor:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-nez v6, :cond_1a

    .line 976
    invoke-direct {v0, v4}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->infoForChild(Landroid/view/View;)Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ItemInfo;

    move-result-object v4

    if-eqz v4, :cond_1a

    .line 978
    iget v6, v4, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ItemInfo;->heightFactor:F

    iput v6, v5, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$LayoutParams;->heightFactor:F

    .line 979
    iget v4, v4, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ItemInfo;->position:I

    iput v4, v5, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$LayoutParams;->position:I

    goto :goto_f

    :cond_19
    const/4 v7, 0x0

    :cond_1a
    :goto_f
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 985
    :cond_1b
    invoke-virtual/range {p0 .. p0}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 986
    invoke-virtual/range {p0 .. p0}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->findFocus()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1c

    .line 987
    invoke-direct {v0, v1}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->infoForAnyChild(Landroid/view/View;)Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ItemInfo;

    move-result-object v3

    goto :goto_10

    :cond_1c
    const/4 v3, 0x0

    :goto_10
    if-eqz v3, :cond_1d

    .line 988
    iget v1, v3, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ItemInfo;->position:I

    iget v3, v0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mCurItem:I

    if-eq v1, v3, :cond_1f

    :cond_1d
    const/4 v1, 0x0

    .line 989
    :goto_11
    invoke-virtual/range {p0 .. p0}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1f

    .line 990
    invoke-virtual {v0, v1}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 991
    invoke-direct {v0, v3}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->infoForChild(Landroid/view/View;)Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ItemInfo;

    move-result-object v4

    if-eqz v4, :cond_1e

    .line 992
    iget v4, v4, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ItemInfo;->position:I

    iget v5, v0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mCurItem:I

    if-ne v4, v5, :cond_1e

    .line 993
    invoke-virtual {v3, v2}, Landroid/view/View;->requestFocus(I)Z

    move-result v3

    if-nez v3, :cond_1f

    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_1f
    return-void
.end method

.method private scrollToItem(IZIZ)V
    .locals 5

    .line 454
    invoke-direct {p0, p1}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->infoForPosition(I)Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ItemInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 7374
    invoke-virtual {p0}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 458
    iget v3, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mFirstOffset:F

    iget v0, v0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ItemInfo;->offset:F

    iget v4, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mLastOffset:F

    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    mul-float/2addr v2, v0

    float-to-int v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz p2, :cond_2

    .line 462
    invoke-direct {p0, v0, p3}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->smoothScrollTo$4868d30e(II)V

    if-eqz p4, :cond_1

    .line 463
    iget-object p2, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz p2, :cond_1

    .line 464
    iget-object p2, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {p2, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    :cond_1
    if-eqz p4, :cond_4

    return-void

    :cond_2
    if-eqz p4, :cond_3

    .line 470
    iget-object p2, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz p2, :cond_3

    .line 471
    iget-object p2, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {p2, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 476
    :cond_3
    invoke-direct {p0, v1}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->completeScroll(Z)V

    .line 477
    invoke-virtual {p0, v1, v0}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->scrollTo(II)V

    .line 478
    invoke-direct {p0, v0}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->pageScrolled(I)Z

    :cond_4
    return-void
.end method

.method private setCurrentItemInternal(IZZI)V
    .locals 3

    .line 410
    iget-object v0, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    if-gtz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    if-nez p3, :cond_2

    .line 414
    iget p3, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mCurItem:I

    if-ne p3, p1, :cond_2

    iget-object p3, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-eqz p3, :cond_2

    .line 7305
    iget-boolean p1, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mScrollingCacheEnabled:Z

    if-eqz p1, :cond_1

    .line 7306
    iput-boolean v1, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mScrollingCacheEnabled:Z

    :cond_1
    return-void

    :cond_2
    const/4 p3, 0x1

    if-gez p1, :cond_3

    move p1, v1

    goto :goto_0

    .line 421
    :cond_3
    iget-object v0, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_4

    .line 422
    iget-object p1, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {p1}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result p1

    sub-int/2addr p1, p3

    .line 424
    :cond_4
    :goto_0
    iget v0, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mOffscreenPageLimit:I

    .line 425
    iget v2, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mCurItem:I

    add-int/2addr v2, v0

    if-gt p1, v2, :cond_5

    iget v2, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mCurItem:I

    sub-int/2addr v2, v0

    if-ge p1, v2, :cond_6

    :cond_5
    move v0, v1

    .line 429
    :goto_1
    iget-object v2, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_6

    .line 430
    iget-object v2, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ItemInfo;

    iput-boolean p3, v2, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ItemInfo;->scrolling:Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 433
    :cond_6
    iget v0, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mCurItem:I

    if-eq v0, p1, :cond_7

    goto :goto_2

    :cond_7
    move p3, v1

    .line 435
    :goto_2
    iget-boolean v0, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mFirstLayout:Z

    if-eqz v0, :cond_9

    .line 438
    iput p1, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mCurItem:I

    if-eqz p3, :cond_8

    .line 439
    iget-object p2, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz p2, :cond_8

    .line 440
    iget-object p2, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {p2, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 445
    :cond_8
    invoke-virtual {p0}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->requestLayout()V

    return-void

    .line 447
    :cond_9
    invoke-direct {p0, p1}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->populate(I)V

    .line 448
    invoke-direct {p0, p1, p2, p4, p3}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->scrollToItem(IZIZ)V

    return-void

    .line 6305
    :cond_a
    :goto_3
    iget-boolean p1, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mScrollingCacheEnabled:Z

    if-eqz p1, :cond_b

    .line 6306
    iput-boolean v1, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mScrollingCacheEnabled:Z

    :cond_b
    return-void
.end method

.method private smoothScrollTo$4868d30e(II)V
    .locals 11

    .line 686
    invoke-virtual {p0}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 8305
    iget-boolean p1, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mScrollingCacheEnabled:Z

    if-eqz p1, :cond_0

    .line 8306
    iput-boolean v1, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mScrollingCacheEnabled:Z

    :cond_0
    return-void

    .line 691
    :cond_1
    invoke-virtual {p0}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->getScrollX()I

    move-result v3

    .line 692
    invoke-virtual {p0}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->getScrollY()I

    move-result v4

    rsub-int/lit8 v5, v3, 0x0

    sub-int v6, p1, v4

    if-nez v5, :cond_3

    if-nez v6, :cond_3

    .line 696
    invoke-direct {p0, v1}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->completeScroll(Z)V

    .line 8811
    iget p1, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mCurItem:I

    invoke-direct {p0, p1}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->populate(I)V

    .line 9280
    iget p1, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mScrollState:I

    if-eqz p1, :cond_2

    .line 9284
    iput v1, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mScrollState:I

    .line 9289
    iget-object p1, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz p1, :cond_2

    .line 9290
    iget-object p1, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {p1, v1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    :cond_2
    return-void

    .line 9305
    :cond_3
    iget-boolean p1, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mScrollingCacheEnabled:Z

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    .line 9306
    iput-boolean v0, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mScrollingCacheEnabled:Z

    .line 10280
    :cond_4
    iget p1, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mScrollState:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_5

    .line 10284
    iput v0, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mScrollState:I

    .line 10289
    iget-object p1, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz p1, :cond_5

    .line 10290
    iget-object p1, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {p1, v0}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    .line 10374
    :cond_5
    invoke-virtual {p0}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->getMeasuredHeight()I

    move-result p1

    invoke-virtual {p0}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->getPaddingTop()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->getPaddingBottom()I

    move-result v0

    sub-int/2addr p1, v0

    .line 706
    div-int/lit8 v0, p1, 0x2

    .line 707
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    int-to-float p1, p1

    div-float/2addr v1, p1

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    int-to-float v0, v0

    const/high16 v7, 0x3f000000    # 0.5f

    sub-float/2addr v1, v7

    float-to-double v7, v1

    const-wide v9, 0x3fde28c7460698c7L    # 0.4712389167638204

    mul-double/2addr v7, v9

    double-to-float v1, v7

    float-to-double v7, v1

    .line 10665
    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    double-to-float v1, v7

    mul-float/2addr v1, v0

    add-float/2addr v0, v1

    .line 712
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    if-lez p2, :cond_6

    const/4 p1, 0x4

    const/high16 v1, 0x447a0000    # 1000.0f

    int-to-float p2, p2

    div-float/2addr v0, p2

    .line 714
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p2

    mul-float/2addr v1, p2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p2

    mul-int/2addr p1, p2

    goto :goto_0

    .line 716
    :cond_6
    iget-object p2, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget v0, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mCurItem:I

    invoke-virtual {p2, v0}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result p2

    mul-float/2addr p1, p2

    .line 717
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result p2

    int-to-float p2, p2

    const/4 v0, 0x0

    add-float/2addr p1, v0

    div-float/2addr p2, p1

    add-float/2addr p2, v2

    const/high16 p1, 0x42c80000    # 100.0f

    mul-float/2addr p2, p1

    float-to-int p1, p2

    :goto_0
    const/16 p2, 0x258

    .line 720
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 722
    iget-object v2, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual/range {v2 .. v7}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 723
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .line 2522
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2524
    invoke-virtual {p0}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->getDescendantFocusability()I

    move-result v1

    const/high16 v2, 0x60000

    if-eq v1, v2, :cond_1

    const/4 v2, 0x0

    .line 2527
    :goto_0
    invoke-virtual {p0}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 2528
    invoke-virtual {p0, v2}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2529
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    .line 2530
    invoke-direct {p0, v3}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->infoForChild(Landroid/view/View;)Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ItemInfo;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 2531
    iget v4, v4, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ItemInfo;->position:I

    iget v5, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mCurItem:I

    if-ne v4, v5, :cond_0

    .line 2532
    invoke-virtual {v3, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/high16 p2, 0x40000

    if-ne v1, p2, :cond_2

    .line 2542
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ne v0, p2, :cond_5

    .line 2548
    :cond_2
    invoke-virtual {p0}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->isFocusable()Z

    move-result p2

    if-nez p2, :cond_3

    return-void

    :cond_3
    const/4 p2, 0x1

    and-int/2addr p3, p2

    if-ne p3, p2, :cond_4

    .line 2551
    invoke-virtual {p0}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->isInTouchMode()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {p0}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->isFocusableInTouchMode()Z

    move-result p2

    if-nez p2, :cond_4

    return-void

    :cond_4
    if-eqz p1, :cond_5

    .line 2556
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    return-void
.end method

.method public addTouchables(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2569
    :goto_0
    invoke-virtual {p0}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2570
    invoke-virtual {p0, v0}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2571
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 2572
    invoke-direct {p0, v1}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->infoForChild(Landroid/view/View;)Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ItemInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2573
    iget v2, v2, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ItemInfo;->position:I

    iget v3, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mCurItem:I

    if-ne v2, v3, :cond_0

    .line 2574
    invoke-virtual {v1, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 3

    .line 1190
    invoke-virtual {p0, p3}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1191
    invoke-virtual {p0, p3}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    .line 1193
    :cond_0
    move-object v0, p3

    check-cast v0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$LayoutParams;

    .line 1194
    iget-boolean v1, v0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$LayoutParams;->isDecor:Z

    instance-of v2, p1, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$Decor;

    or-int/2addr v1, v2

    iput-boolean v1, v0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$LayoutParams;->isDecor:Z

    .line 1195
    iget-boolean v1, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mInLayout:Z

    if-eqz v1, :cond_2

    if-eqz v0, :cond_1

    .line 1196
    iget-boolean v1, v0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$LayoutParams;->isDecor:Z

    if-eqz v1, :cond_1

    .line 1197
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot add pager decor view during layout"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 v1, 0x1

    .line 1199
    iput-boolean v1, v0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$LayoutParams;->needsMeasure:Z

    .line 1200
    invoke-virtual {p0, p1, p2, p3}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    return-void

    .line 1202
    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    .line 2648
    instance-of v0, p1, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$LayoutParams;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public computeScroll()V
    .locals 4

    .line 1505
    iget-object v0, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1506
    invoke-virtual {p0}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->getScrollX()I

    move-result v0

    .line 1507
    invoke-virtual {p0}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->getScrollY()I

    move-result v1

    .line 1508
    iget-object v2, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    .line 1509
    iget-object v3, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    if-ne v0, v2, :cond_0

    if-eq v1, v3, :cond_1

    .line 1512
    :cond_0
    invoke-virtual {p0, v2, v3}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->scrollTo(II)V

    .line 1513
    invoke-direct {p0, v3}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->pageScrolled(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1514
    iget-object v0, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    const/4 v0, 0x0

    .line 1515
    invoke-virtual {p0, v2, v0}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->scrollTo(II)V

    .line 1520
    :cond_1
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    return-void

    :cond_2
    const/4 v0, 0x1

    .line 1525
    invoke-direct {p0, v0}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->completeScroll(Z)V

    return-void
.end method

.method final dataSetChanged()V
    .locals 10

    .line 742
    iget-object v0, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    .line 743
    iput v0, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mExpectedAdapterCount:I

    .line 744
    iget-object v1, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mOffscreenPageLimit:I

    const/4 v3, 0x1

    shl-int/2addr v2, v3

    add-int/2addr v2, v3

    const/4 v4, 0x0

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v1, v0, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v4

    .line 746
    :goto_0
    iget v2, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mCurItem:I

    move v5, v1

    move v6, v2

    move v1, v4

    move v2, v1

    .line 749
    :goto_1
    iget-object v7, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v1, v7, :cond_6

    .line 750
    iget-object v7, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ItemInfo;

    .line 751
    iget-object v8, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget-object v9, v7, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v8, v9}, Landroid/support/v4/view/PagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_5

    const/4 v9, -0x2

    if-ne v8, v9, :cond_3

    .line 758
    iget-object v5, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    if-nez v2, :cond_1

    .line 762
    iget-object v2, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v2, p0}, Landroid/support/v4/view/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    move v2, v3

    .line 766
    :cond_1
    iget-object v5, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget v8, v7, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ItemInfo;->position:I

    iget-object v9, v7, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v5, p0, v8, v9}, Landroid/support/v4/view/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 769
    iget v5, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mCurItem:I

    iget v7, v7, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ItemInfo;->position:I

    if-ne v5, v7, :cond_2

    .line 771
    iget v5, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mCurItem:I

    add-int/lit8 v6, v0, -0x1

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    move v6, v5

    :cond_2
    :goto_2
    move v5, v3

    goto :goto_3

    .line 777
    :cond_3
    iget v9, v7, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ItemInfo;->position:I

    if-eq v9, v8, :cond_5

    .line 778
    iget v5, v7, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ItemInfo;->position:I

    iget v9, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mCurItem:I

    if-ne v5, v9, :cond_4

    move v6, v8

    .line 783
    :cond_4
    iput v8, v7, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ItemInfo;->position:I

    goto :goto_2

    :cond_5
    :goto_3
    add-int/2addr v1, v3

    goto :goto_1

    :cond_6
    if-eqz v2, :cond_7

    .line 789
    iget-object v0, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 792
    :cond_7
    iget-object v0, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    sget-object v1, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    if-eqz v5, :cond_a

    .line 796
    invoke-virtual {p0}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->getChildCount()I

    move-result v0

    move v1, v4

    :goto_4
    if-ge v1, v0, :cond_9

    .line 798
    invoke-virtual {p0, v1}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 799
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$LayoutParams;

    .line 800
    iget-boolean v5, v2, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$LayoutParams;->isDecor:Z

    if-nez v5, :cond_8

    const/4 v5, 0x0

    .line 801
    iput v5, v2, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$LayoutParams;->heightFactor:F

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 11406
    :cond_9
    invoke-direct {p0, v6, v4, v3, v4}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->setCurrentItemInternal(IZZI)V

    .line 806
    invoke-virtual {p0}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->requestLayout()V

    :cond_a
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4

    .line 2372
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_4

    .line 24385
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 24386
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v3, 0x3d

    if-eq v0, v3, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/16 p1, 0x42

    .line 24391
    invoke-direct {p0, p1}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->arrowScroll(I)Z

    move-result p1

    goto :goto_1

    :pswitch_1
    const/16 p1, 0x11

    .line 24388
    invoke-direct {p0, p1}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->arrowScroll(I)Z

    move-result p1

    goto :goto_1

    .line 24394
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v0, v3, :cond_2

    .line 24397
    invoke-static {p1}, Landroid/support/v4/view/KeyEventCompat;->hasNoModifiers(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x2

    .line 24398
    invoke-direct {p0, p1}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->arrowScroll(I)Z

    move-result p1

    goto :goto_1

    .line 24399
    :cond_1
    invoke-static {p1, v1}, Landroid/support/v4/view/KeyEventCompat;->hasModifiers(Landroid/view/KeyEvent;I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 24400
    invoke-direct {p0, v1}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->arrowScroll(I)Z

    move-result p1

    goto :goto_1

    :cond_2
    :goto_0
    move p1, v2

    :goto_1
    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    return v2

    :cond_4
    :goto_2
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 6

    .line 2616
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_0

    .line 2617
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1

    .line 2621
    :cond_0
    invoke-virtual {p0}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    .line 2623
    invoke-virtual {p0, v2}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2624
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    .line 2625
    invoke-direct {p0, v3}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->infoForChild(Landroid/view/View;)Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ItemInfo;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 2626
    iget v4, v4, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ItemInfo;->position:I

    iget v5, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mCurItem:I

    if-ne v4, v5, :cond_1

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 2070
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 2073
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getOverScrollMode(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 2074
    iget-object v0, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    if-le v0, v2, :cond_0

    goto :goto_0

    .line 2099
    :cond_0
    iget-object p1, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mTopEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p1}, Landroid/support/v4/widget/EdgeEffectCompat;->finish()V

    .line 2100
    iget-object p1, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mBottomEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p1}, Landroid/support/v4/widget/EdgeEffectCompat;->finish()V

    goto/16 :goto_1

    .line 2077
    :cond_1
    :goto_0
    iget-object v0, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mTopEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2078
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 2079
    invoke-virtual {p0}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->getHeight()I

    move-result v2

    .line 2080
    invoke-virtual {p0}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    .line 2082
    invoke-virtual {p0}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->getPaddingLeft()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mFirstOffset:F

    int-to-float v6, v2

    mul-float/2addr v5, v6

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2083
    iget-object v4, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mTopEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v4, v3, v2}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    .line 2084
    iget-object v2, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mTopEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v2, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v2

    or-int/2addr v1, v2

    .line 2085
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2087
    :cond_2
    iget-object v0, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mBottomEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2088
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 2089
    invoke-virtual {p0}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->getHeight()I

    move-result v2

    .line 2090
    invoke-virtual {p0}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    const/high16 v4, 0x43340000    # 180.0f

    .line 2092
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    neg-int v4, v3

    .line 2093
    invoke-virtual {p0}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mLastOffset:F

    const/high16 v6, 0x3f800000    # 1.0f

    add-float/2addr v5, v6

    neg-float v5, v5

    int-to-float v6, v2

    mul-float/2addr v5, v6

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2094
    iget-object v4, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mBottomEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v4, v3, v2}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    .line 2095
    iget-object v2, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mBottomEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v2, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v2

    or-int/2addr v1, v2

    .line 2096
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    .line 2105
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_4
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 0

    .line 651
    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 2638
    new-instance v0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$LayoutParams;

    invoke-direct {v0}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$LayoutParams;-><init>()V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 2653
    new-instance v0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$LayoutParams;

    invoke-virtual {p0}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 2643
    invoke-virtual {p0}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected getChildDrawingOrder(II)I
    .locals 0

    const/4 p1, 0x0

    .line 540
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$LayoutParams;

    iget p1, p1, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$LayoutParams;->childIndex:I

    return p1
.end method

.method public final getCurrentItem()I
    .locals 1

    .line 402
    iget v0, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mCurItem:I

    return v0
.end method

.method public final internalCanScrollVertically(I)Z
    .locals 4

    .line 2320
    iget-object v0, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 24374
    :cond_0
    invoke-virtual {p0}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->getPaddingTop()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v0, v2

    .line 2325
    invoke-virtual {p0}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->getScrollY()I

    move-result v2

    const/4 v3, 0x1

    if-gez p1, :cond_2

    int-to-float p1, v0

    .line 2327
    iget v0, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mFirstOffset:F

    mul-float/2addr p1, v0

    float-to-int p1, p1

    if-le v2, p1, :cond_1

    return v3

    :cond_1
    return v1

    :cond_2
    if-lez p1, :cond_4

    int-to-float p1, v0

    .line 2329
    iget v0, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mLastOffset:F

    mul-float/2addr p1, v0

    float-to-int p1, p1

    if-ge v2, p1, :cond_3

    return v3

    :cond_3
    return v1

    :cond_4
    return v1
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 1256
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    const/4 v0, 0x1

    .line 1257
    iput-boolean v0, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mFirstLayout:Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 275
    iget-object v0, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 276
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 2111
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 16

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    .line 1685
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, -0x1

    const/4 v8, 0x0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_13

    const/4 v9, 0x1

    if-ne v0, v9, :cond_0

    goto/16 :goto_4

    :cond_0
    if-eqz v0, :cond_2

    .line 1704
    iget-boolean v2, v6, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mIsBeingDragged:Z

    if-eqz v2, :cond_1

    return v9

    .line 1708
    :cond_1
    iget-boolean v2, v6, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mIsUnableToDrag:Z

    if-eqz v2, :cond_2

    return v8

    :cond_2
    const/4 v2, 0x2

    if-eqz v0, :cond_e

    if-eq v0, v2, :cond_4

    const/4 v1, 0x6

    if-eq v0, v1, :cond_3

    goto/16 :goto_3

    .line 1805
    :cond_3
    invoke-direct/range {p0 .. p1}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_3

    .line 1725
    :cond_4
    iget v0, v6, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mActivePointerId:I

    if-eq v0, v1, :cond_11

    .line 1731
    invoke-static {v7, v0}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 1732
    invoke-static {v7, v0}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v10

    .line 1733
    iget v1, v6, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mLastMotionY:F

    sub-float v11, v10, v1

    .line 1734
    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v12

    .line 1735
    invoke-static {v7, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v13

    .line 1736
    iget v0, v6, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mInitialMotionX:F

    sub-float v0, v13, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v14

    const/4 v15, 0x0

    cmpl-float v0, v11, v15

    if-eqz v0, :cond_8

    .line 1739
    iget v0, v6, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mLastMotionY:F

    .line 17665
    iget v1, v6, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mGutterSize:I

    int-to-float v1, v1

    cmpg-float v1, v0, v1

    if-gez v1, :cond_5

    cmpl-float v1, v11, v15

    if-gtz v1, :cond_6

    :cond_5
    invoke-virtual/range {p0 .. p0}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->getHeight()I

    move-result v1

    iget v2, v6, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mGutterSize:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_7

    cmpg-float v0, v11, v15

    if-gez v0, :cond_7

    :cond_6
    move v0, v9

    goto :goto_0

    :cond_7
    move v0, v8

    :goto_0
    if-nez v0, :cond_8

    const/4 v2, 0x0

    float-to-int v3, v11

    float-to-int v4, v13

    float-to-int v5, v10

    move-object v0, v6

    move-object v1, v6

    .line 1739
    invoke-direct/range {v0 .. v5}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->canScroll(Landroid/view/View;ZIII)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1742
    iput v13, v6, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mLastMotionX:F

    .line 1743
    iput v10, v6, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mLastMotionY:F

    .line 1744
    iput-boolean v9, v6, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mIsUnableToDrag:Z

    return v8

    .line 1747
    :cond_8
    iget v0, v6, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mTouchSlop:I

    int-to-float v0, v0

    cmpl-float v0, v12, v0

    if-lez v0, :cond_c

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr v12, v0

    cmpl-float v0, v12, v14

    if-lez v0, :cond_c

    .line 1749
    iput-boolean v9, v6, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mIsBeingDragged:Z

    .line 17949
    invoke-virtual/range {p0 .. p0}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 17951
    invoke-interface {v0, v9}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 18280
    :cond_9
    iget v0, v6, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mScrollState:I

    if-eq v0, v9, :cond_a

    .line 18284
    iput v9, v6, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mScrollState:I

    .line 18289
    iget-object v0, v6, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_a

    .line 18290
    iget-object v0, v6, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, v9}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    :cond_a
    cmpl-float v0, v11, v15

    if-lez v0, :cond_b

    .line 1752
    iget v0, v6, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mInitialMotionY:F

    iget v1, v6, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mTouchSlop:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    goto :goto_1

    :cond_b
    iget v0, v6, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mInitialMotionY:F

    iget v1, v6, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mTouchSlop:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    :goto_1
    iput v0, v6, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mLastMotionY:F

    .line 1754
    iput v13, v6, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mLastMotionX:F

    .line 18305
    iget-boolean v0, v6, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mScrollingCacheEnabled:Z

    if-eq v0, v9, :cond_d

    .line 18306
    iput-boolean v9, v6, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mScrollingCacheEnabled:Z

    goto :goto_2

    .line 1756
    :cond_c
    iget v0, v6, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mTouchSlop:I

    int-to-float v0, v0

    cmpl-float v0, v14, v0

    if-lez v0, :cond_d

    .line 1762
    iput-boolean v9, v6, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mIsUnableToDrag:Z

    .line 1764
    :cond_d
    :goto_2
    iget-boolean v0, v6, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mIsBeingDragged:Z

    if-eqz v0, :cond_11

    .line 1766
    invoke-direct {v6, v10}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->performDrag(F)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1767
    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    goto :goto_3

    .line 1778
    :cond_e
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, v6, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mInitialMotionX:F

    iput v0, v6, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mLastMotionX:F

    .line 1779
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, v6, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mInitialMotionY:F

    iput v0, v6, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mLastMotionY:F

    .line 1780
    invoke-static {v7, v8}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, v6, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mActivePointerId:I

    .line 1781
    iput-boolean v8, v6, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mIsUnableToDrag:Z

    .line 1783
    iget-object v0, v6, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 1784
    iget v0, v6, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mScrollState:I

    if-ne v0, v2, :cond_10

    iget-object v0, v6, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalY()I

    move-result v0

    iget-object v1, v6, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, v6, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mCloseEnough:I

    if-le v0, v1, :cond_10

    .line 1787
    iget-object v0, v6, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1788
    iput-boolean v8, v6, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mPopulatePending:Z

    .line 18811
    iget v0, v6, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mCurItem:I

    invoke-direct {v6, v0}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->populate(I)V

    .line 1790
    iput-boolean v9, v6, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mIsBeingDragged:Z

    .line 18949
    invoke-virtual/range {p0 .. p0}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 18951
    invoke-interface {v0, v9}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 19280
    :cond_f
    iget v0, v6, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mScrollState:I

    if-eq v0, v9, :cond_11

    .line 19284
    iput v9, v6, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mScrollState:I

    .line 19289
    iget-object v0, v6, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_11

    .line 19290
    iget-object v0, v6, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, v9}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    goto :goto_3

    .line 1794
    :cond_10
    invoke-direct {v6, v8}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->completeScroll(Z)V

    .line 1795
    iput-boolean v8, v6, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mIsBeingDragged:Z

    .line 1809
    :cond_11
    :goto_3
    iget-object v0, v6, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_12

    .line 1810
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, v6, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1812
    :cond_12
    iget-object v0, v6, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, v7}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1818
    iget-boolean v0, v6, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mIsBeingDragged:Z

    return v0

    .line 1691
    :cond_13
    :goto_4
    iput-boolean v8, v6, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mIsBeingDragged:Z

    .line 1692
    iput-boolean v8, v6, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mIsUnableToDrag:Z

    .line 1693
    iput v1, v6, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mActivePointerId:I

    .line 1694
    iget-object v0, v6, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_14

    .line 1695
    iget-object v0, v6, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    .line 1696
    iput-object v0, v6, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_14
    return v8
.end method

.method protected onLayout(ZIIII)V
    .locals 18

    move-object/from16 v0, p0

    .line 1396
    invoke-virtual/range {p0 .. p0}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->getChildCount()I

    move-result v1

    sub-int v2, p4, p2

    sub-int v3, p5, p3

    .line 1399
    invoke-virtual/range {p0 .. p0}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->getPaddingLeft()I

    move-result v4

    .line 1400
    invoke-virtual/range {p0 .. p0}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->getPaddingTop()I

    move-result v5

    .line 1401
    invoke-virtual/range {p0 .. p0}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->getPaddingRight()I

    move-result v6

    .line 1402
    invoke-virtual/range {p0 .. p0}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->getPaddingBottom()I

    move-result v7

    .line 1403
    invoke-virtual/range {p0 .. p0}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->getScrollY()I

    move-result v8

    move v10, v6

    const/4 v11, 0x0

    move v6, v4

    const/4 v4, 0x0

    :goto_0
    const/16 v12, 0x8

    if-ge v4, v1, :cond_7

    .line 1410
    invoke-virtual {v0, v4}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 1411
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v14

    if-eq v14, v12, :cond_6

    .line 1412
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$LayoutParams;

    .line 1415
    iget-boolean v14, v12, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$LayoutParams;->isDecor:Z

    if-eqz v14, :cond_6

    .line 1416
    iget v14, v12, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$LayoutParams;->gravity:I

    and-int/lit8 v14, v14, 0x7

    .line 1417
    iget v12, v12, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$LayoutParams;->gravity:I

    and-int/lit8 v12, v12, 0x70

    const/4 v15, 0x1

    if-eq v14, v15, :cond_2

    const/4 v15, 0x3

    if-eq v14, v15, :cond_1

    const/4 v15, 0x5

    if-eq v14, v15, :cond_0

    move v14, v6

    goto :goto_1

    :cond_0
    sub-int v14, v2, v10

    .line 1431
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    sub-int/2addr v14, v15

    .line 1432
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    add-int/2addr v10, v15

    goto :goto_1

    .line 1424
    :cond_1
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    add-int/2addr v14, v6

    move/from16 v17, v14

    move v14, v6

    move/from16 v6, v17

    goto :goto_1

    .line 1427
    :cond_2
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    sub-int v14, v2, v14

    div-int/lit8 v14, v14, 0x2

    invoke-static {v14, v6}, Ljava/lang/Math;->max(II)I

    move-result v14

    :goto_1
    const/16 v15, 0x10

    if-eq v12, v15, :cond_5

    const/16 v15, 0x30

    if-eq v12, v15, :cond_4

    const/16 v15, 0x50

    if-eq v12, v15, :cond_3

    move v12, v5

    goto :goto_2

    :cond_3
    sub-int v12, v3, v7

    .line 1448
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    sub-int/2addr v12, v15

    .line 1449
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    add-int/2addr v7, v15

    goto :goto_2

    .line 1441
    :cond_4
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    add-int/2addr v12, v5

    move/from16 v17, v12

    move v12, v5

    move/from16 v5, v17

    goto :goto_2

    .line 1444
    :cond_5
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    sub-int v12, v3, v12

    div-int/lit8 v12, v12, 0x2

    invoke-static {v12, v5}, Ljava/lang/Math;->max(II)I

    move-result v12

    :goto_2
    add-int/2addr v12, v8

    .line 1453
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    add-int/2addr v15, v14

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    add-int v9, v12, v16

    invoke-virtual {v13, v14, v12, v15, v9}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 v11, v11, 0x1

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_7
    sub-int/2addr v3, v5

    sub-int/2addr v3, v7

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v1, :cond_a

    .line 1464
    invoke-virtual {v0, v4}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1465
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-eq v8, v12, :cond_9

    .line 1466
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$LayoutParams;

    .line 1468
    iget-boolean v9, v8, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$LayoutParams;->isDecor:Z

    if-nez v9, :cond_9

    invoke-direct {v0, v7}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->infoForChild(Landroid/view/View;)Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ItemInfo;

    move-result-object v9

    if-eqz v9, :cond_9

    int-to-float v13, v3

    .line 1469
    iget v9, v9, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ItemInfo;->offset:F

    mul-float/2addr v9, v13

    float-to-int v9, v9

    add-int/2addr v9, v5

    .line 1472
    iget-boolean v14, v8, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$LayoutParams;->needsMeasure:Z

    if-eqz v14, :cond_8

    const/4 v14, 0x0

    .line 1475
    iput-boolean v14, v8, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$LayoutParams;->needsMeasure:Z

    sub-int v14, v2, v6

    sub-int/2addr v14, v10

    const/high16 v15, 0x40000000    # 2.0f

    .line 1476
    invoke-static {v14, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    .line 1479
    iget v8, v8, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$LayoutParams;->heightFactor:F

    mul-float/2addr v13, v8

    float-to-int v8, v13

    invoke-static {v8, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 1482
    invoke-virtual {v7, v14, v8}, Landroid/view/View;->measure(II)V

    .line 1487
    :cond_8
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v8, v6

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    add-int/2addr v13, v9

    invoke-virtual {v7, v6, v9, v8, v13}, Landroid/view/View;->layout(IIII)V

    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1493
    :cond_a
    iput v6, v0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mLeftPageBounds:I

    sub-int/2addr v2, v10

    .line 1494
    iput v2, v0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mRightPageBounds:I

    .line 1495
    iput v11, v0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mDecorChildCount:I

    .line 1497
    iget-boolean v1, v0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mFirstLayout:Z

    if-eqz v1, :cond_b

    .line 1498
    iget v1, v0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mCurItem:I

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2, v2}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->scrollToItem(IZIZ)V

    goto :goto_4

    :cond_b
    const/4 v2, 0x0

    .line 1500
    :goto_4
    iput-boolean v2, v0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mFirstLayout:Z

    return-void
.end method

.method protected onMeasure(II)V
    .locals 17

    move-object/from16 v0, p0

    const/4 v1, 0x0

    move/from16 v2, p1

    .line 1267
    invoke-static {v1, v2}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->getDefaultSize(II)I

    move-result v2

    move/from16 v3, p2

    invoke-static {v1, v3}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->getDefaultSize(II)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->setMeasuredDimension(II)V

    .line 1270
    invoke-virtual/range {p0 .. p0}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->getMeasuredHeight()I

    move-result v2

    .line 1271
    div-int/lit8 v3, v2, 0xa

    .line 1272
    iget v4, v0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mDefaultGutterSize:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mGutterSize:I

    .line 1275
    invoke-virtual/range {p0 .. p0}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->getMeasuredWidth()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual/range {p0 .. p0}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    .line 1276
    invoke-virtual/range {p0 .. p0}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->getPaddingTop()I

    move-result v4

    sub-int/2addr v2, v4

    invoke-virtual/range {p0 .. p0}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v2, v4

    .line 1283
    invoke-virtual/range {p0 .. p0}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->getChildCount()I

    move-result v4

    move v5, v2

    move v2, v1

    :goto_0
    const/16 v6, 0x8

    const/4 v7, 0x1

    const/high16 v8, 0x40000000    # 2.0f

    if-ge v2, v4, :cond_c

    .line 1285
    invoke-virtual {v0, v2}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 1286
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-eq v10, v6, :cond_b

    .line 1287
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$LayoutParams;

    if-eqz v6, :cond_b

    .line 1288
    iget-boolean v10, v6, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$LayoutParams;->isDecor:Z

    if-eqz v10, :cond_b

    .line 1289
    iget v10, v6, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$LayoutParams;->gravity:I

    and-int/lit8 v10, v10, 0x7

    .line 1290
    iget v11, v6, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$LayoutParams;->gravity:I

    and-int/lit8 v11, v11, 0x70

    const/16 v12, 0x30

    if-eq v11, v12, :cond_1

    const/16 v12, 0x50

    if-ne v11, v12, :cond_0

    goto :goto_1

    :cond_0
    move v11, v1

    goto :goto_2

    :cond_1
    :goto_1
    move v11, v7

    :goto_2
    const/4 v12, 0x3

    if-eq v10, v12, :cond_3

    const/4 v12, 0x5

    if-ne v10, v12, :cond_2

    goto :goto_3

    :cond_2
    move v7, v1

    :cond_3
    :goto_3
    const/high16 v10, -0x80000000

    if-eqz v11, :cond_4

    move v12, v10

    move v10, v8

    goto :goto_4

    :cond_4
    if-eqz v7, :cond_5

    move v12, v8

    goto :goto_4

    :cond_5
    move v12, v10

    .line 1304
    :goto_4
    iget v13, v6, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$LayoutParams;->width:I

    const/4 v14, -0x1

    const/4 v15, -0x2

    if-eq v13, v15, :cond_7

    .line 1306
    iget v10, v6, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$LayoutParams;->width:I

    if-eq v10, v14, :cond_6

    .line 1307
    iget v10, v6, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$LayoutParams;->width:I

    move v13, v10

    goto :goto_5

    :cond_6
    move v13, v3

    :goto_5
    move v10, v8

    goto :goto_6

    :cond_7
    move v13, v3

    .line 1310
    :goto_6
    iget v1, v6, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$LayoutParams;->height:I

    if-eq v1, v15, :cond_9

    .line 1312
    iget v1, v6, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$LayoutParams;->height:I

    if-eq v1, v14, :cond_8

    .line 1313
    iget v1, v6, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$LayoutParams;->height:I

    goto :goto_7

    :cond_8
    move v1, v5

    goto :goto_7

    :cond_9
    move v1, v5

    move v8, v12

    .line 1316
    :goto_7
    invoke-static {v13, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 1317
    invoke-static {v1, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1318
    invoke-virtual {v9, v6, v1}, Landroid/view/View;->measure(II)V

    if-eqz v11, :cond_a

    .line 1321
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v5, v1

    goto :goto_8

    :cond_a
    if-eqz v7, :cond_b

    .line 1323
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v3, v1

    :cond_b
    :goto_8
    add-int/lit8 v2, v2, 0x1

    const/4 v1, 0x0

    goto/16 :goto_0

    .line 1329
    :cond_c
    invoke-static {v3, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iput v1, v0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mChildWidthMeasureSpec:I

    .line 1330
    invoke-static {v5, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iput v1, v0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mChildHeightMeasureSpec:I

    .line 1333
    iput-boolean v7, v0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mInLayout:Z

    .line 14811
    iget v1, v0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mCurItem:I

    invoke-direct {v0, v1}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->populate(I)V

    const/4 v1, 0x0

    .line 1335
    iput-boolean v1, v0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mInLayout:Z

    .line 1338
    invoke-virtual/range {p0 .. p0}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->getChildCount()I

    move-result v2

    :goto_9
    if-ge v1, v2, :cond_f

    .line 1340
    invoke-virtual {v0, v1}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1341
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eq v4, v6, :cond_e

    .line 1345
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$LayoutParams;

    if-eqz v4, :cond_d

    .line 1346
    iget-boolean v7, v4, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$LayoutParams;->isDecor:Z

    if-nez v7, :cond_e

    :cond_d
    int-to-float v7, v5

    .line 1347
    iget v4, v4, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$LayoutParams;->heightFactor:F

    mul-float/2addr v7, v4

    float-to-int v4, v7

    invoke-static {v4, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 1349
    iget v7, v0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mChildWidthMeasureSpec:I

    invoke-virtual {v3, v7, v4}, Landroid/view/View;->measure(II)V

    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_f
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 8

    .line 2589
    invoke-virtual {p0}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->getChildCount()I

    move-result v0

    and-int/lit8 v1, p1, 0x2

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    move v2, v0

    move v0, v3

    move v1, v4

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    move v1, v2

    :goto_0
    if-eq v0, v2, :cond_2

    .line 2600
    invoke-virtual {p0, v0}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2601
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_1

    .line 2602
    invoke-direct {p0, v5}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->infoForChild(Landroid/view/View;)Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ItemInfo;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 2603
    iget v6, v6, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ItemInfo;->position:I

    iget v7, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mCurItem:I

    if-ne v6, v7, :cond_1

    .line 2604
    invoke-virtual {v5, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_1

    return v4

    :cond_1
    add-int/2addr v0, v1

    goto :goto_0

    :cond_2
    return v3
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3

    .line 1170
    instance-of v0, p1, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$SavedState;

    if-nez v0, :cond_0

    .line 1171
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 1175
    :cond_0
    check-cast p1, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$SavedState;

    .line 1176
    invoke-virtual {p1}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1178
    iget-object v0, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v0, :cond_1

    .line 1179
    iget-object v0, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget-object v1, p1, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    iget-object v2, p1, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$SavedState;->loader:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/PagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 1180
    iget p1, p1, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$SavedState;->position:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 14406
    invoke-direct {p0, p1, v1, v0, v1}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->setCurrentItemInternal(IZZI)V

    return-void

    .line 1182
    :cond_1
    iget v0, p1, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$SavedState;->position:I

    iput v0, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mRestoredCurItem:I

    .line 1183
    iget-object v0, p1, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    iput-object v0, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 1184
    iget-object p1, p1, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$SavedState;->loader:Ljava/lang/ClassLoader;

    iput-object p1, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 1159
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1160
    new-instance v1, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$SavedState;

    invoke-direct {v1, v0}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1161
    iget v0, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mCurItem:I

    iput v0, v1, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$SavedState;->position:I

    .line 1162
    iget-object v0, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v0, :cond_0

    .line 1163
    iget-object v0, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->saveState()Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, v1, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    :cond_0
    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .locals 6

    .line 1357
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    if-eq p2, p4, :cond_3

    if-lez p4, :cond_1

    .line 15366
    iget-object p1, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 15367
    invoke-virtual {p0}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->getPaddingTop()I

    move-result p1

    sub-int p1, p2, p1

    invoke-virtual {p0}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->getPaddingBottom()I

    move-result p3

    sub-int/2addr p1, p3

    .line 15368
    invoke-virtual {p0}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->getPaddingTop()I

    move-result p3

    sub-int/2addr p4, p3

    invoke-virtual {p0}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->getPaddingBottom()I

    move-result p3

    sub-int/2addr p4, p3

    .line 15370
    invoke-virtual {p0}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->getScrollY()I

    move-result p3

    int-to-float p3, p3

    int-to-float p4, p4

    div-float/2addr p3, p4

    int-to-float p1, p1

    mul-float/2addr p3, p1

    float-to-int v2, p3

    .line 15374
    invoke-virtual {p0}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->getScrollX()I

    move-result p1

    invoke-virtual {p0, p1, v2}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->scrollTo(II)V

    .line 15375
    iget-object p1, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_0

    .line 15377
    iget-object p1, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->getDuration()I

    move-result p1

    iget-object p3, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p3}, Landroid/widget/Scroller;->timePassed()I

    move-result p3

    sub-int v5, p1, p3

    .line 15378
    iget p1, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mCurItem:I

    invoke-direct {p0, p1}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->infoForPosition(I)Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ItemInfo;

    move-result-object p1

    .line 15379
    iget-object v0, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mScroller:Landroid/widget/Scroller;

    const/4 v1, 0x0

    const/4 v3, 0x0

    iget p1, p1, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ItemInfo;->offset:F

    int-to-float p2, p2

    mul-float/2addr p1, p2

    float-to-int v4, p1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    :cond_0
    return-void

    .line 15383
    :cond_1
    iget p1, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mCurItem:I

    invoke-direct {p0, p1}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->infoForPosition(I)Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ItemInfo;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 15384
    iget p1, p1, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ItemInfo;->offset:F

    iget p3, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mLastOffset:F

    invoke-static {p1, p3}, Ljava/lang/Math;->min(FF)F

    move-result p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 15385
    :goto_0
    invoke-virtual {p0}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->getPaddingTop()I

    move-result p3

    sub-int/2addr p2, p3

    invoke-virtual {p0}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->getPaddingBottom()I

    move-result p3

    sub-int/2addr p2, p3

    int-to-float p2, p2

    mul-float/2addr p1, p2

    float-to-int p1, p1

    .line 15387
    invoke-virtual {p0}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->getScrollY()I

    move-result p2

    if-eq p1, p2, :cond_3

    const/4 p2, 0x0

    .line 15388
    invoke-direct {p0, p2}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->completeScroll(Z)V

    .line 15389
    invoke-virtual {p0}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->getScrollX()I

    move-result p2

    invoke-virtual {p0, p2, p1}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->scrollTo(II)V

    :cond_3
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 1830
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 1836
    :cond_0
    iget-object v0, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_4

    .line 1841
    :cond_1
    iget-object v0, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_2

    .line 1842
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1844
    :cond_2
    iget-object v0, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1846
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_3

    .line 1937
    :pswitch_1
    invoke-direct {p0, p1}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 1938
    iget v0, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mActivePointerId:I

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result p1

    iput p1, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mLastMotionY:F

    goto/16 :goto_3

    .line 1930
    :pswitch_2
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v0

    .line 1931
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v2

    .line 1932
    iput v2, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mLastMotionY:F

    .line 1933
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result p1

    iput p1, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mActivePointerId:I

    goto/16 :goto_3

    .line 1922
    :pswitch_3
    iget-boolean p1, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mIsBeingDragged:Z

    if-eqz p1, :cond_e

    .line 1923
    iget p1, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mCurItem:I

    invoke-direct {p0, p1, v4, v1, v1}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->scrollToItem(IZIZ)V

    .line 1924
    iput v3, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mActivePointerId:I

    .line 22295
    iput-boolean v1, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mIsBeingDragged:Z

    .line 22296
    iput-boolean v1, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mIsUnableToDrag:Z

    .line 22298
    iget-object p1, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_3

    .line 22299
    iget-object p1, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    .line 22300
    iput-object v2, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1926
    :cond_3
    iget-object p1, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mTopEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p1}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result p1

    iget-object v0, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mBottomEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v0

    or-int v1, p1, v0

    goto/16 :goto_3

    .line 1862
    :pswitch_4
    iget-boolean v0, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mIsBeingDragged:Z

    if-nez v0, :cond_8

    .line 1863
    iget v0, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mActivePointerId:I

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 1864
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v2

    .line 1865
    iget v3, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mLastMotionY:F

    sub-float v3, v2, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 1866
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v0

    .line 1867
    iget v5, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mLastMotionX:F

    sub-float v5, v0, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 1870
    iget v6, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mTouchSlop:I

    int-to-float v6, v6

    cmpl-float v6, v3, v6

    if-lez v6, :cond_8

    cmpl-float v3, v3, v5

    if-lez v3, :cond_8

    .line 1872
    iput-boolean v4, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mIsBeingDragged:Z

    .line 19949
    invoke-virtual {p0}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 19951
    invoke-interface {v3, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1874
    :cond_4
    iget v3, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mInitialMotionY:F

    sub-float/2addr v2, v3

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_5

    iget v2, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mInitialMotionY:F

    iget v3, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mTouchSlop:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    goto :goto_0

    :cond_5
    iget v2, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mInitialMotionY:F

    iget v3, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mTouchSlop:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    :goto_0
    iput v2, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mLastMotionY:F

    .line 1876
    iput v0, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mLastMotionX:F

    .line 20280
    iget v0, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mScrollState:I

    if-eq v0, v4, :cond_6

    .line 20284
    iput v4, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mScrollState:I

    .line 20289
    iget-object v0, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_6

    .line 20290
    iget-object v0, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, v4}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    .line 20305
    :cond_6
    iget-boolean v0, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mScrollingCacheEnabled:Z

    if-eq v0, v4, :cond_7

    .line 20306
    iput-boolean v4, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mScrollingCacheEnabled:Z

    .line 1881
    :cond_7
    invoke-virtual {p0}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 1883
    invoke-interface {v0, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1888
    :cond_8
    iget-boolean v0, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mIsBeingDragged:Z

    if-eqz v0, :cond_e

    .line 1890
    iget v0, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mActivePointerId:I

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 1892
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result p1

    .line 1893
    invoke-direct {p0, p1}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->performDrag(F)Z

    move-result p1

    or-int/2addr v1, p1

    goto/16 :goto_3

    .line 1897
    :pswitch_5
    iget-boolean v0, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mIsBeingDragged:Z

    if-eqz v0, :cond_e

    .line 1898
    iget-object v0, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v5, 0x3e8

    .line 1899
    iget v6, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mMaximumVelocity:I

    int-to-float v6, v6

    invoke-virtual {v0, v5, v6}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1900
    iget v5, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mActivePointerId:I

    invoke-static {v0, v5}, Landroid/support/v4/view/VelocityTrackerCompat;->getYVelocity(Landroid/view/VelocityTracker;I)F

    move-result v0

    float-to-int v0, v0

    .line 1902
    iput-boolean v4, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mPopulatePending:Z

    .line 20374
    invoke-virtual {p0}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {p0}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->getPaddingTop()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    .line 1904
    invoke-virtual {p0}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->getScrollY()I

    move-result v6

    .line 1905
    invoke-direct {p0}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->infoForCurrentScrollPosition()Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ItemInfo;

    move-result-object v7

    .line 1906
    iget v8, v7, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ItemInfo;->position:I

    int-to-float v6, v6

    int-to-float v5, v5

    div-float/2addr v6, v5

    .line 1907
    iget v5, v7, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ItemInfo;->offset:F

    sub-float/2addr v6, v5

    iget v5, v7, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ItemInfo;->heightFactor:F

    div-float/2addr v6, v5

    .line 1908
    iget v5, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mActivePointerId:I

    invoke-static {p1, v5}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v5

    .line 1910
    invoke-static {p1, v5}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result p1

    .line 1911
    iget v5, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mInitialMotionY:F

    sub-float/2addr p1, v5

    float-to-int p1, p1

    .line 21050
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget v5, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mFlingDistance:I

    if-le p1, v5, :cond_a

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget v5, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mMinimumVelocity:I

    if-le p1, v5, :cond_a

    if-lez v0, :cond_9

    goto :goto_2

    :cond_9
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 21053
    :cond_a
    iget p1, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mCurItem:I

    if-lt v8, p1, :cond_b

    const p1, 0x3ecccccd    # 0.4f

    goto :goto_1

    :cond_b
    const p1, 0x3f19999a    # 0.6f

    :goto_1
    int-to-float v5, v8

    add-float/2addr v5, v6

    add-float/2addr v5, p1

    float-to-int v8, v5

    .line 21057
    :goto_2
    iget-object p1, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_c

    .line 21058
    iget-object p1, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ItemInfo;

    .line 21059
    iget-object v5, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    iget-object v6, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v6, v4

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ItemInfo;

    .line 21062
    iget p1, p1, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ItemInfo;->position:I

    iget v5, v5, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ItemInfo;->position:I

    invoke-static {v8, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {p1, v5}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 1914
    :cond_c
    invoke-direct {p0, v8, v4, v4, v0}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->setCurrentItemInternal(IZZI)V

    .line 1916
    iput v3, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mActivePointerId:I

    .line 21295
    iput-boolean v1, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mIsBeingDragged:Z

    .line 21296
    iput-boolean v1, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mIsUnableToDrag:Z

    .line 21298
    iget-object p1, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_d

    .line 21299
    iget-object p1, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    .line 21300
    iput-object v2, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1918
    :cond_d
    iget-object p1, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mTopEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p1}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result p1

    iget-object v0, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mBottomEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v0

    or-int v1, p1, v0

    goto :goto_3

    .line 1851
    :pswitch_6
    iget-object v0, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1852
    iput-boolean v1, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mPopulatePending:Z

    .line 19811
    iget v0, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mCurItem:I

    invoke-direct {p0, v0}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->populate(I)V

    .line 1856
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mInitialMotionX:F

    iput v0, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mLastMotionX:F

    .line 1857
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mInitialMotionY:F

    iput v0, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mLastMotionY:F

    .line 1858
    invoke-static {p1, v1}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result p1

    iput p1, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mActivePointerId:I

    :cond_e
    :goto_3
    if-eqz v1, :cond_f

    .line 1943
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_f
    return v4

    :cond_10
    :goto_4
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method final populate()V
    .locals 1

    .line 811
    iget v0, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mCurItem:I

    invoke-direct {p0, v0}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->populate(I)V

    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1

    .line 1216
    iget-boolean v0, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mInLayout:Z

    if-eqz v0, :cond_0

    .line 1217
    invoke-virtual {p0, p1}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->removeViewInLayout(Landroid/view/View;)V

    return-void

    .line 1219
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public final setAdapter(Landroid/support/v4/view/PagerAdapter;)V
    .locals 6

    .line 300
    iget-object v0, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 301
    iget-object v0, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget-object v3, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mObserver:Lfr/castorflex/android/verticalviewpager/VerticalViewPager$PagerObserver;

    invoke-virtual {v0, v3}, Landroid/support/v4/view/PagerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 302
    iget-object v0, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    move v0, v2

    .line 303
    :goto_0
    iget-object v3, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 304
    iget-object v3, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ItemInfo;

    .line 305
    iget-object v4, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget v5, v3, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ItemInfo;->position:I

    iget-object v3, v3, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v4, p0, v5, v3}, Landroid/support/v4/view/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 307
    :cond_0
    iget-object v0, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 308
    iget-object v0, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    move v0, v2

    .line 3346
    :goto_1
    invoke-virtual {p0}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 3347
    invoke-virtual {p0, v0}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 3348
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$LayoutParams;

    .line 3349
    iget-boolean v3, v3, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$LayoutParams;->isDecor:Z

    if-nez v3, :cond_1

    .line 3350
    invoke-virtual {p0, v0}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->removeViewAt(I)V

    add-int/lit8 v0, v0, -0x1

    :cond_1
    add-int/2addr v0, v1

    goto :goto_1

    .line 310
    :cond_2
    iput v2, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mCurItem:I

    .line 311
    invoke-virtual {p0, v2, v2}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->scrollTo(II)V

    .line 315
    :cond_3
    iput-object p1, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    .line 316
    iput v2, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mExpectedAdapterCount:I

    .line 318
    iget-object p1, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz p1, :cond_7

    .line 319
    iget-object p1, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mObserver:Lfr/castorflex/android/verticalviewpager/VerticalViewPager$PagerObserver;

    if-nez p1, :cond_4

    .line 320
    new-instance p1, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$PagerObserver;

    invoke-direct {p1, p0, v2}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager$PagerObserver;-><init>(Lfr/castorflex/android/verticalviewpager/VerticalViewPager;B)V

    iput-object p1, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mObserver:Lfr/castorflex/android/verticalviewpager/VerticalViewPager$PagerObserver;

    .line 322
    :cond_4
    iget-object p1, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget-object v0, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mObserver:Lfr/castorflex/android/verticalviewpager/VerticalViewPager$PagerObserver;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/PagerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 323
    iput-boolean v2, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mPopulatePending:Z

    .line 324
    iget-boolean p1, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mFirstLayout:Z

    .line 325
    iput-boolean v1, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mFirstLayout:Z

    .line 326
    iget-object v0, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    iput v0, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mExpectedAdapterCount:I

    .line 327
    iget v0, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mRestoredCurItem:I

    if-ltz v0, :cond_5

    .line 328
    iget-object p1, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget-object v0, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    iget-object v3, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {p1, v0, v3}, Landroid/support/v4/view/PagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 329
    iget p1, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mRestoredCurItem:I

    .line 3406
    invoke-direct {p0, p1, v2, v1, v2}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->setCurrentItemInternal(IZZI)V

    const/4 p1, -0x1

    .line 330
    iput p1, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mRestoredCurItem:I

    const/4 p1, 0x0

    .line 331
    iput-object p1, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 332
    iput-object p1, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    return-void

    :cond_5
    if-nez p1, :cond_6

    .line 3811
    iget p1, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mCurItem:I

    invoke-direct {p0, p1}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->populate(I)V

    return-void

    .line 336
    :cond_6
    invoke-virtual {p0}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->requestLayout()V

    :cond_7
    return-void
.end method

.method public final setCurrentItem(I)V
    .locals 2

    const/4 v0, 0x0

    .line 386
    iput-boolean v0, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mPopulatePending:Z

    .line 387
    iget-boolean v1, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mFirstLayout:Z

    xor-int/lit8 v1, v1, 0x1

    .line 4406
    invoke-direct {p0, p1, v1, v0, v0}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->setCurrentItemInternal(IZZI)V

    return-void
.end method

.method public final setCurrentItem(IZ)V
    .locals 1

    const/4 v0, 0x0

    .line 397
    iput-boolean v0, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mPopulatePending:Z

    .line 5406
    invoke-direct {p0, p1, p2, v0, v0}, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->setCurrentItemInternal(IZZI)V

    return-void
.end method

.method public final setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .locals 0

    .line 489
    iput-object p1, p0, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 646
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
