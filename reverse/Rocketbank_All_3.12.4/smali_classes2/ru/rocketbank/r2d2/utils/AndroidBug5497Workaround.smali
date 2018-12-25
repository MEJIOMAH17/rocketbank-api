.class public Lru/rocketbank/r2d2/utils/AndroidBug5497Workaround;
.super Ljava/lang/Object;
.source "AndroidBug5497Workaround.java"


# instance fields
.field private final content:Landroid/widget/FrameLayout;

.field private usableHeightPrevious:I


# direct methods
.method private constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x1020002

    .line 25
    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lru/rocketbank/r2d2/utils/AndroidBug5497Workaround;->content:Landroid/widget/FrameLayout;

    .line 26
    iget-object p1, p0, Lru/rocketbank/r2d2/utils/AndroidBug5497Workaround;->content:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v0, Lru/rocketbank/r2d2/utils/AndroidBug5497Workaround$1;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/utils/AndroidBug5497Workaround$1;-><init>(Lru/rocketbank/r2d2/utils/AndroidBug5497Workaround;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method static synthetic access$000(Lru/rocketbank/r2d2/utils/AndroidBug5497Workaround;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Lru/rocketbank/r2d2/utils/AndroidBug5497Workaround;->possiblyResizeChildOfContent()V

    return-void
.end method

.method public static assistActivity(Landroid/app/Activity;)V
    .locals 2

    .line 17
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    .line 18
    new-instance v0, Lru/rocketbank/r2d2/utils/AndroidBug5497Workaround;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/utils/AndroidBug5497Workaround;-><init>(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method private computeUsableHeight(Landroid/view/View;)I
    .locals 1

    .line 53
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 54
    invoke-virtual {p1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 55
    iget p1, v0, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, v0

    return p1
.end method

.method private possiblyResizeChildOfContent()V
    .locals 6

    .line 34
    iget-object v0, p0, Lru/rocketbank/r2d2/utils/AndroidBug5497Workaround;->content:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 35
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 36
    invoke-direct {p0, v0}, Lru/rocketbank/r2d2/utils/AndroidBug5497Workaround;->computeUsableHeight(Landroid/view/View;)I

    move-result v2

    .line 37
    iget v3, p0, Lru/rocketbank/r2d2/utils/AndroidBug5497Workaround;->usableHeightPrevious:I

    if-eq v2, v3, :cond_1

    .line 38
    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 39
    iget v4, p0, Lru/rocketbank/r2d2/utils/AndroidBug5497Workaround;->usableHeightPrevious:I

    sub-int/2addr v4, v2

    .line 40
    div-int/lit8 v5, v3, 0x4

    if-le v4, v5, :cond_0

    sub-int/2addr v3, v4

    .line 42
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_0

    .line 45
    :cond_0
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 47
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 48
    iput v2, p0, Lru/rocketbank/r2d2/utils/AndroidBug5497Workaround;->usableHeightPrevious:I

    :cond_1
    return-void
.end method
