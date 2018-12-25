.class public final Lcom/flurry/sdk/kb;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/flurry/sdk/kb;


# instance fields
.field private final b:Lcom/flurry/sdk/jw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/jw<",
            "Ljava/lang/String;",
            "Lcom/flurry/sdk/ko<",
            "Lcom/flurry/sdk/ka<",
            "*>;>;>;"
        }
    .end annotation
.end field

.field private final c:Lcom/flurry/sdk/jw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/jw<",
            "Lcom/flurry/sdk/ko<",
            "Lcom/flurry/sdk/ka<",
            "*>;>;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lcom/flurry/sdk/jw;

    invoke-direct {v0}, Lcom/flurry/sdk/jw;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/kb;->b:Lcom/flurry/sdk/jw;

    .line 37
    new-instance v0, Lcom/flurry/sdk/jw;

    invoke-direct {v0}, Lcom/flurry/sdk/jw;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/kb;->c:Lcom/flurry/sdk/jw;

    return-void
.end method

.method public static declared-synchronized a()Lcom/flurry/sdk/kb;
    .locals 2

    const-class v0, Lcom/flurry/sdk/kb;

    monitor-enter v0

    .line 22
    :try_start_0
    sget-object v1, Lcom/flurry/sdk/kb;->a:Lcom/flurry/sdk/kb;

    if-nez v1, :cond_0

    .line 23
    new-instance v1, Lcom/flurry/sdk/kb;

    invoke-direct {v1}, Lcom/flurry/sdk/kb;-><init>()V

    sput-object v1, Lcom/flurry/sdk/kb;->a:Lcom/flurry/sdk/kb;

    .line 26
    :cond_0
    sget-object v1, Lcom/flurry/sdk/kb;->a:Lcom/flurry/sdk/kb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 21
    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized b()V
    .locals 2

    const-class v0, Lcom/flurry/sdk/kb;

    monitor-enter v0

    .line 30
    :try_start_0
    sget-object v1, Lcom/flurry/sdk/kb;->a:Lcom/flurry/sdk/kb;

    if-eqz v1, :cond_0

    .line 31
    sget-object v1, Lcom/flurry/sdk/kb;->a:Lcom/flurry/sdk/kb;

    invoke-direct {v1}, Lcom/flurry/sdk/kb;->c()V

    const/4 v1, 0x0

    .line 32
    sput-object v1, Lcom/flurry/sdk/kb;->a:Lcom/flurry/sdk/kb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 29
    monitor-exit v0

    throw v1
.end method

