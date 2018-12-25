.class public final Lru/rocketbank/r2d2/firebase/RocketFirebaseMessagingService;
.super Lcom/google/firebase/messaging/FirebaseMessagingService;
.source "RocketFirebaseMessagingService.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRocketFirebaseMessagingService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RocketFirebaseMessagingService.kt\nru/rocketbank/r2d2/firebase/RocketFirebaseMessagingService\n*L\n1#1,278:1\n*E\n"
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field public authorization:Lru/rocketbank/core/user/Authorization;

.field private final client:Lokhttp3/OkHttpClient;

.field public feedManager:Lru/rocketbank/core/manager/FeedManager;

.field public gson:Lcom/google/gson/Gson;

.field public operationApi:Lru/rocketbank/core/network/api/OperationApi;

.field private final random:Ljava/util/Random;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Lcom/google/firebase/messaging/FirebaseMessagingService;-><init>()V

    const-string v0, "FirebaseMsgService"

    .line 39
    iput-object v0, p0, Lru/rocketbank/r2d2/firebase/RocketFirebaseMessagingService;->TAG:Ljava/lang/String;

    .line 45
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/firebase/RocketFirebaseMessagingService;->random:Ljava/util/Random;

    .line 46
    new-instance v0, Lokhttp3/OkHttpClient;

    invoke-direct {v0}, Lokhttp3/OkHttpClient;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/firebase/RocketFirebaseMessagingService;->client:Lokhttp3/OkHttpClient;

    return-void
.end method

