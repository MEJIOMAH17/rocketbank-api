.class final Lcom/bumptech/glide/RequestManager$RequestManagerConnectivityListener;
.super Ljava/lang/Object;
.source "RequestManager.java"

# interfaces
.implements Lcom/bumptech/glide/manager/ConnectivityMonitor$ConnectivityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/RequestManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RequestManagerConnectivityListener"
.end annotation


# instance fields
.field private final requestTracker$293e145d:Landroid/support/v4/os/BuildCompat;


# direct methods
.method public constructor <init>(Landroid/support/v4/os/BuildCompat;)V
    .locals 0

    .line 792
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 793
    iput-object p1, p0, Lcom/bumptech/glide/RequestManager$RequestManagerConnectivityListener;->requestTracker$293e145d:Landroid/support/v4/os/BuildCompat;

    return-void
.end method


# virtual methods
.method public final onConnectivityChanged(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 799
    iget-object p1, p0, Lcom/bumptech/glide/RequestManager$RequestManagerConnectivityListener;->requestTracker$293e145d:Landroid/support/v4/os/BuildCompat;

    invoke-virtual {p1}, Landroid/support/v4/os/BuildCompat;->restartRequests()V

    :cond_0
    return-void
.end method
