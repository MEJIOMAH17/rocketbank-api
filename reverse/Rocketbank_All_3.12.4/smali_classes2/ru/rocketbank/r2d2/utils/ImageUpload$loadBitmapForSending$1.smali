.class final Lru/rocketbank/r2d2/utils/ImageUpload$loadBitmapForSending$1;
.super Ljava/lang/Object;
.source "ImageUpload.kt"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/utils/ImageUpload;->loadBitmapForSending(Ljava/lang/String;)Lrx/Observable;
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


# instance fields
.field final synthetic $path:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/utils/ImageUpload$loadBitmapForSending$1;->$path:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6

    .line 35
    new-instance p1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v0, 0x1

    .line 36
    iput-boolean v0, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 37
    iget-object v0, p0, Lru/rocketbank/r2d2/utils/ImageUpload$loadBitmapForSending$1;->$path:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 39
    iget v0, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 40
    iget v1, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 42
    iget v2, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v3, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    const/high16 v4, 0x45000000    # 2048.0f

    const/16 v5, 0x800

    if-le v2, v3, :cond_0

    if-le v0, v5, :cond_1

    int-to-float v0, v0

    div-float/2addr v4, v0

    int-to-float v1, v1

    mul-float/2addr v1, v4

    float-to-int v1, v1

    mul-float/2addr v0, v4

    float-to-int v0, v0

    goto :goto_0

    :cond_0
    if-le v1, v5, :cond_1

    int-to-float v1, v1

    div-float/2addr v4, v1

    mul-float/2addr v1, v4

    float-to-int v1, v1

    int-to-float v0, v0

    mul-float/2addr v0, v4

    float-to-int v0, v0

    .line 56
    :cond_1
    :goto_0
    sget-object v2, Lru/rocketbank/r2d2/utils/ImageUpload;->INSTANCE:Lru/rocketbank/r2d2/utils/ImageUpload;

    invoke-static {v2, p1, v0, v1}, Lru/rocketbank/r2d2/utils/ImageUpload;->access$calculateInSampleSize(Lru/rocketbank/r2d2/utils/ImageUpload;Landroid/graphics/BitmapFactory$Options;II)I

    move-result v0

    iput v0, p1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 59
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v0, p1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    const/4 v0, 0x0

    .line 60
    iput-boolean v0, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 61
    iget-object v0, p0, Lru/rocketbank/r2d2/utils/ImageUpload$loadBitmapForSending$1;->$path:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 21
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/utils/ImageUpload$loadBitmapForSending$1;->call(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method
