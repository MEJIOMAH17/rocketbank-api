.class final Lru/rocketbank/core/manager/DataManagerImpl$3;
.super Ljava/lang/Object;
.source "DataManagerImpl.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/core/manager/DataManagerImpl;->loadProviders()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func1<",
        "Ljava/io/File;",
        "Lru/rocketbank/core/network/model/ProvidersResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/core/manager/DataManagerImpl;


# direct methods
.method constructor <init>(Lru/rocketbank/core/manager/DataManagerImpl;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lru/rocketbank/core/manager/DataManagerImpl$3;->this$0:Lru/rocketbank/core/manager/DataManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1091
    iget-object p1, p0, Lru/rocketbank/core/manager/DataManagerImpl$3;->this$0:Lru/rocketbank/core/manager/DataManagerImpl;

    invoke-static {p1}, Lru/rocketbank/core/manager/DataManagerImpl;->access$300(Lru/rocketbank/core/manager/DataManagerImpl;)Ljava/io/File;

    move-result-object p1

    const-class v0, Lru/rocketbank/core/network/model/ProvidersResponse;

    invoke-static {p1, v0}, Lru/rocketbank/core/manager/DataManagerImpl;->access$400$7e9cec54(Ljava/io/File;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/network/model/ProvidersResponse;

    return-object p1
.end method
