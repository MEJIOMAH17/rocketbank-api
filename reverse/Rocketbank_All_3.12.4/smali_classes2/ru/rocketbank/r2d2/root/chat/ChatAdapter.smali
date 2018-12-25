.class public final Lru/rocketbank/r2d2/root/chat/ChatAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "ChatAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/root/chat/ChatAdapter$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lru/rocketbank/r2d2/root/chat/MessageViewHolder;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChatAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChatAdapter.kt\nru/rocketbank/r2d2/root/chat/ChatAdapter\n*L\n1#1,555:1\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lru/rocketbank/r2d2/root/chat/ChatAdapter$Companion;

.field private static final TAG:Ljava/lang/String; = "ChatAdapter"


# instance fields
.field private final chatFragment:Lru/rocketbank/r2d2/root/chat/ChatFragment;

.field private final chatView:Landroid/support/v7/widget/RecyclerView;

.field private final handler:Landroid/os/Handler;

.field private lastDelivered:J

.field private lastRead:J

.field private lastReadId:J

.field private final messageManager:Lru/rocketbank/r2d2/root/chat/MessageManager;

.field private final messages:Lru/rocketbank/r2d2/root/chat/MessageList;

.field private typingAdmin:Lru/rocketbank/r2d2/root/chat/sync/notification/NotificationUserInfo;

.field private final typingEndRunnable:Ljava/lang/Runnable;

.field private final view:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/r2d2/root/chat/ChatAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/root/chat/ChatAdapter$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/r2d2/root/chat/ChatAdapter;->Companion:Lru/rocketbank/r2d2/root/chat/ChatAdapter$Companion;

    return-void
.end method

.method public constructor <init>(Lru/rocketbank/r2d2/root/chat/ChatFragment;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Lru/rocketbank/r2d2/root/chat/MessageManager;)V
    .locals 1

    const-string v0, "chatFragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chatView"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lru/rocketbank/r2d2/root/chat/ChatAdapter;->chatFragment:Lru/rocketbank/r2d2/root/chat/ChatFragment;

    iput-object p2, p0, Lru/rocketbank/r2d2/root/chat/ChatAdapter;->view:Landroid/view/View;

    iput-object p3, p0, Lru/rocketbank/r2d2/root/chat/ChatAdapter;->chatView:Landroid/support/v7/widget/RecyclerView;

    iput-object p4, p0, Lru/rocketbank/r2d2/root/chat/ChatAdapter;->messageManager:Lru/rocketbank/r2d2/root/chat/MessageManager;

    .line 25
    new-instance p1, Lru/rocketbank/r2d2/root/chat/MessageList;

    invoke-direct {p1}, Lru/rocketbank/r2d2/root/chat/MessageList;-><init>()V

    iput-object p1, p0, Lru/rocketbank/r2d2/root/chat/ChatAdapter;->messages:Lru/rocketbank/r2d2/root/chat/MessageList;

    .line 26
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lru/rocketbank/r2d2/root/chat/ChatAdapter;->handler:Landroid/os/Handler;

    .line 34
    new-instance p1, Lru/rocketbank/r2d2/root/chat/ChatAdapter$typingEndRunnable$1;

    invoke-direct {p1, p0}, Lru/rocketbank/r2d2/root/chat/ChatAdapter$typingEndRunnable$1;-><init>(Lru/rocketbank/r2d2/root/chat/ChatAdapter;)V

    check-cast p1, Ljava/lang/Runnable;

    iput-object p1, p0, Lru/rocketbank/r2d2/root/chat/ChatAdapter;->typingEndRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public static final synthetic access$getChatView$p(Lru/rocketbank/r2d2/root/chat/ChatAdapter;)Landroid/support/v7/widget/RecyclerView;
    .locals 0

    .line 21
    iget-object p0, p0, Lru/rocketbank/r2d2/root/chat/ChatAdapter;->chatView:Landroid/support/v7/widget/RecyclerView;

    return-object p0
.end method

.method public static final synthetic access$getLastRead$p(Lru/rocketbank/r2d2/root/chat/ChatAdapter;)J
    .locals 2

    .line 21
    iget-wide v0, p0, Lru/rocketbank/r2d2/root/chat/ChatAdapter;->lastRead:J

    return-wide v0
.end method

.method public static final synthetic access$getLastReadId$p(Lru/rocketbank/r2d2/root/chat/ChatAdapter;)J
    .locals 2

    .line 21
    iget-wide v0, p0, Lru/rocketbank/r2d2/root/chat/ChatAdapter;->lastReadId:J

    return-wide v0
.end method

.method public static final synthetic access$getMessages$p(Lru/rocketbank/r2d2/root/chat/ChatAdapter;)Lru/rocketbank/r2d2/root/chat/MessageList;
    .locals 0

    .line 21
    iget-object p0, p0, Lru/rocketbank/r2d2/root/chat/ChatAdapter;->messages:Lru/rocketbank/r2d2/root/chat/MessageList;

    return-object p0
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    .line 21
    sget-object v0, Lru/rocketbank/r2d2/root/chat/ChatAdapter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$setLastRead$p(Lru/rocketbank/r2d2/root/chat/ChatAdapter;J)V
    .locals 0

    .line 21
    iput-wide p1, p0, Lru/rocketbank/r2d2/root/chat/ChatAdapter;->lastRead:J

    return-void
.end method

.method public static final synthetic access$setLastReadId$p(Lru/rocketbank/r2d2/root/chat/ChatAdapter;J)V
    .locals 0

    .line 21
    iput-wide p1, p0, Lru/rocketbank/r2d2/root/chat/ChatAdapter;->lastReadId:J

    return-void
.end method

.method private final getSubtype(Lru/rocketbank/core/model/message/MessageIn;)I
    .locals 1

    .line 52
    invoke-virtual {p1}, Lru/rocketbank/core/model/message/MessageIn;->getAttachment()Lru/rocketbank/core/model/message/Attachment;

    move-result-object p1

    .line 53
    instance-of v0, p1, Lru/rocketbank/core/model/message/ImageAttachment;

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 54
    :cond_0
    instance-of v0, p1, Lru/rocketbank/core/model/message/DocumentAttachment;

    if-eqz v0, :cond_1

    const/4 p1, 0x2

    return p1

    .line 55
    :cond_1
    instance-of v0, p1, Lru/rocketbank/core/model/message/OperationAttachment;

    if-eqz v0, :cond_2

    const/4 p1, 0x3

    return p1

    .line 56
    :cond_2
    instance-of v0, p1, Lru/rocketbank/core/model/message/StickerAttachment;

    if-eqz v0, :cond_3

    const/4 p1, 0x5

    return p1

    .line 57
    :cond_3
    instance-of p1, p1, Lru/rocketbank/core/model/message/RatingAttachment;

    if-eqz p1, :cond_4

    const/4 p1, 0x4

    return p1

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method private final isStateChanged(I)Z
    .locals 5

    add-int/lit8 v0, p1, 0x1

    .line 251
    iget-object v1, p0, Lru/rocketbank/r2d2/root/chat/ChatAdapter;->messages:Lru/rocketbank/r2d2/root/chat/MessageList;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/root/chat/MessageList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-lt v0, v1, :cond_0

    return v2

    .line 255
    :cond_0
    iget-object v1, p0, Lru/rocketbank/r2d2/root/chat/ChatAdapter;->messages:Lru/rocketbank/r2d2/root/chat/MessageList;

    invoke-virtual {v1, p1}, Lru/rocketbank/r2d2/root/chat/MessageList;->get(I)Lru/rocketbank/core/model/message/MessageIn;

    move-result-object p1

    .line 256
    iget-object v1, p0, Lru/rocketbank/r2d2/root/chat/ChatAdapter;->messages:Lru/rocketbank/r2d2/root/chat/MessageList;

    invoke-virtual {v1, v0}, Lru/rocketbank/r2d2/root/chat/MessageList;->get(I)Lru/rocketbank/core/model/message/MessageIn;

    move-result-object v0

    .line 258
    invoke-virtual {p1}, Lru/rocketbank/core/model/message/MessageIn;->getGroupTime()I

    move-result v1

    invoke-virtual {v0}, Lru/rocketbank/core/model/message/MessageIn;->getGroupTime()I

    move-result v3

    if-eq v1, v3, :cond_1

    return v2

    :cond_1
    const/4 v1, 0x0

    if-ne v0, p1, :cond_2

    return v1

    :cond_2
    if-nez p1, :cond_3

    return v2

    :cond_3
    if-nez v0, :cond_4

    return v2

    .line 278
    :cond_4
    invoke-virtual {p1}, Lru/rocketbank/core/model/message/MessageIn;->getAuthor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lru/rocketbank/core/model/message/MessageIn;->getAuthor()Ljava/lang/String;

    move-result-object v4

    if-ne v3, v4, :cond_5

    return v1

    .line 282
    :cond_5
    invoke-virtual {p1}, Lru/rocketbank/core/model/message/MessageIn;->getAuthor()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {p1}, Lru/rocketbank/core/model/message/MessageIn;->getAuthor()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Lru/rocketbank/core/model/message/MessageIn;->getAuthor()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    return v1

    :cond_6
    return v2
