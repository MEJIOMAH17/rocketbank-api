.class final Lru/rocketbank/core/network/rx/SingleHelper;
.super Ljava/lang/Object;
.source "SingleHelper.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static makeSingle(Lretrofit2/CallAdapter;)Lretrofit2/CallAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/CallAdapter<",
            "Lrx/Observable<",
            "*>;>;)",
            "Lretrofit2/CallAdapter<",
            "Lrx/Single<",
            "*>;>;"
        }
    .end annotation

    .line 12
    new-instance v0, Lru/rocketbank/core/network/rx/SingleHelper$1;

    invoke-direct {v0, p0}, Lru/rocketbank/core/network/rx/SingleHelper$1;-><init>(Lretrofit2/CallAdapter;)V

    return-object v0
.end method
