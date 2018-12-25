.class public final Lru/rocketbank/core/model/OperationsResponse$SafeOperationList;
.super Ljava/util/ArrayList;
.source "OperationsResponse.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/core/model/OperationsResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SafeOperationList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Lru/rocketbank/core/network/model/FeedItem;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge contains(Ljava/lang/Object;)Z
    .locals 1

    .line 12
    instance-of v0, p1, Lru/rocketbank/core/network/model/FeedItem;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    check-cast p1, Lru/rocketbank/core/network/model/FeedItem;

    invoke-virtual {p0, p1}, Lru/rocketbank/core/model/OperationsResponse$SafeOperationList;->contains(Lru/rocketbank/core/network/model/FeedItem;)Z

    move-result p1

    return p1
.end method

.method public final bridge contains(Lru/rocketbank/core/network/model/FeedItem;)Z
    .locals 0

    .line 12
    invoke-super {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final bridge getSize()I
    .locals 1

    .line 12
    invoke-super {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final bridge indexOf(Ljava/lang/Object;)I
    .locals 1

    .line 12
    instance-of v0, p1, Lru/rocketbank/core/network/model/FeedItem;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    check-cast p1, Lru/rocketbank/core/network/model/FeedItem;

    invoke-virtual {p0, p1}, Lru/rocketbank/core/model/OperationsResponse$SafeOperationList;->indexOf(Lru/rocketbank/core/network/model/FeedItem;)I

    move-result p1

    return p1
.end method

.method public final bridge indexOf(Lru/rocketbank/core/network/model/FeedItem;)I
    .locals 0

    .line 12
    invoke-super {p0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final bridge lastIndexOf(Ljava/lang/Object;)I
    .locals 1

    .line 12
    instance-of v0, p1, Lru/rocketbank/core/network/model/FeedItem;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    check-cast p1, Lru/rocketbank/core/network/model/FeedItem;

    invoke-virtual {p0, p1}, Lru/rocketbank/core/model/OperationsResponse$SafeOperationList;->lastIndexOf(Lru/rocketbank/core/network/model/FeedItem;)I

    move-result p1

    return p1
.end method

.method public final bridge lastIndexOf(Lru/rocketbank/core/network/model/FeedItem;)I
    .locals 0

    .line 12
    invoke-super {p0, p1}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final bridge remove(I)Lru/rocketbank/core/network/model/FeedItem;
    .locals 0

    .line 12
    invoke-virtual {p0, p1}, Lru/rocketbank/core/model/OperationsResponse$SafeOperationList;->removeAt(I)Lru/rocketbank/core/network/model/FeedItem;

    move-result-object p1

    return-object p1
.end method

.method public final bridge remove(Ljava/lang/Object;)Z
    .locals 1

    .line 12
    instance-of v0, p1, Lru/rocketbank/core/network/model/FeedItem;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    check-cast p1, Lru/rocketbank/core/network/model/FeedItem;

    invoke-virtual {p0, p1}, Lru/rocketbank/core/model/OperationsResponse$SafeOperationList;->remove(Lru/rocketbank/core/network/model/FeedItem;)Z

    move-result p1

    return p1
.end method

.method public final bridge remove(Lru/rocketbank/core/network/model/FeedItem;)Z
    .locals 0

    .line 12
    invoke-super {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final bridge removeAt(I)Lru/rocketbank/core/network/model/FeedItem;
    .locals 0

    .line 12
    invoke-super {p0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/network/model/FeedItem;

    return-object p1
.end method

.method public final bridge size()I
    .locals 1

    .line 12
    invoke-virtual {p0}, Lru/rocketbank/core/model/OperationsResponse$SafeOperationList;->getSize()I

    move-result v0

    return v0
.end method
