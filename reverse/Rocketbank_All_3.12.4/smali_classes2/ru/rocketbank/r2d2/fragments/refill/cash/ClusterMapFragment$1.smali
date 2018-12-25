.class Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment$1;
.super Ljava/lang/Object;
.source "ClusterMapFragment.java"

# interfaces
.implements Lru/rocketbank/core/manager/AtmsManager$RecreateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment$1;->this$0:Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRealmRecreated()V
    .locals 2

    .line 102
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment$1;->this$0:Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment;

    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment$1;->this$0:Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lru/rocketbank/core/manager/AtmsManager;->getConfiguration(Landroid/content/Context;)Lio/realm/RealmConfiguration;

    move-result-object v1

    invoke-static {v1}, Lio/realm/Realm;->getInstance(Lio/realm/RealmConfiguration;)Lio/realm/Realm;

    move-result-object v1

    invoke-static {v0, v1}, Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment;->access$002(Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment;Lio/realm/Realm;)Lio/realm/Realm;

    return-void
.end method
