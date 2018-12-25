.class public final Lru/rocketbank/r2d2/widgets/recycler/parallax/ObservableParallaxListener;
.super Ljava/lang/Object;
.source "ObservableParallaxListener.kt"

# interfaces
.implements Lcom/github/ksoichiro/android/observablescrollview/ObservableScrollViewCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/widgets/recycler/parallax/ObservableParallaxListener$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lru/rocketbank/r2d2/widgets/recycler/parallax/ObservableParallaxListener$Companion;

.field private static final SAVE:Ljava/lang/String; = "PLX_O_SCROLL"

.field private static final TAG:Ljava/lang/String; = "ObParallax"


# instance fields
.field private fabMargin:I

.field private flexibleSpaceImageHeight:I

.field private flexibleSpaceShowFabOffset:I

.field private floatingActionButton:Landroid/support/design/widget/FloatingActionButton;

.field private floatingActionButtonPaddingTop:I

.field private floatingButtonHeight:I

.field private floatingButtonPaddingRight:I

.field private floatingButtonWidth:I

.field private headerHeight:I

.field private parallaxData:Lru/rocketbank/r2d2/data/binding/parallax/ParallaxData;

.field private final parallaxSize:I

.field private scrollPosition:I

.field private final toolbarSize:I

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/r2d2/widgets/recycler/parallax/ObservableParallaxListener$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/widgets/recycler/parallax/ObservableParallaxListener$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/r2d2/widgets/recycler/parallax/ObservableParallaxListener;->Companion:Lru/rocketbank/r2d2/widgets/recycler/parallax/ObservableParallaxListener$Companion;

    return-void
.end method

.method public constructor <init>(IIILru/rocketbank/r2d2/data/binding/parallax/ParallaxData;I)V
    .locals 1

    const-string v0, "parallaxData"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/ObservableParallaxListener;->scrollPosition:I

    iput p2, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/ObservableParallaxListener;->headerHeight:I

    iput p3, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/ObservableParallaxListener;->parallaxSize:I

    iput-object p4, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/ObservableParallaxListener;->parallaxData:Lru/rocketbank/r2d2/data/binding/parallax/ParallaxData;

    iput p5, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/ObservableParallaxListener;->toolbarSize:I

    return-void
.end method

.method public synthetic constructor <init>(IIILru/rocketbank/r2d2/data/binding/parallax/ParallaxData;IILkotlin/jvm/internal/Ref;)V
    .locals 6

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_0

    const/4 p5, 0x0

    :cond_0
    move v5, p5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    .line 13
    invoke-direct/range {v0 .. v5}, Lru/rocketbank/r2d2/widgets/recycler/parallax/ObservableParallaxListener;-><init>(IIILru/rocketbank/r2d2/data/binding/parallax/ParallaxData;I)V

    return-void
.end method

.method public static final synthetic access$getSAVE$cp()Ljava/lang/String;
    .locals 1

    .line 9
    sget-object v0, Lru/rocketbank/r2d2/widgets/recycler/parallax/ObservableParallaxListener;->SAVE:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    .line 9
    sget-object v0, Lru/rocketbank/r2d2/widgets/recycler/parallax/ObservableParallaxListener;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private final moveFloatingButton(I)V
    .locals 2

    .line 104
    iget v0, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/ObservableParallaxListener;->headerHeight:I

    iget v1, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/ObservableParallaxListener;->floatingButtonHeight:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iget v1, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/ObservableParallaxListener;->floatingActionButtonPaddingTop:I

    sub-int/2addr v0, v1

    .line 105
    iget v1, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/ObservableParallaxListener;->headerHeight:I

    sub-int/2addr v1, p1

    iget p1, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/ObservableParallaxListener;->floatingButtonHeight:I

    div-int/lit8 p1, p1, 0x2

    sub-int/2addr v1, p1

    iget p1, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/ObservableParallaxListener;->floatingActionButtonPaddingTop:I

    sub-int/2addr v1, p1

    int-to-float p1, v1

    int-to-float v0, v0

    const/4 v1, 0x0

    .line 107
    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 108
    iget v0, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/ObservableParallaxListener;->width:I

    iget v1, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/ObservableParallaxListener;->fabMargin:I

    sub-int/2addr v0, v1

    iget v1, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/ObservableParallaxListener;->floatingButtonWidth:I

    sub-int/2addr v0, v1

    iget v1, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/ObservableParallaxListener;->floatingButtonPaddingRight:I

    sub-int/2addr v0, v1

    .line 110
    iget-object v1, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/ObservableParallaxListener;->floatingActionButton:Landroid/support/design/widget/FloatingActionButton;

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/support/design/widget/FloatingActionButton;->setTranslationX(F)V

    .line 111
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/ObservableParallaxListener;->floatingActionButton:Landroid/support/design/widget/FloatingActionButton;

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {v0, p1}, Landroid/support/design/widget/FloatingActionButton;->setTranslationY(F)V

    .line 115
    iget v0, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/ObservableParallaxListener;->flexibleSpaceShowFabOffset:I

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_3

    .line 116
    iget-object p1, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/ObservableParallaxListener;->floatingActionButton:Landroid/support/design/widget/FloatingActionButton;

    if-nez p1, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    invoke-virtual {p1}, Landroid/support/design/widget/FloatingActionButton;->hide()V

    return-void

    .line 119
    :cond_3
    iget-object p1, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/ObservableParallaxListener;->floatingActionButton:Landroid/support/design/widget/FloatingActionButton;

    if-nez p1, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4
    invoke-virtual {p1}, Landroid/support/design/widget/FloatingActionButton;->show()V

    return-void
