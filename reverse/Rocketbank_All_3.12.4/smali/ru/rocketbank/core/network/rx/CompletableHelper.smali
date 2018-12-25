.class final Lru/rocketbank/core/network/rx/CompletableHelper;
.super Ljava/lang/Object;
.source "CompletableHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/core/network/rx/CompletableHelper$CompletableCallAdapter;,
        Lru/rocketbank/core/network/rx/CompletableHelper$CompletableCallOnSubscribe;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static createCallAdapter(Lrx/Scheduler;)Lretrofit2/CallAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Scheduler;",
            ")",
            "Lretrofit2/CallAdapter<",
            "Lrx/Completable;",
            ">;"
        }
    .end annotation

    .line 19
    new-instance v0, Lru/rocketbank/core/network/rx/CompletableHelper$CompletableCallAdapter;

    invoke-direct {v0, p0}, Lru/rocketbank/core/network/rx/CompletableHelper$CompletableCallAdapter;-><init>(Lrx/Scheduler;)V

    return-object v0
.end method
