.class public final Lru/rocketbank/core/model/dto/Pagination;
.super Ljava/lang/Object;
.source "Pagination.kt"


# instance fields
.field private final currentPage:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "current_page"
    .end annotation
.end field

.field private final perPage:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "per_page"
    .end annotation
.end field

.field private final totalCount:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "total_count"
    .end annotation
.end field

.field private final totalPages:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "total_pages"
    .end annotation
.end field


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lru/rocketbank/core/model/dto/Pagination;->totalPages:I

    iput p2, p0, Lru/rocketbank/core/model/dto/Pagination;->currentPage:I

    iput p3, p0, Lru/rocketbank/core/model/dto/Pagination;->perPage:I

    iput p4, p0, Lru/rocketbank/core/model/dto/Pagination;->totalCount:I

    return-void
.end method

.method public static bridge synthetic copy$default(Lru/rocketbank/core/model/dto/Pagination;IIIIILjava/lang/Object;)Lru/rocketbank/core/model/dto/Pagination;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget p1, p0, Lru/rocketbank/core/model/dto/Pagination;->totalPages:I

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget p2, p0, Lru/rocketbank/core/model/dto/Pagination;->currentPage:I

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget p3, p0, Lru/rocketbank/core/model/dto/Pagination;->perPage:I

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget p4, p0, Lru/rocketbank/core/model/dto/Pagination;->totalCount:I

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lru/rocketbank/core/model/dto/Pagination;->copy(IIII)Lru/rocketbank/core/model/dto/Pagination;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lru/rocketbank/core/model/dto/Pagination;->totalPages:I

    return v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lru/rocketbank/core/model/dto/Pagination;->currentPage:I

    return v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lru/rocketbank/core/model/dto/Pagination;->perPage:I

    return v0
.end method

.method public final component4()I
    .locals 1

    iget v0, p0, Lru/rocketbank/core/model/dto/Pagination;->totalCount:I

    return v0
.end method

.method public final copy(IIII)Lru/rocketbank/core/model/dto/Pagination;
    .locals 1

    new-instance v0, Lru/rocketbank/core/model/dto/Pagination;

    invoke-direct {v0, p1, p2, p3, p4}, Lru/rocketbank/core/model/dto/Pagination;-><init>(IIII)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-eq p0, p1, :cond_5

    instance-of v1, p1, Lru/rocketbank/core/model/dto/Pagination;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    check-cast p1, Lru/rocketbank/core/model/dto/Pagination;

    iget v1, p0, Lru/rocketbank/core/model/dto/Pagination;->totalPages:I

    iget v3, p1, Lru/rocketbank/core/model/dto/Pagination;->totalPages:I

    if-ne v1, v3, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eqz v1, :cond_4

    iget v1, p0, Lru/rocketbank/core/model/dto/Pagination;->currentPage:I

    iget v3, p1, Lru/rocketbank/core/model/dto/Pagination;->currentPage:I

    if-ne v1, v3, :cond_1

    move v1, v0

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    if-eqz v1, :cond_4

    iget v1, p0, Lru/rocketbank/core/model/dto/Pagination;->perPage:I

    iget v3, p1, Lru/rocketbank/core/model/dto/Pagination;->perPage:I

    if-ne v1, v3, :cond_2

    move v1, v0

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    if-eqz v1, :cond_4

    iget v1, p0, Lru/rocketbank/core/model/dto/Pagination;->totalCount:I

    iget p1, p1, Lru/rocketbank/core/model/dto/Pagination;->totalCount:I

    if-ne v1, p1, :cond_3

    move p1, v0

    goto :goto_3

    :cond_3
    move p1, v2

    :goto_3
    if-eqz p1, :cond_4

    return v0

    :cond_4
    return v2

    :cond_5
    return v0
.end method

.method public final getCurrentPage()I
    .locals 1

    .line 10
    iget v0, p0, Lru/rocketbank/core/model/dto/Pagination;->currentPage:I

    return v0
.end method

.method public final getPerPage()I
    .locals 1

    .line 13
    iget v0, p0, Lru/rocketbank/core/model/dto/Pagination;->perPage:I

    return v0
.end method

.method public final getTotalCount()I
    .locals 1

    .line 16
    iget v0, p0, Lru/rocketbank/core/model/dto/Pagination;->totalCount:I

    return v0
.end method

.method public final getTotalPages()I
    .locals 1

    .line 7
    iget v0, p0, Lru/rocketbank/core/model/dto/Pagination;->totalPages:I

    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lru/rocketbank/core/model/dto/Pagination;->totalPages:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lru/rocketbank/core/model/dto/Pagination;->currentPage:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lru/rocketbank/core/model/dto/Pagination;->perPage:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lru/rocketbank/core/model/dto/Pagination;->totalCount:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Pagination(totalPages="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lru/rocketbank/core/model/dto/Pagination;->totalPages:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", currentPage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lru/rocketbank/core/model/dto/Pagination;->currentPage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", perPage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lru/rocketbank/core/model/dto/Pagination;->perPage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", totalCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lru/rocketbank/core/model/dto/Pagination;->totalCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
