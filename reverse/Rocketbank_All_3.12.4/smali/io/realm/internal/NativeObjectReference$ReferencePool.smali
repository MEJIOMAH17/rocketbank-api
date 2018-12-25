.class final Lio/realm/internal/NativeObjectReference$ReferencePool;
.super Ljava/lang/Object;
.source "NativeObjectReference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/internal/NativeObjectReference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ReferencePool"
.end annotation


# instance fields
.field head:Lio/realm/internal/NativeObjectReference;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lio/realm/internal/NativeObjectReference$ReferencePool;-><init>()V

    return-void
.end method


# virtual methods
.method final declared-synchronized add(Lio/realm/internal/NativeObjectReference;)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 38
    :try_start_0
    invoke-static {p1, v0}, Lio/realm/internal/NativeObjectReference;->access$002(Lio/realm/internal/NativeObjectReference;Lio/realm/internal/NativeObjectReference;)Lio/realm/internal/NativeObjectReference;

    .line 39
    iget-object v0, p0, Lio/realm/internal/NativeObjectReference$ReferencePool;->head:Lio/realm/internal/NativeObjectReference;

    invoke-static {p1, v0}, Lio/realm/internal/NativeObjectReference;->access$102(Lio/realm/internal/NativeObjectReference;Lio/realm/internal/NativeObjectReference;)Lio/realm/internal/NativeObjectReference;

    .line 40
    iget-object v0, p0, Lio/realm/internal/NativeObjectReference$ReferencePool;->head:Lio/realm/internal/NativeObjectReference;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lio/realm/internal/NativeObjectReference$ReferencePool;->head:Lio/realm/internal/NativeObjectReference;

    invoke-static {v0, p1}, Lio/realm/internal/NativeObjectReference;->access$002(Lio/realm/internal/NativeObjectReference;Lio/realm/internal/NativeObjectReference;)Lio/realm/internal/NativeObjectReference;

    .line 43
    :cond_0
    iput-object p1, p0, Lio/realm/internal/NativeObjectReference$ReferencePool;->head:Lio/realm/internal/NativeObjectReference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 37
    monitor-exit p0

    throw p1
.end method

.method final declared-synchronized remove(Lio/realm/internal/NativeObjectReference;)V
    .locals 3

    monitor-enter p0

    .line 47
    :try_start_0
    invoke-static {p1}, Lio/realm/internal/NativeObjectReference;->access$100(Lio/realm/internal/NativeObjectReference;)Lio/realm/internal/NativeObjectReference;

    move-result-object v0

    .line 48
    invoke-static {p1}, Lio/realm/internal/NativeObjectReference;->access$000(Lio/realm/internal/NativeObjectReference;)Lio/realm/internal/NativeObjectReference;

    move-result-object v1

    const/4 v2, 0x0

    .line 49
    invoke-static {p1, v2}, Lio/realm/internal/NativeObjectReference;->access$102(Lio/realm/internal/NativeObjectReference;Lio/realm/internal/NativeObjectReference;)Lio/realm/internal/NativeObjectReference;

    .line 50
    invoke-static {p1, v2}, Lio/realm/internal/NativeObjectReference;->access$002(Lio/realm/internal/NativeObjectReference;Lio/realm/internal/NativeObjectReference;)Lio/realm/internal/NativeObjectReference;

    if-eqz v1, :cond_0

    .line 52
    invoke-static {v1, v0}, Lio/realm/internal/NativeObjectReference;->access$102(Lio/realm/internal/NativeObjectReference;Lio/realm/internal/NativeObjectReference;)Lio/realm/internal/NativeObjectReference;

    goto :goto_0

    .line 54
    :cond_0
    iput-object v0, p0, Lio/realm/internal/NativeObjectReference$ReferencePool;->head:Lio/realm/internal/NativeObjectReference;

    :goto_0
    if-eqz v0, :cond_1

    .line 57
    invoke-static {v0, v1}, Lio/realm/internal/NativeObjectReference;->access$002(Lio/realm/internal/NativeObjectReference;Lio/realm/internal/NativeObjectReference;)Lio/realm/internal/NativeObjectReference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 46
    monitor-exit p0

    throw p1
.end method
