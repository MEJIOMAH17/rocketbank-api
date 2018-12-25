.class public final Lru/rocketbank/r2d2/root/operation/OperationAdapter$onBindOperation$1;
.super Ljava/lang/Object;
.source "OperationAdapter.kt"

# interfaces
.implements Lru/rocketbank/r2d2/root/feed/viewholder/OnActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/root/operation/OperationAdapter;->onBindOperation(Lru/rocketbank/r2d2/root/operation/vh/OperationParentViewHolder;Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;Lru/rocketbank/core/model/dto/operations/Operation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAction(Lru/rocketbank/core/network/model/FeedItem;)V
    .locals 1

    const-string v0, "feedItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
