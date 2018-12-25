.class public final Lru/rocketbank/r2d2/root/feed/viewholder/HeaderStubViewHolder;
.super Lru/rocketbank/r2d2/root/feed/viewholder/FeedViewHolder;
.source "HeaderStubViewHolder.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHeaderStubViewHolder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HeaderStubViewHolder.kt\nru/rocketbank/r2d2/root/feed/viewholder/HeaderStubViewHolder\n*L\n1#1,17:1\n*E\n"
.end annotation


# direct methods
.method public constructor <init>(Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;Lru/rocketbank/r2d2/root/feed/FeedModel;Landroid/view/View;)V
    .locals 2

    const-string v0, "fragmentFeedBinding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "feedModel"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemView"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0, p3}, Lru/rocketbank/r2d2/root/feed/viewholder/FeedViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0901af

    .line 10
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    .line 11
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 12
    iget-object p1, p1, Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;->realToolbar:Landroid/support/v7/widget/Toolbar;

    const-string v1, "fragmentFeedBinding.realToolbar"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->getHeight()I

    move-result p1

    invoke-virtual {p2}, Lru/rocketbank/r2d2/root/feed/FeedModel;->getAppBarHeight()I

    move-result p2

    add-int/2addr p1, p2

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 13
    invoke-virtual {p3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