.method private final getBitmapClippedCircle(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 254
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 255
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 256
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 258
    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    .line 259
    div-int/lit8 v5, v1, 0x2

    int-to-float v5, v5

    .line 260
    div-int/lit8 v2, v2, 0x2

    int-to-float v6, v2

    .line 261
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    .line 262
    sget-object v2, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    .line 259
    invoke-virtual {v4, v5, v6, v1, v2}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 264
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 265
    invoke-virtual {v1, v4}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    const/4 v2, 0x0

    .line 266
    invoke-virtual {v1, p1, v2, v2, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 267
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    return-object v3
.end method

.method private final getBitmapFromURL(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5

    const/4 v0, 0x0

    .line 130
    :try_start_0
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/firebase/RocketFirebaseMessagingService;->loadBmp(Ljava/lang/String;)Lokhttp3/ResponseBody;

    move-result-object p1

    .line 132
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object p1

    check-cast p1, Ljava/io/Closeable;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    move-object v1, p1

    check-cast v1, Ljava/io/InputStream;

    .line 133
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 134
    iget-object v2, p0, Lru/rocketbank/r2d2/firebase/RocketFirebaseMessagingService;->TAG:Ljava/lang/String;

    const-string v3, "load bitmap ok"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 135
    :try_start_2
    invoke-static {p1, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    return-object v1

    :catchall_0
    move-exception v1

    move-object v2, v0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 132
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v2

    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    :goto_0
    :try_start_4
    invoke-static {p1, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception p1

    .line 139
    invoke-static {p1}, Lru/rocketbank/core/manager/AnalyticsManager;->logException(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private final handleEvent(Lru/rocketbank/core/model/PushData;)V
    .locals 16

    move-object/from16 v0, p0

    .line 172
    iget-object v1, v0, Lru/rocketbank/r2d2/firebase/RocketFirebaseMessagingService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Badge: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lru/rocketbank/core/model/PushData;->getBadge()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    invoke-virtual/range {p1 .. p1}, Lru/rocketbank/core/model/PushData;->getAcme()Lru/rocketbank/core/model/push/Acme;

    move-result-object v1

    .line 175
    invoke-virtual/range {p1 .. p1}, Lru/rocketbank/core/model/PushData;->getBadge()I

    move-result v2

    invoke-direct {v0, v2}, Lru/rocketbank/r2d2/firebase/RocketFirebaseMessagingService;->setBadge(I)V

    .line 177
    invoke-virtual/range {p1 .. p1}, Lru/rocketbank/core/model/PushData;->getSound()I

    move-result v2

    const v3, 0x7f1103dc

    if-ltz v2, :cond_0

    if-nez v1, :cond_0

    .line 178
    sget-object v4, Lru/rocketbank/core/manager/PushManager;->instance:Lru/rocketbank/core/manager/PushManager;

    iget-object v1, v0, Lru/rocketbank/r2d2/firebase/RocketFirebaseMessagingService;->random:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v5

    .line 179
    invoke-virtual/range {p1 .. p1}, Lru/rocketbank/core/model/PushData;->getAlert()Ljava/lang/String;

    move-result-object v6

    .line 180
    invoke-virtual {v0, v3}, Lru/rocketbank/r2d2/firebase/RocketFirebaseMessagingService;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v1, "getString(R.string.rocketbank)"

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 181
    const-class v8, Lru/rocketbank/r2d2/activities/StartupActivity;

    invoke-virtual/range {p1 .. p1}, Lru/rocketbank/core/model/PushData;->getSound()I

    move-result v9

    .line 178
    invoke-virtual/range {v4 .. v9}, Lru/rocketbank/core/manager/PushManager;->showSound(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Class;I)V

    return-void

    :cond_0
    if-eqz v1, :cond_1

    .line 185
    invoke-virtual {v1}, Lru/rocketbank/core/model/push/Acme;->getA()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_2

    .line 186
    sget-object v4, Lru/rocketbank/core/manager/PushManager;->instance:Lru/rocketbank/core/manager/PushManager;

    invoke-virtual/range {p1 .. p1}, Lru/rocketbank/core/model/PushData;->isMuted()Z

    move-result v1

    xor-int/lit8 v5, v1, 0x1

    .line 187
    iget-object v1, v0, Lru/rocketbank/r2d2/firebase/RocketFirebaseMessagingService;->random:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v6

    .line 188
    invoke-virtual/range {p1 .. p1}, Lru/rocketbank/core/model/PushData;->getAlert()Ljava/lang/String;

    move-result-object v7

    .line 189
    invoke-virtual {v0, v3}, Lru/rocketbank/r2d2/firebase/RocketFirebaseMessagingService;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v1, "getString(R.string.rocketbank)"

    invoke-static {v8, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 190
    const-class v9, Lru/rocketbank/r2d2/activities/StartupActivity;

    invoke-virtual/range {p1 .. p1}, Lru/rocketbank/core/model/PushData;->getSound()I

    move-result v10

    .line 186
    invoke-virtual/range {v4 .. v10}, Lru/rocketbank/core/manager/PushManager;->showPlain(ZILjava/lang/String;Ljava/lang/String;Ljava/lang/Class;I)V

    return-void

    .line 194
    :cond_2
    invoke-virtual {v1}, Lru/rocketbank/core/model/push/Acme;->getA()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    if-nez v2, :cond_3

    goto/16 :goto_1

    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/16 v6, 0x6a

    if-eq v5, v6, :cond_d

    const/16 v6, 0x6f

    if-eq v5, v6, :cond_b

    const/16 v6, 0x74

    if-eq v5, v6, :cond_7

    const/16 v6, 0x77

    if-eq v5, v6, :cond_4

    goto/16 :goto_1

    :cond_4
    const-string v5, "w"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 225
    invoke-virtual {v1}, Lru/rocketbank/core/model/push/Acme;->getWebAuth()Lru/rocketbank/core/model/push/WebAuth;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 226
    sget-object v3, Lru/rocketbank/r2d2/activities/webauth/Sec3dActivity;->Companion:Lru/rocketbank/r2d2/activities/webauth/Sec3dActivity$Companion;

    move-object v4, v0

    check-cast v4, Landroid/content/Context;

    invoke-virtual {v2}, Lru/rocketbank/core/model/push/WebAuth;->getAuthId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lru/rocketbank/core/model/push/WebAuth;->getOccuredAt()I

    move-result v6

    invoke-virtual {v2}, Lru/rocketbank/core/model/push/WebAuth;->getTtl()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Lru/rocketbank/core/model/PushData;->getAlert()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lru/rocketbank/core/model/PushData;->getIconUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v3 .. v9}, Lru/rocketbank/r2d2/activities/webauth/Sec3dActivity$Companion;->pendingIntent(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v14

    .line 227
    sget-object v10, Lru/rocketbank/core/manager/PushManager;->instance:Lru/rocketbank/core/manager/PushManager;

    invoke-virtual {v1}, Lru/rocketbank/core/model/push/Acme;->getId()J

    move-result-wide v1

    long-to-int v11, v1

    invoke-virtual/range {p1 .. p1}, Lru/rocketbank/core/model/PushData;->getAlert()Ljava/lang/String;

    move-result-object v12

    const v1, 0x7f1103f7

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/firebase/RocketFirebaseMessagingService;->getString(I)Ljava/lang/String;

    move-result-object v13

    const-string v1, "getString(R.string.sec3d)"

    invoke-static {v13, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lru/rocketbank/core/model/PushData;->getSourceBitmap()Landroid/graphics/Bitmap;

    move-result-object v15

    invoke-virtual/range {v10 .. v15}, Lru/rocketbank/core/manager/PushManager;->showWebAuth(ILjava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/graphics/Bitmap;)V

    .line 228
    iget-object v1, v0, Lru/rocketbank/r2d2/firebase/RocketFirebaseMessagingService;->feedManager:Lru/rocketbank/core/manager/FeedManager;

    if-nez v1, :cond_5

    const-string v2, "feedManager"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {v1}, Lru/rocketbank/core/manager/FeedManager;->refresh()V

    .line 230
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v1

    new-instance v2, Lru/rocketbank/core/manager/FeedManager$FeedRefreshIsNeeded;

    invoke-direct {v2}, Lru/rocketbank/core/manager/FeedManager$FeedRefreshIsNeeded;-><init>()V

    invoke-virtual {v1, v2}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    :cond_6
    return-void

    :cond_7
    const-string v1, "t"

    .line 194
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 205
    sget-object v1, Lru/rocketbank/core/manager/PushManager;->instance:Lru/rocketbank/core/manager/PushManager;

    invoke-virtual/range {p1 .. p1}, Lru/rocketbank/core/model/PushData;->isMuted()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual/range {p1 .. p1}, Lru/rocketbank/core/model/PushData;->getAlert()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lru/rocketbank/r2d2/activities/StartupActivity;

    invoke-virtual/range {p1 .. p1}, Lru/rocketbank/core/model/PushData;->getSound()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lru/rocketbank/core/manager/PushManager;->showMessage(ZLjava/lang/String;Ljava/lang/Class;I)V

    .line 206
    iget-object v1, v0, Lru/rocketbank/r2d2/firebase/RocketFirebaseMessagingService;->authorization:Lru/rocketbank/core/user/Authorization;

    if-nez v1, :cond_8

    const-string v2, "authorization"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_8
    invoke-virtual {v1}, Lru/rocketbank/core/user/Authorization;->isAuthorized()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 207
    iget-object v1, v0, Lru/rocketbank/r2d2/firebase/RocketFirebaseMessagingService;->authorization:Lru/rocketbank/core/user/Authorization;

    if-nez v1, :cond_9

    const-string v2, "authorization"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_9
    invoke-virtual {v1}, Lru/rocketbank/core/user/Authorization;->refreshBackgroundProfile()V

    .line 210
    :cond_a
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v1

    new-instance v2, Lru/rocketbank/core/manager/FeedManager$FeedRefreshIsNeeded;

    invoke-direct {v2}, Lru/rocketbank/core/manager/FeedManager$FeedRefreshIsNeeded;-><init>()V

    invoke-virtual {v1, v2}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    return-void

    :cond_b
    const-string v5, "o"

    .line 194
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 196
    sget-object v2, Lru/rocketbank/r2d2/service/SendLocationIntentService;->Companion:Lru/rocketbank/r2d2/service/SendLocationIntentService$Companion;

    move-object v3, v0

    check-cast v3, Landroid/content/Context;

    invoke-virtual {v1}, Lru/rocketbank/core/model/push/Acme;->getId()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lru/rocketbank/r2d2/service/SendLocationIntentService$Companion;->startActionLocation(Landroid/content/Context;J)V

    .line 198
    sget-object v6, Lru/rocketbank/core/manager/PushManager;->instance:Lru/rocketbank/core/manager/PushManager;

    invoke-virtual/range {p1 .. p1}, Lru/rocketbank/core/model/PushData;->isMuted()Z

    move-result v1

    xor-int/lit8 v7, v1, 0x1

    invoke-virtual/range {p1 .. p1}, Lru/rocketbank/core/model/PushData;->getAlert()Ljava/lang/String;

    move-result-object v8

    const-class v9, Lru/rocketbank/r2d2/activities/StartupActivity;

    invoke-virtual/range {p1 .. p1}, Lru/rocketbank/core/model/PushData;->getSound()I

    move-result v10

    invoke-virtual/range {p1 .. p1}, Lru/rocketbank/core/model/PushData;->getSourceBitmap()Landroid/graphics/Bitmap;

    move-result-object v11

    invoke-virtual/range {v6 .. v11}, Lru/rocketbank/core/manager/PushManager;->showOperation(ZLjava/lang/String;Ljava/lang/Class;ILandroid/graphics/Bitmap;)V

    .line 199
    iget-object v1, v0, Lru/rocketbank/r2d2/firebase/RocketFirebaseMessagingService;->feedManager:Lru/rocketbank/core/manager/FeedManager;

    if-nez v1, :cond_c

    const-string v2, "feedManager"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_c
    invoke-virtual {v1}, Lru/rocketbank/core/manager/FeedManager;->refresh()V

    .line 201
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v1

    new-instance v2, Lru/rocketbank/core/manager/FeedManager$FeedRefreshIsNeeded;

    invoke-direct {v2}, Lru/rocketbank/core/manager/FeedManager$FeedRefreshIsNeeded;-><init>()V

    invoke-virtual {v1, v2}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    return-void

    :cond_d
    const-string v1, "j"

    .line 194
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 214
    sget-object v5, Lru/rocketbank/core/manager/PushManager;->instance:Lru/rocketbank/core/manager/PushManager;

    invoke-virtual/range {p1 .. p1}, Lru/rocketbank/core/model/PushData;->isMuted()Z

    move-result v1

    xor-int/lit8 v6, v1, 0x1

    .line 215
    invoke-virtual/range {p1 .. p1}, Lru/rocketbank/core/model/PushData;->getAcme()Lru/rocketbank/core/model/push/Acme;

    move-result-object v1

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Lru/rocketbank/core/model/push/Acme;->getId()J

    move-result-wide v1

    long-to-int v4, v1

    :cond_e
    move v7, v4

    .line 216
    invoke-virtual/range {p1 .. p1}, Lru/rocketbank/core/model/PushData;->getAlert()Ljava/lang/String;

    move-result-object v8

    const v1, 0x7f11024d

    .line 217
    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/firebase/RocketFirebaseMessagingService;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v1, "getString(R.string.joint_analytics)"

    invoke-static {v9, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 218
    const-class v10, Lru/rocketbank/r2d2/activities/StartupActivity;

    .line 219
    invoke-virtual/range {p1 .. p1}, Lru/rocketbank/core/model/PushData;->getSound()I

    move-result v11

    .line 214
    invoke-virtual/range {v5 .. v11}, Lru/rocketbank/core/manager/PushManager;->showPlain(ZILjava/lang/String;Ljava/lang/String;Ljava/lang/Class;I)V

    .line 220
    iget-object v1, v0, Lru/rocketbank/r2d2/firebase/RocketFirebaseMessagingService;->authorization:Lru/rocketbank/core/user/Authorization;

    if-nez v1, :cond_f

    const-string v2, "authorization"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_f
    invoke-virtual {v1}, Lru/rocketbank/core/user/Authorization;->isAuthorized()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 221
    iget-object v1, v0, Lru/rocketbank/r2d2/firebase/RocketFirebaseMessagingService;->authorization:Lru/rocketbank/core/user/Authorization;

    if-nez v1, :cond_10

    const-string v2, "authorization"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_10
    invoke-virtual {v1}, Lru/rocketbank/core/user/Authorization;->refreshBackgroundProfile()V

    return-void

    .line 236
    :cond_11
    :goto_1
    sget-object v1, Lru/rocketbank/core/manager/PushManager;->instance:Lru/rocketbank/core/manager/PushManager;

    invoke-virtual/range {p1 .. p1}, Lru/rocketbank/core/model/PushData;->isMuted()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 237
    invoke-virtual/range {p1 .. p1}, Lru/rocketbank/core/model/PushData;->getAcme()Lru/rocketbank/core/model/push/Acme;

    move-result-object v5

    if-eqz v5, :cond_12

    invoke-virtual {v5}, Lru/rocketbank/core/model/push/Acme;->getId()J

    move-result-wide v4

    long-to-int v4, v4

    :cond_12
    move v5, v4

    .line 238
    invoke-virtual/range {p1 .. p1}, Lru/rocketbank/core/model/PushData;->getAlert()Ljava/lang/String;

    move-result-object v6

    .line 239
    invoke-virtual {v0, v3}, Lru/rocketbank/r2d2/firebase/RocketFirebaseMessagingService;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v3, "getString(R.string.rocketbank)"

    invoke-static {v7, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 240
    const-class v8, Lru/rocketbank/r2d2/activities/StartupActivity;

    .line 241
    invoke-virtual/range {p1 .. p1}, Lru/rocketbank/core/model/PushData;->getSound()I

    move-result v9

    move-object v3, v1

    move v4, v2

    .line 236
    invoke-virtual/range {v3 .. v9}, Lru/rocketbank/core/manager/PushManager;->showPlain(ZILjava/lang/String;Ljava/lang/String;Ljava/lang/Class;I)V

    .line 242
    iget-object v1, v0, Lru/rocketbank/r2d2/firebase/RocketFirebaseMessagingService;->authorization:Lru/rocketbank/core/user/Authorization;

    if-nez v1, :cond_13

    const-string v2, "authorization"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_13
    invoke-virtual {v1}, Lru/rocketbank/core/user/Authorization;->isAuthorized()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 243
    iget-object v1, v0, Lru/rocketbank/r2d2/firebase/RocketFirebaseMessagingService;->authorization:Lru/rocketbank/core/user/Authorization;

    if-nez v1, :cond_14

    const-string v2, "authorization"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_14
    invoke-virtual {v1}, Lru/rocketbank/core/user/Authorization;->refreshBackgroundProfile()V

    :cond_15
    return-void
.end method

.method private final loadBmp(Ljava/lang/String;)Lokhttp3/ResponseBody;
    .locals 1

    .line 145
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    .line 146
    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 147
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    .line 148
    iget-object v0, p0, Lru/rocketbank/r2d2/firebase/RocketFirebaseMessagingService;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    invoke-interface {p1}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object p1

    .line 149
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    return-object p1
.end method

.method private final sendNotification(Ljava/lang/String;)V
    .locals 5

    .line 158
    new-instance v0, Landroid/content/Intent;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    const-class v2, Lru/rocketbank/r2d2/activities/StartupActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x4000000

    .line 159
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v2, 0x0

    const/high16 v3, 0x40000000    # 2.0f

    .line 160
    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    const/4 v3, 0x2

    .line 163
    invoke-static {v3}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v3

    .line 164
    new-instance v4, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v4, v1}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f08017f

    invoke-virtual {v4, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    const-string v4, "FCM Message"

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v1, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v1, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object p1

    const-string v0, "notification"

    .line 166
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/firebase/RocketFirebaseMessagingService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.app.NotificationManager"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    check-cast v0, Landroid/app/NotificationManager;

    .line 168
    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method private final setBadge(I)V
    .locals 1

    if-ltz p1, :cond_0

    .line 273
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0, p1}, Lme/leolin/shortcutbadger/ShortcutBadger;->applyCount(Landroid/content/Context;I)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public final getAuthorization()Lru/rocketbank/core/user/Authorization;
    .locals 2

    .line 43
    iget-object v0, p0, Lru/rocketbank/r2d2/firebase/RocketFirebaseMessagingService;->authorization:Lru/rocketbank/core/user/Authorization;

    if-nez v0, :cond_0

    const-string v1, "authorization"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getFeedManager()Lru/rocketbank/core/manager/FeedManager;
    .locals 2

    .line 42
    iget-object v0, p0, Lru/rocketbank/r2d2/firebase/RocketFirebaseMessagingService;->feedManager:Lru/rocketbank/core/manager/FeedManager;

    if-nez v0, :cond_0

    const-string v1, "feedManager"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getGson()Lcom/google/gson/Gson;
    .locals 2

    .line 44
    iget-object v0, p0, Lru/rocketbank/r2d2/firebase/RocketFirebaseMessagingService;->gson:Lcom/google/gson/Gson;

    if-nez v0, :cond_0

    const-string v1, "gson"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getOperationApi()Lru/rocketbank/core/network/api/OperationApi;
    .locals 2

    .line 41
    iget-object v0, p0, Lru/rocketbank/r2d2/firebase/RocketFirebaseMessagingService;->operationApi:Lru/rocketbank/core/network/api/OperationApi;

    if-nez v0, :cond_0

    const-string v1, "operationApi"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final onCreate()V
    .locals 3

    .line 50
    invoke-super {p0}, Lcom/google/firebase/messaging/FirebaseMessagingService;->onCreate()V

    .line 52
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    const-class v1, Ljava/lang/String;

    check-cast v1, Ljava/lang/reflect/Type;

    new-instance v2, Lru/rocketbank/core/network/adapter/StringDeserializer;

    invoke-direct {v2}, Lru/rocketbank/core/network/adapter/StringDeserializer;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    const-string v1, "GsonBuilder().registerTy\u2026gDeserializer()).create()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lru/rocketbank/r2d2/firebase/RocketFirebaseMessagingService;->gson:Lcom/google/gson/Gson;

    .line 54
    sget-object v0, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object v0

    .line 55
    invoke-interface {v0}, Lru/rocketbank/core/dagger/component/RocketComponent;->getOperationApi()Lru/rocketbank/core/network/api/OperationApi;

    move-result-object v1

    iput-object v1, p0, Lru/rocketbank/r2d2/firebase/RocketFirebaseMessagingService;->operationApi:Lru/rocketbank/core/network/api/OperationApi;

    .line 56
    invoke-interface {v0}, Lru/rocketbank/core/dagger/component/RocketComponent;->getFeedManager()Lru/rocketbank/core/manager/FeedManager;

    move-result-object v1

    iput-object v1, p0, Lru/rocketbank/r2d2/firebase/RocketFirebaseMessagingService;->feedManager:Lru/rocketbank/core/manager/FeedManager;

    .line 57
    invoke-interface {v0}, Lru/rocketbank/core/dagger/component/RocketComponent;->getAuthorization()Lru/rocketbank/core/user/Authorization;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/firebase/RocketFirebaseMessagingService;->authorization:Lru/rocketbank/core/user/Authorization;

    return-void
.end method

.method public final onMessageReceived(Lcom/google/firebase/messaging/RemoteMessage;)V
    .locals 13

    const-string v0, "remoteMessage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lru/rocketbank/r2d2/firebase/RocketFirebaseMessagingService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "From: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage;->getFrom()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage;->getData()Ljava/util/Map;

    move-result-object v0

    const-string v1, "remoteMessage.data"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lru/rocketbank/r2d2/firebase/RocketFirebaseMessagingService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Message data payload: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage;->getData()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_0
    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage;->getData()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 89
    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage;->getData()Ljava/util/Map;

    move-result-object v0

    .line 91
    new-instance v2, Lru/rocketbank/core/model/PushData;

    invoke-direct {v2}, Lru/rocketbank/core/model/PushData;-><init>()V

    const-string v3, "acme"

    .line 92
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    iget-object v5, p0, Lru/rocketbank/r2d2/firebase/RocketFirebaseMessagingService;->gson:Lcom/google/gson/Gson;

    if-nez v5, :cond_1

    const-string v6, "gson"

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    const-class v6, Lru/rocketbank/core/model/push/Acme;

    invoke-virtual {v5, v3, v6}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lru/rocketbank/core/model/push/Acme;

    goto :goto_0

    :cond_2
    move-object v3, v4

    :goto_0
    invoke-virtual {v2, v3}, Lru/rocketbank/core/model/PushData;->setAcme(Lru/rocketbank/core/model/push/Acme;)V

    const-string v3, "alert"

    .line 93
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_3

    const-string v3, ""

    :cond_3
    invoke-virtual {v2, v3}, Lru/rocketbank/core/model/PushData;->setAlert(Ljava/lang/String;)V

    const-string v3, "badge"

    .line 94
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v5, -0x1

    if-eqz v3, :cond_4

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    goto :goto_1

    :cond_4
    move v3, v5

    :goto_1
    invoke-virtual {v2, v3}, Lru/rocketbank/core/model/PushData;->setBadge(I)V

    const-string v3, "category"

    .line 95
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lru/rocketbank/core/model/PushData;->setCategory(Ljava/lang/String;)V

    const-string v3, "sound"

    .line 96
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_7

    const-string v6, "default"

    .line 97
    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v3, "default_default"

    :cond_5
    if-eqz v3, :cond_7

    .line 98
    move-object v6, v3

    check-cast v6, Ljava/lang/CharSequence;

    new-array v7, v1, [Ljava/lang/String;

    const-string v3, "_"

    const/4 v12, 0x0

    aput-object v3, v7, v12

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x6

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v1, :cond_6

    goto :goto_2

    :cond_6
    move v1, v12

    .line 99
    :cond_7
    :goto_2
    invoke-virtual {v2, v1}, Lru/rocketbank/core/model/PushData;->setMuted(Z)V

    .line 101
    invoke-virtual {v2}, Lru/rocketbank/core/model/PushData;->isMuted()Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, "sound"

    .line 102
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_9

    const-string v3, "default"

    .line 104
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    move-object v1, v4

    goto :goto_3

    .line 105
    :cond_8
    invoke-virtual {p0}, Lru/rocketbank/r2d2/firebase/RocketFirebaseMessagingService;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v6, "raw"

    invoke-virtual {p0}, Lru/rocketbank/r2d2/firebase/RocketFirebaseMessagingService;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v1, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_3
    if-eqz v1, :cond_9

    .line 103
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 106
    :cond_9
    invoke-virtual {v2, v5}, Lru/rocketbank/core/model/PushData;->setSound(I)V

    :cond_a
    const-string v1, "icon"

    .line 108
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lru/rocketbank/core/model/PushData;->setIconUrl(Ljava/lang/String;)V

    .line 109
    invoke-virtual {v2}, Lru/rocketbank/core/model/PushData;->getIconUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-direct {p0, v0}, Lru/rocketbank/r2d2/firebase/RocketFirebaseMessagingService;->getBitmapFromURL(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0}, Lru/rocketbank/r2d2/firebase/RocketFirebaseMessagingService;->getBitmapClippedCircle(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4

    :cond_b
    invoke-virtual {v2, v4}, Lru/rocketbank/core/model/PushData;->setSourceBitmap(Landroid/graphics/Bitmap;)V

    .line 111
    iget-object v0, p0, Lru/rocketbank/r2d2/firebase/RocketFirebaseMessagingService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Message Notification Body: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage;->getData()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :try_start_0
    invoke-direct {p0, v2}, Lru/rocketbank/r2d2/firebase/RocketFirebaseMessagingService;->handleEvent(Lru/rocketbank/core/model/PushData;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    .line 116
    iget-object v0, p0, Lru/rocketbank/r2d2/firebase/RocketFirebaseMessagingService;->TAG:Ljava/lang/String;

    const-string v1, "Exception: "

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 120
    :cond_c
    :goto_4
    sget-object p1, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object p1

    invoke-interface {p1}, Lru/rocketbank/core/dagger/component/RocketComponent;->getWidgetManager()Lru/rocketbank/core/manager/WidgetManager;

    move-result-object p1

    invoke-virtual {p1}, Lru/rocketbank/core/manager/WidgetManager;->updateWidgetData()V

    return-void
.end method

.method public final setAuthorization(Lru/rocketbank/core/user/Authorization;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    iput-object p1, p0, Lru/rocketbank/r2d2/firebase/RocketFirebaseMessagingService;->authorization:Lru/rocketbank/core/user/Authorization;

    return-void
.end method

.method public final setFeedManager(Lru/rocketbank/core/manager/FeedManager;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    iput-object p1, p0, Lru/rocketbank/r2d2/firebase/RocketFirebaseMessagingService;->feedManager:Lru/rocketbank/core/manager/FeedManager;

    return-void
.end method

.method public final setGson(Lcom/google/gson/Gson;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    iput-object p1, p0, Lru/rocketbank/r2d2/firebase/RocketFirebaseMessagingService;->gson:Lcom/google/gson/Gson;

    return-void
.end method

.method public final setOperationApi(Lru/rocketbank/core/network/api/OperationApi;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    iput-object p1, p0, Lru/rocketbank/r2d2/firebase/RocketFirebaseMessagingService;->operationApi:Lru/rocketbank/core/network/api/OperationApi;

    return-void
.end method
