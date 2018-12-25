.class final Lru/rocketbank/r2d2/root/chat/MessageManager$uploadObservable$2;
.super Ljava/lang/Object;
.source "MessageManager.kt"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/root/chat/MessageManager;->uploadObservable(Landroid/graphics/Bitmap;)Lrx/Observable;
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
        "TT;",
        "Lrx/Observable<",
        "+TR;>;>;"
    }
.end annotation


# instance fields
.field final synthetic $file:Ljava/io/File;

.field final synthetic this$0:Lru/rocketbank/r2d2/root/chat/MessageManager;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/root/chat/MessageManager;Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/root/chat/MessageManager$uploadObservable$2;->this$0:Lru/rocketbank/r2d2/root/chat/MessageManager;

    iput-object p2, p0, Lru/rocketbank/r2d2/root/chat/MessageManager$uploadObservable$2;->$file:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 36
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/root/chat/MessageManager$uploadObservable$2;->call(Landroid/graphics/Bitmap;)Lrx/Observable;

    move-result-object p1

    return-object p1
.end method

.method public final call(Landroid/graphics/Bitmap;)Lrx/Observable;
    .locals 4
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

    .line 117
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lru/rocketbank/r2d2/root/chat/MessageManager$uploadObservable$2;->$file:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 118
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    move-object v3, v0

    check-cast v3, Ljava/io/OutputStream;

    invoke-virtual {p1, v1, v2, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 119
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    const-string p1, "image/*"

    .line 121
    invoke-static {p1}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object p1

    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/MessageManager$uploadObservable$2;->$file:Ljava/io/File;

    invoke-static {p1, v0}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/io/File;)Lokhttp3/RequestBody;

    move-result-object p1

    const-string v0, "image"

    .line 122
    iget-object v1, p0, Lru/rocketbank/r2d2/root/chat/MessageManager$uploadObservable$2;->$file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lokhttp3/MultipartBody$Part;->createFormData(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Part;

    move-result-object p1

    .line 124
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/MessageManager$uploadObservable$2;->this$0:Lru/rocketbank/r2d2/root/chat/MessageManager;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/chat/MessageManager;->getRocketAPI()Lru/rocketbank/core/network/api/RocketAPI;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lru/rocketbank/core/network/api/RocketAPI;->uploadImage(Lokhttp3/MultipartBody$Part;Z)Lrx/Observable;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 126
    new-instance v0, Ljava/lang/IllegalStateException;

    check-cast p1, Ljava/lang/Throwable;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method
