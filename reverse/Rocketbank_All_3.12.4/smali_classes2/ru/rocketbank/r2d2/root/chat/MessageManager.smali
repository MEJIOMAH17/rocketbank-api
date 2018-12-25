.class public final Lru/rocketbank/r2d2/root/chat/MessageManager;
.super Ljava/lang/Object;
.source "MessageManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/root/chat/MessageManager$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMessageManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MessageManager.kt\nru/rocketbank/r2d2/root/chat/MessageManager\n*L\n1#1,301:1\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lru/rocketbank/r2d2/root/chat/MessageManager$Companion;

.field private static final TAG:Ljava/lang/String; = "MessageManager"


# instance fields
.field private final authorization:Lru/rocketbank/core/user/Authorization;

.field private final messageSync:Lru/rocketbank/r2d2/root/chat/sync/MessageSync;

.field private final rocketAPI:Lru/rocketbank/core/network/api/RocketAPI;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/r2d2/root/chat/MessageManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/root/chat/MessageManager$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/r2d2/root/chat/MessageManager;->Companion:Lru/rocketbank/r2d2/root/chat/MessageManager$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    sget-object v0, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object v0

    invoke-interface {v0}, Lru/rocketbank/core/dagger/component/RocketComponent;->getAuthorization()Lru/rocketbank/core/user/Authorization;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/root/chat/MessageManager;->authorization:Lru/rocketbank/core/user/Authorization;

    .line 38
    sget-object v0, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object v0

    invoke-interface {v0}, Lru/rocketbank/core/dagger/component/RocketComponent;->getRocketApi()Lru/rocketbank/core/network/api/RocketAPI;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/root/chat/MessageManager;->rocketAPI:Lru/rocketbank/core/network/api/RocketAPI;

    .line 40
    new-instance v0, Lru/rocketbank/r2d2/root/chat/sync/MessageSync;

    invoke-direct {v0}, Lru/rocketbank/r2d2/root/chat/sync/MessageSync;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/root/chat/MessageManager;->messageSync:Lru/rocketbank/r2d2/root/chat/sync/MessageSync;

    return-void
.end method

