.class public final Lru/rocketbank/core/network/model/SearchRequestBody;
.super Ljava/lang/Object;
.source "SearchRequestBody.kt"


# instance fields
.field private page:I

.field private perPage:I

.field private q:Ljava/lang/String;

.field private token:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getPage()I
    .locals 1

    .line 6
    iget v0, p0, Lru/rocketbank/core/network/model/SearchRequestBody;->page:I

    return v0
.end method

.method public final getPerPage()I
    .locals 1

    .line 7
    iget v0, p0, Lru/rocketbank/core/network/model/SearchRequestBody;->perPage:I

    return v0
.end method

.method public final getQ()Ljava/lang/String;
    .locals 1

    .line 5
    iget-object v0, p0, Lru/rocketbank/core/network/model/SearchRequestBody;->q:Ljava/lang/String;

    return-object v0
.end method

.method public final getToken()Ljava/lang/String;
    .locals 1

    .line 4
    iget-object v0, p0, Lru/rocketbank/core/network/model/SearchRequestBody;->token:Ljava/lang/String;

    return-object v0
.end method

.method public final setPage(I)V
    .locals 0

    .line 6
    iput p1, p0, Lru/rocketbank/core/network/model/SearchRequestBody;->page:I

    return-void
.end method

.method public final setPerPage(I)V
    .locals 0

    .line 7
    iput p1, p0, Lru/rocketbank/core/network/model/SearchRequestBody;->perPage:I

    return-void
.end method

.method public final setQ(Ljava/lang/String;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lru/rocketbank/core/network/model/SearchRequestBody;->q:Ljava/lang/String;

    return-void
.end method

.method public final setToken(Ljava/lang/String;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lru/rocketbank/core/network/model/SearchRequestBody;->token:Ljava/lang/String;

    return-void
.end method
