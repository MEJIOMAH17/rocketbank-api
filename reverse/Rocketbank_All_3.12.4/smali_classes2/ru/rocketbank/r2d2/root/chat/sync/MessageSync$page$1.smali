.class final Lru/rocketbank/r2d2/root/chat/sync/MessageSync$page$1;
.super Ljava/lang/Object;
.source "MessageSync.kt"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/root/chat/sync/MessageSync;->page(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/functions/Func1<",
        "Ljava/lang/Throwable;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/root/chat/sync/MessageSync;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/root/chat/sync/MessageSync;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/root/chat/sync/MessageSync$page$1;->this$0:Lru/rocketbank/r2d2/root/chat/sync/MessageSync;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 29
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/root/chat/sync/MessageSync$page$1;->call(Ljava/lang/Throwable;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final call(Ljava/lang/Throwable;)Z
    .locals 1

    .line 163
    iget-object p1, p0, Lru/rocketbank/r2d2/root/chat/sync/MessageSync$page$1;->this$0:Lru/rocketbank/r2d2/root/chat/sync/MessageSync;

    invoke-static {p1}, Lru/rocketbank/r2d2/root/chat/sync/MessageSync;->access$getManagerState$p(Lru/rocketbank/r2d2/root/chat/sync/MessageSync;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    sget-object v0, Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier;->Companion:Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier$Companion;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier$Companion;->getSTOPPED()I

    move-result v0

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
