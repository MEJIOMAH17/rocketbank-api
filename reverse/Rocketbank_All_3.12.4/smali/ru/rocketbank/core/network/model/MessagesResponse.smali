.class public final Lru/rocketbank/core/network/model/MessagesResponse;
.super Ljava/lang/Object;
.source "MessagesResponse.kt"


# instance fields
.field private final messages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/message/MessageIn;",
            ">;>;"
        }
    .end annotation
.end field

.field private final pagination:Lru/rocketbank/core/model/dto/Pagination;


# direct methods
.method public constructor <init>(Ljava/util/Map;Lru/rocketbank/core/model/dto/Pagination;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "+",
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/message/MessageIn;",
            ">;>;",
            "Lru/rocketbank/core/model/dto/Pagination;",
            ")V"
        }
    .end annotation

    const-string v0, "pagination"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/rocketbank/core/network/model/MessagesResponse;->messages:Ljava/util/Map;

    iput-object p2, p0, Lru/rocketbank/core/network/model/MessagesResponse;->pagination:Lru/rocketbank/core/model/dto/Pagination;

    return-void
.end method

.method public static bridge synthetic copy$default(Lru/rocketbank/core/network/model/MessagesResponse;Ljava/util/Map;Lru/rocketbank/core/model/dto/Pagination;ILjava/lang/Object;)Lru/rocketbank/core/network/model/MessagesResponse;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lru/rocketbank/core/network/model/MessagesResponse;->messages:Ljava/util/Map;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lru/rocketbank/core/network/model/MessagesResponse;->pagination:Lru/rocketbank/core/model/dto/Pagination;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lru/rocketbank/core/network/model/MessagesResponse;->copy(Ljava/util/Map;Lru/rocketbank/core/model/dto/Pagination;)Lru/rocketbank/core/network/model/MessagesResponse;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/message/MessageIn;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lru/rocketbank/core/network/model/MessagesResponse;->messages:Ljava/util/Map;

    return-object v0
.end method

.method public final component2()Lru/rocketbank/core/model/dto/Pagination;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/network/model/MessagesResponse;->pagination:Lru/rocketbank/core/model/dto/Pagination;

    return-object v0
.end method

.method public final copy(Ljava/util/Map;Lru/rocketbank/core/model/dto/Pagination;)Lru/rocketbank/core/network/model/MessagesResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "+",
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/message/MessageIn;",
            ">;>;",
            "Lru/rocketbank/core/model/dto/Pagination;",
            ")",
            "Lru/rocketbank/core/network/model/MessagesResponse;"
        }
    .end annotation

    const-string v0, "pagination"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lru/rocketbank/core/network/model/MessagesResponse;

    invoke-direct {v0, p1, p2}, Lru/rocketbank/core/network/model/MessagesResponse;-><init>(Ljava/util/Map;Lru/rocketbank/core/model/dto/Pagination;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lru/rocketbank/core/network/model/MessagesResponse;

    if-eqz v0, :cond_0

    check-cast p1, Lru/rocketbank/core/network/model/MessagesResponse;

    iget-object v0, p0, Lru/rocketbank/core/network/model/MessagesResponse;->messages:Ljava/util/Map;

    iget-object v1, p1, Lru/rocketbank/core/network/model/MessagesResponse;->messages:Ljava/util/Map;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/core/network/model/MessagesResponse;->pagination:Lru/rocketbank/core/model/dto/Pagination;

    iget-object p1, p1, Lru/rocketbank/core/network/model/MessagesResponse;->pagination:Lru/rocketbank/core/model/dto/Pagination;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getMessages()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/message/MessageIn;",
            ">;>;"
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lru/rocketbank/core/network/model/MessagesResponse;->messages:Ljava/util/Map;

    return-object v0
.end method

.method public final getPagination()Lru/rocketbank/core/model/dto/Pagination;
    .locals 1

    .line 9
    iget-object v0, p0, Lru/rocketbank/core/network/model/MessagesResponse;->pagination:Lru/rocketbank/core/model/dto/Pagination;

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lru/rocketbank/core/network/model/MessagesResponse;->messages:Ljava/util/Map;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lru/rocketbank/core/network/model/MessagesResponse;->pagination:Lru/rocketbank/core/model/dto/Pagination;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MessagesResponse(messages="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lru/rocketbank/core/network/model/MessagesResponse;->messages:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", pagination="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lru/rocketbank/core/network/model/MessagesResponse;->pagination:Lru/rocketbank/core/model/dto/Pagination;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
