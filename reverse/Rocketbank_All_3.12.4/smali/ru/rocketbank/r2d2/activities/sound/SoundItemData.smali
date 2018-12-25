.class public final Lru/rocketbank/r2d2/activities/sound/SoundItemData;
.super Ljava/lang/Object;
.source "SoundItemData.kt"


# instance fields
.field private final notification:Lru/rocketbank/core/utils/SoundNotification$NotificationSound;

.field private final onSoundAction:Lru/rocketbank/r2d2/activities/sound/OnSoundAction;

.field private final playImage:Landroid/databinding/ObservableField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/databinding/ObservableField<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private playing:Landroid/databinding/ObservableBoolean;

.field private final soundName:Landroid/databinding/ObservableField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/databinding/ObservableField<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final stopImage:Landroid/databinding/ObservableField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/databinding/ObservableField<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private final type:I


# direct methods
.method public constructor <init>(Lru/rocketbank/core/utils/SoundNotification$NotificationSound;ILru/rocketbank/r2d2/activities/sound/OnSoundAction;)V
    .locals 1

    const-string v0, "notification"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onSoundAction"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/rocketbank/r2d2/activities/sound/SoundItemData;->notification:Lru/rocketbank/core/utils/SoundNotification$NotificationSound;

    iput p2, p0, Lru/rocketbank/r2d2/activities/sound/SoundItemData;->type:I

    iput-object p3, p0, Lru/rocketbank/r2d2/activities/sound/SoundItemData;->onSoundAction:Lru/rocketbank/r2d2/activities/sound/OnSoundAction;

    .line 11
    new-instance p1, Landroid/databinding/ObservableBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Landroid/databinding/ObservableBoolean;-><init>(Z)V

    iput-object p1, p0, Lru/rocketbank/r2d2/activities/sound/SoundItemData;->playing:Landroid/databinding/ObservableBoolean;

    .line 12
    new-instance p1, Landroid/databinding/ObservableField;

    invoke-direct {p1}, Landroid/databinding/ObservableField;-><init>()V

    iput-object p1, p0, Lru/rocketbank/r2d2/activities/sound/SoundItemData;->soundName:Landroid/databinding/ObservableField;

    .line 13
    new-instance p1, Landroid/databinding/ObservableField;

    invoke-direct {p1}, Landroid/databinding/ObservableField;-><init>()V

    iput-object p1, p0, Lru/rocketbank/r2d2/activities/sound/SoundItemData;->playImage:Landroid/databinding/ObservableField;

    .line 14
    new-instance p1, Landroid/databinding/ObservableField;

    invoke-direct {p1}, Landroid/databinding/ObservableField;-><init>()V

    iput-object p1, p0, Lru/rocketbank/r2d2/activities/sound/SoundItemData;->stopImage:Landroid/databinding/ObservableField;

    return-void
.end method


# virtual methods
.method public final getNotification()Lru/rocketbank/core/utils/SoundNotification$NotificationSound;
    .locals 1

    .line 8
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/sound/SoundItemData;->notification:Lru/rocketbank/core/utils/SoundNotification$NotificationSound;

    return-object v0
.end method

.method public final getOnSoundAction()Lru/rocketbank/r2d2/activities/sound/OnSoundAction;
    .locals 1

    .line 10
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/sound/SoundItemData;->onSoundAction:Lru/rocketbank/r2d2/activities/sound/OnSoundAction;

    return-object v0
.end method

.method public final getPlayImage()Landroid/databinding/ObservableField;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/databinding/ObservableField<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 13
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/sound/SoundItemData;->playImage:Landroid/databinding/ObservableField;

    return-object v0
.end method

.method public final getPlaying()Landroid/databinding/ObservableBoolean;
    .locals 1

    .line 11
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/sound/SoundItemData;->playing:Landroid/databinding/ObservableBoolean;

    return-object v0
.end method

.method public final getSoundName()Landroid/databinding/ObservableField;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/databinding/ObservableField<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 12
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/sound/SoundItemData;->soundName:Landroid/databinding/ObservableField;

    return-object v0
.end method

.method public final getStopImage()Landroid/databinding/ObservableField;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/databinding/ObservableField<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/sound/SoundItemData;->stopImage:Landroid/databinding/ObservableField;

    return-object v0
.end method

.method public final getType()I
    .locals 1

    .line 9
    iget v0, p0, Lru/rocketbank/r2d2/activities/sound/SoundItemData;->type:I

    return v0
.end method

.method public final mediaClick()V
    .locals 3

    .line 17
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/sound/SoundItemData;->playing:Landroid/databinding/ObservableBoolean;

    invoke-virtual {v0}, Landroid/databinding/ObservableBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 18
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/sound/SoundItemData;->playing:Landroid/databinding/ObservableBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/databinding/ObservableBoolean;->set(Z)V

    .line 19
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/sound/SoundItemData;->onSoundAction:Lru/rocketbank/r2d2/activities/sound/OnSoundAction;

    iget v1, p0, Lru/rocketbank/r2d2/activities/sound/SoundItemData;->type:I

    iget-object v2, p0, Lru/rocketbank/r2d2/activities/sound/SoundItemData;->notification:Lru/rocketbank/core/utils/SoundNotification$NotificationSound;

    invoke-interface {v0, v1, v2, p0}, Lru/rocketbank/r2d2/activities/sound/OnSoundAction;->start(ILru/rocketbank/core/utils/SoundNotification$NotificationSound;Lru/rocketbank/r2d2/activities/sound/SoundItemData;)V

    return-void

    .line 21
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/sound/SoundItemData;->playing:Landroid/databinding/ObservableBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/databinding/ObservableBoolean;->set(Z)V

    .line 22
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/sound/SoundItemData;->onSoundAction:Lru/rocketbank/r2d2/activities/sound/OnSoundAction;

    invoke-interface {v0, p0}, Lru/rocketbank/r2d2/activities/sound/OnSoundAction;->stop(Lru/rocketbank/r2d2/activities/sound/SoundItemData;)V

    return-void
.end method

.method public final setPlaying(Landroid/databinding/ObservableBoolean;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iput-object p1, p0, Lru/rocketbank/r2d2/activities/sound/SoundItemData;->playing:Landroid/databinding/ObservableBoolean;

    return-void
.end method
