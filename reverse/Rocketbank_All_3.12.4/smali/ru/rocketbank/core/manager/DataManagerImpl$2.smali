.class final Lru/rocketbank/core/manager/DataManagerImpl$2;
.super Ljava/lang/Object;
.source "DataManagerImpl.java"

# interfaces
.implements Lrx/functions/Action1;


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
        "Lrx/functions/Action1<",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/core/manager/DataManagerImpl;


# direct methods
.method constructor <init>(Lru/rocketbank/core/manager/DataManagerImpl;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lru/rocketbank/core/manager/DataManagerImpl$2;->this$0:Lru/rocketbank/core/manager/DataManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)V
    .locals 2

    .line 105
    check-cast p1, Ljava/lang/Throwable;

    const-string v0, "loadProviders"

    const-string v1, "loadProviders failed"

    .line 1108
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
