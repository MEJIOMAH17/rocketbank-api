.class final Lru/rocketbank/core/widgets/SnackbarManager;
.super Ljava/lang/Object;
.source "SnackbarManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/core/widgets/SnackbarManager$SnackbarRecord;,
        Lru/rocketbank/core/widgets/SnackbarManager$Callback;
    }
.end annotation


# static fields
.field private static sSnackbarManager:Lru/rocketbank/core/widgets/SnackbarManager;


# instance fields
.field private mCurrentSnackbar:Lru/rocketbank/core/widgets/SnackbarManager$SnackbarRecord;

.field private final mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private mNextSnackbar:Lru/rocketbank/core/widgets/SnackbarManager$SnackbarRecord;


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lru/rocketbank/core/widgets/SnackbarManager;->mLock:Ljava/lang/Object;

    .line 38
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lru/rocketbank/core/widgets/SnackbarManager$1;

    invoke-direct {v2, p0}, Lru/rocketbank/core/widgets/SnackbarManager$1;-><init>(Lru/rocketbank/core/widgets/SnackbarManager;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lru/rocketbank/core/widgets/SnackbarManager;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lru/rocketbank/core/widgets/SnackbarManager;Lru/rocketbank/core/widgets/SnackbarManager$SnackbarRecord;)V
    .locals 2

    .line 8217
    iget-object v0, p0, Lru/rocketbank/core/widgets/SnackbarManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 8218
    :try_start_0
    iget-object v1, p0, Lru/rocketbank/core/widgets/SnackbarManager;->mCurrentSnackbar:Lru/rocketbank/core/widgets/SnackbarManager$SnackbarRecord;

    if-eq v1, p1, :cond_0

    iget-object p0, p0, Lru/rocketbank/core/widgets/SnackbarManager;->mNextSnackbar:Lru/rocketbank/core/widgets/SnackbarManager$SnackbarRecord;

    if-ne p0, p1, :cond_1

    .line 9184
    :cond_0
    invoke-static {p1}, Lru/rocketbank/core/widgets/SnackbarManager$SnackbarRecord;->access$200(Lru/rocketbank/core/widgets/SnackbarManager$SnackbarRecord;)Ljava/lang/ref/WeakReference;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lru/rocketbank/core/widgets/SnackbarManager$Callback;

    if-eqz p0, :cond_1

    const/4 p1, 0x2

    .line 9186
    invoke-interface {p0, p1}, Lru/rocketbank/core/widgets/SnackbarManager$Callback;->dismiss(I)V

    .line 8221
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static getInstance()Lru/rocketbank/core/widgets/SnackbarManager;
    .locals 1

    .line 24
    sget-object v0, Lru/rocketbank/core/widgets/SnackbarManager;->sSnackbarManager:Lru/rocketbank/core/widgets/SnackbarManager;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lru/rocketbank/core/widgets/SnackbarManager;

    invoke-direct {v0}, Lru/rocketbank/core/widgets/SnackbarManager;-><init>()V

    sput-object v0, Lru/rocketbank/core/widgets/SnackbarManager;->sSnackbarManager:Lru/rocketbank/core/widgets/SnackbarManager;

    .line 27
    :cond_0
    sget-object v0, Lru/rocketbank/core/widgets/SnackbarManager;->sSnackbarManager:Lru/rocketbank/core/widgets/SnackbarManager;

    return-object v0
.end method

