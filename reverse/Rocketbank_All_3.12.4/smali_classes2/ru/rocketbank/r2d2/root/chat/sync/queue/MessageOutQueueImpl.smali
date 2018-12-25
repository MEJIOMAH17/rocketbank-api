.class public final Lru/rocketbank/r2d2/root/chat/sync/queue/MessageOutQueueImpl;
.super Ljava/lang/Object;
.source "MessageOutQueueImpl.kt"

# interfaces
.implements Lru/rocketbank/r2d2/root/chat/sync/queue/MessageOutQueue;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/root/chat/sync/queue/MessageOutQueueImpl$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMessageOutQueueImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MessageOutQueueImpl.kt\nru/rocketbank/r2d2/root/chat/sync/queue/MessageOutQueueImpl\n*L\n1#1,136:1\n*E\n"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;

.field public static final Companion:Lru/rocketbank/r2d2/root/chat/sync/queue/MessageOutQueueImpl$Companion;

.field private static final TAG:Ljava/lang/String; = "MSGQUE"


# instance fields
.field private final messageApi$delegate:Lkotlin/Lazy;

.field private periodic:Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observable<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final publishSubject:Lrx/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/subjects/PublishSubject<",
            "Lru/rocketbank/r2d2/root/chat/sync/event/MessageEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final queue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lru/rocketbank/core/model/message/MessageIn;",
            ">;"
        }
    .end annotation
.end field

.field private final refreshSubject:Lrx/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/subjects/PublishSubject<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lru/rocketbank/r2d2/root/chat/sync/queue/MessageOutQueueImpl;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass$4641416c(Ljava/lang/Class;)Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    move-result-object v2

    const-string v3, "messageApi"

    const-string v4, "getMessageApi()Lru/rocketbank/core/network/api/MessageApi;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lru/rocketbank/r2d2/root/chat/sync/queue/MessageOutQueueImpl;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lru/rocketbank/r2d2/root/chat/sync/queue/MessageOutQueueImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/root/chat/sync/queue/MessageOutQueueImpl$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/r2d2/root/chat/sync/queue/MessageOutQueueImpl;->Companion:Lru/rocketbank/r2d2/root/chat/sync/queue/MessageOutQueueImpl$Companion;

    return-void
.end method

