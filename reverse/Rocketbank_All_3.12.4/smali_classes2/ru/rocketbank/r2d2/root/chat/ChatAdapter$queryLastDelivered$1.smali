.class final Lru/rocketbank/r2d2/root/chat/ChatAdapter$queryLastDelivered$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ChatAdapter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/root/chat/ChatAdapter;->queryLastDelivered(Lru/rocketbank/r2d2/root/chat/sync/event/MessageEvent;)Ljava/lang/Long;
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
        "Lru/rocketbank/r2d2/root/chat/sync/event/HeadMessagesEvent;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChatAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChatAdapter.kt\nru/rocketbank/r2d2/root/chat/ChatAdapter$queryLastDelivered$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,555:1\n624#2:556\n713#2,2:557\n1588#2,13:559\n*E\n*S KotlinDebug\n*F\n+ 1 ChatAdapter.kt\nru/rocketbank/r2d2/root/chat/ChatAdapter$queryLastDelivered$1\n*L\n482#1:556\n482#1,2:557\n482#1,13:559\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lru/rocketbank/r2d2/root/chat/ChatAdapter$queryLastDelivered$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lru/rocketbank/r2d2/root/chat/ChatAdapter$queryLastDelivered$1;

    invoke-direct {v0}, Lru/rocketbank/r2d2/root/chat/ChatAdapter$queryLastDelivered$1;-><init>()V

    sput-object v0, Lru/rocketbank/r2d2/root/chat/ChatAdapter$queryLastDelivered$1;->INSTANCE:Lru/rocketbank/r2d2/root/chat/ChatAdapter$queryLastDelivered$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Long;Lru/rocketbank/r2d2/root/chat/sync/event/HeadMessagesEvent;)J
    .locals 4

    const-string v0, "event"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 482
    invoke-virtual {p2}, Lru/rocketbank/r2d2/root/chat/sync/event/HeadMessagesEvent;->getUpdate()Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/lang/Iterable;

    .line 556
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    .line 557
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lru/rocketbank/core/model/message/MessageIn;

    .line 482
    invoke-virtual {v2}, Lru/rocketbank/core/model/message/MessageIn;->isAdmin()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 558
    :cond_1
    check-cast v0, Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 559
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 560
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 p2, 0x0

    goto :goto_2

    .line 561
    :cond_2
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 562
    move-object v1, v0

    check-cast v1, Lru/rocketbank/core/model/message/MessageIn;

    .line 482
    invoke-virtual {v1}, Lru/rocketbank/core/model/message/MessageIn;->getDeliveredAt()I

    move-result v1

    .line 563
    :cond_3
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 564
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 565
    move-object v3, v2

    check-cast v3, Lru/rocketbank/core/model/message/MessageIn;

    .line 482
    invoke-virtual {v3}, Lru/rocketbank/core/model/message/MessageIn;->getDeliveredAt()I

    move-result v3

    if-ge v1, v3, :cond_3

    move-object v0, v2

    move v1, v3

    goto :goto_1

    :cond_4
    move-object p2, v0

    .line 571
    :goto_2
    check-cast p2, Lru/rocketbank/core/model/message/MessageIn;

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Lru/rocketbank/core/model/message/MessageIn;->getDeliveredAt()I

    move-result p2

    goto :goto_3

    :cond_5
    const/4 p2, 0x0

    :goto_3
    int-to-long v0, p2

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    if-eqz p1, :cond_6

    .line 483
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    goto :goto_4

    :cond_6
    const-wide/16 p1, 0x0

    :goto_4
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public final bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 21
    check-cast p1, Ljava/lang/Long;

    check-cast p2, Lru/rocketbank/r2d2/root/chat/sync/event/HeadMessagesEvent;

    invoke-virtual {p0, p1, p2}, Lru/rocketbank/r2d2/root/chat/ChatAdapter$queryLastDelivered$1;->invoke(Ljava/lang/Long;Lru/rocketbank/r2d2/root/chat/sync/event/HeadMessagesEvent;)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method
