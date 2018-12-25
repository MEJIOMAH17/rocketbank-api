.class final Lru/rocketbank/r2d2/root/chat/MessageManager$uploadObservable$3;
.super Ljava/lang/Object;
.source "MessageManager.kt"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/root/chat/MessageManager;->uploadObservable(Landroid/graphics/Bitmap;)Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $file:Ljava/io/File;

.field final synthetic $fileNameWithPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/root/chat/MessageManager$uploadObservable$3;->$file:Ljava/io/File;

    iput-object p2, p0, Lru/rocketbank/r2d2/root/chat/MessageManager$uploadObservable$3;->$fileNameWithPath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()V
    .locals 3

    .line 129
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/MessageManager$uploadObservable$3;->$file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 130
    invoke-static {}, Lru/rocketbank/r2d2/root/chat/MessageManager;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "File stays!!! "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lru/rocketbank/r2d2/root/chat/MessageManager$uploadObservable$3;->$fileNameWithPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