.method public constructor <init>(Lrx/subjects/PublishSubject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/subjects/PublishSubject<",
            "Lru/rocketbank/r2d2/root/chat/sync/event/MessageEvent;",
            ">;)V"
        }
    .end annotation

    const-string v0, "publishSubject"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/rocketbank/r2d2/root/chat/sync/queue/MessageOutQueueImpl;->publishSubject:Lrx/subjects/PublishSubject;

    .line 22
    sget-object p1, Lru/rocketbank/r2d2/root/chat/sync/queue/MessageOutQueueImpl$messageApi$2;->INSTANCE:Lru/rocketbank/r2d2/root/chat/sync/queue/MessageOutQueueImpl$messageApi$2;

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/ExceptionsKt__ExceptionsKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/root/chat/sync/queue/MessageOutQueueImpl;->messageApi$delegate:Lkotlin/Lazy;

    .line 23
    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p1, p0, Lru/rocketbank/r2d2/root/chat/sync/queue/MessageOutQueueImpl;->queue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 25
    invoke-static {}, Lrx/subjects/PublishSubject;->create()Lrx/subjects/PublishSubject;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/root/chat/sync/queue/MessageOutQueueImpl;->refreshSubject:Lrx/subjects/PublishSubject;

    .line 26
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v0, 0x12c

    invoke-static {v0, v1, v0, v1, p1}, Lrx/Observable;->interval(JJLjava/util/concurrent/TimeUnit;)Lrx/Observable;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/root/chat/sync/queue/MessageOutQueueImpl;->periodic:Lrx/Observable;

    .line 32
    iget-object p1, p0, Lru/rocketbank/r2d2/root/chat/sync/queue/MessageOutQueueImpl;->periodic:Lrx/Observable;

    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/sync/queue/MessageOutQueueImpl;->refreshSubject:Lrx/subjects/PublishSubject;

    check-cast v0, Lrx/Observable;

    invoke-virtual {p1, v0}, Lrx/Observable;->mergeWith(Lrx/Observable;)Lrx/Observable;

    move-result-object p1

    .line 33
    invoke-virtual {p1}, Lrx/Observable;->onBackpressureBuffer()Lrx/Observable;

    move-result-object p1

    .line 34
    new-instance v0, Lru/rocketbank/r2d2/root/chat/sync/queue/MessageOutQueueImpl$1;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/root/chat/sync/queue/MessageOutQueueImpl$1;-><init>(Lru/rocketbank/r2d2/root/chat/sync/queue/MessageOutQueueImpl;)V

    check-cast v0, Lrx/functions/Func1;

    invoke-virtual {p1, v0}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object p1

    .line 35
    sget-object v0, Lru/rocketbank/r2d2/root/chat/sync/queue/MessageOutQueueImpl$2;->INSTANCE:Lru/rocketbank/r2d2/root/chat/sync/queue/MessageOutQueueImpl$2;

    check-cast v0, Lrx/functions/Func1;

    invoke-virtual {p1, v0}, Lrx/Observable;->filter(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object p1

    .line 36
    new-instance v0, Lru/rocketbank/r2d2/root/chat/sync/queue/MessageOutQueueImpl$3;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/root/chat/sync/queue/MessageOutQueueImpl$3;-><init>(Lru/rocketbank/r2d2/root/chat/sync/queue/MessageOutQueueImpl;)V

    check-cast v0, Lrx/functions/Func1;

    invoke-virtual {p1, v0}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object p1

    .line 37
    new-instance v0, Lru/rocketbank/r2d2/root/chat/sync/queue/MessageOutQueueImpl$4;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/root/chat/sync/queue/MessageOutQueueImpl$4;-><init>(Lru/rocketbank/r2d2/root/chat/sync/queue/MessageOutQueueImpl;)V

    check-cast v0, Lrx/Subscriber;

    invoke-virtual {p1, v0}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    return-void
.end method

.method public static final synthetic access$getQueue$p(Lru/rocketbank/r2d2/root/chat/sync/queue/MessageOutQueueImpl;)Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 0

    .line 21
    iget-object p0, p0, Lru/rocketbank/r2d2/root/chat/sync/queue/MessageOutQueueImpl;->queue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object p0
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    .line 21
    sget-object v0, Lru/rocketbank/r2d2/root/chat/sync/queue/MessageOutQueueImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$sending(Lru/rocketbank/r2d2/root/chat/sync/queue/MessageOutQueueImpl;Lru/rocketbank/core/model/message/MessageIn;)Lrx/Observable;
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/root/chat/sync/queue/MessageOutQueueImpl;->sending(Lru/rocketbank/core/model/message/MessageIn;)Lrx/Observable;

    move-result-object p0

    return-object p0
.end method

.method private final getMessageApi()Lru/rocketbank/core/network/api/MessageApi;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/sync/queue/MessageOutQueueImpl;->messageApi$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/network/api/MessageApi;

    return-object v0
.end method

.method private final selectSending(Lru/rocketbank/core/model/message/MessageIn;)Lrx/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lru/rocketbank/core/model/message/MessageIn;",
            ")",
            "Lrx/Observable<",
            "Lru/rocketbank/core/network/model/MessageResponse;",
            ">;"
        }
    .end annotation

    .line 101
    invoke-virtual {p1}, Lru/rocketbank/core/model/message/MessageIn;->getAttachment()Lru/rocketbank/core/model/message/Attachment;

    move-result-object v0

    .line 102
    instance-of v1, v0, Lru/rocketbank/core/model/message/ImageAttachment;

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/root/chat/sync/queue/MessageOutQueueImpl;->sendingImage(Lru/rocketbank/core/model/message/MessageIn;)Lrx/Observable;

    move-result-object p1

    return-object p1

    .line 103
    :cond_0
    instance-of v1, v0, Lru/rocketbank/core/model/message/OperationAttachment;

    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/root/chat/sync/queue/MessageOutQueueImpl;->sendingOperation(Lru/rocketbank/core/model/message/MessageIn;)Lrx/Observable;

    move-result-object p1

    return-object p1

    .line 104
    :cond_1
    instance-of v0, v0, Lru/rocketbank/core/model/message/StickerAttachment;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lru/rocketbank/r2d2/root/chat/sync/queue/MessageOutQueueImpl;->sendingSticker()Lrx/Observable;

    move-result-object p1

    return-object p1

    .line 106
    :cond_2
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/root/chat/sync/queue/MessageOutQueueImpl;->sendingText(Lru/rocketbank/core/model/message/MessageIn;)Lrx/Observable;

    move-result-object p1

    return-object p1
