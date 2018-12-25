.class final Lru/rocketbank/r2d2/utils/ImageUpload$uploadObservable$1;
.super Ljava/lang/Object;
.source "ImageUpload.kt"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/utils/ImageUpload;->uploadObservable(Landroid/graphics/Bitmap;Lru/rocketbank/core/network/api/RocketAPI;)Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic $e:Ljava/io/IOException;


# direct methods
.method constructor <init>(Ljava/io/IOException;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/utils/ImageUpload$uploadObservable$1;->$e:Ljava/io/IOException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 72
    check-cast p1, Lrx/Subscriber;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/utils/ImageUpload$uploadObservable$1;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public final call(Lrx/Subscriber;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber<",
            "-",
            "Lru/rocketbank/core/network/model/UploadImageResponse;",
            ">;)V"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lru/rocketbank/r2d2/utils/ImageUpload$uploadObservable$1;->$e:Ljava/io/IOException;

    check-cast v0, Ljava/lang/Throwable;

    invoke-virtual {p1, v0}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
