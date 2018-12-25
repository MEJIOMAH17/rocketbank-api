.class public final Lru/rocketbank/r2d2/root/feed/viewholder/HeaderViewHolder;
.super Lru/rocketbank/r2d2/root/feed/viewholder/FeedViewHolder;
.source "HeaderViewHolder.kt"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private final binding:Lru/rocketbank/r2d2/databinding/ListItemCardHeaderBinding;

.field private fragmentFeedBinding:Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;


# direct methods
.method public constructor <init>(Lru/rocketbank/r2d2/root/feed/FeedModel;Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;Landroid/view/View;)V
    .locals 1

    const-string v0, "feedModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fragmentFeedBinding"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemView"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0, p3}, Lru/rocketbank/r2d2/root/feed/viewholder/FeedViewHolder;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lru/rocketbank/r2d2/root/feed/viewholder/HeaderViewHolder;->fragmentFeedBinding:Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;

    .line 13
    invoke-static {p3}, Lru/rocketbank/r2d2/databinding/ListItemCardHeaderBinding;->bind(Landroid/view/View;)Lru/rocketbank/r2d2/databinding/ListItemCardHeaderBinding;

    move-result-object p2

    const-string v0, "ListItemCardHeaderBinding.bind(itemView)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lru/rocketbank/r2d2/root/feed/viewholder/HeaderViewHolder;->binding:Lru/rocketbank/r2d2/databinding/ListItemCardHeaderBinding;

    .line 16
    iget-object p2, p0, Lru/rocketbank/r2d2/root/feed/viewholder/HeaderViewHolder;->binding:Lru/rocketbank/r2d2/databinding/ListItemCardHeaderBinding;

    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/viewholder/HeaderViewHolder;->fragmentFeedBinding:Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;->getFeed()Lru/rocketbank/r2d2/root/feed/FeedModel;

    move-result-object v0

    invoke-virtual {p2, v0}, Lru/rocketbank/r2d2/databinding/ListItemCardHeaderBinding;->setData(Lru/rocketbank/r2d2/root/feed/FeedModel;)V

    .line 18
    move-object p2, p0

    check-cast p2, Landroid/view/View$OnTouchListener;

    invoke-virtual {p3, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 19
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    .line 20
    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/feed/FeedModel;->getHeaderHeight()I

    move-result p1

    iput p1, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 21
    invoke-virtual {p3}, Landroid/view/View;->requestLayout()V

    return-void
.end method


# virtual methods
.method public final getBinding()Lru/rocketbank/r2d2/databinding/ListItemCardHeaderBinding;
    .locals 1

    .line 13
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/viewholder/HeaderViewHolder;->binding:Lru/rocketbank/r2d2/databinding/ListItemCardHeaderBinding;

    return-object v0
.end method

.method public final onBind(Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;)V
    .locals 1

    const-string v0, "fragmentFeedBinding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    iput-object p1, p0, Lru/rocketbank/r2d2/root/feed/viewholder/HeaderViewHolder;->fragmentFeedBinding:Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;

    .line 27
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/viewholder/HeaderViewHolder;->binding:Lru/rocketbank/r2d2/databinding/ListItemCardHeaderBinding;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;->getFeed()Lru/rocketbank/r2d2/root/feed/FeedModel;

    move-result-object p1

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/databinding/ListItemCardHeaderBinding;->setData(Lru/rocketbank/r2d2/root/feed/FeedModel;)V

    return-void
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "event"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    iget-object p1, p0, Lru/rocketbank/r2d2/root/feed/viewholder/HeaderViewHolder;->fragmentFeedBinding:Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;

    iget-object p1, p1, Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;->header:Landroid/widget/FrameLayout;

    .line 33
    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p2

    .line 34
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    return p2
.end method
