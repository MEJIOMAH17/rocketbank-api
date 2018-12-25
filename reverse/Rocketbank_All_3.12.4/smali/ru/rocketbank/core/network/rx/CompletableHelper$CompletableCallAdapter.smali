.class Lru/rocketbank/core/network/rx/CompletableHelper$CompletableCallAdapter;
.super Ljava/lang/Object;
.source "CompletableHelper.java"

# interfaces
.implements Lretrofit2/CallAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/core/network/rx/CompletableHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CompletableCallAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/CallAdapter<",
        "Lrx/Completable;",
        ">;"
    }
.end annotation


# instance fields
.field private final scheduler:Lrx/Scheduler;


# direct methods
.method constructor <init>(Lrx/Scheduler;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lru/rocketbank/core/network/rx/CompletableHelper$CompletableCallAdapter;->scheduler:Lrx/Scheduler;

    return-void
.end method


# virtual methods
.method public bridge synthetic adapt(Lretrofit2/Call;)Ljava/lang/Object;
    .locals 0

    .line 59
    invoke-virtual {p0, p1}, Lru/rocketbank/core/network/rx/CompletableHelper$CompletableCallAdapter;->adapt(Lretrofit2/Call;)Lrx/Completable;

    move-result-object p1

    return-object p1
.end method

.method public adapt(Lretrofit2/Call;)Lrx/Completable;
    .locals 1

    .line 71
    new-instance v0, Lru/rocketbank/core/network/rx/CompletableHelper$CompletableCallOnSubscribe;

    invoke-direct {v0, p1}, Lru/rocketbank/core/network/rx/CompletableHelper$CompletableCallOnSubscribe;-><init>(Lretrofit2/Call;)V

    invoke-static {v0}, Lrx/Completable;->create(Lrx/Completable$OnSubscribe;)Lrx/Completable;

    move-result-object p1

    .line 72
    iget-object v0, p0, Lru/rocketbank/core/network/rx/CompletableHelper$CompletableCallAdapter;->scheduler:Lrx/Scheduler;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lru/rocketbank/core/network/rx/CompletableHelper$CompletableCallAdapter;->scheduler:Lrx/Scheduler;

    invoke-virtual {p1, v0}, Lrx/Completable;->subscribeOn(Lrx/Scheduler;)Lrx/Completable;

    move-result-object p1

    return-object p1

    :cond_0
    return-object p1
.end method

.method public responseType()Ljava/lang/reflect/Type;
    .locals 1

    .line 67
    const-class v0, Ljava/lang/Void;

    return-object v0
.end method
