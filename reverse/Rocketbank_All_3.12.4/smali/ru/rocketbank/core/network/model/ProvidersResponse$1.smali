.class final Lru/rocketbank/core/network/model/ProvidersResponse$1;
.super Ljava/lang/Object;
.source "ProvidersResponse.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/core/network/model/ProvidersResponse;->mapProviderResponse(Lru/rocketbank/core/network/model/ProvidersResponse;)Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lru/rocketbank/core/model/provider/Provider;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 48
    check-cast p1, Lru/rocketbank/core/model/provider/Provider;

    check-cast p2, Lru/rocketbank/core/model/provider/Provider;

    invoke-virtual {p0, p1, p2}, Lru/rocketbank/core/network/model/ProvidersResponse$1;->compare(Lru/rocketbank/core/model/provider/Provider;Lru/rocketbank/core/model/provider/Provider;)I

    move-result p1

    return p1
.end method

.method public final compare(Lru/rocketbank/core/model/provider/Provider;Lru/rocketbank/core/model/provider/Provider;)I
    .locals 2

    .line 51
    invoke-virtual {p1}, Lru/rocketbank/core/model/provider/Provider;->getPosition()I

    move-result v0

    invoke-virtual {p2}, Lru/rocketbank/core/model/provider/Provider;->getPosition()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    invoke-virtual {p1}, Lru/rocketbank/core/model/provider/Provider;->getPosition()I

    move-result p1

    invoke-virtual {p2}, Lru/rocketbank/core/model/provider/Provider;->getPosition()I

    move-result p2

    if-ne p1, p2, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method
