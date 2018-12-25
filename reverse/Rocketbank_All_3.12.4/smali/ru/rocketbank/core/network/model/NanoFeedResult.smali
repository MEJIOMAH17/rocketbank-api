.class public Lru/rocketbank/core/network/model/NanoFeedResult;
.super Ljava/lang/Object;
.source "NanoFeedResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/core/network/model/NanoFeedResult$Feed;
    }
.end annotation


# instance fields
.field public feed:Lru/rocketbank/core/network/model/NanoFeedResult$Feed;

.field public pagination:Lru/rocketbank/core/model/dto/Pagination;

.field public top:Lru/rocketbank/core/network/model/NanoFeedResult$Feed;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
