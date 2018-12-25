.class final Lbolts/Task$10;
.super Ljava/lang/Object;
.source "Task.java"

# interfaces
.implements Lcom/google/maps/android/clustering/ClusterManager$OnClusterItemInfoWindowClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbolts/Task;->continueWith$20066573$17873828$23e4c4b5(Lcom/google/maps/android/clustering/ClusterManager$OnClusterItemInfoWindowClickListener;Ljava/util/concurrent/Executor;)Lbolts/Task;
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lbolts/Task;

.field final synthetic val$continuation$786b72d9:Lcom/google/maps/android/clustering/ClusterManager$OnClusterItemInfoWindowClickListener;

.field final synthetic val$ct$1927e1e2:Landroid/support/compat/R$dimen;

.field final synthetic val$executor:Ljava/util/concurrent/Executor;

.field final synthetic val$tcs$2d5511be:Lbolts/AndroidExecutors$1;


# direct methods
.method constructor <init>(Lbolts/Task;Lbolts/AndroidExecutors$1;Lcom/google/maps/android/clustering/ClusterManager$OnClusterItemInfoWindowClickListener;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 651
    iput-object p1, p0, Lbolts/Task$10;->this$0:Lbolts/Task;

    iput-object p2, p0, Lbolts/Task$10;->val$tcs$2d5511be:Lbolts/AndroidExecutors$1;

    iput-object p3, p0, Lbolts/Task$10;->val$continuation$786b72d9:Lcom/google/maps/android/clustering/ClusterManager$OnClusterItemInfoWindowClickListener;

    iput-object p4, p0, Lbolts/Task$10;->val$executor:Ljava/util/concurrent/Executor;

    const/4 p1, 0x0

    iput-object p1, p0, Lbolts/Task$10;->val$ct$1927e1e2:Landroid/support/compat/R$dimen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic then(Lbolts/Task;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1654
    iget-object v0, p0, Lbolts/Task$10;->val$tcs$2d5511be:Lbolts/AndroidExecutors$1;

    iget-object v1, p0, Lbolts/Task$10;->val$continuation$786b72d9:Lcom/google/maps/android/clustering/ClusterManager$OnClusterItemInfoWindowClickListener;

    iget-object v2, p0, Lbolts/Task$10;->val$executor:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, p1, v2}, Lbolts/Task;->access$000$10a2f083$7e45c1e$69af1e40(Lbolts/AndroidExecutors$1;Lcom/google/maps/android/clustering/ClusterManager$OnClusterItemInfoWindowClickListener;Lbolts/Task;Ljava/util/concurrent/Executor;)V

    const/4 p1, 0x0

    return-object p1
.end method
