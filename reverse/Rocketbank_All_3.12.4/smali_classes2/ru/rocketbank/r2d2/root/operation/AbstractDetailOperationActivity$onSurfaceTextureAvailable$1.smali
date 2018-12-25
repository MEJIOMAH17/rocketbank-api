.class final Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity$onSurfaceTextureAvailable$1;
.super Ljava/lang/Object;
.source "AbstractDetailOperationActivity.kt"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity;->onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity$onSurfaceTextureAvailable$1;->this$0:Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPrepared(Landroid/media/MediaPlayer;)V
    .locals 0

    .line 242
    iget-object p1, p0, Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity$onSurfaceTextureAvailable$1;->this$0:Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity;

    invoke-static {p1}, Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity;->access$getMediaPlayer$p(Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity;)Landroid/media/MediaPlayer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    return-void
.end method
