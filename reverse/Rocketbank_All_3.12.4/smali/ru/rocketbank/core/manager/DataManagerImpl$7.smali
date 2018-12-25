.class final Lru/rocketbank/core/manager/DataManagerImpl$7;
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

.field final synthetic val$time:I


# direct methods
.method constructor <init>(Lru/rocketbank/core/manager/DataManagerImpl;I)V
    .locals 0

    .line 119
    iput-object p1, p0, Lru/rocketbank/core/manager/DataManagerImpl$7;->this$0:Lru/rocketbank/core/manager/DataManagerImpl;

    iput p2, p0, Lru/rocketbank/core/manager/DataManagerImpl$7;->val$time:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)V
    .locals 1

    .line 1122
    iget-object p1, p0, Lru/rocketbank/core/manager/DataManagerImpl$7;->this$0:Lru/rocketbank/core/manager/DataManagerImpl;

    iget v0, p0, Lru/rocketbank/core/manager/DataManagerImpl$7;->val$time:I

    invoke-static {p1, v0}, Lru/rocketbank/core/manager/DataManagerImpl;->access$000(Lru/rocketbank/core/manager/DataManagerImpl;I)V

    return-void
.end method
