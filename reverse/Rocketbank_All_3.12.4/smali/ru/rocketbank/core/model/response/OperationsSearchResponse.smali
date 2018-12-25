.class public Lru/rocketbank/core/model/response/OperationsSearchResponse;
.super Ljava/lang/Object;
.source "OperationsSearchResponse.java"


# instance fields
.field private operations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/dto/operations/Operation;",
            ">;"
        }
    .end annotation
.end field

.field private pagination:Lru/rocketbank/core/model/dto/Pagination;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getOperations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/dto/operations/Operation;",
            ">;"
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lru/rocketbank/core/model/response/OperationsSearchResponse;->operations:Ljava/util/List;

    return-object v0
.end method

.method public getPagination()Lru/rocketbank/core/model/dto/Pagination;
    .locals 1

    .line 18
    iget-object v0, p0, Lru/rocketbank/core/model/response/OperationsSearchResponse;->pagination:Lru/rocketbank/core/model/dto/Pagination;

    return-object v0
.end method
