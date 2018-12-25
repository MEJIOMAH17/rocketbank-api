.class public final Lru/rocketbank/core/network/rx/RxJavaCallAdapterFactory;
.super Lretrofit2/CallAdapter$Factory;
.source "RxJavaCallAdapterFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/core/network/rx/RxJavaCallAdapterFactory$ResultCallAdapter;,
        Lru/rocketbank/core/network/rx/RxJavaCallAdapterFactory$SimpleCallAdapter;,
        Lru/rocketbank/core/network/rx/RxJavaCallAdapterFactory$ResponseCallAdapter;,
        Lru/rocketbank/core/network/rx/RxJavaCallAdapterFactory$RequestArbiter;,
        Lru/rocketbank/core/network/rx/RxJavaCallAdapterFactory$CallOnSubscribe;
    }
.end annotation


# instance fields
.field private final scheduler:Lrx/Scheduler;


# direct methods
.method private constructor <init>(Lrx/Scheduler;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lretrofit2/CallAdapter$Factory;-><init>()V

    .line 66
    iput-object p1, p0, Lru/rocketbank/core/network/rx/RxJavaCallAdapterFactory;->scheduler:Lrx/Scheduler;

    return-void
.end method

.method public static create()Lru/rocketbank/core/network/rx/RxJavaCallAdapterFactory;
    .locals 2

    .line 51
    new-instance v0, Lru/rocketbank/core/network/rx/RxJavaCallAdapterFactory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/core/network/rx/RxJavaCallAdapterFactory;-><init>(Lrx/Scheduler;)V

    return-object v0
.end method

.method public static createWithScheduler(Lrx/Scheduler;)Lru/rocketbank/core/network/rx/RxJavaCallAdapterFactory;
    .locals 1

    if-nez p0, :cond_0

    .line 59
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "scheduler == null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 60
    :cond_0
    new-instance v0, Lru/rocketbank/core/network/rx/RxJavaCallAdapterFactory;

    invoke-direct {v0, p0}, Lru/rocketbank/core/network/rx/RxJavaCallAdapterFactory;-><init>(Lrx/Scheduler;)V

    return-object v0
.end method

.method private getCallAdapter(Ljava/lang/reflect/Type;Lrx/Scheduler;)Lretrofit2/CallAdapter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Lrx/Scheduler;",
            ")",
            "Lretrofit2/CallAdapter<",
            "Lrx/Observable<",
            "*>;>;"
        }
    .end annotation

    .line 102
    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    const/4 v0, 0x0

    invoke-static {v0, p1}, Lru/rocketbank/core/network/rx/RxJavaCallAdapterFactory;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p1

    .line 103
    invoke-static {p1}, Lru/rocketbank/core/network/rx/RxJavaCallAdapterFactory;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    .line 104
    const-class v2, Lretrofit2/Response;

    if-ne v1, v2, :cond_1

    .line 105
    instance-of v1, p1, Ljava/lang/reflect/ParameterizedType;

    if-nez v1, :cond_0

    .line 106
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Response must be parameterized as Response<Foo> or Response<? extends Foo>"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 109
    :cond_0
    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v0, p1}, Lru/rocketbank/core/network/rx/RxJavaCallAdapterFactory;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p1

    .line 110
    new-instance v0, Lru/rocketbank/core/network/rx/RxJavaCallAdapterFactory$ResponseCallAdapter;

    invoke-direct {v0, p1, p2}, Lru/rocketbank/core/network/rx/RxJavaCallAdapterFactory$ResponseCallAdapter;-><init>(Ljava/lang/reflect/Type;Lrx/Scheduler;)V

    return-object v0

    .line 113
    :cond_1
    const-class v2, Lru/rocketbank/core/network/rx/Result;

    if-ne v1, v2, :cond_3

    .line 114
    instance-of v1, p1, Ljava/lang/reflect/ParameterizedType;

    if-nez v1, :cond_2

    .line 115
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Result must be parameterized as Result<Foo> or Result<? extends Foo>"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 119
    :cond_2
    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v0, p1}, Lru/rocketbank/core/network/rx/RxJavaCallAdapterFactory;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p1

    .line 120
    new-instance v0, Lru/rocketbank/core/network/rx/RxJavaCallAdapterFactory$ResultCallAdapter;

    invoke-direct {v0, p1, p2}, Lru/rocketbank/core/network/rx/RxJavaCallAdapterFactory$ResultCallAdapter;-><init>(Ljava/lang/reflect/Type;Lrx/Scheduler;)V

    return-object v0

    .line 123
    :cond_3
    new-instance v0, Lru/rocketbank/core/network/rx/RxJavaCallAdapterFactory$SimpleCallAdapter;

    invoke-direct {v0, p1, p2}, Lru/rocketbank/core/network/rx/RxJavaCallAdapterFactory$SimpleCallAdapter;-><init>(Ljava/lang/reflect/Type;Lrx/Scheduler;)V

    return-object v0
.end method


# virtual methods
.method public final get(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Lretrofit2/Retrofit;)Lretrofit2/CallAdapter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Lretrofit2/Retrofit;",
            ")",
            "Lretrofit2/CallAdapter<",
            "*>;"
        }
    .end annotation

    .line 71
    invoke-static {p1}, Lru/rocketbank/core/network/rx/RxJavaCallAdapterFactory;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p2

    .line 72
    invoke-virtual {p2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p3

    const-string v0, "rx.Single"

    .line 73
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "rx.Completable"

    .line 74
    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    .line 75
    const-class v1, Lrx/Observable;

    if-eq p2, v1, :cond_0

    if-nez v0, :cond_0

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    if-nez p3, :cond_2

    .line 78
    instance-of p2, p1, Ljava/lang/reflect/ParameterizedType;

    if-nez p2, :cond_2

    if-eqz v0, :cond_1

    const-string p1, "Single"

    goto :goto_0

    :cond_1
    const-string p1, "Observable"

    .line 80
    :goto_0
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " return type must be parameterized as "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "<Foo> or "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "<? extends Foo>"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    if-eqz p3, :cond_3

    .line 89
    iget-object p1, p0, Lru/rocketbank/core/network/rx/RxJavaCallAdapterFactory;->scheduler:Lrx/Scheduler;

    invoke-static {p1}, Lru/rocketbank/core/network/rx/CompletableHelper;->createCallAdapter(Lrx/Scheduler;)Lretrofit2/CallAdapter;

    move-result-object p1

    return-object p1

    .line 92
    :cond_3
    iget-object p2, p0, Lru/rocketbank/core/network/rx/RxJavaCallAdapterFactory;->scheduler:Lrx/Scheduler;

    invoke-direct {p0, p1, p2}, Lru/rocketbank/core/network/rx/RxJavaCallAdapterFactory;->getCallAdapter(Ljava/lang/reflect/Type;Lrx/Scheduler;)Lretrofit2/CallAdapter;

    move-result-object p1

    if-eqz v0, :cond_4

    .line 96
    invoke-static {p1}, Lru/rocketbank/core/network/rx/SingleHelper;->makeSingle(Lretrofit2/CallAdapter;)Lretrofit2/CallAdapter;

    move-result-object p1

    return-object p1

    :cond_4
    return-object p1
.end method
