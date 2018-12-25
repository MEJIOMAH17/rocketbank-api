.class public final Lru/rocketbank/core/network/rx/Result;
.super Ljava/lang/Object;
.source "Result.java"


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
.field private final error:Ljava/lang/Throwable;

.field private final response:Lretrofit2/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/Response<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lretrofit2/Response;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Response<",
            "TT;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lru/rocketbank/core/network/rx/Result;->response:Lretrofit2/Response;

    .line 24
    iput-object p2, p0, Lru/rocketbank/core/network/rx/Result;->error:Ljava/lang/Throwable;

    return-void
.end method

.method public static error(Ljava/lang/Throwable;)Lru/rocketbank/core/network/rx/Result;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Throwable;",
            ")",
            "Lru/rocketbank/core/network/rx/Result<",
            "TT;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 10
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "error == null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 11
    :cond_0
    new-instance v0, Lru/rocketbank/core/network/rx/Result;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lru/rocketbank/core/network/rx/Result;-><init>(Lretrofit2/Response;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static response(Lretrofit2/Response;)Lru/rocketbank/core/network/rx/Result;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lretrofit2/Response<",
            "TT;>;)",
            "Lru/rocketbank/core/network/rx/Result<",
            "TT;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 15
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "response == null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 16
    :cond_0
    new-instance v0, Lru/rocketbank/core/network/rx/Result;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lru/rocketbank/core/network/rx/Result;-><init>(Lretrofit2/Response;Ljava/lang/Throwable;)V

    return-object v0
.end method


# virtual methods
.method public final error()Ljava/lang/Throwable;
    .locals 1

    .line 44
    iget-object v0, p0, Lru/rocketbank/core/network/rx/Result;->error:Ljava/lang/Throwable;

    return-object v0
.end method

.method public final isError()Z
    .locals 1

    .line 49
    iget-object v0, p0, Lru/rocketbank/core/network/rx/Result;->error:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final response()Lretrofit2/Response;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lretrofit2/Response<",
            "TT;>;"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lru/rocketbank/core/network/rx/Result;->response:Lretrofit2/Response;

    return-object v0
.end method
