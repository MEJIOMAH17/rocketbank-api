.class Lru/rocketbank/r2d2/activities/VideoActivity$1$4;
.super Ljava/lang/Object;
.source "VideoActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/activities/VideoActivity$1;->onPrepared(Landroid/media/MediaPlayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lru/rocketbank/r2d2/activities/VideoActivity$1;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/activities/VideoActivity$1;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lru/rocketbank/r2d2/activities/VideoActivity$1$4;->this$1:Lru/rocketbank/r2d2/activities/VideoActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 0

    .line 75
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 76
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/VideoActivity$1$4;->this$1:Lru/rocketbank/r2d2/activities/VideoActivity$1;

    iget-object p1, p1, Lru/rocketbank/r2d2/activities/VideoActivity$1;->this$0:Lru/rocketbank/r2d2/activities/VideoActivity;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lru/rocketbank/r2d2/activities/VideoActivity;->access$200(Lru/rocketbank/r2d2/activities/VideoActivity;Z)V

    return-void
.end method