.end method

.method private final updateToolbarPosition(I)V
    .locals 2

    .line 76
    iget v0, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/ObservableParallaxListener;->toolbarSize:I

    sub-int p1, v0, p1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 81
    :cond_0
    iget v1, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/ObservableParallaxListener;->toolbarSize:I

    int-to-float v1, v1

    if-lt v0, p1, :cond_1

    int-to-float v1, p1

    .line 86
    :cond_1
    iget-object p1, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/ObservableParallaxListener;->parallaxData:Lru/rocketbank/r2d2/data/binding/parallax/ParallaxData;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/data/binding/parallax/ParallaxData;->getToolbarTranslation()Landroid/databinding/ObservableInt;

    move-result-object p1

    float-to-int v0, v1

    neg-int v0, v0

    invoke-virtual {p1, v0}, Landroid/databinding/ObservableInt;->set(I)V

    return-void
.end method


# virtual methods
.method public final addFab(ILandroid/support/design/widget/FloatingActionButton;II)V
    .locals 1

    const-string v0, "floatingActionButton"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    iput p1, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/ObservableParallaxListener;->width:I

    .line 92
    iput p4, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/ObservableParallaxListener;->fabMargin:I

    .line 93
    iput p3, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/ObservableParallaxListener;->flexibleSpaceShowFabOffset:I

    .line 94
    iget p1, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/ObservableParallaxListener;->flexibleSpaceImageHeight:I

    iput p1, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/ObservableParallaxListener;->flexibleSpaceImageHeight:I

    .line 95
    iput-object p2, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/ObservableParallaxListener;->floatingActionButton:Landroid/support/design/widget/FloatingActionButton;

    .line 96
    invoke-virtual {p2}, Landroid/support/design/widget/FloatingActionButton;->getPaddingTop()I

    move-result p1

    iput p1, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/ObservableParallaxListener;->floatingActionButtonPaddingTop:I

    .line 97
    invoke-virtual {p2}, Landroid/support/design/widget/FloatingActionButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput p1, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/ObservableParallaxListener;->floatingButtonHeight:I

    .line 98
    invoke-virtual {p2}, Landroid/support/design/widget/FloatingActionButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput p1, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/ObservableParallaxListener;->floatingButtonWidth:I

    .line 99
    invoke-virtual {p2}, Landroid/support/design/widget/FloatingActionButton;->getPaddingRight()I

    move-result p1

    iput p1, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/ObservableParallaxListener;->floatingButtonPaddingRight:I

    return-void
.end method

.method public final getHeaderHeight()I
    .locals 1

    .line 10
    iget v0, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/ObservableParallaxListener;->headerHeight:I

    return v0
.end method

.method public final getParallaxData()Lru/rocketbank/r2d2/data/binding/parallax/ParallaxData;
    .locals 1

    .line 12
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/ObservableParallaxListener;->parallaxData:Lru/rocketbank/r2d2/data/binding/parallax/ParallaxData;

    return-object v0
.end method

.method public final getParallaxSize()I
    .locals 1

    .line 11
    iget v0, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/ObservableParallaxListener;->parallaxSize:I

    return v0
.end method

.method public final getScrollPosition()I
    .locals 1

    .line 9
    iget v0, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/ObservableParallaxListener;->scrollPosition:I

    return v0
.end method

.method public final getToolbarSize()I
    .locals 1

    .line 13
    iget v0, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/ObservableParallaxListener;->toolbarSize:I

    return v0
.end method

.method public final onDownMotionEvent()V
    .locals 0

    return-void
.end method

