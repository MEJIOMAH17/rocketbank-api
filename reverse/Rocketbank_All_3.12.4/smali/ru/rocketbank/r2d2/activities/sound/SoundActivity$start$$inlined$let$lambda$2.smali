.class final Lru/rocketbank/r2d2/activities/sound/SoundActivity$start$$inlined$let$lambda$2;
.super Ljava/lang/Object;
.source "SoundActivity.kt"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/activities/sound/SoundActivity;->start(ILru/rocketbank/core/utils/SoundNotification$NotificationSound;Lru/rocketbank/r2d2/activities/sound/SoundItemData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $soundItemData$inlined:Lru/rocketbank/r2d2/activities/sound/SoundItemData;

.field final synthetic this$0:Lru/rocketbank/r2d2/activities/sound/SoundActivity;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/activities/sound/SoundActivity;Lru/rocketbank/r2d2/activities/sound/SoundItemData;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/activities/sound/SoundActivity$start$$inlined$let$lambda$2;->this$0:Lru/rocketbank/r2d2/activities/sound/SoundActivity;

    iput-object p2, p0, Lru/rocketbank/r2d2/activities/sound/SoundActivity$start$$inlined$let$lambda$2;->$soundItemData$inlined:Lru/rocketbank/r2d2/activities/sound/SoundItemData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 88
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 89
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/sound/SoundActivity$start$$inlined$let$lambda$2;->$soundItemData$inlined:Lru/rocketbank/r2d2/activities/sound/SoundItemData;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/activities/sound/SoundItemData;->getPlaying()Landroid/databinding/ObservableBoolean;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/databinding/ObservableBoolean;->set(Z)V

    return-void
.end method
