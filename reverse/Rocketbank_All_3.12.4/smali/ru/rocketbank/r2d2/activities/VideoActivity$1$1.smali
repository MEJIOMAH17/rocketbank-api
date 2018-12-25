.class Lru/rocketbank/r2d2/activities/VideoActivity$1$1;
.super Ljava/lang/Object;
.source "VideoActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


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

    .line 39
    iput-object p1, p0, Lru/rocketbank/r2d2/activities/VideoActivity$1$1;->this$1:Lru/rocketbank/r2d2/activities/VideoActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 42
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/VideoActivity$1$1;->this$1:Lru/rocketbank/r2d2/activities/VideoActivity$1;

    iget-object p1, p1, Lru/rocketbank/r2d2/activities/VideoActivity$1;->this$0:Lru/rocketbank/r2d2/activities/VideoActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lru/rocketbank/r2d2/activities/VideoActivity;->access$002(Lru/rocketbank/r2d2/activities/VideoActivity;I)I

    .line 43
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/VideoActivity$1$1;->this$1:Lru/rocketbank/r2d2/activities/VideoActivity$1;

    iget-object p1, p1, Lru/rocketbank/r2d2/activities/VideoActivity$1;->this$0:Lru/rocketbank/r2d2/activities/VideoActivity;

    invoke-static {p1}, Lru/rocketbank/r2d2/activities/VideoActivity;->access$100(Lru/rocketbank/r2d2/activities/VideoActivity;)Landroid/widget/VideoView;

    move-result-object p1

    iget-object v0, p0, Lru/rocketbank/r2d2/activities/VideoActivity$1$1;->this$1:Lru/rocketbank/r2d2/activities/VideoActivity$1;

    iget-object v0, v0, Lru/rocketbank/r2d2/activities/VideoActivity$1;->this$0:Lru/rocketbank/r2d2/activities/VideoActivity;

    invoke-static {v0}, Lru/rocketbank/r2d2/activities/VideoActivity;->access$000(Lru/rocketbank/r2d2/activities/VideoActivity;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/VideoView;->seekTo(I)V

    return-void
.end method
