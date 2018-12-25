.class public final Lru/rocketbank/r2d2/root/chat/sync/SendingException;
.super Ljava/lang/RuntimeException;
.source "SendingException.kt"


# instance fields
.field private messageIn:Lru/rocketbank/core/model/message/MessageIn;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;Lru/rocketbank/core/model/message/MessageIn;)V
    .locals 1

    const-string v0, "messageIn"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object p3, p0, Lru/rocketbank/r2d2/root/chat/sync/SendingException;->messageIn:Lru/rocketbank/core/model/message/MessageIn;

    return-void
.end method


# virtual methods
.method public final getMessageIn()Lru/rocketbank/core/model/message/MessageIn;
    .locals 1

    .line 7
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/sync/SendingException;->messageIn:Lru/rocketbank/core/model/message/MessageIn;

    return-object v0
.end method

.method public final setMessageIn(Lru/rocketbank/core/model/message/MessageIn;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iput-object p1, p0, Lru/rocketbank/r2d2/root/chat/sync/SendingException;->messageIn:Lru/rocketbank/core/model/message/MessageIn;

    return-void
.end method
