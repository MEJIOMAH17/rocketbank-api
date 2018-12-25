.class final Lru/rocketbank/r2d2/root/chat/sync/MessageSync$splitMessages$1;
.super Lkotlin/jvm/internal/Lambda;
.source "MessageSync.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/root/chat/sync/MessageSync;->splitMessages(I)Lkotlin/jvm/functions/Function1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lru/rocketbank/core/model/message/MessageIn;",
        "Ljava/util/List<",
        "+",
        "Lru/rocketbank/core/model/message/MessageIn;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic $time:I

.field final synthetic this$0:Lru/rocketbank/r2d2/root/chat/sync/MessageSync;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/root/chat/sync/MessageSync;I)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/root/chat/sync/MessageSync$splitMessages$1;->this$0:Lru/rocketbank/r2d2/root/chat/sync/MessageSync;

    iput p2, p0, Lru/rocketbank/r2d2/root/chat/sync/MessageSync$splitMessages$1;->$time:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 29
    check-cast p1, Lru/rocketbank/core/model/message/MessageIn;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/root/chat/sync/MessageSync$splitMessages$1;->invoke(Lru/rocketbank/core/model/message/MessageIn;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lru/rocketbank/core/model/message/MessageIn;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lru/rocketbank/core/model/message/MessageIn;",
            ")",
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/message/MessageIn;",
            ">;"
        }
    .end annotation

    const-string v0, "x"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/sync/MessageSync$splitMessages$1;->this$0:Lru/rocketbank/r2d2/root/chat/sync/MessageSync;

    iget v1, p0, Lru/rocketbank/r2d2/root/chat/sync/MessageSync$splitMessages$1;->$time:I

    invoke-static {v0, v1, p1}, Lru/rocketbank/r2d2/root/chat/sync/MessageSync;->access$splitMessage(Lru/rocketbank/r2d2/root/chat/sync/MessageSync;ILru/rocketbank/core/model/message/MessageIn;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
