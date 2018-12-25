.class final Lru/rocketbank/r2d2/utils/ImageUpload$uploadObservable$3;
.super Ljava/lang/Object;
.source "ImageUpload.kt"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/utils/ImageUpload;->uploadObservable(Landroid/graphics/Bitmap;Lru/rocketbank/core/network/api/RocketAPI;)Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $file:Ljava/io/File;


# direct methods
.method constructor <init>(Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/utils/ImageUpload$uploadObservable$3;->$file:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()V
    .locals 1

    .line 93
    iget-object v0, p0, Lru/rocketbank/r2d2/utils/ImageUpload$uploadObservable$3;->$file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-void
.end method
