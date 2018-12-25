.class final Lru/rocketbank/core/network/rx/RxJavaCallAdapterFactory$SimpleCallAdapter;
.super Ljava/lang/Object;
.source "RxJavaCallAdapterFactory.java"

# interfaces
.implements Lretrofit2/CallAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/core/network/rx/RxJavaCallAdapterFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SimpleCallAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/CallAdapter<",
        "Lrx/Observable<",
        "*>;>;"
    }
.end annotation


# instance fields
.field private final responseType:Ljava/lang/reflect/Type;

.field private final scheduler:Lrx/Scheduler;


# direct methods
.method constructor <init>(Ljava/lang/reflect/Type;Lrx/Scheduler;)V
    .locals 0

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 212
    iput-object p1, p0, Lru/rocketbank/core/network/rx/RxJavaCallAdapterFactory$SimpleCallAdapter;->responseType:Ljava/lang/reflect/Type;

    .line 213
    iput-object p2, p0, Lru/rocketbank/core/network/rx/RxJavaCallAdapterFactory$SimpleCallAdapter;->scheduler:Lrx/Scheduler;

    return-void
.end method


# virtual methods
.method public final bridge synthetic adapt(Lretrofit2/Call;)Ljava/lang/Object;
    .locals 0

    .line 207
    invoke-virtual {p0, p1}, Lru/rocketbank/core/network/rx/RxJavaCallAdapterFactory$SimpleCallAdapter;->adapt(Lretrofit2/Call;)Lrx/Observable;

    move-result-object p1

    return-object p1
.end method

.method public final adapt(Lretrofit2/Call;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lretrofit2/Call<",
            "TR;>;)",
            "Lrx/Observable<",
            "TR;>;"
        }
    .end annotation

    .line 221
    new-instance v0, Lru/rocketbank/core/network/rx/RxJavaCallAdapterFactory$CallOnSubscribe;

    invoke-direct {v0, p1}, Lru/rocketbank/core/network/rx/RxJavaCallAdapterFactory$CallOnSubscribe;-><init>(Lretrofit2/Call;)V

    .line 222
    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object p1

    .line 223
    invoke-static {}, Lru/rocketbank/core/network/rx/OperatorMapResponseToBodyOrError;->instance()Lru/rocketbank/core/network/rx/OperatorMapResponseToBodyOrError;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object p1

    .line 224
    iget-object v0, p0, Lru/rocketbank/core/network/rx/RxJavaCallAdapterFactory$SimpleCallAdapter;->scheduler:Lrx/Scheduler;

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lru/rocketbank/core/network/rx/RxJavaCallAdapterFactory$SimpleCallAdapter;->scheduler:Lrx/Scheduler;

    invoke-virtual {p1, v0}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object p1

    return-object p1

    :cond_0
    return-object p1
.end method

.method public final responseType()Ljava/lang/reflect/Type;
    .locals 1

    .line 217
    iget-object v0, p0, Lru/rocketbank/core/network/rx/RxJavaCallAdapterFactory$SimpleCallAdapter;->responseType:Ljava/lang/reflect/Type;

    return-object v0
.end method
