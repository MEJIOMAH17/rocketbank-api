.class final Lru/rocketbank/r2d2/root/chat/ChatAdapter$queryLastMaxId$2;
.super Lkotlin/jvm/internal/Lambda;
.source "ChatAdapter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/root/chat/ChatAdapter;->queryLastMaxId(Lru/rocketbank/r2d2/root/chat/sync/event/MessageEvent;J)Ljava/lang/Long;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Ljava/lang/Long;",
        "Lru/rocketbank/r2d2/root/chat/sync/event/PendingMessagesEvent;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lru/rocketbank/r2d2/root/chat/ChatAdapter$queryLastMaxId$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lru/rocketbank/r2d2/root/chat/ChatAdapter$queryLastMaxId$2;

    invoke-direct {v0}, Lru/rocketbank/r2d2/root/chat/ChatAdapter$queryLastMaxId$2;-><init>()V

    sput-object v0, Lru/rocketbank/r2d2/root/chat/ChatAdapter$queryLastMaxId$2;->INSTANCE:Lru/rocketbank/r2d2/root/chat/ChatAdapter$queryLastMaxId$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Long;Lru/rocketbank/r2d2/root/chat/sync/event/PendingMessagesEvent;)J
    .locals 4

    const-string v0, "event"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 435
    invoke-virtual {p2}, Lru/rocketbank/r2d2/root/chat/sync/event/PendingMessagesEvent;->getUpdate()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    int-to-long v0, p2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    goto :goto_0

    :cond_0
    const-wide/16 p1, 0x0

    :goto_0
    add-long v2, v0, p1

    return-wide v2
.end method

.method public final bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 21
    check-cast p1, Ljava/lang/Long;

    check-cast p2, Lru/rocketbank/r2d2/root/chat/sync/event/PendingMessagesEvent;

    invoke-virtual {p0, p1, p2}, Lru/rocketbank/r2d2/root/chat/ChatAdapter$queryLastMaxId$2;->invoke(Ljava/lang/Long;Lru/rocketbank/r2d2/root/chat/sync/event/PendingMessagesEvent;)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method
