.class Lru/rocketbank/r2d2/activities/VideoActivity$1$3;
.super Ljava/lang/Object;
.source "VideoActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnInfoListener;


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

    .line 60
    iput-object p1, p0, Lru/rocketbank/r2d2/activities/VideoActivity$1$3;->this$1:Lru/rocketbank/r2d2/activities/VideoActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 3

    const/4 p1, 0x1

    const/16 p3, 0x2bd

    const/4 v0, 0x0

    const/16 v1, 0x2be

    if-ne p2, v1, :cond_0

    .line 64
    iget-object v2, p0, Lru/rocketbank/r2d2/activities/VideoActivity$1$3;->this$1:Lru/rocketbank/r2d2/activities/VideoActivity$1;

    iget-object v2, v2, Lru/rocketbank/r2d2/activities/VideoActivity$1;->this$0:Lru/rocketbank/r2d2/activities/VideoActivity;

    invoke-static {v2, v0}, Lru/rocketbank/r2d2/activities/VideoActivity;->access$200(Lru/rocketbank/r2d2/activities/VideoActivity;Z)V

    goto :goto_0

    :cond_0
    if-ne p2, p3, :cond_1

    .line 66
    iget-object v2, p0, Lru/rocketbank/r2d2/activities/VideoActivity$1$3;->this$1:Lru/rocketbank/r2d2/activities/VideoActivity$1;

    iget-object v2, v2, Lru/rocketbank/r2d2/activities/VideoActivity$1;->this$0:Lru/rocketbank/r2d2/activities/VideoActivity;

    invoke-static {v2, p1}, Lru/rocketbank/r2d2/activities/VideoActivity;->access$200(Lru/rocketbank/r2d2/activities/VideoActivity;Z)V

    :cond_1
    :goto_0
    if-eq p2, v1, :cond_3

    if-ne p2, p3, :cond_2

    goto :goto_1

    :cond_2
    return v0

    :cond_3
    :goto_1
    return p1
.end method
