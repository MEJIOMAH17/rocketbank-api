.class public final Lio/fabric/sdk/android/services/concurrency/internal/RetryThreadPoolExecutor;
.super Ljava/util/concurrent/ScheduledThreadPoolExecutor;
.source "RetryThreadPoolExecutor.java"


# instance fields
.field private final backoff:Lio/fabric/sdk/android/services/concurrency/internal/Backoff;

.field private final retryPolicy$245149d8:Landroid/support/v7/gridlayout/R;


# direct methods
.method public constructor <init>(ILjava/util/concurrent/ThreadFactory;Landroid/support/v7/gridlayout/R;Lio/fabric/sdk/android/services/concurrency/internal/Backoff;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1, p2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    if-nez p3, :cond_0

    .line 67
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "retry policy must not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    if-nez p4, :cond_1

    .line 71
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "backoff must not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 74
    :cond_1
    iput-object p3, p0, Lio/fabric/sdk/android/services/concurrency/internal/RetryThreadPoolExecutor;->retryPolicy$245149d8:Landroid/support/v7/gridlayout/R;

    .line 75
    iput-object p4, p0, Lio/fabric/sdk/android/services/concurrency/internal/RetryThreadPoolExecutor;->backoff:Lio/fabric/sdk/android/services/concurrency/internal/Backoff;

    return-void
.end method
