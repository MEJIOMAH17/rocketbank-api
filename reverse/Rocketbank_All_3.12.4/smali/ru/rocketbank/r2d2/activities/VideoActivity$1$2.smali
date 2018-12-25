.class Lru/rocketbank/r2d2/activities/VideoActivity$1$2;
.super Ljava/lang/Object;
.source "VideoActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


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

    .line 48
    iput-object p1, p0, Lru/rocketbank/r2d2/activities/VideoActivity$1$2;->this$1:Lru/rocketbank/r2d2/activities/VideoActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 0

    .line 51
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/VideoActivity$1$2;->this$1:Lru/rocketbank/r2d2/activities/VideoActivity$1;

    iget-object p1, p1, Lru/rocketbank/r2d2/activities/VideoActivity$1;->this$0:Lru/rocketbank/r2d2/activities/VideoActivity;

    const p2, 0x7f110474

    const/4 p3, 0x0

    .line 52
    invoke-static {p1, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 53
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 54
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/VideoActivity$1$2;->this$1:Lru/rocketbank/r2d2/activities/VideoActivity$1;

    iget-object p1, p1, Lru/rocketbank/r2d2/activities/VideoActivity$1;->this$0:Lru/rocketbank/r2d2/activities/VideoActivity;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/activities/VideoActivity;->finish()V

    const/4 p1, 0x1

    return p1
.end method
