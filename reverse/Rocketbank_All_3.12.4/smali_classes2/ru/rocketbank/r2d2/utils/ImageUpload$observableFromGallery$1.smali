.class final Lru/rocketbank/r2d2/utils/ImageUpload$observableFromGallery$1;
.super Ljava/lang/Object;
.source "ImageUpload.kt"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/utils/ImageUpload;->observableFromGallery(Landroid/net/Uri;)Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/functions/Func1<",
        "TT;TR;>;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lru/rocketbank/r2d2/utils/ImageUpload$observableFromGallery$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lru/rocketbank/r2d2/utils/ImageUpload$observableFromGallery$1;

    invoke-direct {v0}, Lru/rocketbank/r2d2/utils/ImageUpload$observableFromGallery$1;-><init>()V

    sput-object v0, Lru/rocketbank/r2d2/utils/ImageUpload$observableFromGallery$1;->INSTANCE:Lru/rocketbank/r2d2/utils/ImageUpload$observableFromGallery$1;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 9

    .line 106
    :try_start_0
    sget-object v0, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 111
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    .line 112
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v2, 0x0

    .line 113
    invoke-static {v0, v2, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 115
    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 116
    iget v4, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 118
    iget v5, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v6, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    const/high16 v7, 0x44830000    # 1048.0f

    const/16 v8, 0x418

    if-le v5, v6, :cond_0

    if-le v3, v8, :cond_1

    int-to-float v3, v3

    div-float/2addr v7, v3

    int-to-float v4, v4

    mul-float/2addr v4, v7

    float-to-int v4, v4

    mul-float/2addr v3, v7

    float-to-int v3, v3

    goto :goto_0

    :cond_0
    if-le v4, v8, :cond_1

    int-to-float v4, v4

    div-float/2addr v7, v4

    mul-float/2addr v4, v7

    float-to-int v4, v4

    int-to-float v3, v3

    mul-float/2addr v3, v7

    float-to-int v3, v3

    :cond_1
    :goto_0
    if-nez v0, :cond_2

    .line 133
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Input is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 137
    :cond_2
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 144
    :try_start_2
    sget-object v0, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .line 150
    sget-object v0, Lru/rocketbank/r2d2/utils/ImageUpload;->INSTANCE:Lru/rocketbank/r2d2/utils/ImageUpload;

    invoke-static {v0, v1, v3, v4}, Lru/rocketbank/r2d2/utils/ImageUpload;->access$calculateInSampleSize(Lru/rocketbank/r2d2/utils/ImageUpload;Landroid/graphics/BitmapFactory$Options;II)I

    move-result v0

    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 153
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v0, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    const/4 v0, 0x0

    .line 154
    iput-boolean v0, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 155
    invoke-static {p1, v2, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 146
    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lru/rocketbank/core/manager/AnalyticsManager;->logException(Ljava/lang/Throwable;)V

    .line 147
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    :catch_1
    move-exception p1

    .line 139
    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lru/rocketbank/core/manager/AnalyticsManager;->logException(Ljava/lang/Throwable;)V

    .line 140
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    :catch_2
    move-exception p1

    .line 108
    new-instance v0, Ljava/lang/IllegalStateException;

    check-cast p1, Ljava/lang/Throwable;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public final bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 21
    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/utils/ImageUpload$observableFromGallery$1;->call(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method
