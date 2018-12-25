.class final Lbolts/Task$15$1;
.super Ljava/lang/Object;
.source "Task.java"

# interfaces
.implements Lcom/google/maps/android/clustering/ClusterManager$OnClusterItemInfoWindowClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbolts/Task$15;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/maps/android/clustering/ClusterManager$OnClusterItemInfoWindowClickListener<",
        "TTContinuationResult;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lbolts/Task$15;


# direct methods
.method constructor <init>(Lbolts/Task$15;)V
    .locals 0

    .line 921
    iput-object p1, p0, Lbolts/Task$15$1;->this$0:Lbolts/Task$15;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic then(Lbolts/Task;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1924
    iget-object v0, p0, Lbolts/Task$15$1;->this$0:Lbolts/Task$15;

    iget-object v0, v0, Lbolts/Task$15;->val$ct$1927e1e2:Landroid/support/compat/R$dimen;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbolts/Task$15$1;->this$0:Lbolts/Task$15;

    iget-object v0, v0, Lbolts/Task$15;->val$ct$1927e1e2:Landroid/support/compat/R$dimen;

    invoke-virtual {v0}, Landroid/support/compat/R$dimen;->isCancellationRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1925
    iget-object p1, p0, Lbolts/Task$15$1;->this$0:Lbolts/Task$15;

    iget-object p1, p1, Lbolts/Task$15;->val$tcs$2d5511be:Lbolts/AndroidExecutors$1;

    invoke-virtual {p1}, Lbolts/AndroidExecutors$1;->setCancelled()V

    goto :goto_0

    .line 1929
    :cond_0
    invoke-virtual {p1}, Lbolts/Task;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1930
    iget-object p1, p0, Lbolts/Task$15$1;->this$0:Lbolts/Task$15;

    iget-object p1, p1, Lbolts/Task$15;->val$tcs$2d5511be:Lbolts/AndroidExecutors$1;

    invoke-virtual {p1}, Lbolts/AndroidExecutors$1;->setCancelled()V

    goto :goto_0

    .line 1931
    :cond_1
    invoke-virtual {p1}, Lbolts/Task;->isFaulted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1932
    iget-object v0, p0, Lbolts/Task$15$1;->this$0:Lbolts/Task$15;

    iget-object v0, v0, Lbolts/Task$15;->val$tcs$2d5511be:Lbolts/AndroidExecutors$1;

    invoke-virtual {p1}, Lbolts/Task;->getError()Ljava/lang/Exception;

    move-result-object p1

    invoke-virtual {v0, p1}, Lbolts/AndroidExecutors$1;->setError(Ljava/lang/Exception;)V

    goto :goto_0

    .line 1934
    :cond_2
    iget-object v0, p0, Lbolts/Task$15$1;->this$0:Lbolts/Task$15;

    iget-object v0, v0, Lbolts/Task$15;->val$tcs$2d5511be:Lbolts/AndroidExecutors$1;

    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lbolts/AndroidExecutors$1;->setResult(Ljava/lang/Object;)V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
