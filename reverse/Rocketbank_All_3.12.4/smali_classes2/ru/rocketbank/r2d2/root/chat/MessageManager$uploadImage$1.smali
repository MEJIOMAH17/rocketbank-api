.class public final Lru/rocketbank/r2d2/root/chat/MessageManager$uploadImage$1;
.super Lrx/Subscriber;
.source "MessageManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/root/chat/MessageManager;->uploadImage(Lrx/Observable;Lru/rocketbank/core/model/message/MessageIn;)Lru/rocketbank/core/model/message/MessageIn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMessageManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MessageManager.kt\nru/rocketbank/r2d2/root/chat/MessageManager$uploadImage$1\n*L\n1#1,301:1\n*E\n"
.end annotation


# instance fields
.field final synthetic $message:Lru/rocketbank/core/model/message/MessageIn;

.field final synthetic this$0:Lru/rocketbank/r2d2/root/chat/MessageManager;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/root/chat/MessageManager;Lru/rocketbank/core/model/message/MessageIn;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lru/rocketbank/core/model/message/MessageIn;",
            ")V"
        }
    .end annotation

    .line 243
    iput-object p1, p0, Lru/rocketbank/r2d2/root/chat/MessageManager$uploadImage$1;->this$0:Lru/rocketbank/r2d2/root/chat/MessageManager;

    iput-object p2, p0, Lru/rocketbank/r2d2/root/chat/MessageManager$uploadImage$1;->$message:Lru/rocketbank/core/model/message/MessageIn;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted()V
    .locals 0

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 248
    invoke-static {}, Lru/rocketbank/r2d2/root/chat/MessageManager;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Can not open image"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 250
    invoke-static {p1}, Lru/rocketbank/core/manager/AnalyticsManager;->logException(Ljava/lang/Throwable;)V

    .line 252
    iget-object p1, p0, Lru/rocketbank/r2d2/root/chat/MessageManager$uploadImage$1;->$message:Lru/rocketbank/core/model/message/MessageIn;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lru/rocketbank/core/model/message/MessageIn;->setFailed(Z)V

    return-void
.end method

.method public final onNext(Landroid/graphics/Bitmap;)V
    .locals 5

    const-string v0, "bitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 256
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/MessageManager$uploadImage$1;->$message:Lru/rocketbank/core/model/message/MessageIn;

    invoke-virtual {v0}, Lru/rocketbank/core/model/message/MessageIn;->getAttachment()Lru/rocketbank/core/model/message/Attachment;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/model/message/ImageAttachment;

    if-eqz v0, :cond_0

    .line 259
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lru/rocketbank/core/model/message/ImageAttachment;->setWidth(I)V

    .line 260
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lru/rocketbank/core/model/message/ImageAttachment;->setHeight(I)V

    .line 263
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/MessageManager$uploadImage$1;->this$0:Lru/rocketbank/r2d2/root/chat/MessageManager;

    invoke-static {v0}, Lru/rocketbank/r2d2/root/chat/MessageManager;->access$getMessageSync$p(Lru/rocketbank/r2d2/root/chat/MessageManager;)Lru/rocketbank/r2d2/root/chat/sync/MessageSync;

    move-result-object v0

    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/chat/sync/MessageSync;->getPublishSubject()Lrx/subjects/PublishSubject;

    move-result-object v0

    new-instance v1, Lru/rocketbank/r2d2/root/chat/sync/event/PendingMessagesEvent;

    iget-object v2, p0, Lru/rocketbank/r2d2/root/chat/MessageManager$uploadImage$1;->$message:Lru/rocketbank/core/model/message/MessageIn;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-direct {v1, v2, v4, v3, v4}, Lru/rocketbank/r2d2/root/chat/sync/event/PendingMessagesEvent;-><init>(Ljava/util/List;Lru/rocketbank/r2d2/root/chat/sync/event/MessageEvent;ILkotlin/jvm/internal/Ref;)V

    invoke-virtual {v0, v1}, Lrx/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    .line 264
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/MessageManager$uploadImage$1;->this$0:Lru/rocketbank/r2d2/root/chat/MessageManager;

    iget-object v1, p0, Lru/rocketbank/r2d2/root/chat/MessageManager$uploadImage$1;->$message:Lru/rocketbank/core/model/message/MessageIn;

    invoke-static {v0, p1, v1}, Lru/rocketbank/r2d2/root/chat/MessageManager;->access$uploadImageToServer(Lru/rocketbank/r2d2/root/chat/MessageManager;Landroid/graphics/Bitmap;Lru/rocketbank/core/model/message/MessageIn;)V

    :cond_0
    return-void
.end method

.method public final bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 243
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/root/chat/MessageManager$uploadImage$1;->onNext(Landroid/graphics/Bitmap;)V

    return-void
.end method
