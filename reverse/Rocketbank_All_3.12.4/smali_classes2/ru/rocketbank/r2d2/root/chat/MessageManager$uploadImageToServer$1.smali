.class public final Lru/rocketbank/r2d2/root/chat/MessageManager$uploadImageToServer$1;
.super Lrx/Subscriber;
.source "MessageManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/root/chat/MessageManager;->uploadImageToServer(Landroid/graphics/Bitmap;Lru/rocketbank/core/model/message/MessageIn;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber<",
        "Lru/rocketbank/core/network/model/UploadImageResponse;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMessageManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MessageManager.kt\nru/rocketbank/r2d2/root/chat/MessageManager$uploadImageToServer$1\n*L\n1#1,301:1\n*E\n"
.end annotation


# instance fields
.field final synthetic $imageAttachment:Lru/rocketbank/core/model/message/ImageAttachment;

.field final synthetic $message:Lru/rocketbank/core/model/message/MessageIn;

.field final synthetic this$0:Lru/rocketbank/r2d2/root/chat/MessageManager;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/root/chat/MessageManager;Lru/rocketbank/core/model/message/MessageIn;Lru/rocketbank/core/model/message/ImageAttachment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lru/rocketbank/core/model/message/MessageIn;",
            "Lru/rocketbank/core/model/message/ImageAttachment;",
            ")V"
        }
    .end annotation

    .line 141
    iput-object p1, p0, Lru/rocketbank/r2d2/root/chat/MessageManager$uploadImageToServer$1;->this$0:Lru/rocketbank/r2d2/root/chat/MessageManager;

    iput-object p2, p0, Lru/rocketbank/r2d2/root/chat/MessageManager$uploadImageToServer$1;->$message:Lru/rocketbank/core/model/message/MessageIn;

    iput-object p3, p0, Lru/rocketbank/r2d2/root/chat/MessageManager$uploadImageToServer$1;->$imageAttachment:Lru/rocketbank/core/model/message/ImageAttachment;

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

    .line 147
    invoke-static {}, Lru/rocketbank/r2d2/root/chat/MessageManager;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed to upload image"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 149
    invoke-static {p1}, Lru/rocketbank/core/manager/AnalyticsManager;->logException(Ljava/lang/Throwable;)V

    .line 150
    iget-object p1, p0, Lru/rocketbank/r2d2/root/chat/MessageManager$uploadImageToServer$1;->$message:Lru/rocketbank/core/model/message/MessageIn;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lru/rocketbank/core/model/message/MessageIn;->setFailed(Z)V

    .line 151
    iget-object p1, p0, Lru/rocketbank/r2d2/root/chat/MessageManager$uploadImageToServer$1;->$imageAttachment:Lru/rocketbank/core/model/message/ImageAttachment;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lru/rocketbank/core/model/message/ImageAttachment;->setUploading(Z)V

    return-void

    :cond_0
    return-void
.end method

.method public final bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 141
    check-cast p1, Lru/rocketbank/core/network/model/UploadImageResponse;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/root/chat/MessageManager$uploadImageToServer$1;->onNext(Lru/rocketbank/core/network/model/UploadImageResponse;)V

    return-void
.end method

.method public final onNext(Lru/rocketbank/core/network/model/UploadImageResponse;)V
    .locals 2

    .line 155
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/MessageManager$uploadImageToServer$1;->$imageAttachment:Lru/rocketbank/core/model/message/ImageAttachment;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 157
    invoke-virtual {p1}, Lru/rocketbank/core/network/model/UploadImageResponse;->getImage()Lru/rocketbank/core/model/ImageModel;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 160
    invoke-virtual {p1}, Lru/rocketbank/core/model/ImageModel;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lru/rocketbank/core/model/message/ImageAttachment;->setId(I)V

    .line 161
    invoke-virtual {p1}, Lru/rocketbank/core/model/ImageModel;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lru/rocketbank/core/model/message/ImageAttachment;->setWidth(I)V

    .line 162
    invoke-virtual {p1}, Lru/rocketbank/core/model/ImageModel;->getHeight()I

    move-result p1

    invoke-virtual {v0, p1}, Lru/rocketbank/core/model/message/ImageAttachment;->setHeight(I)V

    const/4 p1, 0x0

    .line 163
    invoke-virtual {v0, p1}, Lru/rocketbank/core/model/message/ImageAttachment;->setUploading(Z)V

    .line 166
    iget-object p1, p0, Lru/rocketbank/r2d2/root/chat/MessageManager$uploadImageToServer$1;->this$0:Lru/rocketbank/r2d2/root/chat/MessageManager;

    invoke-static {p1}, Lru/rocketbank/r2d2/root/chat/MessageManager;->access$getMessageSync$p(Lru/rocketbank/r2d2/root/chat/MessageManager;)Lru/rocketbank/r2d2/root/chat/sync/MessageSync;

    move-result-object p1

    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/MessageManager$uploadImageToServer$1;->$message:Lru/rocketbank/core/model/message/MessageIn;

    invoke-virtual {p1, v0}, Lru/rocketbank/r2d2/root/chat/sync/MessageSync;->sendMessage(Lru/rocketbank/core/model/message/MessageIn;)V

    return-void

    :cond_0
    return-void

    :cond_1
    return-void
.end method
