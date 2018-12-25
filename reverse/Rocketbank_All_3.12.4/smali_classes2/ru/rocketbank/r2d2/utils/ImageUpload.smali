.class public final Lru/rocketbank/r2d2/utils/ImageUpload;
.super Ljava/lang/Object;
.source "ImageUpload.kt"


# static fields
.field private static final FROM_CAMERA:I = 0x1000

.field private static final FROM_GALLERY:I = 0x2000

.field public static final INSTANCE:Lru/rocketbank/r2d2/utils/ImageUpload;

# The value of this static final field might be set in the static constructor
.field public static final REQUEST_AVATAR_FROM_CAMERA:I = 0x1064

# The value of this static final field might be set in the static constructor
.field public static final REQUEST_AVATAR_FROM_GALLERY:I = 0x1065

# The value of this static final field might be set in the static constructor
.field public static final REQUEST_COVER_FROM_CAMERA:I = 0x2066

# The value of this static final field might be set in the static constructor
.field public static final REQUEST_COVER_FROM_GALLERY:I = 0x2067

# The value of this static final field might be set in the static constructor
.field public static final REQUEST_FROM_CAMERA:I = 0x1068

# The value of this static final field might be set in the static constructor
.field public static final REQUEST_FROM_GALLERY:I = 0x2069

