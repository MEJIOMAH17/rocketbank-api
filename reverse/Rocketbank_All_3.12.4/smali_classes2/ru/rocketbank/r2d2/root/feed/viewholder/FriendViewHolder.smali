.class public final Lru/rocketbank/r2d2/root/feed/viewholder/FriendViewHolder;
.super Lru/rocketbank/r2d2/root/feed/viewholder/PushViewHolder;
.source "FriendViewHolder.kt"


# direct methods
.method public constructor <init>(Ljp/wasabeef/glide/transformations/CropCircleTransformation;Lru/rocketbank/r2d2/root/feed/FeedAdapter;Lru/rocketbank/r2d2/databinding/FeedItemPushBinding;)V
    .locals 1

    const-string v0, "cropCircleTransformation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "feedAdapter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pushBinding"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0, p1, p2, p3}, Lru/rocketbank/r2d2/root/feed/viewholder/PushViewHolder;-><init>(Ljp/wasabeef/glide/transformations/CropCircleTransformation;Lru/rocketbank/r2d2/root/feed/FeedAdapter;Lru/rocketbank/r2d2/databinding/FeedItemPushBinding;)V

    return-void
.end method


# virtual methods
.method public final setVisible(Z)V
    .locals 2

    .line 13
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/feed/viewholder/FriendViewHolder;->getPushBinding()Lru/rocketbank/r2d2/databinding/FeedItemPushBinding;

    move-result-object v0

    iget-object v0, v0, Lru/rocketbank/r2d2/databinding/FeedItemPushBinding;->root:Landroid/widget/LinearLayout;

    const-string v1, "pushBinding.root"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method
