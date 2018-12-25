.class Lru/rocketbank/r2d2/activities/VideoActivity$1;
.super Ljava/lang/Object;
.source "VideoActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/activities/VideoActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/activities/VideoActivity;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/activities/VideoActivity;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lru/rocketbank/r2d2/activities/VideoActivity$1;->this$0:Lru/rocketbank/r2d2/activities/VideoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 37
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 38
    new-instance v0, Lru/rocketbank/r2d2/activities/VideoActivity$1$1;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/activities/VideoActivity$1$1;-><init>(Lru/rocketbank/r2d2/activities/VideoActivity$1;)V

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 47
    new-instance v0, Lru/rocketbank/r2d2/activities/VideoActivity$1$2;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/activities/VideoActivity$1$2;-><init>(Lru/rocketbank/r2d2/activities/VideoActivity$1;)V

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 59
    new-instance v0, Lru/rocketbank/r2d2/activities/VideoActivity$1$3;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/activities/VideoActivity$1$3;-><init>(Lru/rocketbank/r2d2/activities/VideoActivity$1;)V

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 71
    new-instance v0, Lru/rocketbank/r2d2/activities/VideoActivity$1$4;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/activities/VideoActivity$1$4;-><init>(Lru/rocketbank/r2d2/activities/VideoActivity$1;)V

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    return-void
.end method
