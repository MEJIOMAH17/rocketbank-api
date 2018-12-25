.class final Lio/realm/AtmRealmClusterManager$2;
.super Ljava/lang/Object;
.source "AtmRealmClusterManager.java"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/AtmRealmClusterManager;->filter(Lcom/google/android/gms/maps/model/LatLngBounds;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Action1<",
        "Ljava/util/List<",
        "Lcom/getkeepsafe/relinker/ReLinker<",
        "TM;>;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/realm/AtmRealmClusterManager;


# direct methods
.method constructor <init>(Lio/realm/AtmRealmClusterManager;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lio/realm/AtmRealmClusterManager$2;->this$0:Lio/realm/AtmRealmClusterManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)V
    .locals 1

    .line 159
    check-cast p1, Ljava/util/List;

    .line 1162
    iget-object v0, p0, Lio/realm/AtmRealmClusterManager$2;->this$0:Lio/realm/AtmRealmClusterManager;

    invoke-static {v0}, Lio/realm/AtmRealmClusterManager;->access$101(Lio/realm/AtmRealmClusterManager;)V

    .line 1163
    iget-object v0, p0, Lio/realm/AtmRealmClusterManager$2;->this$0:Lio/realm/AtmRealmClusterManager;

    invoke-static {v0, p1}, Lio/realm/AtmRealmClusterManager;->access$201(Lio/realm/AtmRealmClusterManager;Ljava/util/Collection;)V

    .line 1164
    iget-object p1, p0, Lio/realm/AtmRealmClusterManager$2;->this$0:Lio/realm/AtmRealmClusterManager;

    invoke-virtual {p1}, Lio/realm/AtmRealmClusterManager;->cluster()V

    return-void
.end method