.method public final onRestore(Landroid/os/Bundle;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 125
    sget-object v0, Lru/rocketbank/r2d2/widgets/recycler/parallax/ObservableParallaxListener;->SAVE:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/ObservableParallaxListener;->scrollPosition:I

    :cond_0
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 130
    sget-object v0, Lru/rocketbank/r2d2/widgets/recycler/parallax/ObservableParallaxListener;->SAVE:Ljava/lang/String;

    iget v1, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/ObservableParallaxListener;->scrollPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void

    :cond_0
    return-void
.end method

.method public final onScroll(I)V
    .locals 4

    int-to-double v0, p1

    const-wide v2, 0x3fe3333333333333L    # 0.6

    mul-double/2addr v0, v2

    double-to-int v0, v0

    .line 45
    iget v1, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/ObservableParallaxListener;->parallaxSize:I

    if-le v0, v1, :cond_0

    .line 46
    iget v0, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/ObservableParallaxListener;->parallaxSize:I

    .line 49
    :cond_0
    iget v1, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/ObservableParallaxListener;->parallaxSize:I

    div-int/lit8 v1, v1, 0x64

    int-to-float v1, v1

    int-to-float v2, v0

    div-float/2addr v2, v1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v2, v1

    const/high16 v1, 0x43000000    # 128.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    shl-int/lit8 v1, v1, 0x18

    .line 54
    iget-object v2, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/ObservableParallaxListener;->parallaxData:Lru/rocketbank/r2d2/data/binding/parallax/ParallaxData;

    invoke-virtual {v2}, Lru/rocketbank/r2d2/data/binding/parallax/ParallaxData;->getColor()Landroid/databinding/ObservableInt;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/databinding/ObservableInt;->set(I)V

    .line 58
    iget-object v1, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/ObservableParallaxListener;->parallaxData:Lru/rocketbank/r2d2/data/binding/parallax/ParallaxData;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/data/binding/parallax/ParallaxData;->getParallaxTranslation()Landroid/databinding/ObservableInt;

    move-result-object v1

    neg-int v0, v0

    invoke-virtual {v1, v0}, Landroid/databinding/ObservableInt;->set(I)V

    .line 60
    iget v0, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/ObservableParallaxListener;->headerHeight:I

    sub-int/2addr v0, p1

    if-gez v0, :cond_1

    const/4 v0, 0x0

    .line 65
    :cond_1
    iget-object v1, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/ObservableParallaxListener;->parallaxData:Lru/rocketbank/r2d2/data/binding/parallax/ParallaxData;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/data/binding/parallax/ParallaxData;->getOverlayTranslation()Landroid/databinding/ObservableInt;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/databinding/ObservableInt;->set(I)V

    .line 68
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/widgets/recycler/parallax/ObservableParallaxListener;->updateToolbarPosition(I)V

    .line 70
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/ObservableParallaxListener;->floatingActionButton:Landroid/support/design/widget/FloatingActionButton;

    if-eqz v0, :cond_2

    .line 71
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/widgets/recycler/parallax/ObservableParallaxListener;->moveFloatingButton(I)V

    :cond_2
    return-void
.end method

.method public final onScrollChanged(IZZ)V
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/widgets/recycler/parallax/ObservableParallaxListener;->onScroll(I)V

    return-void
.end method

.method public final onUpOrCancelMotionEvent(Lcom/github/ksoichiro/android/observablescrollview/ScrollState;)V
    .locals 0

    return-void
.end method

.method public final setHeaderHeight(I)V
    .locals 0

    .line 10
    iput p1, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/ObservableParallaxListener;->headerHeight:I

    return-void
.end method

.method public final setHeaderSize(I)V
    .locals 0

    .line 38
    iput p1, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/ObservableParallaxListener;->headerHeight:I

    .line 39
    iget p1, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/ObservableParallaxListener;->scrollPosition:I

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/widgets/recycler/parallax/ObservableParallaxListener;->onScroll(I)V

    return-void
.end method

.method public final setParallaxData(Lru/rocketbank/r2d2/data/binding/parallax/ParallaxData;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    iput-object p1, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/ObservableParallaxListener;->parallaxData:Lru/rocketbank/r2d2/data/binding/parallax/ParallaxData;

    return-void
.end method

.method public final setScrollPosition(I)V
    .locals 0

    .line 9
    iput p1, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/ObservableParallaxListener;->scrollPosition:I

    return-void
.end method

.method public final update(Lru/rocketbank/r2d2/data/binding/parallax/ParallaxData;)V
    .locals 1

    const-string v0, "parallaxData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    iput-object p1, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/ObservableParallaxListener;->parallaxData:Lru/rocketbank/r2d2/data/binding/parallax/ParallaxData;

    .line 140
    iget p1, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/ObservableParallaxListener;->scrollPosition:I

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/widgets/recycler/parallax/ObservableParallaxListener;->onScroll(I)V

    return-void
.end method
