.class public interface abstract Lcom/google/maps/android/clustering/ClusterManager$OnClusterInfoWindowClickListener;
.super Ljava/lang/Object;
.source "ClusterManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/maps/android/clustering/ClusterManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnClusterInfoWindowClickListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/google/maps/android/clustering/ClusterItem;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onChanged(IILjava/lang/Object;)V
.end method

.method public abstract onInserted(II)V
.end method

.method public abstract onMoved(II)V
.end method

.method public abstract onRemoved(II)V
.end method