.field private static final TAG:Ljava/lang/String; = "IMAGE_UPLOAD"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    new-instance v0, Lru/rocketbank/r2d2/utils/ImageUpload;

    invoke-direct {v0}, Lru/rocketbank/r2d2/utils/ImageUpload;-><init>()V

    sput-object v0, Lru/rocketbank/r2d2/utils/ImageUpload;->INSTANCE:Lru/rocketbank/r2d2/utils/ImageUpload;

    .line 25
    sget v0, Lru/rocketbank/r2d2/utils/ImageUpload;->FROM_CAMERA:I

    or-int/lit8 v0, v0, 0x64

    sput v0, Lru/rocketbank/r2d2/utils/ImageUpload;->REQUEST_AVATAR_FROM_CAMERA:I

    .line 26
    sget v0, Lru/rocketbank/r2d2/utils/ImageUpload;->FROM_CAMERA:I

    or-int/lit8 v0, v0, 0x65

    sput v0, Lru/rocketbank/r2d2/utils/ImageUpload;->REQUEST_AVATAR_FROM_GALLERY:I

    .line 27
    sget v0, Lru/rocketbank/r2d2/utils/ImageUpload;->FROM_GALLERY:I

    or-int/lit8 v0, v0, 0x66

    sput v0, Lru/rocketbank/r2d2/utils/ImageUpload;->REQUEST_COVER_FROM_CAMERA:I

    .line 28
    sget v0, Lru/rocketbank/r2d2/utils/ImageUpload;->FROM_GALLERY:I

    or-int/lit8 v0, v0, 0x67

    sput v0, Lru/rocketbank/r2d2/utils/ImageUpload;->REQUEST_COVER_FROM_GALLERY:I

    .line 29
    sget v0, Lru/rocketbank/r2d2/utils/ImageUpload;->FROM_CAMERA:I

    or-int/lit8 v0, v0, 0x68

    sput v0, Lru/rocketbank/r2d2/utils/ImageUpload;->REQUEST_FROM_CAMERA:I

    .line 30
    sget v0, Lru/rocketbank/r2d2/utils/ImageUpload;->FROM_GALLERY:I

    or-int/lit8 v0, v0, 0x69

    sput v0, Lru/rocketbank/r2d2/utils/ImageUpload;->REQUEST_FROM_GALLERY:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$calculateInSampleSize(Lru/rocketbank/r2d2/utils/ImageUpload;Landroid/graphics/BitmapFactory$Options;II)I
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2, p3}, Lru/rocketbank/r2d2/utils/ImageUpload;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$getRealPathFromURI(Lru/rocketbank/r2d2/utils/ImageUpload;Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/utils/ImageUpload;->getRealPathFromURI(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 3

    .line 185
    iget v0, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 186
    iget p1, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/4 v1, 0x1

    if-gt v0, p3, :cond_0

    if-le p1, p2, :cond_1

    .line 190
    :cond_0
    div-int/lit8 v0, v0, 0x2

    .line 191
    div-int/lit8 p1, p1, 0x2

    .line 195
    :goto_0
    div-int v2, v0, v1

    if-le v2, p3, :cond_1

    div-int v2, p1, v1

    if-le v2, p2, :cond_1

    shl-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private final getRealPathFromURI(Landroid/net/Uri;)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x1

    .line 170
    new-array v3, v0, [Ljava/lang/String;

    const-string v0, "_data"

    const/4 v1, 0x0

    aput-object v0, v3, v1

    .line 172
    sget-object v0, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    const-string v0, "_data"

    .line 175
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 176
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 177
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public final decodeSampledBitmapFromFile(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 2

    const-string v0, "fileName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 220
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 221
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 222
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 225
    invoke-direct {p0, v0, p2, p3}, Lru/rocketbank/r2d2/utils/ImageUpload;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result p2

    iput p2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 p2, 0x0

    .line 228
    iput-boolean p2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 229
    sget-object p2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object p2, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 230
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    const-string p2, "BitmapFactory.decodeFile(fileName, options)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final getFROM_CAMERA()I
    .locals 1

    .line 22
    sget v0, Lru/rocketbank/r2d2/utils/ImageUpload;->FROM_CAMERA:I

    return v0
.end method

.method public final getFROM_GALLERY()I
    .locals 1

    .line 23
    sget v0, Lru/rocketbank/r2d2/utils/ImageUpload;->FROM_GALLERY:I

    return v0
.end method

.method public final getTAG()Ljava/lang/String;
    .locals 1

    .line 233
    sget-object v0, Lru/rocketbank/r2d2/utils/ImageUpload;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public final loadBitmapForSending(Ljava/lang/String;)Lrx/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lrx/Observable<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-static {p1}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lru/rocketbank/r2d2/utils/ImageUpload$loadBitmapForSending$1;

    invoke-direct {v1, p1}, Lru/rocketbank/r2d2/utils/ImageUpload$loadBitmapForSending$1;-><init>(Ljava/lang/String;)V

    check-cast v1, Lrx/functions/Func1;

    invoke-virtual {v0, v1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object p1

    .line 62
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object p1

    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object p1

    const-string v0, "Observable.just(path).ma\u2026dSchedulers.mainThread())"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final observableFromCamera(Ljava/lang/String;I)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lrx/Observable<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    const-string v0, "cameraPhotoPath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 204
    invoke-static {p1}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object p1

    .line 205
    new-instance v0, Lru/rocketbank/r2d2/utils/ImageUpload$observableFromCamera$1;

    invoke-direct {v0, p2}, Lru/rocketbank/r2d2/utils/ImageUpload$observableFromCamera$1;-><init>(I)V

    check-cast v0, Lrx/functions/Func1;

    invoke-virtual {p1, v0}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object p1

    .line 213
    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object p1

    .line 214
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object p1

    const-string p2, "Observable.just(cameraPh\u2026dSchedulers.mainThread())"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final observableFromGallery(Landroid/net/Uri;)Lrx/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Lrx/Observable<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    const-string v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    invoke-static {p1}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    sget-object v1, Lru/rocketbank/r2d2/utils/ImageUpload$observableFromGallery$1;->INSTANCE:Lru/rocketbank/r2d2/utils/ImageUpload$observableFromGallery$1;

    check-cast v1, Lrx/functions/Func1;

    invoke-virtual {v0, v1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    .line 156
    new-instance v1, Lru/rocketbank/r2d2/utils/ImageUpload$observableFromGallery$2;

    invoke-direct {v1, p1}, Lru/rocketbank/r2d2/utils/ImageUpload$observableFromGallery$2;-><init>(Landroid/net/Uri;)V

    check-cast v1, Lrx/functions/Func1;

    invoke-virtual {v0, v1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object p1

    .line 166
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object p1

    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object p1

    const-string v0, "Observable.just(uri).map\u2026dSchedulers.mainThread())"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final observableFromGallery(Ljava/lang/String;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lrx/Observable<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    const-string v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v0, "Uri.parse(uri)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/utils/ImageUpload;->observableFromGallery(Landroid/net/Uri;)Lrx/Observable;

    move-result-object p1

    return-object p1
.end method

.method public final uploadObservable(Landroid/graphics/Bitmap;Lru/rocketbank/core/network/api/RocketAPI;)Lrx/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Lru/rocketbank/core/network/api/RocketAPI;",
            ")",
            "Lrx/Observable<",
            "Lru/rocketbank/core/network/model/UploadImageResponse;",
            ">;"
        }
    .end annotation

    const-string v0, "bitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rocketAPI"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
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
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    invoke-static {p1}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object p1

    new-instance v1, Lru/rocketbank/r2d2/utils/ImageUpload$uploadObservable$2;

    invoke-direct {v1, v0, p2}, Lru/rocketbank/r2d2/utils/ImageUpload$uploadObservable$2;-><init>(Ljava/io/File;Lru/rocketbank/core/network/api/RocketAPI;)V

    check-cast v1, Lrx/functions/Func1;

    invoke-virtual {p1, v1}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object p1

    .line 91
    new-instance p2, Lru/rocketbank/r2d2/utils/ImageUpload$uploadObservable$3;

    invoke-direct {p2, v0}, Lru/rocketbank/r2d2/utils/ImageUpload$uploadObservable$3;-><init>(Ljava/io/File;)V

    check-cast p2, Lrx/functions/Action0;

    invoke-virtual {p1, p2}, Lrx/Observable;->doOnUnsubscribe(Lrx/functions/Action0;)Lrx/Observable;

    move-result-object p1

    .line 94
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object p1

    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object p1

    const-string p2, "Observable.just(bitmap).\u2026dSchedulers.mainThread())"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :catch_0
    move-exception p1

    .line 72
    new-instance p2, Lru/rocketbank/r2d2/utils/ImageUpload$uploadObservable$1;

    invoke-direct {p2, p1}, Lru/rocketbank/r2d2/utils/ImageUpload$uploadObservable$1;-><init>(Ljava/io/IOException;)V

    check-cast p2, Lrx/Observable$OnSubscribe;

    invoke-static {p2}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object p1

    const-string p2, "Observable.create { subs\u2026> subscriber.onError(e) }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
