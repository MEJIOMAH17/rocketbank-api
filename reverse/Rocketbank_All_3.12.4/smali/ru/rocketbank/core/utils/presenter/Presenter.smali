.class public Lru/rocketbank/core/utils/presenter/Presenter;
.super Ljava/lang/Object;
.source "Presenter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/core/utils/presenter/Presenter$OnDestroyListener;
    }
.end annotation


# instance fields
.field private isRestarted:Z

.field private final onDestroyListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lru/rocketbank/core/utils/presenter/Presenter$OnDestroyListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lru/rocketbank/core/utils/presenter/Presenter;->onDestroyListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method


# virtual methods
.method public final addOnDestroyListener(Lru/rocketbank/core/utils/presenter/Presenter$OnDestroyListener;)V
    .locals 1

    const-string v0, "onDestroyListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lru/rocketbank/core/utils/presenter/Presenter;->onDestroyListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final isRestarted()Z
    .locals 1

    .line 9
    iget-boolean v0, p0, Lru/rocketbank/core/utils/presenter/Presenter;->isRestarted:Z

    return v0
.end method

.method public onAttached(Ljava/lang/Object;)V
    .locals 1

    const-string v0, "target"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 21
    iput-boolean p1, p0, Lru/rocketbank/core/utils/presenter/Presenter;->isRestarted:Z

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 37
    iget-object v0, p0, Lru/rocketbank/core/utils/presenter/Presenter;->onDestroyListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lru/rocketbank/core/utils/presenter/Presenter$OnDestroyListener;

    .line 38
    invoke-interface {v1}, Lru/rocketbank/core/utils/presenter/Presenter$OnDestroyListener;->onDestroy()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onDetached(Ljava/lang/Object;)V
    .locals 1

    const-string v0, "target"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public onRestart()V
    .locals 0

    return-void
.end method

.method public onSavedInstanceState(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "outState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final removeOnDestroyListener(Lru/rocketbank/core/utils/presenter/Presenter$OnDestroyListener;)V
    .locals 1

    const-string v0, "onDestroyListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lru/rocketbank/core/utils/presenter/Presenter;->onDestroyListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final setRestarted(Z)V
    .locals 0

    .line 9
    iput-boolean p1, p0, Lru/rocketbank/core/utils/presenter/Presenter;->isRestarted:Z

    return-void
.end method
