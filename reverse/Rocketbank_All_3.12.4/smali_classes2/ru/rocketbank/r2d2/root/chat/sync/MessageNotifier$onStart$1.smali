.class final Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier$onStart$1;
.super Ljava/lang/Object;
.source "MessageNotifier.kt"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/functions/Action1<",
        "Lru/rocketbank/core/model/UserModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier$onStart$1;->this$0:Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 21
    check-cast p1, Lru/rocketbank/core/model/UserModel;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier$onStart$1;->call(Lru/rocketbank/core/model/UserModel;)V

    return-void
.end method

.method public final call(Lru/rocketbank/core/model/UserModel;)V
    .locals 2

    .line 43
    sget-object p1, Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier;->Companion:Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier$Companion;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier$Companion;->getTAG()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "new user model "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier$onStart$1;->this$0:Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier;

    invoke-static {v1}, Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier;->access$getChannelName$p(Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier$onStart$1;->this$0:Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier;

    invoke-static {v1}, Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier;->access$getAuthorization$p(Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier;)Lru/rocketbank/core/user/Authorization;

    move-result-object v1

    invoke-virtual {v1}, Lru/rocketbank/core/user/Authorization;->getPusherToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    iget-object p1, p0, Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier$onStart$1;->this$0:Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier;

    invoke-static {p1}, Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier;->access$getAuthorization$p(Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier;)Lru/rocketbank/core/user/Authorization;

    move-result-object p1

    invoke-virtual {p1}, Lru/rocketbank/core/user/Authorization;->isAuthorized()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 46
    sget-object p1, Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier;->Companion:Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier$Companion;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier$Companion;->getTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Ok, refresh me"

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    iget-object p1, p0, Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier$onStart$1;->this$0:Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier;->disconnect()V

    .line 48
    iget-object p1, p0, Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier$onStart$1;->this$0:Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier;->connect()V

    :cond_0
    return-void
.end method
