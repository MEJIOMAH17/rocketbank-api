.class public Lru/rocketbank/r2d2/activities/ParallaxActivity;
.super Lru/rocketbank/r2d2/activities/SecuredActivity;
.source "ParallaxActivity.kt"


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private headerHeight:I

.field private headerLayout:Landroid/view/View;

.field private observableRecyclerView:Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;

.field private parallaxAdapter:Lru/rocketbank/r2d2/adapters/ParallaxAdapter;

.field private parallaxData:Lru/rocketbank/r2d2/data/binding/parallax/ParallaxData;

.field private parallaxListener:Lru/rocketbank/r2d2/widgets/recycler/parallax/ObservableParallaxListener;

.field private parallaxSize:I

.field private toolbarHeight:I

.field private windowWidth:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lru/rocketbank/r2d2/activities/SecuredActivity;-><init>()V

    return-void
.end method

.method public static bridge synthetic createParallax$default(Lru/rocketbank/r2d2/activities/ParallaxActivity;Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;Lru/rocketbank/r2d2/data/binding/parallax/ParallaxData;Lru/rocketbank/r2d2/adapters/ParallaxAdapter;IILjava/lang/Object;)V
    .locals 0

    if-eqz p6, :cond_0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: createParallax"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_1

    const/4 p3, 0x0

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    const/4 p4, 0x0

    .line 40
    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lru/rocketbank/r2d2/activities/ParallaxActivity;->createParallax(Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;Lru/rocketbank/r2d2/data/binding/parallax/ParallaxData;Lru/rocketbank/r2d2/adapters/ParallaxAdapter;I)V

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/activities/ParallaxActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/activities/ParallaxActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lru/rocketbank/r2d2/activities/ParallaxActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/activities/ParallaxActivity;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/ParallaxActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/r2d2/activities/ParallaxActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final addFab(Landroid/support/design/widget/FloatingActionButton;)V
    .locals 4

    const-string v0, "fab"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/ParallaxActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700df

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 113
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/ParallaxActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700d6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 115
    iget-object v2, p0, Lru/rocketbank/r2d2/activities/ParallaxActivity;->parallaxListener:Lru/rocketbank/r2d2/widgets/recycler/parallax/ObservableParallaxListener;

    if-eqz v2, :cond_0

    iget v3, p0, Lru/rocketbank/r2d2/activities/ParallaxActivity;->windowWidth:I

    invoke-virtual {v2, v3, p1, v0, v1}, Lru/rocketbank/r2d2/widgets/recycler/parallax/ObservableParallaxListener;->addFab(ILandroid/support/design/widget/FloatingActionButton;II)V

    return-void

    :cond_0
    return-void
.end method

