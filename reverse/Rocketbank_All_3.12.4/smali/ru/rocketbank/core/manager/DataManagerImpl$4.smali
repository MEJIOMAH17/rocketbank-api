.class final Lru/rocketbank/core/manager/DataManagerImpl$4;
.super Ljava/lang/Object;
.source "DataManagerImpl.java"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/core/manager/DataManagerImpl;->loadProviders(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Action1<",
        "Lru/rocketbank/core/network/model/ProvidersResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/core/manager/DataManagerImpl;


# direct methods
.method constructor <init>(Lru/rocketbank/core/manager/DataManagerImpl;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lru/rocketbank/core/manager/DataManagerImpl$4;->this$0:Lru/rocketbank/core/manager/DataManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)V
    .locals 1

    .line 131
    check-cast p1, Lru/rocketbank/core/network/model/ProvidersResponse;

    .line 1134
    iget-object v0, p0, Lru/rocketbank/core/manager/DataManagerImpl$4;->this$0:Lru/rocketbank/core/manager/DataManagerImpl;

    invoke-static {v0}, Lru/rocketbank/core/manager/DataManagerImpl;->access$200(Lru/rocketbank/core/manager/DataManagerImpl;)Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method
