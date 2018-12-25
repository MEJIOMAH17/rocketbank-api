.class final Lru/rocketbank/core/manager/FireCMManager$1;
.super Ljava/lang/Object;
.source "FireCMManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/core/manager/FireCMManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/core/manager/FireCMManager;


# direct methods
.method constructor <init>(Lru/rocketbank/core/manager/FireCMManager;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lru/rocketbank/core/manager/FireCMManager$1;->this$0:Lru/rocketbank/core/manager/FireCMManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 50
    iget-object v0, p0, Lru/rocketbank/core/manager/FireCMManager$1;->this$0:Lru/rocketbank/core/manager/FireCMManager;

    invoke-virtual {v0}, Lru/rocketbank/core/manager/FireCMManager;->sendTokenIfNeededExecute()V

    return-void
.end method
