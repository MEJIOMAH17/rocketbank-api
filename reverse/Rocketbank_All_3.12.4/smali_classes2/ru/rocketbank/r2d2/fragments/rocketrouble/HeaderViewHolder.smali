.class public final Lru/rocketbank/r2d2/fragments/rocketrouble/HeaderViewHolder;
.super Lru/rocketbank/r2d2/fragments/rocketrouble/RocketViewHolder;
.source "HeaderViewHolder.kt"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHeaderViewHolder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HeaderViewHolder.kt\nru/rocketbank/r2d2/fragments/rocketrouble/HeaderViewHolder\n*L\n1#1,20:1\n*E\n"
.end annotation


# instance fields
.field private final rocketRoubleModel:Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleModel;


# direct methods
.method public constructor <init>(Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleModel;Landroid/view/View;)V
    .locals 1

    const-string v0, "rocketRoubleModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0, p2}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketViewHolder;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/HeaderViewHolder;->rocketRoubleModel:Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleModel;

    .line 10
    move-object p1, p0

    check-cast p1, Landroid/view/View$OnTouchListener;

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const p1, 0x7f090361

    .line 11
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 12
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/HeaderViewHolder;->rocketRoubleModel:Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleModel;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleModel;->getHeaderHeight()I

    move-result v0

    iput v0, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 13
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "event"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/HeaderViewHolder;->rocketRoubleModel:Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleModel;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleModel;->getAppBarLayout()Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