.end method


# virtual methods
.method public final activateTyping()V
    .locals 2

    .line 294
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/ChatAdapter;->messages:Lru/rocketbank/r2d2/root/chat/MessageList;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/root/chat/MessageList;->setTypingActive(Z)V

    const/4 v0, 0x0

    .line 295
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/root/chat/ChatAdapter;->notifyItemInsertedItem(I)V

    return-void
.end method

.method public final applyUpdate(Lru/rocketbank/r2d2/root/chat/sync/event/MessageEvent;)Ljava/lang/Boolean;
    .locals 11

    .line 356
    new-instance v0, Lru/rocketbank/r2d2/root/chat/ChatAdapter$applyUpdate$1;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/root/chat/ChatAdapter$applyUpdate$1;-><init>(Lru/rocketbank/r2d2/root/chat/ChatAdapter;)V

    move-object v3, v0

    check-cast v3, Lkotlin/jvm/functions/Function2;

    .line 367
    new-instance v0, Lru/rocketbank/r2d2/root/chat/ChatAdapter$applyUpdate$2;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/root/chat/ChatAdapter$applyUpdate$2;-><init>(Lru/rocketbank/r2d2/root/chat/ChatAdapter;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    .line 377
    new-instance v0, Lru/rocketbank/r2d2/root/chat/ChatAdapter$applyUpdate$3;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/root/chat/ChatAdapter$applyUpdate$3;-><init>(Lru/rocketbank/r2d2/root/chat/ChatAdapter;)V

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function2;

    .line 385
    new-instance v0, Lru/rocketbank/r2d2/root/chat/ChatAdapter$applyUpdate$4;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/root/chat/ChatAdapter$applyUpdate$4;-><init>(Lru/rocketbank/r2d2/root/chat/ChatAdapter;)V

    move-object v7, v0

    check-cast v7, Lkotlin/jvm/functions/Function2;

    .line 394
    new-instance v0, Lru/rocketbank/r2d2/root/chat/ChatAdapter$applyUpdate$5;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/root/chat/ChatAdapter$applyUpdate$5;-><init>(Lru/rocketbank/r2d2/root/chat/ChatAdapter;)V

    move-object v6, v0

    check-cast v6, Lkotlin/jvm/functions/Function2;

    .line 411
    new-instance v0, Lru/rocketbank/r2d2/root/chat/ChatAdapter$applyUpdate$6;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/root/chat/ChatAdapter$applyUpdate$6;-><init>(Lru/rocketbank/r2d2/root/chat/ChatAdapter;)V

    move-object v8, v0

    check-cast v8, Lkotlin/jvm/functions/Function2;

    .line 417
    new-instance v0, Lru/rocketbank/r2d2/root/chat/ChatAdapter$applyUpdate$7;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/root/chat/ChatAdapter$applyUpdate$7;-><init>(Lru/rocketbank/r2d2/root/chat/ChatAdapter;)V

    move-object v9, v0

    check-cast v9, Lkotlin/jvm/functions/Function2;

    .line 427
    sget-object v0, Lru/rocketbank/r2d2/root/chat/ChatAdapter$applyUpdate$8;->INSTANCE:Lru/rocketbank/r2d2/root/chat/ChatAdapter$applyUpdate$8;

    move-object v10, v0

    check-cast v10, Lkotlin/jvm/functions/Function2;

    move-object v1, p0

    move-object v2, p1

    .line 355
    invoke-virtual/range {v1 .. v10}, Lru/rocketbank/r2d2/root/chat/ChatAdapter;->cataEvent(Lru/rocketbank/r2d2/root/chat/sync/event/MessageEvent;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    return-object p1
.end method

.method public final cataEvent(Lru/rocketbank/r2d2/root/chat/sync/event/MessageEvent;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lru/rocketbank/r2d2/root/chat/sync/event/MessageEvent;",
            "Lkotlin/jvm/functions/Function2<",
            "-TT;-",
            "Lru/rocketbank/r2d2/root/chat/sync/event/HeadMessagesEvent;",
            "+TT;>;",
            "Lkotlin/jvm/functions/Function2<",
            "-TT;-",
            "Lru/rocketbank/r2d2/root/chat/sync/event/PendingMessagesEvent;",
            "+TT;>;",
            "Lkotlin/jvm/functions/Function2<",
            "-TT;-",
            "Lru/rocketbank/r2d2/root/chat/sync/event/TailMessagesEvent;",
            "+TT;>;",
            "Lkotlin/jvm/functions/Function2<",
            "-TT;-",
            "Lru/rocketbank/r2d2/root/chat/sync/event/PublishedMessageEvent;",
            "+TT;>;",
            "Lkotlin/jvm/functions/Function2<",
            "-TT;-",
            "Lru/rocketbank/r2d2/root/chat/sync/event/PublishedMessageErrorEvent;",
            "+TT;>;",
            "Lkotlin/jvm/functions/Function2<",
            "-TT;-",
            "Lru/rocketbank/r2d2/root/chat/sync/event/TypingEvent;",
            "+TT;>;",
            "Lkotlin/jvm/functions/Function2<",
            "-TT;-",
            "Lru/rocketbank/r2d2/root/chat/sync/event/ReadEvent;",
            "+TT;>;",
            "Lkotlin/jvm/functions/Function2<",
            "-TT;-",
            "Lru/rocketbank/r2d2/root/chat/sync/event/ProgressEvent;",
            "+TT;>;)TT;"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    move-object/from16 v14, p5

    move-object/from16 v15, p6

    move-object/from16 v10, p7

    move-object/from16 v9, p8

    move-object/from16 v8, p9

    const-string v1, "headUpdate"

    invoke-static {v11, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "pendingUpdate"

    invoke-static {v12, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "tailUpdate"

    invoke-static {v13, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "publishEvent"

    invoke-static {v14, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "publishErrorEvent"

    invoke-static {v15, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "typingMessage"

    invoke-static {v10, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "readEvent"

    invoke-static {v9, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "progressUpdate"

    invoke-static {v8, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 525
    new-instance v7, Lru/rocketbank/r2d2/root/chat/ChatAdapter$cataEvent$1;

    move-object v1, v7

    move-object/from16 v2, p0

    move-object v3, v11

    move-object v4, v12

    move-object v5, v13

    move-object v6, v14

    move-object v14, v7

    move-object v7, v15

    move-object v8, v10

    move-object/from16 v10, p9

    invoke-direct/range {v1 .. v10}, Lru/rocketbank/r2d2/root/chat/ChatAdapter$cataEvent$1;-><init>(Lru/rocketbank/r2d2/root/chat/ChatAdapter;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)V

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 537
    invoke-virtual/range {p1 .. p1}, Lru/rocketbank/r2d2/root/chat/sync/event/MessageEvent;->getParent()Lru/rocketbank/r2d2/root/chat/sync/event/MessageEvent;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    .line 539
    :goto_0
    instance-of v3, v0, Lru/rocketbank/r2d2/root/chat/sync/event/HeadMessagesEvent;

    if-eqz v3, :cond_1

    invoke-virtual {v14, v2}, Lru/rocketbank/r2d2/root/chat/ChatAdapter$cataEvent$1;->invoke(Lru/rocketbank/r2d2/root/chat/sync/event/MessageEvent;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v11, v1, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 540
    :cond_1
    instance-of v3, v0, Lru/rocketbank/r2d2/root/chat/sync/event/PendingMessagesEvent;

    if-eqz v3, :cond_2

    invoke-virtual {v14, v2}, Lru/rocketbank/r2d2/root/chat/ChatAdapter$cataEvent$1;->invoke(Lru/rocketbank/r2d2/root/chat/sync/event/MessageEvent;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v12, v1, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 541
    :cond_2
    instance-of v3, v0, Lru/rocketbank/r2d2/root/chat/sync/event/TailMessagesEvent;

    if-eqz v3, :cond_3

    invoke-virtual {v14, v2}, Lru/rocketbank/r2d2/root/chat/ChatAdapter$cataEvent$1;->invoke(Lru/rocketbank/r2d2/root/chat/sync/event/MessageEvent;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v13, v1, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 542
    :cond_3
    instance-of v3, v0, Lru/rocketbank/r2d2/root/chat/sync/event/ProgressEvent;

    if-eqz v3, :cond_4

    invoke-virtual {v14, v2}, Lru/rocketbank/r2d2/root/chat/ChatAdapter$cataEvent$1;->invoke(Lru/rocketbank/r2d2/root/chat/sync/event/MessageEvent;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v2, p9

    invoke-interface {v2, v1, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 543
    :cond_4
    instance-of v3, v0, Lru/rocketbank/r2d2/root/chat/sync/event/PublishedMessageEvent;

    if-eqz v3, :cond_5

    invoke-virtual {v14, v2}, Lru/rocketbank/r2d2/root/chat/ChatAdapter$cataEvent$1;->invoke(Lru/rocketbank/r2d2/root/chat/sync/event/MessageEvent;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v2, p5

    invoke-interface {v2, v1, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_5
    move-object v3, v14

    .line 544
    instance-of v4, v0, Lru/rocketbank/r2d2/root/chat/sync/event/PublishedMessageErrorEvent;

    if-eqz v4, :cond_6

    invoke-virtual {v3, v2}, Lru/rocketbank/r2d2/root/chat/ChatAdapter$cataEvent$1;->invoke(Lru/rocketbank/r2d2/root/chat/sync/event/MessageEvent;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v15, v1, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 545
    :cond_6
    instance-of v4, v0, Lru/rocketbank/r2d2/root/chat/sync/event/ReadEvent;

    if-eqz v4, :cond_7

    invoke-virtual {v3, v2}, Lru/rocketbank/r2d2/root/chat/ChatAdapter$cataEvent$1;->invoke(Lru/rocketbank/r2d2/root/chat/sync/event/MessageEvent;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v2, p8

    invoke-interface {v2, v1, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 546
    :cond_7
    instance-of v4, v0, Lru/rocketbank/r2d2/root/chat/sync/event/TypingEvent;

    if-eqz v4, :cond_8

    invoke-virtual {v3, v2}, Lru/rocketbank/r2d2/root/chat/ChatAdapter$cataEvent$1;->invoke(Lru/rocketbank/r2d2/root/chat/sync/event/MessageEvent;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v2, p7

    invoke-interface {v2, v1, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_8
    return-object v1
.end method

.method public final deactivateTyping()V
    .locals 2

    .line 299
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/ChatAdapter;->messages:Lru/rocketbank/r2d2/root/chat/MessageList;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/chat/MessageList;->getTypingActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/ChatAdapter;->messages:Lru/rocketbank/r2d2/root/chat/MessageList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/root/chat/MessageList;->setTypingActive(Z)V

    .line 301
    invoke-virtual {p0, v1}, Lru/rocketbank/r2d2/root/chat/ChatAdapter;->notifyItemRemoved(I)V

    const/4 v0, 0x0

    .line 302
    iput-object v0, p0, Lru/rocketbank/r2d2/root/chat/ChatAdapter;->typingAdmin:Lru/rocketbank/r2d2/root/chat/sync/notification/NotificationUserInfo;

    :cond_0
    return-void
.end method

.method public final getChatFragment()Lru/rocketbank/r2d2/root/chat/ChatFragment;
    .locals 1

    .line 21
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/ChatAdapter;->chatFragment:Lru/rocketbank/r2d2/root/chat/ChatFragment;

    return-object v0
.end method

.method public final getItemCount()I
    .locals 1

    .line 290
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/ChatAdapter;->messages:Lru/rocketbank/r2d2/root/chat/MessageList;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/chat/MessageList;->size()I

    move-result v0

    return v0
.end method

.method public final getItemViewType(I)I
    .locals 2

    if-nez p1, :cond_0

    .line 38
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/ChatAdapter;->messages:Lru/rocketbank/r2d2/root/chat/MessageList;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/chat/MessageList;->getTypingActive()Z

    move-result v0

    if-eqz v0, :cond_0

    const p1, 0xffff

    return p1

    .line 41
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/ChatAdapter;->messages:Lru/rocketbank/r2d2/root/chat/MessageList;

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/root/chat/MessageList;->get(I)Lru/rocketbank/core/model/message/MessageIn;

    move-result-object p1

    .line 42
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/root/chat/ChatAdapter;->getSubtype(Lru/rocketbank/core/model/message/MessageIn;)I

    move-result v0

    .line 44
    invoke-virtual {p1}, Lru/rocketbank/core/model/message/MessageIn;->isAdmin()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 45
    sget-object p1, Lru/rocketbank/r2d2/root/chat/ChatFragment;->Companion:Lru/rocketbank/r2d2/root/chat/ChatFragment$Companion;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lru/rocketbank/r2d2/root/chat/ChatFragment$Companion;->getType(II)I

    move-result p1

    return p1

    .line 47
    :cond_1
    sget-object p1, Lru/rocketbank/r2d2/root/chat/ChatFragment;->Companion:Lru/rocketbank/r2d2/root/chat/ChatFragment$Companion;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lru/rocketbank/r2d2/root/chat/ChatFragment$Companion;->getType(II)I

    move-result p1

    return p1
.end method

.method public final getView()Landroid/view/View;
    .locals 1

    .line 22
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/ChatAdapter;->view:Landroid/view/View;

    return-object v0
.end method

.method public final notifyItemInsertedItem(I)V
    .locals 2

    .line 64
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/root/chat/ChatAdapter;->notifyItemInserted(I)V

    if-nez p1, :cond_2

    .line 67
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/ChatAdapter;->chatView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.support.v7.widget.LinearLayoutManager"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    check-cast v0, Landroid/support/v7/widget/LinearLayoutManager;

    .line 68
    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    .line 69
    iget-object p1, p0, Lru/rocketbank/r2d2/root/chat/ChatAdapter;->chatView:Landroid/support/v7/widget/RecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->smoothScrollToPosition(I)V

    return-void

    .line 71
    :cond_1
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/ChatAdapter;->messages:Lru/rocketbank/r2d2/root/chat/MessageList;

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/root/chat/MessageList;->get(I)Lru/rocketbank/core/model/message/MessageIn;

    move-result-object p1

    .line 73
    invoke-virtual {p1}, Lru/rocketbank/core/model/message/MessageIn;->isAdmin()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 74
    iget-object p1, p0, Lru/rocketbank/r2d2/root/chat/ChatAdapter;->view:Landroid/view/View;

    const v0, 0x7f110310

    const/4 v1, -0x1

    invoke-static {p1, v0, v1}, Lru/rocketbank/core/widgets/RocketSnackbar;->make(Landroid/view/View;II)Lru/rocketbank/core/widgets/RocketSnackbar;

    move-result-object p1

    const v0, 0x7f1103a9

    .line 75
    new-instance v1, Lru/rocketbank/r2d2/root/chat/ChatAdapter$notifyItemInsertedItem$1;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/root/chat/ChatAdapter$notifyItemInsertedItem$1;-><init>(Lru/rocketbank/r2d2/root/chat/ChatAdapter;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0, v1}, Lru/rocketbank/core/widgets/RocketSnackbar;->setAction(ILandroid/view/View$OnClickListener;)Lru/rocketbank/core/widgets/RocketSnackbar;

    move-result-object p1

    .line 76
    invoke-virtual {p1}, Lru/rocketbank/core/widgets/RocketSnackbar;->show()V

    :cond_2
    return-void
.end method

.method public final bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 21
    check-cast p1, Lru/rocketbank/r2d2/root/chat/MessageViewHolder;

    invoke-virtual {p0, p1, p2}, Lru/rocketbank/r2d2/root/chat/ChatAdapter;->onBindViewHolder(Lru/rocketbank/r2d2/root/chat/MessageViewHolder;I)V

    return-void
.end method

.method public final onBindViewHolder(Lru/rocketbank/r2d2/root/chat/MessageViewHolder;I)V
    .locals 10

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/ChatAdapter;->messages:Lru/rocketbank/r2d2/root/chat/MessageList;

    invoke-virtual {v0, p2}, Lru/rocketbank/r2d2/root/chat/MessageList;->get(I)Lru/rocketbank/core/model/message/MessageIn;

    move-result-object v0

    .line 146
    invoke-direct {p0, p2}, Lru/rocketbank/r2d2/root/chat/ChatAdapter;->isStateChanged(I)Z

    move-result v1

    .line 148
    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/root/chat/ChatAdapter;->getItemViewType(I)I

    move-result p2

    .line 149
    rem-int/lit8 v2, p2, 0xa

    if-nez v2, :cond_0

    .line 150
    move-object v2, p1

    check-cast v2, Lru/rocketbank/r2d2/root/chat/incoming/IncomingViewHolder;

    .line 151
    invoke-virtual {v0}, Lru/rocketbank/core/model/message/MessageIn;->getAvatar()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lru/rocketbank/r2d2/root/chat/incoming/IncomingViewHolder;->setIcon(Ljava/lang/String;)V

    .line 152
    invoke-virtual {v0}, Lru/rocketbank/core/model/message/MessageIn;->getAuthor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lru/rocketbank/r2d2/root/chat/incoming/IncomingViewHolder;->setWho(Ljava/lang/String;)V

    .line 153
    invoke-virtual {v0}, Lru/rocketbank/core/model/message/MessageIn;->getAdminPermalink()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lru/rocketbank/r2d2/root/chat/incoming/IncomingViewHolder;->setPermalimk(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 155
    move-object v2, p1

    check-cast v2, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingViewHolder;

    .line 156
    invoke-virtual {v2}, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingViewHolder;->setStatusInvisible()V

    .line 158
    invoke-virtual {v0}, Lru/rocketbank/core/model/message/MessageIn;->getCreatedAt()I

    move-result v3

    if-lez v3, :cond_2

    invoke-virtual {v0}, Lru/rocketbank/core/model/message/MessageIn;->isUploading()Z

    move-result v3

    if-nez v3, :cond_2

    .line 159
    iget-wide v3, p0, Lru/rocketbank/r2d2/root/chat/ChatAdapter;->lastReadId:J

    invoke-virtual {v0}, Lru/rocketbank/core/model/message/MessageIn;->getId()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-nez v7, :cond_1

    invoke-virtual {v0}, Lru/rocketbank/core/model/message/MessageIn;->getDeliveredAt()I

    move-result v3

    if-lez v3, :cond_1

    .line 160
    invoke-virtual {v0}, Lru/rocketbank/core/model/message/MessageIn;->getDeliveredAt()I

    move-result v3

    invoke-virtual {v2, v3}, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingViewHolder;->setSent(I)V

    .line 163
    :cond_1
    invoke-virtual {v0}, Lru/rocketbank/core/model/message/MessageIn;->getReadAt()I

    move-result v3

    int-to-long v3, v3

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    .line 164
    iget-wide v5, p0, Lru/rocketbank/r2d2/root/chat/ChatAdapter;->lastReadId:J

    const-wide/16 v7, 0x0

    cmp-long v9, v3, v7

    if-lez v9, :cond_2

    .line 165
    invoke-virtual {v0}, Lru/rocketbank/core/model/message/MessageIn;->getId()J

    move-result-wide v3

    cmp-long v7, v5, v3

    if-nez v7, :cond_2

    .line 166
    invoke-virtual {v0}, Lru/rocketbank/core/model/message/MessageIn;->getReadAt()I

    move-result v3

    invoke-virtual {v2, v3}, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingViewHolder;->setRead(I)V

    :cond_2
    :goto_0
    const/4 v2, 0x0

    sparse-switch p2, :sswitch_data_0

    goto/16 :goto_1

    .line 240
    :sswitch_0
    check-cast p1, Lru/rocketbank/r2d2/root/chat/TypingMessage;

    .line 241
    iget-object p2, p0, Lru/rocketbank/r2d2/root/chat/ChatAdapter;->typingAdmin:Lru/rocketbank/r2d2/root/chat/sync/notification/NotificationUserInfo;

    if-eqz p2, :cond_8

    .line 242
    invoke-virtual {p1, p2}, Lru/rocketbank/r2d2/root/chat/TypingMessage;->binding(Lru/rocketbank/r2d2/root/chat/sync/notification/NotificationUserInfo;)V

    return-void

    .line 226
    :sswitch_1
    check-cast p1, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingSticker;

    .line 227
    invoke-virtual {p1, v0}, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingSticker;->bind(Lru/rocketbank/core/model/message/MessageIn;)V

    return-void

    .line 196
    :sswitch_2
    check-cast p1, Lru/rocketbank/r2d2/root/chat/incoming/IncomingSticker;

    .line 197
    invoke-virtual {v0}, Lru/rocketbank/core/model/message/MessageIn;->getAttachment()Lru/rocketbank/core/model/message/Attachment;

    move-result-object p2

    check-cast p2, Lru/rocketbank/core/model/message/StickerAttachment;

    .line 198
    invoke-virtual {p1, p2}, Lru/rocketbank/r2d2/root/chat/incoming/IncomingSticker;->bind(Lru/rocketbank/core/model/message/StickerAttachment;)V

    return-void

    :sswitch_3
    return-void

    .line 209
    :sswitch_4
    invoke-virtual {v0}, Lru/rocketbank/core/model/message/MessageIn;->getAttachment()Lru/rocketbank/core/model/message/Attachment;

    move-result-object p2

    check-cast p2, Lru/rocketbank/core/model/message/RatingAttachment;

    .line 210
    check-cast p1, Lru/rocketbank/r2d2/root/chat/incoming/IncomingRating;

    if-eqz p2, :cond_3

    .line 211
    invoke-virtual {p2}, Lru/rocketbank/core/model/message/RatingAttachment;->getRating()Lru/rocketbank/core/network/model/Rating;

    move-result-object v2

    :cond_3
    iget-object p2, p0, Lru/rocketbank/r2d2/root/chat/ChatAdapter;->chatFragment:Lru/rocketbank/r2d2/root/chat/ChatFragment;

    invoke-virtual {p2}, Lru/rocketbank/r2d2/root/chat/ChatFragment;->getOnRatingBarChangeListener()Lru/rocketbank/r2d2/root/chat/OnRatingChangeListener;

    move-result-object p2

    invoke-virtual {p1, v2, p2}, Lru/rocketbank/r2d2/root/chat/incoming/IncomingRating;->bind(Lru/rocketbank/core/network/model/Rating;Lru/rocketbank/r2d2/root/chat/OnRatingChangeListener;)V

    return-void

    .line 231
    :sswitch_5
    check-cast p1, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingOperation;

    .line 232
    invoke-virtual {p1, v0}, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingOperation;->setOperation(Lru/rocketbank/core/model/message/MessageIn;)V

    .line 233
    invoke-virtual {p1, v1}, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingOperation;->showGrayBubble(Z)V

    return-void

    .line 202
    :sswitch_6
    check-cast p1, Lru/rocketbank/r2d2/root/chat/incoming/IncomingOperation;

    .line 203
    invoke-virtual {v0}, Lru/rocketbank/core/model/message/MessageIn;->getAttachment()Lru/rocketbank/core/model/message/Attachment;

    move-result-object p2

    check-cast p2, Lru/rocketbank/core/model/message/OperationAttachment;

    .line 204
    invoke-virtual {p1, p2}, Lru/rocketbank/r2d2/root/chat/incoming/IncomingOperation;->setOperation(Lru/rocketbank/core/model/message/OperationAttachment;)V

    .line 205
    invoke-virtual {p1, v1}, Lru/rocketbank/r2d2/root/chat/incoming/IncomingOperation;->setWhiteBubble(Z)V

    return-void

    .line 179
    :sswitch_7
    check-cast p1, Lru/rocketbank/r2d2/root/chat/incoming/IncomingDocument;

    .line 180
    invoke-virtual {v0}, Lru/rocketbank/core/model/message/MessageIn;->getAttachment()Lru/rocketbank/core/model/message/Attachment;

    move-result-object p2

    check-cast p2, Lru/rocketbank/core/model/message/DocumentAttachment;

    if-eqz p2, :cond_4

    .line 182
    invoke-virtual {p2}, Lru/rocketbank/core/model/message/DocumentAttachment;->getDocumentThumb()Ljava/lang/String;

    move-result-object v2

    :cond_4
    invoke-virtual {p1, v2, v0}, Lru/rocketbank/r2d2/root/chat/incoming/IncomingDocument;->bind(Ljava/lang/String;Lru/rocketbank/core/model/message/MessageIn;)V

    .line 183
    invoke-virtual {p1, v1}, Lru/rocketbank/r2d2/root/chat/incoming/IncomingDocument;->setDocumengGray(Z)V

    return-void

    .line 221
    :sswitch_8
    check-cast p1, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingImage;

    .line 222
    invoke-virtual {p1, v0}, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingImage;->bind(Lru/rocketbank/core/model/message/MessageIn;)V

    return-void

    .line 187
    :sswitch_9
    check-cast p1, Lru/rocketbank/r2d2/root/chat/incoming/IncomingImage;

    .line 188
    invoke-virtual {v0}, Lru/rocketbank/core/model/message/MessageIn;->getAttachment()Lru/rocketbank/core/model/message/Attachment;

    move-result-object p2

    check-cast p2, Lru/rocketbank/core/model/message/ImageAttachment;

    if-eqz p2, :cond_5

    .line 190
    invoke-virtual {p2}, Lru/rocketbank/core/model/message/ImageAttachment;->getImageThumb()Ljava/lang/String;

    move-result-object v2

    :cond_5
    if-eqz v2, :cond_8

    .line 191
    invoke-virtual {p1, p2}, Lru/rocketbank/r2d2/root/chat/incoming/IncomingImage;->bind(Lru/rocketbank/core/model/message/ImageAttachment;)V

    return-void

    .line 215
    :sswitch_a
    check-cast p1, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingText;

    .line 216
    invoke-virtual {v0}, Lru/rocketbank/core/model/message/MessageIn;->getBody()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_6

    const-string p2, ""

    :cond_6
    invoke-virtual {p1, p2, v0}, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingText;->bind(Ljava/lang/String;Lru/rocketbank/core/model/message/MessageIn;)V

    .line 217
    invoke-virtual {p1, v1}, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingText;->showOrangeBubble(Z)V

    return-void

    .line 173
    :sswitch_b
    check-cast p1, Lru/rocketbank/r2d2/root/chat/incoming/IncomingText;

    .line 174
    invoke-virtual {v0}, Lru/rocketbank/core/model/message/MessageIn;->getBody()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_7

    const-string p2, ""

    :cond_7
    invoke-virtual {p1, p2}, Lru/rocketbank/r2d2/root/chat/incoming/IncomingText;->bind(Ljava/lang/String;)V

    .line 175
    invoke-virtual {p1, v1}, Lru/rocketbank/r2d2/root/chat/incoming/IncomingText;->setWhiteBubble(Z)V

    return-void

    :cond_8
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_b
        0x1 -> :sswitch_a
        0xa -> :sswitch_9
        0xb -> :sswitch_8
        0x14 -> :sswitch_7
        0x15 -> :sswitch_8
        0x1e -> :sswitch_6
        0x1f -> :sswitch_5
        0x28 -> :sswitch_4
        0x29 -> :sswitch_3
        0x32 -> :sswitch_2
        0x33 -> :sswitch_1
        0xffff -> :sswitch_0
    .end sparse-switch
.end method

.method public final bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 21
    invoke-virtual {p0, p1, p2}, Lru/rocketbank/r2d2/root/chat/ChatAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lru/rocketbank/r2d2/root/chat/MessageViewHolder;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    return-object p1
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Lru/rocketbank/r2d2/root/chat/MessageViewHolder;
    .locals 3

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    sparse-switch p2, :sswitch_data_0

    .line 141
    new-instance p2, Lru/rocketbank/r2d2/root/chat/incoming/IncomingText;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "parent.context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    invoke-direct {p2, v0, p1}, Lru/rocketbank/r2d2/root/chat/incoming/IncomingText;-><init>(Landroid/content/Context;Landroid/view/View;)V

    check-cast p2, Lru/rocketbank/r2d2/root/chat/MessageViewHolder;

    return-object p2

    :sswitch_0
    const p2, 0x7f0c012d

    .line 136
    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 137
    new-instance p2, Lru/rocketbank/r2d2/root/chat/TypingMessage;

    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/ChatAdapter;->chatFragment:Lru/rocketbank/r2d2/root/chat/ChatFragment;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/chat/ChatFragment;->getCropCircleTransformation()Ljp/wasabeef/glide/transformations/CropCircleTransformation;

    move-result-object v0

    const-string v1, "view"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, v0, p1}, Lru/rocketbank/r2d2/root/chat/TypingMessage;-><init>(Ljp/wasabeef/glide/transformations/CropCircleTransformation;Landroid/view/View;)V

    check-cast p2, Lru/rocketbank/r2d2/root/chat/MessageViewHolder;

    return-object p2

    :sswitch_1
    const p2, 0x7f0c0128

    .line 126
    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 127
    new-instance v0, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingSticker;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "parent.context"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "view"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lru/rocketbank/r2d2/root/chat/ChatAdapter;->chatFragment:Lru/rocketbank/r2d2/root/chat/ChatFragment;

    check-cast v1, Lru/rocketbank/r2d2/root/chat/outgoing/RetryMessageListener;

    invoke-direct {v0, p1, p2, v1}, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingSticker;-><init>(Landroid/content/Context;Landroid/view/View;Lru/rocketbank/r2d2/root/chat/outgoing/RetryMessageListener;)V

    check-cast v0, Lru/rocketbank/r2d2/root/chat/MessageViewHolder;

    return-object v0

    :sswitch_2
    const p2, 0x7f0c012b

    .line 101
    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 102
    new-instance v0, Lru/rocketbank/r2d2/root/chat/incoming/IncomingSticker;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "parent.context"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "view"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p1, p2}, Lru/rocketbank/r2d2/root/chat/incoming/IncomingSticker;-><init>(Landroid/content/Context;Landroid/view/View;)V

    check-cast v0, Lru/rocketbank/r2d2/root/chat/MessageViewHolder;

    return-object v0

    :sswitch_3
    const p2, 0x7f0c013b

    .line 111
    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 112
    new-instance v0, Lru/rocketbank/r2d2/root/chat/incoming/IncomingRating;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "parent.context"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "view"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lru/rocketbank/r2d2/root/chat/ChatAdapter;->chatFragment:Lru/rocketbank/r2d2/root/chat/ChatFragment;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/root/chat/ChatFragment;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    iget-object v2, p0, Lru/rocketbank/r2d2/root/chat/ChatAdapter;->messageManager:Lru/rocketbank/r2d2/root/chat/MessageManager;

    invoke-direct {v0, p1, p2, v1, v2}, Lru/rocketbank/r2d2/root/chat/incoming/IncomingRating;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/support/v4/app/FragmentManager;Lru/rocketbank/r2d2/root/chat/MessageManager;)V

    check-cast v0, Lru/rocketbank/r2d2/root/chat/MessageViewHolder;

    return-object v0

    :sswitch_4
    const p2, 0x7f0c0127

    .line 131
    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 132
    new-instance v0, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingOperation;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "parent.context"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lru/rocketbank/r2d2/root/chat/ChatAdapter;->chatFragment:Lru/rocketbank/r2d2/root/chat/ChatFragment;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/root/chat/ChatFragment;->getMoneyFormatter()Lru/rocketbank/core/utils/MoneyFormatter;

    move-result-object v1

    const-string v2, "view"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lru/rocketbank/r2d2/root/chat/ChatAdapter;->chatFragment:Lru/rocketbank/r2d2/root/chat/ChatFragment;

    check-cast v2, Lru/rocketbank/r2d2/root/chat/outgoing/RetryMessageListener;

    invoke-direct {v0, p1, v1, p2, v2}, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingOperation;-><init>(Landroid/content/Context;Lru/rocketbank/core/utils/MoneyFormatter;Landroid/view/View;Lru/rocketbank/r2d2/root/chat/outgoing/RetryMessageListener;)V

    check-cast v0, Lru/rocketbank/r2d2/root/chat/MessageViewHolder;

    return-object v0

    :sswitch_5
    const p2, 0x7f0c0125

    .line 106
    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 107
    new-instance v0, Lru/rocketbank/r2d2/root/chat/incoming/IncomingOperation;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "parent.context"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lru/rocketbank/r2d2/root/chat/ChatAdapter;->chatFragment:Lru/rocketbank/r2d2/root/chat/ChatFragment;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/root/chat/ChatFragment;->getMoneyFormatter()Lru/rocketbank/core/utils/MoneyFormatter;

    move-result-object v1

    const-string v2, "view"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p1, v1, p2}, Lru/rocketbank/r2d2/root/chat/incoming/IncomingOperation;-><init>(Landroid/content/Context;Lru/rocketbank/core/utils/MoneyFormatter;Landroid/view/View;)V

    check-cast v0, Lru/rocketbank/r2d2/root/chat/MessageViewHolder;

    return-object v0

    :sswitch_6
    const p2, 0x7f0c0122

    .line 91
    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 92
    new-instance v0, Lru/rocketbank/r2d2/root/chat/incoming/IncomingDocument;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "parent.context"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "view"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p1, p2}, Lru/rocketbank/r2d2/root/chat/incoming/IncomingDocument;-><init>(Landroid/content/Context;Landroid/view/View;)V

    check-cast v0, Lru/rocketbank/r2d2/root/chat/MessageViewHolder;

    return-object v0

    :sswitch_7
    const p2, 0x7f0c0126

    .line 121
    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 122
    new-instance v0, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingImage;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "parent.context"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "view"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lru/rocketbank/r2d2/root/chat/ChatAdapter;->chatFragment:Lru/rocketbank/r2d2/root/chat/ChatFragment;

    check-cast v1, Lru/rocketbank/r2d2/root/chat/outgoing/RetryMessageListener;

    invoke-direct {v0, p1, p2, v1}, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingImage;-><init>(Landroid/content/Context;Landroid/view/View;Lru/rocketbank/r2d2/root/chat/outgoing/RetryMessageListener;)V

    check-cast v0, Lru/rocketbank/r2d2/root/chat/MessageViewHolder;

    return-object v0

    :sswitch_8
    const p2, 0x7f0c0123

    .line 96
    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 97
    new-instance v0, Lru/rocketbank/r2d2/root/chat/incoming/IncomingImage;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "parent.context"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "view"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p1, p2}, Lru/rocketbank/r2d2/root/chat/incoming/IncomingImage;-><init>(Landroid/content/Context;Landroid/view/View;)V

    check-cast v0, Lru/rocketbank/r2d2/root/chat/MessageViewHolder;

    return-object v0

    :sswitch_9
    const p2, 0x7f0c0129

    .line 116
    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 117
    new-instance v0, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingText;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "parent.context"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "view"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lru/rocketbank/r2d2/root/chat/ChatAdapter;->chatFragment:Lru/rocketbank/r2d2/root/chat/ChatFragment;

    check-cast v1, Lru/rocketbank/r2d2/root/chat/outgoing/RetryMessageListener;

    invoke-direct {v0, p1, p2, v1}, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingText;-><init>(Landroid/content/Context;Landroid/view/View;Lru/rocketbank/r2d2/root/chat/outgoing/RetryMessageListener;)V

    check-cast v0, Lru/rocketbank/r2d2/root/chat/MessageViewHolder;

    return-object v0

    :sswitch_a
    const p2, 0x7f0c012c

    .line 86
    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 87
    new-instance v0, Lru/rocketbank/r2d2/root/chat/incoming/IncomingText;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "parent.context"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "view"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p1, p2}, Lru/rocketbank/r2d2/root/chat/incoming/IncomingText;-><init>(Landroid/content/Context;Landroid/view/View;)V

    check-cast v0, Lru/rocketbank/r2d2/root/chat/MessageViewHolder;

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_a
        0x1 -> :sswitch_9
        0xa -> :sswitch_8
        0xb -> :sswitch_7
        0x14 -> :sswitch_6
        0x1e -> :sswitch_5
        0x1f -> :sswitch_4
        0x28 -> :sswitch_3
        0x32 -> :sswitch_2
        0x33 -> :sswitch_1
        0xffff -> :sswitch_0
    .end sparse-switch
.end method

.method public final queryLastDelivered(Lru/rocketbank/r2d2/root/chat/sync/event/MessageEvent;)Ljava/lang/Long;
    .locals 11

    .line 481
    sget-object v0, Lru/rocketbank/r2d2/root/chat/ChatAdapter$queryLastDelivered$1;->INSTANCE:Lru/rocketbank/r2d2/root/chat/ChatAdapter$queryLastDelivered$1;

    move-object v3, v0

    check-cast v3, Lkotlin/jvm/functions/Function2;

    .line 485
    sget-object v0, Lru/rocketbank/r2d2/root/chat/ChatAdapter$queryLastDelivered$2;->INSTANCE:Lru/rocketbank/r2d2/root/chat/ChatAdapter$queryLastDelivered$2;

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    .line 486
    sget-object v0, Lru/rocketbank/r2d2/root/chat/ChatAdapter$queryLastDelivered$3;->INSTANCE:Lru/rocketbank/r2d2/root/chat/ChatAdapter$queryLastDelivered$3;

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function2;

    .line 490
    sget-object v0, Lru/rocketbank/r2d2/root/chat/ChatAdapter$queryLastDelivered$4;->INSTANCE:Lru/rocketbank/r2d2/root/chat/ChatAdapter$queryLastDelivered$4;

    move-object v10, v0

    check-cast v10, Lkotlin/jvm/functions/Function2;

    .line 491
    sget-object v0, Lru/rocketbank/r2d2/root/chat/ChatAdapter$queryLastDelivered$5;->INSTANCE:Lru/rocketbank/r2d2/root/chat/ChatAdapter$queryLastDelivered$5;

    move-object v7, v0

    check-cast v7, Lkotlin/jvm/functions/Function2;

    .line 494
    sget-object v0, Lru/rocketbank/r2d2/root/chat/ChatAdapter$queryLastDelivered$6;->INSTANCE:Lru/rocketbank/r2d2/root/chat/ChatAdapter$queryLastDelivered$6;

    move-object v6, v0

    check-cast v6, Lkotlin/jvm/functions/Function2;

    .line 497
    sget-object v0, Lru/rocketbank/r2d2/root/chat/ChatAdapter$queryLastDelivered$7;->INSTANCE:Lru/rocketbank/r2d2/root/chat/ChatAdapter$queryLastDelivered$7;

    move-object v9, v0

    check-cast v9, Lkotlin/jvm/functions/Function2;

    .line 500
    sget-object v0, Lru/rocketbank/r2d2/root/chat/ChatAdapter$queryLastDelivered$8;->INSTANCE:Lru/rocketbank/r2d2/root/chat/ChatAdapter$queryLastDelivered$8;

    move-object v8, v0

    check-cast v8, Lkotlin/jvm/functions/Function2;

    move-object v1, p0

    move-object v2, p1

    .line 480
    invoke-virtual/range {v1 .. v10}, Lru/rocketbank/r2d2/root/chat/ChatAdapter;->cataEvent(Lru/rocketbank/r2d2/root/chat/sync/event/MessageEvent;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    return-object p1
.end method

.method public final queryLastMaxId(Lru/rocketbank/r2d2/root/chat/sync/event/MessageEvent;J)Ljava/lang/Long;
    .locals 11

    .line 431
    new-instance v0, Lru/rocketbank/r2d2/root/chat/ChatAdapter$queryLastMaxId$1;

    invoke-direct {v0, p2, p3}, Lru/rocketbank/r2d2/root/chat/ChatAdapter$queryLastMaxId$1;-><init>(J)V

    move-object v3, v0

    check-cast v3, Lkotlin/jvm/functions/Function2;

    .line 435
    sget-object v0, Lru/rocketbank/r2d2/root/chat/ChatAdapter$queryLastMaxId$2;->INSTANCE:Lru/rocketbank/r2d2/root/chat/ChatAdapter$queryLastMaxId$2;

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    .line 436
    new-instance v0, Lru/rocketbank/r2d2/root/chat/ChatAdapter$queryLastMaxId$3;

    invoke-direct {v0, p2, p3}, Lru/rocketbank/r2d2/root/chat/ChatAdapter$queryLastMaxId$3;-><init>(J)V

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function2;

    .line 440
    sget-object v0, Lru/rocketbank/r2d2/root/chat/ChatAdapter$queryLastMaxId$4;->INSTANCE:Lru/rocketbank/r2d2/root/chat/ChatAdapter$queryLastMaxId$4;

    move-object v10, v0

    check-cast v10, Lkotlin/jvm/functions/Function2;

    .line 441
    new-instance v0, Lru/rocketbank/r2d2/root/chat/ChatAdapter$queryLastMaxId$5;

    invoke-direct {v0, p2, p3}, Lru/rocketbank/r2d2/root/chat/ChatAdapter$queryLastMaxId$5;-><init>(J)V

    move-object v7, v0

    check-cast v7, Lkotlin/jvm/functions/Function2;

    .line 444
    new-instance v0, Lru/rocketbank/r2d2/root/chat/ChatAdapter$queryLastMaxId$6;

    invoke-direct {v0, p2, p3}, Lru/rocketbank/r2d2/root/chat/ChatAdapter$queryLastMaxId$6;-><init>(J)V

    move-object v6, v0

    check-cast v6, Lkotlin/jvm/functions/Function2;

    .line 447
    sget-object p2, Lru/rocketbank/r2d2/root/chat/ChatAdapter$queryLastMaxId$7;->INSTANCE:Lru/rocketbank/r2d2/root/chat/ChatAdapter$queryLastMaxId$7;

    move-object v9, p2

    check-cast v9, Lkotlin/jvm/functions/Function2;

    .line 451
    sget-object p2, Lru/rocketbank/r2d2/root/chat/ChatAdapter$queryLastMaxId$8;->INSTANCE:Lru/rocketbank/r2d2/root/chat/ChatAdapter$queryLastMaxId$8;

    move-object v8, p2

    check-cast v8, Lkotlin/jvm/functions/Function2;

    move-object v1, p0

    move-object v2, p1

    .line 430
    invoke-virtual/range {v1 .. v10}, Lru/rocketbank/r2d2/root/chat/ChatAdapter;->cataEvent(Lru/rocketbank/r2d2/root/chat/sync/event/MessageEvent;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    return-object p1
.end method

.method public final queryLastRead(Lru/rocketbank/r2d2/root/chat/sync/event/MessageEvent;)Ljava/lang/Long;
    .locals 11

    .line 456
    sget-object v0, Lru/rocketbank/r2d2/root/chat/ChatAdapter$queryLastRead$1;->INSTANCE:Lru/rocketbank/r2d2/root/chat/ChatAdapter$queryLastRead$1;

    move-object v3, v0

    check-cast v3, Lkotlin/jvm/functions/Function2;

    .line 460
    sget-object v0, Lru/rocketbank/r2d2/root/chat/ChatAdapter$queryLastRead$2;->INSTANCE:Lru/rocketbank/r2d2/root/chat/ChatAdapter$queryLastRead$2;

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    .line 461
    sget-object v0, Lru/rocketbank/r2d2/root/chat/ChatAdapter$queryLastRead$3;->INSTANCE:Lru/rocketbank/r2d2/root/chat/ChatAdapter$queryLastRead$3;

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function2;

    .line 465
    sget-object v0, Lru/rocketbank/r2d2/root/chat/ChatAdapter$queryLastRead$4;->INSTANCE:Lru/rocketbank/r2d2/root/chat/ChatAdapter$queryLastRead$4;

    move-object v10, v0

    check-cast v10, Lkotlin/jvm/functions/Function2;

    .line 466
    sget-object v0, Lru/rocketbank/r2d2/root/chat/ChatAdapter$queryLastRead$5;->INSTANCE:Lru/rocketbank/r2d2/root/chat/ChatAdapter$queryLastRead$5;

    move-object v7, v0

    check-cast v7, Lkotlin/jvm/functions/Function2;

    .line 469
    sget-object v0, Lru/rocketbank/r2d2/root/chat/ChatAdapter$queryLastRead$6;->INSTANCE:Lru/rocketbank/r2d2/root/chat/ChatAdapter$queryLastRead$6;

    move-object v6, v0

    check-cast v6, Lkotlin/jvm/functions/Function2;

    .line 472
    sget-object v0, Lru/rocketbank/r2d2/root/chat/ChatAdapter$queryLastRead$7;->INSTANCE:Lru/rocketbank/r2d2/root/chat/ChatAdapter$queryLastRead$7;

    move-object v9, v0

    check-cast v9, Lkotlin/jvm/functions/Function2;

    .line 476
    sget-object v0, Lru/rocketbank/r2d2/root/chat/ChatAdapter$queryLastRead$8;->INSTANCE:Lru/rocketbank/r2d2/root/chat/ChatAdapter$queryLastRead$8;

    move-object v8, v0

    check-cast v8, Lkotlin/jvm/functions/Function2;

    move-object v1, p0

    move-object v2, p1

    .line 455
    invoke-virtual/range {v1 .. v10}, Lru/rocketbank/r2d2/root/chat/ChatAdapter;->cataEvent(Lru/rocketbank/r2d2/root/chat/sync/event/MessageEvent;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    return-object p1
.end method

.method public final showTyping(Lru/rocketbank/r2d2/root/chat/sync/event/TypingEvent;)V
    .locals 3

    const-string v0, "typingEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 307
    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/chat/sync/event/TypingEvent;->getTypingNotification()Lru/rocketbank/r2d2/root/chat/sync/notification/TypingNotification;

    move-result-object p1

    .line 309
    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/chat/sync/notification/TypingNotification;->getTyping()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 310
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/ChatAdapter;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lru/rocketbank/r2d2/root/chat/ChatAdapter;->typingEndRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 312
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/ChatAdapter;->messages:Lru/rocketbank/r2d2/root/chat/MessageList;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/chat/MessageList;->getTypingActive()Z

    move-result v0

    if-nez v0, :cond_3

    .line 313
    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/chat/sync/notification/TypingNotification;->getUser()Lru/rocketbank/r2d2/root/chat/sync/notification/NotificationUser;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/chat/sync/notification/NotificationUser;->getInfo()Lru/rocketbank/r2d2/root/chat/sync/notification/NotificationUserInfo;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 315
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/chat/ChatAdapter;->activateTyping()V

    .line 318
    :cond_1
    iput-object p1, p0, Lru/rocketbank/r2d2/root/chat/ChatAdapter;->typingAdmin:Lru/rocketbank/r2d2/root/chat/sync/notification/NotificationUserInfo;

    return-void

    .line 321
    :cond_2
    iget-object p1, p0, Lru/rocketbank/r2d2/root/chat/ChatAdapter;->messages:Lru/rocketbank/r2d2/root/chat/MessageList;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/chat/MessageList;->getTypingActive()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 322
    iget-object p1, p0, Lru/rocketbank/r2d2/root/chat/ChatAdapter;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/ChatAdapter;->typingEndRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    return-void
.end method

.method public final updateData(Lru/rocketbank/r2d2/root/chat/sync/event/MessageEvent;)V
    .locals 7

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 338
    sget-object v0, Lru/rocketbank/r2d2/root/chat/ChatAdapter;->TAG:Ljava/lang/String;

    const-string v1, "----------------------"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/ChatAdapter;->messages:Lru/rocketbank/r2d2/root/chat/MessageList;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/chat/MessageList;->debugOutState()V

    .line 340
    iget-wide v0, p0, Lru/rocketbank/r2d2/root/chat/ChatAdapter;->lastRead:J

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/root/chat/ChatAdapter;->queryLastRead(Lru/rocketbank/r2d2/root/chat/sync/event/MessageEvent;)Ljava/lang/Long;

    move-result-object v2

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    goto :goto_0

    :cond_0
    move-wide v5, v3

    :goto_0
    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lru/rocketbank/r2d2/root/chat/ChatAdapter;->lastRead:J

    .line 341
    iget-wide v0, p0, Lru/rocketbank/r2d2/root/chat/ChatAdapter;->lastDelivered:J

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/root/chat/ChatAdapter;->queryLastDelivered(Lru/rocketbank/r2d2/root/chat/sync/event/MessageEvent;)Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    goto :goto_1

    :cond_1
    move-wide v5, v3

    :goto_1
    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lru/rocketbank/r2d2/root/chat/ChatAdapter;->lastDelivered:J

    .line 343
    iget-wide v0, p0, Lru/rocketbank/r2d2/root/chat/ChatAdapter;->lastReadId:J

    iget-wide v5, p0, Lru/rocketbank/r2d2/root/chat/ChatAdapter;->lastReadId:J

    invoke-virtual {p0, p1, v5, v6}, Lru/rocketbank/r2d2/root/chat/ChatAdapter;->queryLastMaxId(Lru/rocketbank/r2d2/root/chat/sync/event/MessageEvent;J)Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    :cond_2
    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lru/rocketbank/r2d2/root/chat/ChatAdapter;->lastReadId:J

    .line 345
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/root/chat/ChatAdapter;->updateSize(Lru/rocketbank/r2d2/root/chat/sync/event/MessageEvent;)Ljava/lang/Integer;

    move-result-object v0

    .line 346
    sget-object v1, Lru/rocketbank/r2d2/root/chat/ChatAdapter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Update size "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v0, 0x20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lru/rocketbank/r2d2/root/chat/ChatAdapter;->lastRead:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lru/rocketbank/r2d2/root/chat/ChatAdapter;->lastDelivered:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lru/rocketbank/r2d2/root/chat/ChatAdapter;->lastReadId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/root/chat/ChatAdapter;->applyUpdate(Lru/rocketbank/r2d2/root/chat/sync/event/MessageEvent;)Ljava/lang/Boolean;

    .line 350
    iget-object p1, p0, Lru/rocketbank/r2d2/root/chat/ChatAdapter;->messages:Lru/rocketbank/r2d2/root/chat/MessageList;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/chat/MessageList;->debugOutState()V

    .line 351
    sget-object p1, Lru/rocketbank/r2d2/root/chat/ChatAdapter;->TAG:Ljava/lang/String;

    const-string v0, "----------------------"

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final updateSize(Lru/rocketbank/r2d2/root/chat/sync/event/MessageEvent;)Ljava/lang/Integer;
    .locals 11

    .line 506
    sget-object v0, Lru/rocketbank/r2d2/root/chat/ChatAdapter$updateSize$1;->INSTANCE:Lru/rocketbank/r2d2/root/chat/ChatAdapter$updateSize$1;

    move-object v3, v0

    check-cast v3, Lkotlin/jvm/functions/Function2;

    .line 507
    sget-object v0, Lru/rocketbank/r2d2/root/chat/ChatAdapter$updateSize$2;->INSTANCE:Lru/rocketbank/r2d2/root/chat/ChatAdapter$updateSize$2;

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    .line 508
    sget-object v0, Lru/rocketbank/r2d2/root/chat/ChatAdapter$updateSize$3;->INSTANCE:Lru/rocketbank/r2d2/root/chat/ChatAdapter$updateSize$3;

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function2;

    .line 509
    sget-object v0, Lru/rocketbank/r2d2/root/chat/ChatAdapter$updateSize$4;->INSTANCE:Lru/rocketbank/r2d2/root/chat/ChatAdapter$updateSize$4;

    move-object v10, v0

    check-cast v10, Lkotlin/jvm/functions/Function2;

    .line 510
    sget-object v0, Lru/rocketbank/r2d2/root/chat/ChatAdapter$updateSize$5;->INSTANCE:Lru/rocketbank/r2d2/root/chat/ChatAdapter$updateSize$5;

    move-object v7, v0

    check-cast v7, Lkotlin/jvm/functions/Function2;

    .line 511
    sget-object v0, Lru/rocketbank/r2d2/root/chat/ChatAdapter$updateSize$6;->INSTANCE:Lru/rocketbank/r2d2/root/chat/ChatAdapter$updateSize$6;

    move-object v6, v0

    check-cast v6, Lkotlin/jvm/functions/Function2;

    .line 512
    sget-object v0, Lru/rocketbank/r2d2/root/chat/ChatAdapter$updateSize$7;->INSTANCE:Lru/rocketbank/r2d2/root/chat/ChatAdapter$updateSize$7;

    move-object v9, v0

    check-cast v9, Lkotlin/jvm/functions/Function2;

    .line 513
    sget-object v0, Lru/rocketbank/r2d2/root/chat/ChatAdapter$updateSize$8;->INSTANCE:Lru/rocketbank/r2d2/root/chat/ChatAdapter$updateSize$8;

    move-object v8, v0

    check-cast v8, Lkotlin/jvm/functions/Function2;

    move-object v1, p0

    move-object v2, p1

    .line 505
    invoke-virtual/range {v1 .. v10}, Lru/rocketbank/r2d2/root/chat/ChatAdapter;->cataEvent(Lru/rocketbank/r2d2/root/chat/sync/event/MessageEvent;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    return-object p1
.end method