.method public static final synthetic access$getMessageSync$p(Lru/rocketbank/r2d2/root/chat/MessageManager;)Lru/rocketbank/r2d2/root/chat/sync/MessageSync;
    .locals 0

    .line 36
    iget-object p0, p0, Lru/rocketbank/r2d2/root/chat/MessageManager;->messageSync:Lru/rocketbank/r2d2/root/chat/sync/MessageSync;

    return-object p0
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    .line 36
    sget-object v0, Lru/rocketbank/r2d2/root/chat/MessageManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$uploadImageToServer(Lru/rocketbank/r2d2/root/chat/MessageManager;Landroid/graphics/Bitmap;Lru/rocketbank/core/model/message/MessageIn;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Lru/rocketbank/r2d2/root/chat/MessageManager;->uploadImageToServer(Landroid/graphics/Bitmap;Lru/rocketbank/core/model/message/MessageIn;)V

    return-void
.end method

.method private final observableFromGallery(Landroid/content/Intent;)Lrx/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Lrx/Observable<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 174
    sget-object v0, Lru/rocketbank/r2d2/utils/ImageUpload;->INSTANCE:Lru/rocketbank/r2d2/utils/ImageUpload;

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    const-string v1, "data.data"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/utils/ImageUpload;->observableFromGallery(Landroid/net/Uri;)Lrx/Observable;

    move-result-object p1

    return-object p1
.end method

.method private final retryImage(Lru/rocketbank/core/model/message/MessageIn;)V
    .locals 2

    const/4 v0, 0x1

    .line 280
    invoke-virtual {p1, v0}, Lru/rocketbank/core/model/message/MessageIn;->setUploading(Z)V

    const/4 v0, 0x0

    .line 281
    invoke-virtual {p1, v0}, Lru/rocketbank/core/model/message/MessageIn;->setFailed(Z)V

    .line 283
    invoke-virtual {p1}, Lru/rocketbank/core/model/message/MessageIn;->getAttachment()Lru/rocketbank/core/model/message/Attachment;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type ru.rocketbank.core.model.message.ImageAttachment"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    check-cast v0, Lru/rocketbank/core/model/message/ImageAttachment;

    .line 284
    invoke-virtual {v0}, Lru/rocketbank/core/model/message/ImageAttachment;->getImagePath()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 285
    sget-object v1, Lru/rocketbank/r2d2/utils/ImageUpload;->INSTANCE:Lru/rocketbank/r2d2/utils/ImageUpload;

    invoke-virtual {v1, v0}, Lru/rocketbank/r2d2/utils/ImageUpload;->observableFromGallery(Landroid/net/Uri;)Lrx/Observable;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lru/rocketbank/r2d2/root/chat/MessageManager;->uploadImage(Lrx/Observable;Lru/rocketbank/core/model/message/MessageIn;)Lru/rocketbank/core/model/message/MessageIn;

    return-void

    :cond_1
    return-void
.end method

.method private final uploadImage(Lrx/Observable;Lru/rocketbank/core/model/message/MessageIn;)Lru/rocketbank/core/model/message/MessageIn;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lru/rocketbank/core/model/message/MessageIn;",
            ")",
            "Lru/rocketbank/core/model/message/MessageIn;"
        }
    .end annotation

    .line 241
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object p1

    .line 242
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object p1

    .line 243
    new-instance v0, Lru/rocketbank/r2d2/root/chat/MessageManager$uploadImage$1;

    invoke-direct {v0, p0, p2}, Lru/rocketbank/r2d2/root/chat/MessageManager$uploadImage$1;-><init>(Lru/rocketbank/r2d2/root/chat/MessageManager;Lru/rocketbank/core/model/message/MessageIn;)V

    check-cast v0, Lrx/Subscriber;

    invoke-virtual {p1, v0}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    const/4 p1, 0x1

    .line 269
    invoke-virtual {p2, p1}, Lru/rocketbank/core/model/message/MessageIn;->setUploading(Z)V

    .line 270
    invoke-virtual {p2}, Lru/rocketbank/core/model/message/MessageIn;->getAttachment()Lru/rocketbank/core/model/message/Attachment;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/model/message/ImageAttachment;

    if-eqz v0, :cond_0

    .line 272
    invoke-virtual {v0, p1}, Lru/rocketbank/core/model/message/ImageAttachment;->setUploading(Z)V

    :cond_0
    return-object p2
.end method

.method private final uploadImageToServer(Landroid/graphics/Bitmap;Lru/rocketbank/core/model/message/MessageIn;)V
    .locals 2

    .line 136
    invoke-virtual {p2}, Lru/rocketbank/core/model/message/MessageIn;->getAttachment()Lru/rocketbank/core/model/message/Attachment;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/model/message/ImageAttachment;

    .line 138
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/root/chat/MessageManager;->uploadObservable(Landroid/graphics/Bitmap;)Lrx/Observable;

    move-result-object p1

    .line 139
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object p1

    .line 140
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object p1

    .line 141
    new-instance v1, Lru/rocketbank/r2d2/root/chat/MessageManager$uploadImageToServer$1;

    invoke-direct {v1, p0, p2, v0}, Lru/rocketbank/r2d2/root/chat/MessageManager$uploadImageToServer$1;-><init>(Lru/rocketbank/r2d2/root/chat/MessageManager;Lru/rocketbank/core/model/message/MessageIn;Lru/rocketbank/core/model/message/ImageAttachment;)V

    check-cast v1, Lrx/Subscriber;

    invoke-virtual {p1, v1}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    return-void
.end method

