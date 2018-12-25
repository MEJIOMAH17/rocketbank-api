.class final Lbolts/Task$15;
.super Ljava/lang/Object;
.source "Task.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbolts/Task;->completeAfterTask$10a2f083$7e45c1e(Lbolts/AndroidExecutors$1;Lcom/google/maps/android/clustering/ClusterManager$OnClusterItemInfoWindowClickListener;Lbolts/Task;Ljava/util/concurrent/Executor;Landroid/support/compat/R$dimen;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$continuation$786b72d9:Lcom/google/maps/android/clustering/ClusterManager$OnClusterItemInfoWindowClickListener;

.field final synthetic val$ct$1927e1e2:Landroid/support/compat/R$dimen;

.field final synthetic val$task:Lbolts/Task;

.field final synthetic val$tcs$2d5511be:Lbolts/AndroidExecutors$1;


# direct methods
.method constructor <init>(Landroid/support/compat/R$dimen;Lbolts/AndroidExecutors$1;Lcom/google/maps/android/clustering/ClusterManager$OnClusterItemInfoWindowClickListener;Lbolts/Task;)V
    .locals 0

    .line 908
    iput-object p1, p0, Lbolts/Task$15;->val$ct$1927e1e2:Landroid/support/compat/R$dimen;

    iput-object p2, p0, Lbolts/Task$15;->val$tcs$2d5511be:Lbolts/AndroidExecutors$1;

    iput-object p3, p0, Lbolts/Task$15;->val$continuation$786b72d9:Lcom/google/maps/android/clustering/ClusterManager$OnClusterItemInfoWindowClickListener;

    iput-object p4, p0, Lbolts/Task$15;->val$task:Lbolts/Task;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 911
    iget-object v0, p0, Lbolts/Task$15;->val$ct$1927e1e2:Landroid/support/compat/R$dimen;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbolts/Task$15;->val$ct$1927e1e2:Landroid/support/compat/R$dimen;

    invoke-virtual {v0}, Landroid/support/compat/R$dimen;->isCancellationRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 912
    iget-object v0, p0, Lbolts/Task$15;->val$tcs$2d5511be:Lbolts/AndroidExecutors$1;

    invoke-virtual {v0}, Lbolts/AndroidExecutors$1;->setCancelled()V

    return-void

    .line 917
    :cond_0
    :try_start_0
    iget-object v0, p0, Lbolts/Task$15;->val$continuation$786b72d9:Lcom/google/maps/android/clustering/ClusterManager$OnClusterItemInfoWindowClickListener;

    iget-object v1, p0, Lbolts/Task$15;->val$task:Lbolts/Task;

    invoke-interface {v0, v1}, Lcom/google/maps/android/clustering/ClusterManager$OnClusterItemInfoWindowClickListener;->then(Lbolts/Task;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbolts/Task;

    if-nez v0, :cond_1

    .line 919
    iget-object v0, p0, Lbolts/Task$15;->val$tcs$2d5511be:Lbolts/AndroidExecutors$1;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lbolts/AndroidExecutors$1;->setResult(Ljava/lang/Object;)V

    return-void

    .line 921
    :cond_1
    new-instance v1, Lbolts/Task$15$1;

    invoke-direct {v1, p0}, Lbolts/Task$15$1;-><init>(Lbolts/Task$15;)V

    invoke-virtual {v0, v1}, Lbolts/Task;->continueWith$5ad45bad(Lcom/google/maps/android/clustering/ClusterManager$OnClusterItemInfoWindowClickListener;)Lbolts/Task;
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 943
    iget-object v1, p0, Lbolts/Task$15;->val$tcs$2d5511be:Lbolts/AndroidExecutors$1;

    invoke-virtual {v1, v0}, Lbolts/AndroidExecutors$1;->setError(Ljava/lang/Exception;)V

    return-void

    .line 941
    :catch_1
    iget-object v0, p0, Lbolts/Task$15;->val$tcs$2d5511be:Lbolts/AndroidExecutors$1;

    invoke-virtual {v0}, Lbolts/AndroidExecutors$1;->setCancelled()V

    return-void
.end method