.method protected final createParallax(Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;Lru/rocketbank/r2d2/data/binding/parallax/ParallaxData;Lru/rocketbank/r2d2/adapters/ParallaxAdapter;I)V
    .locals 6

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parallaxData"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    iput-object p2, p0, Lru/rocketbank/r2d2/activities/ParallaxActivity;->parallaxData:Lru/rocketbank/r2d2/data/binding/parallax/ParallaxData;

    .line 42
    iput-object p1, p0, Lru/rocketbank/r2d2/activities/ParallaxActivity;->observableRecyclerView:Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;

    if-nez p4, :cond_0

    .line 45
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/ParallaxActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p4, 0x7f07015f

    invoke-virtual {p1, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    .line 44
    :cond_0
    iput p4, p0, Lru/rocketbank/r2d2/activities/ParallaxActivity;->parallaxSize:I

    .line 50
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/ParallaxActivity;->parallaxListener:Lru/rocketbank/r2d2/widgets/recycler/parallax/ObservableParallaxListener;

    if-nez p1, :cond_1

    .line 51
    new-instance p1, Lru/rocketbank/r2d2/widgets/recycler/parallax/ObservableParallaxListener;

    const/4 v1, 0x0

    .line 52
    iget v2, p0, Lru/rocketbank/r2d2/activities/ParallaxActivity;->headerHeight:I

    .line 53
    iget v3, p0, Lru/rocketbank/r2d2/activities/ParallaxActivity;->parallaxSize:I

    .line 55
    iget v5, p0, Lru/rocketbank/r2d2/activities/ParallaxActivity;->toolbarHeight:I

    move-object v0, p1

    move-object v4, p2

    .line 51
    invoke-direct/range {v0 .. v5}, Lru/rocketbank/r2d2/widgets/recycler/parallax/ObservableParallaxListener;-><init>(IIILru/rocketbank/r2d2/data/binding/parallax/ParallaxData;I)V

    iput-object p1, p0, Lru/rocketbank/r2d2/activities/ParallaxActivity;->parallaxListener:Lru/rocketbank/r2d2/widgets/recycler/parallax/ObservableParallaxListener;

    goto :goto_0

    .line 57
    :cond_1
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/ParallaxActivity;->parallaxListener:Lru/rocketbank/r2d2/widgets/recycler/parallax/ObservableParallaxListener;

    if-eqz p1, :cond_2

    invoke-virtual {p1, p2}, Lru/rocketbank/r2d2/widgets/recycler/parallax/ObservableParallaxListener;->update(Lru/rocketbank/r2d2/data/binding/parallax/ParallaxData;)V

    .line 60
    :cond_2
    :goto_0
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/ParallaxActivity;->observableRecyclerView:Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;

    if-nez p1, :cond_3

    const-string p4, "observableRecyclerView"

    invoke-static {p4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p1}, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object p1

    if-nez p1, :cond_5

    .line 61
    new-instance p1, Landroid/support/v7/widget/LinearLayoutManager;

    move-object p4, p0

    check-cast p4, Landroid/content/Context;

    invoke-direct {p1, p4}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 62
    iget-object p4, p0, Lru/rocketbank/r2d2/activities/ParallaxActivity;->observableRecyclerView:Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;

    if-nez p4, :cond_4

    const-string v0, "observableRecyclerView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    check-cast p1, Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {p4, p1}, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 65
    :cond_5
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/ParallaxActivity;->parallaxAdapter:Lru/rocketbank/r2d2/adapters/ParallaxAdapter;

    if-nez p1, :cond_6

    .line 66
    invoke-virtual {p0, p3}, Lru/rocketbank/r2d2/activities/ParallaxActivity;->newAdaperInstance(Lru/rocketbank/r2d2/adapters/ParallaxAdapter;)Lru/rocketbank/r2d2/adapters/ParallaxAdapter;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/activities/ParallaxActivity;->parallaxAdapter:Lru/rocketbank/r2d2/adapters/ParallaxAdapter;

    goto :goto_1

    .line 68
    :cond_6
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/ParallaxActivity;->parallaxAdapter:Lru/rocketbank/r2d2/adapters/ParallaxAdapter;

    if-eqz p1, :cond_8

    iget-object p3, p0, Lru/rocketbank/r2d2/activities/ParallaxActivity;->headerLayout:Landroid/view/View;

    if-nez p3, :cond_7

    const-string p4, "headerLayout"

    invoke-static {p4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_7
    invoke-virtual {p1, p3}, Lru/rocketbank/r2d2/adapters/ParallaxAdapter;->setAppBarLayout(Landroid/view/View;)V

    .line 69
    :cond_8
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/ParallaxActivity;->parallaxAdapter:Lru/rocketbank/r2d2/adapters/ParallaxAdapter;

    if-eqz p1, :cond_9

    invoke-virtual {p1, p2}, Lru/rocketbank/r2d2/adapters/ParallaxAdapter;->setParallaxData(Lru/rocketbank/r2d2/data/binding/parallax/ParallaxData;)V

    .line 72
    :cond_9
    :goto_1
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/ParallaxActivity;->observableRecyclerView:Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;

    if-nez p1, :cond_a

    const-string p2, "observableRecyclerView"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_a
    iget-object p2, p0, Lru/rocketbank/r2d2/activities/ParallaxActivity;->parallaxAdapter:Lru/rocketbank/r2d2/adapters/ParallaxAdapter;

    check-cast p2, Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {p1, p2}, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    const-string p1, "window"

    .line 74
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/activities/ParallaxActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_b

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.view.WindowManager"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    check-cast p1, Landroid/view/WindowManager;

    .line 75
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    .line 77
    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2}, Landroid/graphics/Point;-><init>()V

    .line 78
    invoke-virtual {p1, p2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 79
    iget p1, p2, Landroid/graphics/Point;->x:I

    iput p1, p0, Lru/rocketbank/r2d2/activities/ParallaxActivity;->windowWidth:I

    return-void
.end method

.method public final getHeaderHeight()I
    .locals 1

    .line 26
    iget v0, p0, Lru/rocketbank/r2d2/activities/ParallaxActivity;->headerHeight:I

    return v0
.end method

.method public final getParallaxAdapter()Lru/rocketbank/r2d2/adapters/ParallaxAdapter;
    .locals 1

    .line 22
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/ParallaxActivity;->parallaxAdapter:Lru/rocketbank/r2d2/adapters/ParallaxAdapter;

    return-object v0
.end method

.method public final getParallaxSize()I
    .locals 1

    .line 28
    iget v0, p0, Lru/rocketbank/r2d2/activities/ParallaxActivity;->parallaxSize:I

    return v0
.end method

.method public final getToolbarHeight()I
    .locals 1

    .line 27
    iget v0, p0, Lru/rocketbank/r2d2/activities/ParallaxActivity;->toolbarHeight:I

    return v0
.end method

.method public newAdaperInstance(Lru/rocketbank/r2d2/adapters/ParallaxAdapter;)Lru/rocketbank/r2d2/adapters/ParallaxAdapter;
    .locals 4

    if-nez p1, :cond_2

    .line 83
    new-instance p1, Lru/rocketbank/r2d2/adapters/ParallaxAdapter;

    iget-object v0, p0, Lru/rocketbank/r2d2/activities/ParallaxActivity;->parallaxData:Lru/rocketbank/r2d2/data/binding/parallax/ParallaxData;

    if-nez v0, :cond_0

    const-string v1, "parallaxData"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 84
    :cond_0
    iget v1, p0, Lru/rocketbank/r2d2/activities/ParallaxActivity;->headerHeight:I

    .line 85
    iget-object v2, p0, Lru/rocketbank/r2d2/activities/ParallaxActivity;->headerLayout:Landroid/view/View;

    if-nez v2, :cond_1

    const-string v3, "headerLayout"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 83
    :cond_1
    invoke-direct {p1, v0, v2, v1}, Lru/rocketbank/r2d2/adapters/ParallaxAdapter;-><init>(Lru/rocketbank/r2d2/data/binding/parallax/ParallaxData;Landroid/view/View;I)V

    :cond_2
    return-object p1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 130
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/ParallaxActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const-string v1, "window"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const-string v1, "window.decorView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x500

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 132
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/activities/SecuredActivity;->onCreate(Landroid/os/Bundle;)V

    .line 134
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/ParallaxActivity;->parallaxListener:Lru/rocketbank/r2d2/widgets/recycler/parallax/ObservableParallaxListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/widgets/recycler/parallax/ObservableParallaxListener;->onRestore(Landroid/os/Bundle;)V

    return-void

    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 146
    invoke-super {p0}, Lru/rocketbank/r2d2/activities/SecuredActivity;->onPause()V

    .line 148
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/ParallaxActivity;->observableRecyclerView:Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;

    if-nez v0, :cond_0

    const-string v1, "observableRecyclerView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->setScrollViewCallbacks(Lcom/github/ksoichiro/android/observablescrollview/ObservableScrollViewCallbacks;)V

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 138
    invoke-super {p0}, Lru/rocketbank/r2d2/activities/SecuredActivity;->onResume()V

    .line 140
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/ParallaxActivity;->observableRecyclerView:Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;

    if-nez v0, :cond_0

    const-string v1, "observableRecyclerView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lru/rocketbank/r2d2/activities/ParallaxActivity;->parallaxListener:Lru/rocketbank/r2d2/widgets/recycler/parallax/ObservableParallaxListener;

    check-cast v1, Lcom/github/ksoichiro/android/observablescrollview/ObservableScrollViewCallbacks;

    invoke-virtual {v0, v1}, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->setScrollViewCallbacks(Lcom/github/ksoichiro/android/observablescrollview/ObservableScrollViewCallbacks;)V

    .line 142
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/ParallaxActivity;->parallaxAdapter:Lru/rocketbank/r2d2/adapters/ParallaxAdapter;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/adapters/ParallaxAdapter;->notifyItemChanged(I)V

    return-void

    :cond_1
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "outState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/activities/SecuredActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 126
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/ParallaxActivity;->parallaxListener:Lru/rocketbank/r2d2/widgets/recycler/parallax/ObservableParallaxListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/widgets/recycler/parallax/ObservableParallaxListener;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void

    :cond_0
    return-void
.end method

.method protected final parallaxHeightToView(Landroid/view/View;)V
    .locals 2

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lru/rocketbank/r2d2/activities/ParallaxActivity;->headerHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 120
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public final scrollToTop(I)V
    .locals 2

    .line 33
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/ParallaxActivity;->observableRecyclerView:Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;

    if-nez v0, :cond_0

    const-string v1, "observableRecyclerView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.support.v7.widget.LinearLayoutManager"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    check-cast v0, Landroid/support/v7/widget/LinearLayoutManager;

    .line 34
    iget v1, p0, Lru/rocketbank/r2d2/activities/ParallaxActivity;->toolbarHeight:I

    invoke-virtual {v0, p1, v1}, Landroid/support/v7/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    return-void
.end method

.method public final setHeaderHeight(I)V
    .locals 0

    .line 26
    iput p1, p0, Lru/rocketbank/r2d2/activities/ParallaxActivity;->headerHeight:I

    return-void
.end method

.method public final setParallaxAdapter(Lru/rocketbank/r2d2/adapters/ParallaxAdapter;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lru/rocketbank/r2d2/activities/ParallaxActivity;->parallaxAdapter:Lru/rocketbank/r2d2/adapters/ParallaxAdapter;

    return-void
.end method

.method public final setParallaxSize(I)V
    .locals 0

    .line 28
    iput p1, p0, Lru/rocketbank/r2d2/activities/ParallaxActivity;->parallaxSize:I

    return-void
.end method

.method public final setToolbarHeight(I)V
    .locals 0

    .line 27
    iput p1, p0, Lru/rocketbank/r2d2/activities/ParallaxActivity;->toolbarHeight:I

    return-void
.end method

.method protected final setupView(Landroid/support/v7/widget/Toolbar;Landroid/support/v7/widget/Toolbar;Landroid/view/View;)V
    .locals 4

    const-string v0, "toolbar"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "realToolbar"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "headerLayout"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/ParallaxActivity;->getStatusBarHeight()I

    move-result v0

    .line 90
    invoke-virtual {p0, p1, v0}, Lru/rocketbank/r2d2/activities/ParallaxActivity;->setToolbarSize(Landroid/support/v7/widget/Toolbar;I)V

    .line 91
    invoke-virtual {p0, p2, v0}, Lru/rocketbank/r2d2/activities/ParallaxActivity;->setToolbarSize(Landroid/support/v7/widget/Toolbar;I)V

    .line 93
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.support.design.widget.CoordinatorLayout.LayoutParams"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    check-cast v1, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 94
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/ParallaxActivity;->getStatusBarHeight()I

    move-result v2

    neg-int v2, v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2, v3, v3}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->setMargins(IIII)V

    .line 95
    check-cast v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 96
    invoke-virtual {p3}, Landroid/view/View;->requestLayout()V

    .line 98
    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 99
    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    neg-int v1, p1

    int-to-float v1, v1

    .line 100
    invoke-virtual {p2, v1}, Landroid/support/v7/widget/Toolbar;->setTranslationY(F)V

    .line 102
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    .line 103
    iget v1, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    add-int/2addr v1, v0

    iput v1, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 104
    invoke-virtual {p3}, Landroid/view/View;->requestLayout()V

    .line 106
    iput p1, p0, Lru/rocketbank/r2d2/activities/ParallaxActivity;->toolbarHeight:I

    .line 107
    iget p1, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput p1, p0, Lru/rocketbank/r2d2/activities/ParallaxActivity;->headerHeight:I

    .line 108
    iput-object p3, p0, Lru/rocketbank/r2d2/activities/ParallaxActivity;->headerLayout:Landroid/view/View;

    return-void
.end method