.end method

.method private final sending(Lru/rocketbank/core/model/message/MessageIn;)Lrx/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lru/rocketbank/core/model/message/MessageIn;",
            ")",
            "Lrx/Observable<",
            "Lkotlin/Pair<",
            "Lru/rocketbank/core/model/message/MessageIn;",
            "Lru/rocketbank/core/network/model/MessageResponse;",
            ">;>;"
        }
    .end annotation

    .line 91
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/root/chat/sync/queue/MessageOutQueueImpl;->selectSending(Lru/rocketbank/core/model/message/MessageIn;)Lrx/Observable;

    move-result-object v0

    .line 92
    new-instance v1, Lru/rocketbank/r2d2/root/chat/sync/queue/MessageOutQueueImpl$sending$1;

    invoke-direct {v1, p1}, Lru/rocketbank/r2d2/root/chat/sync/queue/MessageOutQueueImpl$sending$1;-><init>(Lru/rocketbank/core/model/message/MessageIn;)V

    check-cast v1, Lrx/functions/Func1;

    invoke-virtual {v0, v1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    .line 95
    new-instance v1, Lru/rocketbank/r2d2/root/chat/sync/queue/MessageOutQueueImpl$sending$2;

    invoke-direct {v1, p1}, Lru/rocketbank/r2d2/root/chat/sync/queue/MessageOutQueueImpl$sending$2;-><init>(Lru/rocketbank/core/model/message/MessageIn;)V

    check-cast v1, Lrx/functions/Func1;

    invoke-virtual {v0, v1}, Lrx/Observable;->onErrorReturn(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object p1

    const-string v0, "selectSending(messageIn)\u2026In)\n                    }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final sendingImage(Lru/rocketbank/core/model/message/MessageIn;)Lrx/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lru/rocketbank/core/model/message/MessageIn;",
            ")",
            "Lrx/Observable<",
            "Lru/rocketbank/core/network/model/MessageResponse;",
            ">;"
        }
    .end annotation

    .line 127
    invoke-virtual {p1}, Lru/rocketbank/core/model/message/MessageIn;->getAttachment()Lru/rocketbank/core/model/message/Attachment;

    move-result-object p1

    if-nez p1, :cond_0

    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type ru.rocketbank.core.model.message.ImageAttachment"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    check-cast p1, Lru/rocketbank/core/model/message/ImageAttachment;

    .line 128
    invoke-virtual {p1}, Lru/rocketbank/core/model/message/ImageAttachment;->getId()I

    move-result p1

    .line 130
    invoke-direct {p0}, Lru/rocketbank/r2d2/root/chat/sync/queue/MessageOutQueueImpl;->getMessageApi()Lru/rocketbank/core/network/api/MessageApi;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1, v1}, Lru/rocketbank/core/network/api/MessageApi;->message(Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/String;)Lrx/Observable;

    move-result-object p1

    const-string v0, "messageApi.message(imageId, null, null)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final sendingOperation(Lru/rocketbank/core/model/message/MessageIn;)Lrx/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lru/rocketbank/core/model/message/MessageIn;",
            ")",
            "Lrx/Observable<",
            "Lru/rocketbank/core/network/model/MessageResponse;",
            ">;"
        }
    .end annotation

    .line 119
    invoke-virtual {p1}, Lru/rocketbank/core/model/message/MessageIn;->getAttachment()Lru/rocketbank/core/model/message/Attachment;

    move-result-object p1

    if-nez p1, :cond_0

    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type ru.rocketbank.core.model.message.OperationAttachment"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    check-cast p1, Lru/rocketbank/core/model/message/OperationAttachment;

    .line 120
    invoke-virtual {p1}, Lru/rocketbank/core/model/message/OperationAttachment;->getOperation()Lru/rocketbank/core/model/dto/operations/Operation;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/operations/Operation;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_2

    .line 121
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 123
    invoke-direct {p0}, Lru/rocketbank/r2d2/root/chat/sync/queue/MessageOutQueueImpl;->getMessageApi()Lru/rocketbank/core/network/api/MessageApi;

    move-result-object v1

    invoke-interface {v1, v0, p1, v0}, Lru/rocketbank/core/network/api/MessageApi;->message(Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/String;)Lrx/Observable;

    move-result-object p1

    const-string v0, "messageApi.message(null, operationId, null)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 121
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "No id"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lrx/Observable;->error(Ljava/lang/Throwable;)Lrx/Observable;

    move-result-object p1

    const-string v0, "Observable.error<Message\u2026gumentException(\"No id\"))"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final sendingSticker()Lrx/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable<",
            "Lru/rocketbank/core/network/model/MessageResponse;",
            ">;"
        }
    .end annotation

    .line 115
    invoke-direct {p0}, Lru/rocketbank/r2d2/root/chat/sync/queue/MessageOutQueueImpl;->getMessageApi()Lru/rocketbank/core/network/api/MessageApi;

    move-result-object v0

    const-string v1, ""

    invoke-interface {v0, v1}, Lru/rocketbank/core/network/api/MessageApi;->sendLove(Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    const-string v1, "messageApi.sendLove(\"\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final sendingText(Lru/rocketbank/core/model/message/MessageIn;)Lrx/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lru/rocketbank/core/model/message/MessageIn;",
            ")",
            "Lrx/Observable<",
            "Lru/rocketbank/core/network/model/MessageResponse;",
            ">;"
        }
    .end annotation

    .line 111
    invoke-direct {p0}, Lru/rocketbank/r2d2/root/chat/sync/queue/MessageOutQueueImpl;->getMessageApi()Lru/rocketbank/core/network/api/MessageApi;

    move-result-object v0

    invoke-virtual {p1}, Lru/rocketbank/core/model/message/MessageIn;->getBody()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {v0, v1, v1, p1}, Lru/rocketbank/core/network/api/MessageApi;->message(Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/String;)Lrx/Observable;

    move-result-object p1

    const-string v0, "messageApi.message(null, null, message.body)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method public final getPublishSubject()Lrx/subjects/PublishSubject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/subjects/PublishSubject<",
            "Lru/rocketbank/r2d2/root/chat/sync/event/MessageEvent;",
            ">;"
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/sync/queue/MessageOutQueueImpl;->publishSubject:Lrx/subjects/PublishSubject;

    return-object v0
.end method

.method public final isEmpty()Z
    .locals 1

    .line 29
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/sync/queue/MessageOutQueueImpl;->queue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final sendMessage(Lru/rocketbank/core/model/message/MessageIn;)V
    .locals 2

    const-string v0, "messageIn"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 85
    invoke-virtual {p1, v0}, Lru/rocketbank/core/model/message/MessageIn;->setUploading(Z)V

    .line 86
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/sync/queue/MessageOutQueueImpl;->queue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 87
    iget-object p1, p0, Lru/rocketbank/r2d2/root/chat/sync/queue/MessageOutQueueImpl;->refreshSubject:Lrx/subjects/PublishSubject;

    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    return-void
.end method
