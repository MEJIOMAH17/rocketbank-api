.class public final Ldagger/internal/ReferenceReleasingProvider;
.super Ljava/lang/Object;
.source "ReferenceReleasingProvider.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljavax/inject/Provider<",
        "TT;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final NULL:Ljava/lang/Object;


# instance fields
.field private final provider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "TT;>;"
        }
    .end annotation
.end field

.field private volatile strongReference:Ljava/lang/Object;

.field private volatile weakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 61
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ldagger/internal/ReferenceReleasingProvider;->NULL:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1141
    iget-object v0, p0, Ldagger/internal/ReferenceReleasingProvider;->strongReference:Ljava/lang/Object;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1145
    :cond_0
    iget-object v0, p0, Ldagger/internal/ReferenceReleasingProvider;->weakReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    .line 1146
    iget-object v0, p0, Ldagger/internal/ReferenceReleasingProvider;->weakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_6

    .line 126
    monitor-enter p0

    .line 2141
    :try_start_0
    iget-object v0, p0, Ldagger/internal/ReferenceReleasingProvider;->strongReference:Ljava/lang/Object;

    if-eqz v0, :cond_2

    goto :goto_1

    .line 2145
    :cond_2
    iget-object v0, p0, Ldagger/internal/ReferenceReleasingProvider;->weakReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_3

    .line 2146
    iget-object v0, p0, Ldagger/internal/ReferenceReleasingProvider;->weakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    :cond_3
    move-object v0, v1

    :goto_1
    if-nez v0, :cond_5

    .line 129
    iget-object v0, p0, Ldagger/internal/ReferenceReleasingProvider;->provider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_4

    .line 131
    sget-object v0, Ldagger/internal/ReferenceReleasingProvider;->NULL:Ljava/lang/Object;

    .line 133
    :cond_4
    iput-object v0, p0, Ldagger/internal/ReferenceReleasingProvider;->strongReference:Ljava/lang/Object;

    .line 135
    :cond_5
    monitor-exit p0

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 137
    :cond_6
    :goto_2
    sget-object v2, Ldagger/internal/ReferenceReleasingProvider;->NULL:Ljava/lang/Object;

    if-ne v0, v2, :cond_7

    return-object v1

    :cond_7
    return-object v0
.end method

.method public final releaseStrongReference()V
    .locals 2

    .line 77
    iget-object v0, p0, Ldagger/internal/ReferenceReleasingProvider;->strongReference:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 78
    sget-object v1, Ldagger/internal/ReferenceReleasingProvider;->NULL:Ljava/lang/Object;

    if-eq v0, v1, :cond_0

    .line 79
    monitor-enter p0

    .line 82
    :try_start_0
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Ldagger/internal/ReferenceReleasingProvider;->weakReference:Ljava/lang/ref/WeakReference;

    const/4 v0, 0x0

    .line 83
    iput-object v0, p0, Ldagger/internal/ReferenceReleasingProvider;->strongReference:Ljava/lang/Object;

    .line 84
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    return-void
.end method

.method public final restoreStrongReference()V
    .locals 2

    .line 93
    iget-object v0, p0, Ldagger/internal/ReferenceReleasingProvider;->strongReference:Ljava/lang/Object;

    .line 94
    iget-object v1, p0, Ldagger/internal/ReferenceReleasingProvider;->weakReference:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    .line 95
    monitor-enter p0

    .line 96
    :try_start_0
    iget-object v0, p0, Ldagger/internal/ReferenceReleasingProvider;->strongReference:Ljava/lang/Object;

    .line 97
    iget-object v1, p0, Ldagger/internal/ReferenceReleasingProvider;->weakReference:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    .line 98
    iget-object v0, p0, Ldagger/internal/ReferenceReleasingProvider;->weakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 100
    iput-object v0, p0, Ldagger/internal/ReferenceReleasingProvider;->strongReference:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 101
    iput-object v0, p0, Ldagger/internal/ReferenceReleasingProvider;->weakReference:Ljava/lang/ref/WeakReference;

    .line 104
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    return-void
.end method