.method private final uploadObservable(Landroid/graphics/Bitmap;)Lrx/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            ")",
            "Lrx/Observable<",
            "Lru/rocketbank/core/network/model/UploadImageResponse;",
            ">;"
        }
    .end annotation

    .line 109
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "file_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".jpg"

    invoke-static {v0, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const-string v1, "File.createTempFile(\"fil\u2026lis().toString(), \".jpg\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "file.absolutePath"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    invoke-static {p1}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object p1

    new-instance v2, Lru/rocketbank/r2d2/root/chat/MessageManager$uploadObservable$2;

    invoke-direct {v2, p0, v0}, Lru/rocketbank/r2d2/root/chat/MessageManager$uploadObservable$2;-><init>(Lru/rocketbank/r2d2/root/chat/MessageManager;Ljava/io/File;)V

    check-cast v2, Lrx/functions/Func1;

    invoke-virtual {p1, v2}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object p1

    .line 128
    new-instance v2, Lru/rocketbank/r2d2/root/chat/MessageManager$uploadObservable$3;

    invoke-direct {v2, v0, v1}, Lru/rocketbank/r2d2/root/chat/MessageManager$uploadObservable$3;-><init>(Ljava/io/File;Ljava/lang/String;)V

    check-cast v2, Lrx/functions/Action0;

    invoke-virtual {p1, v2}, Lrx/Observable;->doOnUnsubscribe(Lrx/functions/Action0;)Lrx/Observable;

    move-result-object p1

    const-string v0, "Observable.just(bitmap).\u2026)\n            }\n        }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :catch_0
    move-exception p1

    .line 112
    new-instance v0, Lru/rocketbank/r2d2/root/chat/MessageManager$uploadObservable$1;

    invoke-direct {v0, p1}, Lru/rocketbank/r2d2/root/chat/MessageManager$uploadObservable$1;-><init>(Ljava/io/IOException;)V

    check-cast v0, Lrx/Observable$OnSubscribe;

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object p1

    const-string v0, "Observable.create { subs\u2026> subscriber.onError(e) }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method public final getAuthorization()Lru/rocketbank/core/user/Authorization;
    .locals 1

    .line 37
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/MessageManager;->authorization:Lru/rocketbank/core/user/Authorization;

    return-object v0
.end method

.method public final getRocketAPI()Lru/rocketbank/core/network/api/RocketAPI;
    .locals 1

    .line 38
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/MessageManager;->rocketAPI:Lru/rocketbank/core/network/api/RocketAPI;

    return-object v0
.end method

.method public final loadNextPage()V
    .locals 1

    .line 97
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/MessageManager;->messageSync:Lru/rocketbank/r2d2/root/chat/sync/MessageSync;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/chat/sync/MessageSync;->loadNext()V

    return-void
.end method

.method public final messageObservable()Lrx/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable<",
            "Lru/rocketbank/r2d2/root/chat/sync/event/MessageEvent;",
            ">;"
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/MessageManager;->messageSync:Lru/rocketbank/r2d2/root/chat/sync/MessageSync;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/chat/sync/MessageSync;->getPublishSubject()Lrx/subjects/PublishSubject;

    move-result-object v0

    invoke-virtual {v0}, Lrx/subjects/PublishSubject;->asObservable()Lrx/Observable;

    move-result-object v0

    const-string v1, "messageSync.publishSubject.asObservable()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 44
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/MessageManager;->messageSync:Lru/rocketbank/r2d2/root/chat/sync/MessageSync;

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/root/chat/sync/MessageSync;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public final onStart()V
    .locals 1

    .line 48
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/MessageManager;->messageSync:Lru/rocketbank/r2d2/root/chat/sync/MessageSync;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/chat/sync/MessageSync;->onStart()V

    return-void
.end method

.method public final onStop()V
    .locals 1

    .line 52
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/MessageManager;->messageSync:Lru/rocketbank/r2d2/root/chat/sync/MessageSync;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/chat/sync/MessageSync;->onStop()V

    return-void
.end method

.method public final refresh()V
    .locals 1

    .line 93
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/MessageManager;->messageSync:Lru/rocketbank/r2d2/root/chat/sync/MessageSync;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/chat/sync/MessageSync;->loadHead()V

    return-void
.end method

.method public final retryMessage(Lru/rocketbank/core/model/message/MessageIn;)V
    .locals 3

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    invoke-virtual {p1}, Lru/rocketbank/core/model/message/MessageIn;->getAttachment()Lru/rocketbank/core/model/message/Attachment;

    move-result-object v0

    .line 179
    instance-of v1, v0, Lru/rocketbank/core/model/message/ImageAttachment;

    if-eqz v1, :cond_0

    .line 180
    move-object v1, v0

    check-cast v1, Lru/rocketbank/core/model/message/ImageAttachment;

    invoke-virtual {v1}, Lru/rocketbank/core/model/message/ImageAttachment;->getImagePath()Landroid/net/Uri;

    move-result-object v1

    .line 181
    invoke-virtual {v0}, Lru/rocketbank/core/model/message/Attachment;->getId()I

    move-result v0

    if-nez v0, :cond_0

    if-eqz v1, :cond_0

    .line 182
    new-instance v0, Ljava/io/File;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 183
    sget-object v1, Lru/rocketbank/r2d2/utils/ImageUpload;->INSTANCE:Lru/rocketbank/r2d2/utils/ImageUpload;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v2, "file.absolutePath"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v2, 0x400

    invoke-virtual {v1, v0, v2}, Lru/rocketbank/r2d2/utils/ImageUpload;->observableFromCamera(Ljava/lang/String;I)Lrx/Observable;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lru/rocketbank/r2d2/root/chat/MessageManager;->uploadImage(Lrx/Observable;Lru/rocketbank/core/model/message/MessageIn;)Lru/rocketbank/core/model/message/MessageIn;

    return-void

    .line 188
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/MessageManager;->messageSync:Lru/rocketbank/r2d2/root/chat/sync/MessageSync;

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/root/chat/sync/MessageSync;->sendMessage(Lru/rocketbank/core/model/message/MessageIn;)V

    return-void
.end method

.method public final send(Ljava/lang/String;)V
    .locals 5

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v0

    .line 72
    new-instance v2, Lru/rocketbank/core/model/message/MessageIn;

    invoke-direct {v2}, Lru/rocketbank/core/model/message/MessageIn;-><init>()V

    .line 74
    invoke-virtual {v2, p1}, Lru/rocketbank/core/model/message/MessageIn;->setBody(Ljava/lang/String;)V

    .line 75
    invoke-virtual {v2, v0, v1}, Lru/rocketbank/core/model/message/MessageIn;->setId(J)V

    const-wide/16 v3, 0x3e8

    .line 76
    div-long/2addr v0, v3

    long-to-int p1, v0

    invoke-virtual {v2, p1}, Lru/rocketbank/core/model/message/MessageIn;->setCreatedAt(I)V

    .line 78
    iget-object p1, p0, Lru/rocketbank/r2d2/root/chat/MessageManager;->messageSync:Lru/rocketbank/r2d2/root/chat/sync/MessageSync;

    invoke-virtual {p1, v2}, Lru/rocketbank/r2d2/root/chat/sync/MessageSync;->sendMessage(Lru/rocketbank/core/model/message/MessageIn;)V

    return-void
.end method

.method public final send(Lru/rocketbank/core/model/dto/operations/Operation;)V
    .locals 6

    const-string v0, "operation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v0

    .line 57
    new-instance v2, Lru/rocketbank/core/model/message/MessageIn;

    invoke-direct {v2}, Lru/rocketbank/core/model/message/MessageIn;-><init>()V

    .line 59
    new-instance v3, Lru/rocketbank/core/model/message/OperationAttachment;

    invoke-direct {v3}, Lru/rocketbank/core/model/message/OperationAttachment;-><init>()V

    .line 60
    invoke-virtual {v3, p1}, Lru/rocketbank/core/model/message/OperationAttachment;->setOperation(Lru/rocketbank/core/model/dto/operations/Operation;)V

    const/4 p1, 0x0

    .line 62
    invoke-virtual {v2, p1}, Lru/rocketbank/core/model/message/MessageIn;->setBody(Ljava/lang/String;)V

    .line 63
    invoke-virtual {v2, v0, v1}, Lru/rocketbank/core/model/message/MessageIn;->setId(J)V

    const-wide/16 v4, 0x3e8

    .line 64
    div-long/2addr v0, v4

    long-to-int p1, v0

    invoke-virtual {v2, p1}, Lru/rocketbank/core/model/message/MessageIn;->setCreatedAt(I)V

    const/4 p1, 0x1

    .line 65
    new-array p1, p1, [Lru/rocketbank/core/model/message/Attachment;

    check-cast v3, Lru/rocketbank/core/model/message/Attachment;

    const/4 v0, 0x0

    aput-object v3, p1, v0

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v2, p1}, Lru/rocketbank/core/model/message/MessageIn;->setAttachments(Ljava/util/List;)V

    .line 67
    iget-object p1, p0, Lru/rocketbank/r2d2/root/chat/MessageManager;->messageSync:Lru/rocketbank/r2d2/root/chat/sync/MessageSync;

    invoke-virtual {p1, v2}, Lru/rocketbank/r2d2/root/chat/sync/MessageSync;->sendMessage(Lru/rocketbank/core/model/message/MessageIn;)V

    return-void
.end method

.method public final sendLove()V
    .locals 5

    .line 82
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v0

    .line 83
    new-instance v2, Lru/rocketbank/core/model/message/MessageIn;

    invoke-direct {v2}, Lru/rocketbank/core/model/message/MessageIn;-><init>()V

    .line 85
    invoke-virtual {v2, v0, v1}, Lru/rocketbank/core/model/message/MessageIn;->setId(J)V

    const-wide/16 v3, 0x3e8

    .line 86
    div-long/2addr v0, v3

    long-to-int v0, v0

    invoke-virtual {v2, v0}, Lru/rocketbank/core/model/message/MessageIn;->setCreatedAt(I)V

    const/4 v0, 0x1

    .line 87
    new-array v0, v0, [Lru/rocketbank/core/model/message/Attachment;

    new-instance v1, Lru/rocketbank/core/model/message/StickerAttachment;

    invoke-direct {v1}, Lru/rocketbank/core/model/message/StickerAttachment;-><init>()V

    check-cast v1, Lru/rocketbank/core/model/message/Attachment;

    const/4 v3, 0x0

    aput-object v1, v0, v3

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v2, v0}, Lru/rocketbank/core/model/message/MessageIn;->setAttachments(Ljava/util/List;)V

    .line 89
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/MessageManager;->messageSync:Lru/rocketbank/r2d2/root/chat/sync/MessageSync;

    invoke-virtual {v0, v2}, Lru/rocketbank/r2d2/root/chat/sync/MessageSync;->sendMessage(Lru/rocketbank/core/model/message/MessageIn;)V

    return-void
.end method

.method public final uploadFromCamera(Ljava/lang/String;I)V
    .locals 8

    const-string v0, "cameraPhotoPath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 205
    new-instance v0, Lru/rocketbank/core/model/message/ImageAttachment;

    invoke-direct {v0}, Lru/rocketbank/core/model/message/ImageAttachment;-><init>()V

    .line 206
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lru/rocketbank/core/model/message/ImageAttachment;->setImagePath(Landroid/net/Uri;)V

    const/4 v1, 0x1

    .line 207
    invoke-virtual {v0, v1}, Lru/rocketbank/core/model/message/ImageAttachment;->setUploading(Z)V

    const/4 v2, 0x0

    .line 208
    invoke-virtual {v0, v2}, Lru/rocketbank/core/model/message/ImageAttachment;->setId(I)V

    .line 209
    invoke-virtual {v0, p2}, Lru/rocketbank/core/model/message/ImageAttachment;->setWidth(I)V

    .line 211
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v3

    .line 212
    new-instance v5, Lru/rocketbank/core/model/message/MessageIn;

    invoke-direct {v5}, Lru/rocketbank/core/model/message/MessageIn;-><init>()V

    .line 214
    invoke-virtual {v5, v3, v4}, Lru/rocketbank/core/model/message/MessageIn;->setId(J)V

    const-wide/16 v6, 0x3e8

    .line 215
    div-long/2addr v3, v6

    long-to-int v3, v3

    invoke-virtual {v5, v3}, Lru/rocketbank/core/model/message/MessageIn;->setCreatedAt(I)V

    .line 216
    new-array v1, v1, [Lru/rocketbank/core/model/message/Attachment;

    check-cast v0, Lru/rocketbank/core/model/message/Attachment;

    aput-object v0, v1, v2

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v5, v0}, Lru/rocketbank/core/model/message/MessageIn;->setAttachments(Ljava/util/List;)V

    .line 218
    sget-object v0, Lru/rocketbank/r2d2/utils/ImageUpload;->INSTANCE:Lru/rocketbank/r2d2/utils/ImageUpload;

    invoke-virtual {v0, p1, p2}, Lru/rocketbank/r2d2/utils/ImageUpload;->observableFromCamera(Ljava/lang/String;I)Lrx/Observable;

    move-result-object p1

    invoke-direct {p0, p1, v5}, Lru/rocketbank/r2d2/root/chat/MessageManager;->uploadImage(Lrx/Observable;Lru/rocketbank/core/model/message/MessageIn;)Lru/rocketbank/core/model/message/MessageIn;

    return-void
.end method

.method public final uploadFromGallery(Landroid/content/Intent;I)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    .line 224
    :cond_0
    new-instance v0, Lru/rocketbank/core/model/message/ImageAttachment;

    invoke-direct {v0}, Lru/rocketbank/core/model/message/ImageAttachment;-><init>()V

    .line 225
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lru/rocketbank/core/model/message/ImageAttachment;->setImagePath(Landroid/net/Uri;)V

    const/4 v1, 0x1

    .line 226
    invoke-virtual {v0, v1}, Lru/rocketbank/core/model/message/ImageAttachment;->setUploading(Z)V

    const/4 v2, 0x0

    .line 227
    invoke-virtual {v0, v2}, Lru/rocketbank/core/model/message/ImageAttachment;->setId(I)V

    .line 228
    invoke-virtual {v0, p2}, Lru/rocketbank/core/model/message/ImageAttachment;->setWidth(I)V

    .line 230
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v3

    .line 231
    new-instance p2, Lru/rocketbank/core/model/message/MessageIn;

    invoke-direct {p2}, Lru/rocketbank/core/model/message/MessageIn;-><init>()V

    .line 233
    invoke-virtual {p2, v3, v4}, Lru/rocketbank/core/model/message/MessageIn;->setId(J)V

    const-wide/16 v5, 0x3e8

    .line 234
    div-long/2addr v3, v5

    long-to-int v3, v3

    invoke-virtual {p2, v3}, Lru/rocketbank/core/model/message/MessageIn;->setCreatedAt(I)V

    .line 235
    new-array v1, v1, [Lru/rocketbank/core/model/message/Attachment;

    check-cast v0, Lru/rocketbank/core/model/message/Attachment;

    aput-object v0, v1, v2

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {p2, v0}, Lru/rocketbank/core/model/message/MessageIn;->setAttachments(Ljava/util/List;)V

    .line 237
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/root/chat/MessageManager;->observableFromGallery(Landroid/content/Intent;)Lrx/Observable;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lru/rocketbank/r2d2/root/chat/MessageManager;->uploadImage(Lrx/Observable;Lru/rocketbank/core/model/message/MessageIn;)Lru/rocketbank/core/model/message/MessageIn;

    return-void
.end method
