.class public final Lru/rocketbank/r2d2/widgets/recycler/parallax/HeaderViewHolder;
.super Lru/rocketbank/r2d2/widgets/recycler/parallax/GenericViewHolder;
.source "HeaderViewHolder.kt"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHeaderViewHolder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HeaderViewHolder.kt\nru/rocketbank/r2d2/widgets/recycler/parallax/HeaderViewHolder\n*L\n1#1,30:1\n*E\n"
.end annotation


# instance fields
.field private final binding:Lru/rocketbank/r2d2/databinding/ParallaxHeaderBinding;

.field private final headerHeight:I

.field private targetLayout:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/View;ILru/rocketbank/r2d2/databinding/ParallaxHeaderBinding;)V
    .locals 1

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "targetLayout"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "binding"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/widgets/recycler/parallax/GenericViewHolder;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/HeaderViewHolder;->targetLayout:Landroid/view/View;

    iput p3, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/HeaderViewHolder;->headerHeight:I

    iput-object p4, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/HeaderViewHolder;->binding:Lru/rocketbank/r2d2/databinding/ParallaxHeaderBinding;

    .line 18
    move-object p2, p0

    check-cast p2, Landroid/view/View$OnTouchListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const p2, 0x7f090361

    .line 20
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 21
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iget p3, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/HeaderViewHolder;->headerHeight:I

    iput p3, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 22
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final getBinding()Lru/rocketbank/r2d2/databinding/ParallaxHeaderBinding;
    .locals 1

    .line 11
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/HeaderViewHolder;->binding:Lru/rocketbank/r2d2/databinding/ParallaxHeaderBinding;

    return-object v0
.end method

.method public final getHeaderHeight()I
    .locals 1

    .line 10
    iget v0, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/HeaderViewHolder;->headerHeight:I

    return v0
.end method

.method public final getTargetLayout()Landroid/view/View;
    .locals 1

    .line 9
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/HeaderViewHolder;->targetLayout:Landroid/view/View;

    return-object v0
.end method

.method public final onBind(Landroid/view/View;)V
    .locals 1

    const-string v0, "targetLayout"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    iput-object p1, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/HeaderViewHolder;->targetLayout:Landroid/view/View;

    return-void
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 14
    iget-object p1, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/HeaderViewHolder;->targetLayout:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public final setTargetLayout(Landroid/view/View;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iput-object p1, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/HeaderViewHolder;->targetLayout:Landroid/view/View;

    return-void
.end method