.method private declared-synchronized c(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/flurry/sdk/ka<",
            "*>;>;"
        }
    .end annotation

    monitor-enter p0

    .line 107
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 111
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 112
    iget-object v1, p0, Lcom/flurry/sdk/kb;->b:Lcom/flurry/sdk/jw;

    invoke-virtual {v1, p1}, Lcom/flurry/sdk/jw;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 113
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 114
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/sdk/ko;

    invoke-virtual {v1}, Lcom/flurry/sdk/ko;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/sdk/ka;

    if-nez v1, :cond_1

    .line 116
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 118
    :cond_1
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 122
    :cond_2
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    .line 106
    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized c()V
    .locals 1

    monitor-enter p0

    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/kb;->b:Lcom/flurry/sdk/jw;

    invoke-virtual {v0}, Lcom/flurry/sdk/jw;->a()V

    .line 95
    iget-object v0, p0, Lcom/flurry/sdk/kb;->c:Lcom/flurry/sdk/jw;

    invoke-virtual {v0}, Lcom/flurry/sdk/jw;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 93
    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final a(Lcom/flurry/sdk/jz;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 131
    :cond_0
    invoke-virtual {p1}, Lcom/flurry/sdk/jz;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/flurry/sdk/kb;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 132
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/sdk/ka;

    .line 133
    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v2

    new-instance v3, Lcom/flurry/sdk/kb$1;

    invoke-direct {v3, p0, v1, p1}, Lcom/flurry/sdk/kb$1;-><init>(Lcom/flurry/sdk/kb;Lcom/flurry/sdk/ka;Lcom/flurry/sdk/jz;)V

    invoke-virtual {v2, v3}, Lcom/flurry/sdk/jr;->b(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final declared-synchronized a(Lcom/flurry/sdk/ka;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/ka<",
            "*>;)V"
        }
    .end annotation

    monitor-enter p0

    if-nez p1, :cond_0

    .line 82
    monitor-exit p0

    return-void

    .line 85
    :cond_0
    :try_start_0
    new-instance v0, Lcom/flurry/sdk/ko;

    invoke-direct {v0, p1}, Lcom/flurry/sdk/ko;-><init>(Ljava/lang/Object;)V

    .line 86
    iget-object p1, p0, Lcom/flurry/sdk/kb;->c:Lcom/flurry/sdk/jw;

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/jw;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 87
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 88
    iget-object v2, p0, Lcom/flurry/sdk/kb;->b:Lcom/flurry/sdk/jw;

    invoke-virtual {v2, v1, v0}, Lcom/flurry/sdk/jw;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .line 90
    :cond_1
    iget-object p1, p0, Lcom/flurry/sdk/kb;->c:Lcom/flurry/sdk/jw;

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/jw;->b(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 80
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    .line 69
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 70
    monitor-exit p0

    return-void

    .line 73
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/flurry/sdk/kb;->b:Lcom/flurry/sdk/jw;

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/jw;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 74
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/sdk/ko;

    .line 75
    iget-object v2, p0, Lcom/flurry/sdk/kb;->c:Lcom/flurry/sdk/jw;

    invoke-virtual {v2, v1, p1}, Lcom/flurry/sdk/jw;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .line 77
    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/kb;->b:Lcom/flurry/sdk/jw;

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/jw;->b(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 68
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(Ljava/lang/String;Lcom/flurry/sdk/ka;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/flurry/sdk/ka<",
            "*>;)V"
        }
    .end annotation

    monitor-enter p0

    .line 43
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    if-nez p2, :cond_0

    goto :goto_0

    .line 47
    :cond_0
    new-instance v0, Lcom/flurry/sdk/ko;

    invoke-direct {v0, p2}, Lcom/flurry/sdk/ko;-><init>(Ljava/lang/Object;)V

    .line 50
    iget-object p2, p0, Lcom/flurry/sdk/kb;->b:Lcom/flurry/sdk/jw;

    const/4 v1, 0x0

    .line 1116
    invoke-virtual {p2, p1, v1}, Lcom/flurry/sdk/jw;->a(Ljava/lang/Object;Z)Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 1118
    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    if-eqz v1, :cond_2

    .line 51
    monitor-exit p0

    return-void

    .line 54
    :cond_2
    :try_start_1
    iget-object p2, p0, Lcom/flurry/sdk/kb;->b:Lcom/flurry/sdk/jw;

    invoke-virtual {p2, p1, v0}, Lcom/flurry/sdk/jw;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 55
    iget-object p2, p0, Lcom/flurry/sdk/kb;->c:Lcom/flurry/sdk/jw;

    invoke-virtual {p2, v0, p1}, Lcom/flurry/sdk/jw;->a(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    monitor-exit p0

    return-void

    .line 44
    :cond_3
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 42
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized b(Ljava/lang/String;)I
    .locals 1

    monitor-enter p0

    .line 99
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 100
    monitor-exit p0

    return p1

    .line 103
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/flurry/sdk/kb;->b:Lcom/flurry/sdk/jw;

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/jw;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    .line 98
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized b(Ljava/lang/String;Lcom/flurry/sdk/ka;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/flurry/sdk/ka<",
            "*>;)V"
        }
    .end annotation

    monitor-enter p0

    .line 59
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 60
    monitor-exit p0

    return-void

    .line 63
    :cond_0
    :try_start_1
    new-instance v0, Lcom/flurry/sdk/ko;

    invoke-direct {v0, p2}, Lcom/flurry/sdk/ko;-><init>(Ljava/lang/Object;)V

    .line 64
    iget-object p2, p0, Lcom/flurry/sdk/kb;->b:Lcom/flurry/sdk/jw;

    invoke-virtual {p2, p1, v0}, Lcom/flurry/sdk/jw;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 65
    iget-object p2, p0, Lcom/flurry/sdk/kb;->c:Lcom/flurry/sdk/jw;

    invoke-virtual {p2, v0, p1}, Lcom/flurry/sdk/jw;->b(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 58
    monitor-exit p0

    throw p1
.end method
