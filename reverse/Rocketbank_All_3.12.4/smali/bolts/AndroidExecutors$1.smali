.class public Lbolts/AndroidExecutors$1;
.super Ljava/lang/Object;
.source "AndroidExecutors.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbolts/AndroidExecutors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final task:Lbolts/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbolts/Task<",
            "TTResult;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1017
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1018
    new-instance v0, Lbolts/Task;

    invoke-direct {v0}, Lbolts/Task;-><init>()V

    iput-object v0, p0, Lbolts/AndroidExecutors$1;->task:Lbolts/Task;

    return-void
.end method


# virtual methods
.method public final getTask()Lbolts/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbolts/Task<",
            "TTResult;>;"
        }
    .end annotation

    .line 1025
    iget-object v0, p0, Lbolts/AndroidExecutors$1;->task:Lbolts/Task;

    return-object v0
.end method

.method public final setCancelled()V
    .locals 2

    .line 2032
    iget-object v0, p0, Lbolts/AndroidExecutors$1;->task:Lbolts/Task;

    invoke-virtual {v0}, Lbolts/Task;->trySetCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1054
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot cancel a completed task."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public final setError(Ljava/lang/Exception;)V
    .locals 1

    .line 4046
    iget-object v0, p0, Lbolts/AndroidExecutors$1;->task:Lbolts/Task;

    invoke-virtual {v0, p1}, Lbolts/Task;->trySetError(Ljava/lang/Exception;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 3072
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot set the error on a completed task."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    return-void
.end method

.method public final setResult(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)V"
        }
    .end annotation

    .line 3039
    iget-object v0, p0, Lbolts/AndroidExecutors$1;->task:Lbolts/Task;

    invoke-virtual {v0, p1}, Lbolts/Task;->trySetResult(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 2063
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot set the result of a completed task."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    return-void
.end method
