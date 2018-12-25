.class public final Lru/rocketbank/core/model/OperationsResponse;
.super Ljava/lang/Object;
.source "OperationsResponse.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/core/model/OperationsResponse$SafeOperationList;
    }
.end annotation


# instance fields
.field private feed:Lru/rocketbank/core/model/OperationsResponse$SafeOperationList;

.field private pagination:Lru/rocketbank/core/model/dto/Pagination;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getFeed()Lru/rocketbank/core/model/OperationsResponse$SafeOperationList;
    .locals 1

    .line 9
    iget-object v0, p0, Lru/rocketbank/core/model/OperationsResponse;->feed:Lru/rocketbank/core/model/OperationsResponse$SafeOperationList;

    return-object v0
.end method

.method public final getPagination()Lru/rocketbank/core/model/dto/Pagination;
    .locals 1

    .line 10
    iget-object v0, p0, Lru/rocketbank/core/model/OperationsResponse;->pagination:Lru/rocketbank/core/model/dto/Pagination;

    return-object v0
.end method

.method public final setFeed(Lru/rocketbank/core/model/OperationsResponse$SafeOperationList;)V
    .locals 0

    .line 9
    iput-object p1, p0, Lru/rocketbank/core/model/OperationsResponse;->feed:Lru/rocketbank/core/model/OperationsResponse$SafeOperationList;

    return-void
.end method

.method public final setPagination(Lru/rocketbank/core/model/dto/Pagination;)V
    .locals 0

    .line 10
    iput-object p1, p0, Lru/rocketbank/core/model/OperationsResponse;->pagination:Lru/rocketbank/core/model/dto/Pagination;

    return-void
.end method
