.class public final Lru/rocketbank/r2d2/root/feed/viewholder/TaxGibddViewHolder;
.super Lru/rocketbank/r2d2/root/feed/viewholder/PushViewHolder;
.source "TaxGibddViewHolder.kt"


# direct methods
.method public constructor <init>(Ljp/wasabeef/glide/transformations/CropCircleTransformation;Lru/rocketbank/r2d2/root/feed/FeedAdapter;Lru/rocketbank/r2d2/databinding/FeedItemPushBinding;)V
    .locals 1

    const-string v0, "cropCircleTransformation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "feedAdapter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pushBinding"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0, p1, p2, p3}, Lru/rocketbank/r2d2/root/feed/viewholder/PushViewHolder;-><init>(Ljp/wasabeef/glide/transformations/CropCircleTransformation;Lru/rocketbank/r2d2/root/feed/FeedAdapter;Lru/rocketbank/r2d2/databinding/FeedItemPushBinding;)V

    return-void
.end method
