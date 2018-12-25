.class public final Landroid/support/v4/os/BuildCompat;
.super Ljava/lang/Object;
.source "BuildCompat.java"


# instance fields
.field private isPaused:Z

.field private final pendingRequests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/request/Request;",
            ">;"
        }
    .end annotation
.end field

.field private final requests:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/bumptech/glide/request/Request;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1015
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1022
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/os/BuildCompat;->requests:Ljava/util/Set;

    .line 1026
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/os/BuildCompat;->pendingRequests:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final clearRequests()V
    .locals 2

    .line 1093
    iget-object v0, p0, Landroid/support/v4/os/BuildCompat;->requests:Ljava/util/Set;

    invoke-static {v0}, Lcom/bumptech/glide/util/Util;->getSnapshot(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/request/Request;

    .line 1094
    invoke-interface {v1}, Lcom/bumptech/glide/request/Request;->clear()V

    goto :goto_0

    .line 1096
    :cond_0
    iget-object v0, p0, Landroid/support/v4/os/BuildCompat;->pendingRequests:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final pauseRequests()V
    .locals 3

    const/4 v0, 0x1

    .line 1067
    iput-boolean v0, p0, Landroid/support/v4/os/BuildCompat;->isPaused:Z

    .line 1068
    iget-object v0, p0, Landroid/support/v4/os/BuildCompat;->requests:Ljava/util/Set;

    invoke-static {v0}, Lcom/bumptech/glide/util/Util;->getSnapshot(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/request/Request;

    .line 1069
    invoke-interface {v1}, Lcom/bumptech/glide/request/Request;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1070
    invoke-interface {v1}, Lcom/bumptech/glide/request/Request;->pause()V

    .line 1071
    iget-object v2, p0, Landroid/support/v4/os/BuildCompat;->pendingRequests:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final removeRequest(Lcom/bumptech/glide/request/Request;)V
    .locals 1

    .line 1052
    iget-object v0, p0, Landroid/support/v4/os/BuildCompat;->requests:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1053
    iget-object v0, p0, Landroid/support/v4/os/BuildCompat;->pendingRequests:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final restartRequests()V
    .locals 3

    .line 1103
    iget-object v0, p0, Landroid/support/v4/os/BuildCompat;->requests:Ljava/util/Set;

    invoke-static {v0}, Lcom/bumptech/glide/util/Util;->getSnapshot(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/request/Request;

    .line 1104
    invoke-interface {v1}, Lcom/bumptech/glide/request/Request;->isComplete()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v1}, Lcom/bumptech/glide/request/Request;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1106
    invoke-interface {v1}, Lcom/bumptech/glide/request/Request;->pause()V

    .line 1107
    iget-boolean v2, p0, Landroid/support/v4/os/BuildCompat;->isPaused:Z

    if-nez v2, :cond_1

    .line 1108
    invoke-interface {v1}, Lcom/bumptech/glide/request/Request;->begin()V

    goto :goto_0

    .line 1110
    :cond_1
    iget-object v2, p0, Landroid/support/v4/os/BuildCompat;->pendingRequests:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final resumeRequests()V
    .locals 3

    const/4 v0, 0x0

    .line 1080
    iput-boolean v0, p0, Landroid/support/v4/os/BuildCompat;->isPaused:Z

    .line 1081
    iget-object v0, p0, Landroid/support/v4/os/BuildCompat;->requests:Ljava/util/Set;

    invoke-static {v0}, Lcom/bumptech/glide/util/Util;->getSnapshot(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/request/Request;

    .line 1082
    invoke-interface {v1}, Lcom/bumptech/glide/request/Request;->isComplete()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v1}, Lcom/bumptech/glide/request/Request;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v1}, Lcom/bumptech/glide/request/Request;->isRunning()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1083
    invoke-interface {v1}, Lcom/bumptech/glide/request/Request;->begin()V

    goto :goto_0

    .line 1086
    :cond_1
    iget-object v0, p0, Landroid/support/v4/os/BuildCompat;->pendingRequests:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final runRequest(Lcom/bumptech/glide/request/Request;)V
    .locals 1

    .line 1035
    iget-object v0, p0, Landroid/support/v4/os/BuildCompat;->requests:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1036
    iget-boolean v0, p0, Landroid/support/v4/os/BuildCompat;->isPaused:Z

    if-nez v0, :cond_0

    .line 1037
    invoke-interface {p1}, Lcom/bumptech/glide/request/Request;->begin()V

    return-void

    .line 1039
    :cond_0
    iget-object v0, p0, Landroid/support/v4/os/BuildCompat;->pendingRequests:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
