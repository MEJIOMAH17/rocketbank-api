.class final Lbolts/Task$12;
.super Ljava/lang/Object;
.source "Task.java"

# interfaces
.implements Lcom/google/maps/android/clustering/ClusterManager$OnClusterItemInfoWindowClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/maps/android/clustering/ClusterManager$OnClusterItemInfoWindowClickListener<",
        "TTResult;",
        "Lbolts/Task<",
        "TTContinuationResult;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lbolts/Task;

.field final synthetic val$continuation$786b72d9:Lcom/google/maps/android/clustering/ClusterManager$OnClusterItemInfoWindowClickListener;

.field final synthetic val$ct$1927e1e2:Landroid/support/compat/R$dimen;


# direct methods
.method constructor <init>(Lbolts/Task;Lcom/google/maps/android/clustering/ClusterManager$OnClusterItemInfoWindowClickListener;)V
    .locals 0

    .line 754
    iput-object p1, p0, Lbolts/Task$12;->this$0:Lbolts/Task;

    const/4 p1, 0x0

    iput-object p1, p0, Lbolts/Task$12;->val$ct$1927e1e2:Landroid/support/compat/R$dimen;

    iput-object p2, p0, Lbolts/Task$12;->val$continuation$786b72d9:Lcom/google/maps/android/clustering/ClusterManager$OnClusterItemInfoWindowClickListener;

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

    .line 1761
    invoke-virtual {p1}, Lbolts/Task;->isFaulted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1762
    invoke-virtual {p1}, Lbolts/Task;->getError()Ljava/lang/Exception;

    move-result-object p1

    invoke-static {p1}, Lbolts/Task;->forError(Ljava/lang/Exception;)Lbolts/Task;

    move-result-object p1

    return-object p1

    .line 1763
    :cond_0
    invoke-virtual {p1}, Lbolts/Task;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1764
    invoke-static {}, Lbolts/Task;->cancelled()Lbolts/Task;

    move-result-object p1

    return-object p1

    .line 1766
    :cond_1
    iget-object v0, p0, Lbolts/Task$12;->val$continuation$786b72d9:Lcom/google/maps/android/clustering/ClusterManager$OnClusterItemInfoWindowClickListener;

    invoke-virtual {p1, v0}, Lbolts/Task;->continueWith$5ad45bad(Lcom/google/maps/android/clustering/ClusterManager$OnClusterItemInfoWindowClickListener;)Lbolts/Task;

    move-result-object p1

    return-object p1
.end method