.method private scheduleTimeoutLocked(Lru/rocketbank/core/widgets/SnackbarManager$SnackbarRecord;)V
    .locals 4

    .line 201
    invoke-static {p1}, Lru/rocketbank/core/widgets/SnackbarManager$SnackbarRecord;->access$100(Lru/rocketbank/core/widgets/SnackbarManager$SnackbarRecord;)I

    move-result v0

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const/16 v0, 0xabe

    .line 207
    invoke-static {p1}, Lru/rocketbank/core/widgets/SnackbarManager$SnackbarRecord;->access$100(Lru/rocketbank/core/widgets/SnackbarManager$SnackbarRecord;)I

    move-result v1

    if-lez v1, :cond_1

    .line 208
    invoke-static {p1}, Lru/rocketbank/core/widgets/SnackbarManager$SnackbarRecord;->access$100(Lru/rocketbank/core/widgets/SnackbarManager$SnackbarRecord;)I

    move-result v0

    goto :goto_0

    .line 209
    :cond_1
    invoke-static {p1}, Lru/rocketbank/core/widgets/SnackbarManager$SnackbarRecord;->access$100(Lru/rocketbank/core/widgets/SnackbarManager$SnackbarRecord;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    const/16 v0, 0x5dc

    .line 212
    :cond_2
    :goto_0
    iget-object v1, p0, Lru/rocketbank/core/widgets/SnackbarManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 213
    iget-object v1, p0, Lru/rocketbank/core/widgets/SnackbarManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lru/rocketbank/core/widgets/SnackbarManager;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-static {v2, v3, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    int-to-long v2, v0

    invoke-virtual {v1, p1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private showNextSnackbarLocked()V
    .locals 2

    .line 169
    iget-object v0, p0, Lru/rocketbank/core/widgets/SnackbarManager;->mNextSnackbar:Lru/rocketbank/core/widgets/SnackbarManager$SnackbarRecord;

    if-eqz v0, :cond_1

    .line 170
    iget-object v0, p0, Lru/rocketbank/core/widgets/SnackbarManager;->mNextSnackbar:Lru/rocketbank/core/widgets/SnackbarManager$SnackbarRecord;

    iput-object v0, p0, Lru/rocketbank/core/widgets/SnackbarManager;->mCurrentSnackbar:Lru/rocketbank/core/widgets/SnackbarManager$SnackbarRecord;

    const/4 v0, 0x0

    .line 171
    iput-object v0, p0, Lru/rocketbank/core/widgets/SnackbarManager;->mNextSnackbar:Lru/rocketbank/core/widgets/SnackbarManager$SnackbarRecord;

    .line 173
    iget-object v1, p0, Lru/rocketbank/core/widgets/SnackbarManager;->mCurrentSnackbar:Lru/rocketbank/core/widgets/SnackbarManager$SnackbarRecord;

    invoke-static {v1}, Lru/rocketbank/core/widgets/SnackbarManager$SnackbarRecord;->access$200(Lru/rocketbank/core/widgets/SnackbarManager$SnackbarRecord;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lru/rocketbank/core/widgets/SnackbarManager$Callback;

    if-eqz v1, :cond_0

    .line 175
    invoke-interface {v1}, Lru/rocketbank/core/widgets/SnackbarManager$Callback;->show()V

    return-void

    .line 178
    :cond_0
    iput-object v0, p0, Lru/rocketbank/core/widgets/SnackbarManager;->mCurrentSnackbar:Lru/rocketbank/core/widgets/SnackbarManager$SnackbarRecord;

    :cond_1
    return-void
.end method


# virtual methods
.method public final cancelTimeout(Lru/rocketbank/core/widgets/SnackbarManager$Callback;)V
    .locals 2

    .line 127
    iget-object v0, p0, Lru/rocketbank/core/widgets/SnackbarManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6193
    :try_start_0
    iget-object v1, p0, Lru/rocketbank/core/widgets/SnackbarManager;->mCurrentSnackbar:Lru/rocketbank/core/widgets/SnackbarManager$SnackbarRecord;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lru/rocketbank/core/widgets/SnackbarManager;->mCurrentSnackbar:Lru/rocketbank/core/widgets/SnackbarManager$SnackbarRecord;

    invoke-virtual {v1, p1}, Lru/rocketbank/core/widgets/SnackbarManager$SnackbarRecord;->isSnackbar(Lru/rocketbank/core/widgets/SnackbarManager$Callback;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 129
    iget-object p1, p0, Lru/rocketbank/core/widgets/SnackbarManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lru/rocketbank/core/widgets/SnackbarManager;->mCurrentSnackbar:Lru/rocketbank/core/widgets/SnackbarManager$SnackbarRecord;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 131
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final dismiss(Lru/rocketbank/core/widgets/SnackbarManager$Callback;I)V
    .locals 4

    .line 89
    iget-object v0, p0, Lru/rocketbank/core/widgets/SnackbarManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2193
    :try_start_0
    iget-object v1, p0, Lru/rocketbank/core/widgets/SnackbarManager;->mCurrentSnackbar:Lru/rocketbank/core/widgets/SnackbarManager$SnackbarRecord;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lru/rocketbank/core/widgets/SnackbarManager;->mCurrentSnackbar:Lru/rocketbank/core/widgets/SnackbarManager$SnackbarRecord;

    invoke-virtual {v1, p1}, Lru/rocketbank/core/widgets/SnackbarManager$SnackbarRecord;->isSnackbar(Lru/rocketbank/core/widgets/SnackbarManager$Callback;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eqz v1, :cond_1

    .line 91
    iget-object p1, p0, Lru/rocketbank/core/widgets/SnackbarManager;->mCurrentSnackbar:Lru/rocketbank/core/widgets/SnackbarManager$SnackbarRecord;

    .line 3184
    invoke-static {p1}, Lru/rocketbank/core/widgets/SnackbarManager$SnackbarRecord;->access$200(Lru/rocketbank/core/widgets/SnackbarManager$SnackbarRecord;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/widgets/SnackbarManager$Callback;

    if-eqz p1, :cond_3

    .line 3186
    invoke-interface {p1, p2}, Lru/rocketbank/core/widgets/SnackbarManager$Callback;->dismiss(I)V

    goto :goto_1

    .line 3197
    :cond_1
    iget-object v1, p0, Lru/rocketbank/core/widgets/SnackbarManager;->mNextSnackbar:Lru/rocketbank/core/widgets/SnackbarManager$SnackbarRecord;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lru/rocketbank/core/widgets/SnackbarManager;->mNextSnackbar:Lru/rocketbank/core/widgets/SnackbarManager$SnackbarRecord;

    invoke-virtual {v1, p1}, Lru/rocketbank/core/widgets/SnackbarManager$SnackbarRecord;->isSnackbar(Lru/rocketbank/core/widgets/SnackbarManager$Callback;)Z

    move-result p1

    if-eqz p1, :cond_2

    move v2, v3

    :cond_2
    if-eqz v2, :cond_3

    .line 93
    iget-object p1, p0, Lru/rocketbank/core/widgets/SnackbarManager;->mNextSnackbar:Lru/rocketbank/core/widgets/SnackbarManager$SnackbarRecord;

    .line 4184
    invoke-static {p1}, Lru/rocketbank/core/widgets/SnackbarManager$SnackbarRecord;->access$200(Lru/rocketbank/core/widgets/SnackbarManager$SnackbarRecord;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/widgets/SnackbarManager$Callback;

    if-eqz p1, :cond_3

    .line 4186
    invoke-interface {p1, p2}, Lru/rocketbank/core/widgets/SnackbarManager$Callback;->dismiss(I)V

    .line 95
    :cond_3
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final isCurrentOrNext(Lru/rocketbank/core/widgets/SnackbarManager$Callback;)Z
    .locals 4

    .line 149
    iget-object v0, p0, Lru/rocketbank/core/widgets/SnackbarManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 8193
    :try_start_0
    iget-object v1, p0, Lru/rocketbank/core/widgets/SnackbarManager;->mCurrentSnackbar:Lru/rocketbank/core/widgets/SnackbarManager$SnackbarRecord;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lru/rocketbank/core/widgets/SnackbarManager;->mCurrentSnackbar:Lru/rocketbank/core/widgets/SnackbarManager$SnackbarRecord;

    invoke-virtual {v1, p1}, Lru/rocketbank/core/widgets/SnackbarManager$SnackbarRecord;->isSnackbar(Lru/rocketbank/core/widgets/SnackbarManager$Callback;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-nez v1, :cond_2

    .line 8197
    iget-object v1, p0, Lru/rocketbank/core/widgets/SnackbarManager;->mNextSnackbar:Lru/rocketbank/core/widgets/SnackbarManager$SnackbarRecord;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lru/rocketbank/core/widgets/SnackbarManager;->mNextSnackbar:Lru/rocketbank/core/widgets/SnackbarManager$SnackbarRecord;

    invoke-virtual {v1, p1}, Lru/rocketbank/core/widgets/SnackbarManager$SnackbarRecord;->isSnackbar(Lru/rocketbank/core/widgets/SnackbarManager$Callback;)Z

    move-result p1

    if-eqz p1, :cond_1

    move p1, v3

    goto :goto_1

    :cond_1
    move p1, v2

    :goto_1
    if-eqz p1, :cond_3

    :cond_2
    move v2, v3

    .line 150
    :cond_3
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p1

    .line 151
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final onDismissed(Lru/rocketbank/core/widgets/SnackbarManager$Callback;)V
    .locals 2

    .line 103
    iget-object v0, p0, Lru/rocketbank/core/widgets/SnackbarManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4193
    :try_start_0
    iget-object v1, p0, Lru/rocketbank/core/widgets/SnackbarManager;->mCurrentSnackbar:Lru/rocketbank/core/widgets/SnackbarManager$SnackbarRecord;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lru/rocketbank/core/widgets/SnackbarManager;->mCurrentSnackbar:Lru/rocketbank/core/widgets/SnackbarManager$SnackbarRecord;

    invoke-virtual {v1, p1}, Lru/rocketbank/core/widgets/SnackbarManager$SnackbarRecord;->isSnackbar(Lru/rocketbank/core/widgets/SnackbarManager$Callback;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 106
    iput-object p1, p0, Lru/rocketbank/core/widgets/SnackbarManager;->mCurrentSnackbar:Lru/rocketbank/core/widgets/SnackbarManager$SnackbarRecord;

    .line 107
    iget-object p1, p0, Lru/rocketbank/core/widgets/SnackbarManager;->mNextSnackbar:Lru/rocketbank/core/widgets/SnackbarManager$SnackbarRecord;

    if-eqz p1, :cond_1

    .line 108
    invoke-direct {p0}, Lru/rocketbank/core/widgets/SnackbarManager;->showNextSnackbarLocked()V

    .line 111
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final onShown(Lru/rocketbank/core/widgets/SnackbarManager$Callback;)V
    .locals 2

    .line 119
    iget-object v0, p0, Lru/rocketbank/core/widgets/SnackbarManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5193
    :try_start_0
    iget-object v1, p0, Lru/rocketbank/core/widgets/SnackbarManager;->mCurrentSnackbar:Lru/rocketbank/core/widgets/SnackbarManager$SnackbarRecord;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lru/rocketbank/core/widgets/SnackbarManager;->mCurrentSnackbar:Lru/rocketbank/core/widgets/SnackbarManager$SnackbarRecord;

    invoke-virtual {v1, p1}, Lru/rocketbank/core/widgets/SnackbarManager$SnackbarRecord;->isSnackbar(Lru/rocketbank/core/widgets/SnackbarManager$Callback;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 121
    iget-object p1, p0, Lru/rocketbank/core/widgets/SnackbarManager;->mCurrentSnackbar:Lru/rocketbank/core/widgets/SnackbarManager$SnackbarRecord;

    invoke-direct {p0, p1}, Lru/rocketbank/core/widgets/SnackbarManager;->scheduleTimeoutLocked(Lru/rocketbank/core/widgets/SnackbarManager$SnackbarRecord;)V

    .line 123
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final restoreTimeout(Lru/rocketbank/core/widgets/SnackbarManager$Callback;)V
    .locals 2

    .line 135
    iget-object v0, p0, Lru/rocketbank/core/widgets/SnackbarManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 7193
    :try_start_0
    iget-object v1, p0, Lru/rocketbank/core/widgets/SnackbarManager;->mCurrentSnackbar:Lru/rocketbank/core/widgets/SnackbarManager$SnackbarRecord;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lru/rocketbank/core/widgets/SnackbarManager;->mCurrentSnackbar:Lru/rocketbank/core/widgets/SnackbarManager$SnackbarRecord;

    invoke-virtual {v1, p1}, Lru/rocketbank/core/widgets/SnackbarManager$SnackbarRecord;->isSnackbar(Lru/rocketbank/core/widgets/SnackbarManager$Callback;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 137
    iget-object p1, p0, Lru/rocketbank/core/widgets/SnackbarManager;->mCurrentSnackbar:Lru/rocketbank/core/widgets/SnackbarManager$SnackbarRecord;

    invoke-direct {p0, p1}, Lru/rocketbank/core/widgets/SnackbarManager;->scheduleTimeoutLocked(Lru/rocketbank/core/widgets/SnackbarManager$SnackbarRecord;)V

    .line 139
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final show(ILru/rocketbank/core/widgets/SnackbarManager$Callback;)V
    .locals 4

    .line 57
    iget-object v0, p0, Lru/rocketbank/core/widgets/SnackbarManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1193
    :try_start_0
    iget-object v1, p0, Lru/rocketbank/core/widgets/SnackbarManager;->mCurrentSnackbar:Lru/rocketbank/core/widgets/SnackbarManager$SnackbarRecord;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lru/rocketbank/core/widgets/SnackbarManager;->mCurrentSnackbar:Lru/rocketbank/core/widgets/SnackbarManager$SnackbarRecord;

    invoke-virtual {v1, p2}, Lru/rocketbank/core/widgets/SnackbarManager$SnackbarRecord;->isSnackbar(Lru/rocketbank/core/widgets/SnackbarManager$Callback;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eqz v1, :cond_1

    .line 60
    iget-object p2, p0, Lru/rocketbank/core/widgets/SnackbarManager;->mCurrentSnackbar:Lru/rocketbank/core/widgets/SnackbarManager$SnackbarRecord;

    invoke-static {p2, p1}, Lru/rocketbank/core/widgets/SnackbarManager$SnackbarRecord;->access$102(Lru/rocketbank/core/widgets/SnackbarManager$SnackbarRecord;I)I

    .line 64
    iget-object p1, p0, Lru/rocketbank/core/widgets/SnackbarManager;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lru/rocketbank/core/widgets/SnackbarManager;->mCurrentSnackbar:Lru/rocketbank/core/widgets/SnackbarManager$SnackbarRecord;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 65
    iget-object p1, p0, Lru/rocketbank/core/widgets/SnackbarManager;->mCurrentSnackbar:Lru/rocketbank/core/widgets/SnackbarManager$SnackbarRecord;

    invoke-direct {p0, p1}, Lru/rocketbank/core/widgets/SnackbarManager;->scheduleTimeoutLocked(Lru/rocketbank/core/widgets/SnackbarManager$SnackbarRecord;)V

    .line 66
    monitor-exit v0

    return-void

    .line 1197
    :cond_1
    iget-object v1, p0, Lru/rocketbank/core/widgets/SnackbarManager;->mNextSnackbar:Lru/rocketbank/core/widgets/SnackbarManager$SnackbarRecord;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lru/rocketbank/core/widgets/SnackbarManager;->mNextSnackbar:Lru/rocketbank/core/widgets/SnackbarManager$SnackbarRecord;

    invoke-virtual {v1, p2}, Lru/rocketbank/core/widgets/SnackbarManager$SnackbarRecord;->isSnackbar(Lru/rocketbank/core/widgets/SnackbarManager$Callback;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v3

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    if-eqz v1, :cond_3

    .line 69
    iget-object p2, p0, Lru/rocketbank/core/widgets/SnackbarManager;->mNextSnackbar:Lru/rocketbank/core/widgets/SnackbarManager$SnackbarRecord;

    invoke-static {p2, p1}, Lru/rocketbank/core/widgets/SnackbarManager$SnackbarRecord;->access$102(Lru/rocketbank/core/widgets/SnackbarManager$SnackbarRecord;I)I

    goto :goto_2

    .line 72
    :cond_3
    new-instance v1, Lru/rocketbank/core/widgets/SnackbarManager$SnackbarRecord;

    invoke-direct {v1, p1, p2}, Lru/rocketbank/core/widgets/SnackbarManager$SnackbarRecord;-><init>(ILru/rocketbank/core/widgets/SnackbarManager$Callback;)V

    iput-object v1, p0, Lru/rocketbank/core/widgets/SnackbarManager;->mNextSnackbar:Lru/rocketbank/core/widgets/SnackbarManager$SnackbarRecord;

    .line 75
    :goto_2
    iget-object p1, p0, Lru/rocketbank/core/widgets/SnackbarManager;->mCurrentSnackbar:Lru/rocketbank/core/widgets/SnackbarManager$SnackbarRecord;

    if-eqz p1, :cond_5

    iget-object p1, p0, Lru/rocketbank/core/widgets/SnackbarManager;->mCurrentSnackbar:Lru/rocketbank/core/widgets/SnackbarManager$SnackbarRecord;

    .line 2184
    invoke-static {p1}, Lru/rocketbank/core/widgets/SnackbarManager$SnackbarRecord;->access$200(Lru/rocketbank/core/widgets/SnackbarManager$SnackbarRecord;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/widgets/SnackbarManager$Callback;

    if-eqz p1, :cond_4

    const/4 p2, 0x4

    .line 2186
    invoke-interface {p1, p2}, Lru/rocketbank/core/widgets/SnackbarManager$Callback;->dismiss(I)V

    move v2, v3

    :cond_4
    if-eqz v2, :cond_5

    .line 78
    monitor-exit v0

    return-void

    :cond_5
    const/4 p1, 0x0

    .line 81
    iput-object p1, p0, Lru/rocketbank/core/widgets/SnackbarManager;->mCurrentSnackbar:Lru/rocketbank/core/widgets/SnackbarManager$SnackbarRecord;

    .line 83
    invoke-direct {p0}, Lru/rocketbank/core/widgets/SnackbarManager;->showNextSnackbarLocked()V

    .line 85
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
