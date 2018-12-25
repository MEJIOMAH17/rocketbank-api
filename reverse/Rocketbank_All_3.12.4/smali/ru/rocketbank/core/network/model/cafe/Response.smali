.class public final Lru/rocketbank/core/network/model/cafe/Response;
.super Ljava/lang/Object;
.source "Response.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final response:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/rocketbank/core/network/model/cafe/Response;->response:Ljava/lang/Object;

    return-void
.end method

.method public static bridge synthetic copy$default(Lru/rocketbank/core/network/model/cafe/Response;Ljava/lang/Object;ILjava/lang/Object;)Lru/rocketbank/core/network/model/cafe/Response;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lru/rocketbank/core/network/model/cafe/Response;->response:Ljava/lang/Object;

    :cond_0
    invoke-virtual {p0, p1}, Lru/rocketbank/core/network/model/cafe/Response;->copy(Ljava/lang/Object;)Lru/rocketbank/core/network/model/cafe/Response;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lru/rocketbank/core/network/model/cafe/Response;->response:Ljava/lang/Object;

    return-object v0
.end method

.method public final copy(Ljava/lang/Object;)Lru/rocketbank/core/network/model/cafe/Response;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lru/rocketbank/core/network/model/cafe/Response<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lru/rocketbank/core/network/model/cafe/Response;

    invoke-direct {v0, p1}, Lru/rocketbank/core/network/model/cafe/Response;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lru/rocketbank/core/network/model/cafe/Response;

    if-eqz v0, :cond_0

    check-cast p1, Lru/rocketbank/core/network/model/cafe/Response;

    iget-object v0, p0, Lru/rocketbank/core/network/model/cafe/Response;->response:Ljava/lang/Object;

    iget-object p1, p1, Lru/rocketbank/core/network/model/cafe/Response;->response:Ljava/lang/Object;

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

.method public final getResponse()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lru/rocketbank/core/network/model/cafe/Response;->response:Ljava/lang/Object;

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/network/model/cafe/Response;->response:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Response(response="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lru/rocketbank/core/network/model/cafe/Response;->response:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
