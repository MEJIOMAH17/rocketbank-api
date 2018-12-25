.class final Lru/rocketbank/r2d2/root/chat/ChatAdapter$queryLastRead$7;
.super Lkotlin/jvm/internal/Lambda;
.source "ChatAdapter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/root/chat/ChatAdapter;->queryLastRead(Lru/rocketbank/r2d2/root/chat/sync/event/MessageEvent;)Ljava/lang/Long;
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
        "Lru/rocketbank/r2d2/root/chat/sync/event/ReadEvent;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lru/rocketbank/r2d2/root/chat/ChatAdapter$queryLastRead$7;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lru/rocketbank/r2d2/root/chat/ChatAdapter$queryLastRead$7;

    invoke-direct {v0}, Lru/rocketbank/r2d2/root/chat/ChatAdapter$queryLastRead$7;-><init>()V

    sput-object v0, Lru/rocketbank/r2d2/root/chat/ChatAdapter$queryLastRead$7;->INSTANCE:Lru/rocketbank/r2d2/root/chat/ChatAdapter$queryLastRead$7;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Long;Lru/rocketbank/r2d2/root/chat/sync/event/ReadEvent;)J
    .locals 1

    const-string v0, "event"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 474
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    return-wide p1

    :cond_0
    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method public final bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 21
    check-cast p1, Ljava/lang/Long;

    check-cast p2, Lru/rocketbank/r2d2/root/chat/sync/event/ReadEvent;

    invoke-virtual {p0, p1, p2}, Lru/rocketbank/r2d2/root/chat/ChatAdapter$queryLastRead$7;->invoke(Ljava/lang/Long;Lru/rocketbank/r2d2/root/chat/sync/event/ReadEvent;)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method
