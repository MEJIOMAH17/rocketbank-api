.class public final Lru/rocketbank/r2d2/activities/sound/SoundActivity;
.super Lru/rocketbank/r2d2/activities/SecuredActivity;
.source "SoundActivity.kt"

# interfaces
.implements Lru/rocketbank/r2d2/activities/sound/OnSoundAction;
.implements Lru/rocketbank/r2d2/data/binding/sound/SoundsListener;
.implements Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/activities/sound/SoundActivity$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSoundActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SoundActivity.kt\nru/rocketbank/r2d2/activities/sound/SoundActivity\n*L\n1#1,334:1\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lru/rocketbank/r2d2/activities/sound/SoundActivity$Companion;


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private activated:I

.field private apiVal:Ljava/lang/String;

.field private behavior:Landroid/support/design/widget/BottomSheetBehavior;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/design/widget/BottomSheetBehavior<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private behaviorHeight:I

.field private binding:Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;

.field private currentSoundItemData:Lru/rocketbank/r2d2/activities/sound/SoundItemData;

.field private player:Landroid/media/MediaPlayer;

.field private selected:I

.field private soundBinding:Lru/rocketbank/r2d2/data/binding/sound/SoundBindingData;

.field private final soundItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lru/rocketbank/r2d2/data/binding/sound/SchemeItemData;",
            ">;"
        }
    .end annotation
.end field

.field private subscription:Lrx/Subscription;

.field private toolbarData:Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonOnlyData;

.field private userAPI:Lru/rocketbank/core/network/api/UserApi;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/r2d2/activities/sound/SoundActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/activities/sound/SoundActivity$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/r2d2/activities/sound/SoundActivity;->Companion:Lru/rocketbank/r2d2/activities/sound/SoundActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 34
    invoke-direct {p0}, Lru/rocketbank/r2d2/activities/SecuredActivity;-><init>()V

    .line 50
    new-instance v0, Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonOnlyData;

    invoke-direct {v0}, Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonOnlyData;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/activities/sound/SoundActivity;->toolbarData:Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonOnlyData;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lru/rocketbank/r2d2/activities/sound/SoundActivity;->soundItems:Ljava/util/ArrayList;

    .line 54
    sget-object v0, Lru/rocketbank/core/utils/SoundNotification;->INSTANCE:Lru/rocketbank/core/utils/SoundNotification;

    invoke-virtual {v0}, Lru/rocketbank/core/utils/SoundNotification;->getSelectedMode()I

    move-result v0

    iput v0, p0, Lru/rocketbank/r2d2/activities/sound/SoundActivity;->activated:I

    .line 56
    sget-object v0, Lru/rocketbank/core/utils/SoundNotification;->INSTANCE:Lru/rocketbank/core/utils/SoundNotification;

    invoke-virtual {v0}, Lru/rocketbank/core/utils/SoundNotification;->getSelectedMode()I

    move-result v0

    iput v0, p0, Lru/rocketbank/r2d2/activities/sound/SoundActivity;->selected:I

    return-void
.end method

.method public static final synthetic access$getActivated$p(Lru/rocketbank/r2d2/activities/sound/SoundActivity;)I
    .locals 0

    .line 34
    iget p0, p0, Lru/rocketbank/r2d2/activities/sound/SoundActivity;->activated:I

    return p0
.end method

.method public static final synthetic access$getBinding$p(Lru/rocketbank/r2d2/activities/sound/SoundActivity;)Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;
    .locals 1

    .line 34
    iget-object p0, p0, Lru/rocketbank/r2d2/activities/sound/SoundActivity;->binding:Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;

    if-nez p0, :cond_0

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$getCurrentSoundItemData$p(Lru/rocketbank/r2d2/activities/sound/SoundActivity;)Lru/rocketbank/r2d2/activities/sound/SoundItemData;
    .locals 0

    .line 34
    iget-object p0, p0, Lru/rocketbank/r2d2/activities/sound/SoundActivity;->currentSoundItemData:Lru/rocketbank/r2d2/activities/sound/SoundItemData;

    return-object p0
.end method

.method public static final synthetic access$getSelected$p(Lru/rocketbank/r2d2/activities/sound/SoundActivity;)I
    .locals 0

    .line 34
    iget p0, p0, Lru/rocketbank/r2d2/activities/sound/SoundActivity;->selected:I

    return p0
.end method

.method public static final synthetic access$getSoundBinding$p(Lru/rocketbank/r2d2/activities/sound/SoundActivity;)Lru/rocketbank/r2d2/data/binding/sound/SoundBindingData;
    .locals 1

    .line 34
    iget-object p0, p0, Lru/rocketbank/r2d2/activities/sound/SoundActivity;->soundBinding:Lru/rocketbank/r2d2/data/binding/sound/SoundBindingData;

    if-nez p0, :cond_0

    const-string v0, "soundBinding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$getSoundItems$p(Lru/rocketbank/r2d2/activities/sound/SoundActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 34
    iget-object p0, p0, Lru/rocketbank/r2d2/activities/sound/SoundActivity;->soundItems:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static final synthetic access$getSubscription$p(Lru/rocketbank/r2d2/activities/sound/SoundActivity;)Lrx/Subscription;
    .locals 0

    .line 34
    iget-object p0, p0, Lru/rocketbank/r2d2/activities/sound/SoundActivity;->subscription:Lrx/Subscription;

    return-object p0
.end method

.method public static final synthetic access$getToolbarData$p(Lru/rocketbank/r2d2/activities/sound/SoundActivity;)Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonOnlyData;
    .locals 0

    .line 34
    iget-object p0, p0, Lru/rocketbank/r2d2/activities/sound/SoundActivity;->toolbarData:Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonOnlyData;

    return-object p0
.end method

.method public static final synthetic access$setActivated$p(Lru/rocketbank/r2d2/activities/sound/SoundActivity;I)V
    .locals 0

    .line 34
    iput p1, p0, Lru/rocketbank/r2d2/activities/sound/SoundActivity;->activated:I

    return-void
.end method

.method public static final synthetic access$setBinding$p(Lru/rocketbank/r2d2/activities/sound/SoundActivity;Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lru/rocketbank/r2d2/activities/sound/SoundActivity;->binding:Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;

    return-void
.end method

.method public static final synthetic access$setCurrentSoundItemData$p(Lru/rocketbank/r2d2/activities/sound/SoundActivity;Lru/rocketbank/r2d2/activities/sound/SoundItemData;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lru/rocketbank/r2d2/activities/sound/SoundActivity;->currentSoundItemData:Lru/rocketbank/r2d2/activities/sound/SoundItemData;

    return-void
.end method

.method public static final synthetic access$setSelected$p(Lru/rocketbank/r2d2/activities/sound/SoundActivity;I)V
    .locals 0

    .line 34
    iput p1, p0, Lru/rocketbank/r2d2/activities/sound/SoundActivity;->selected:I

    return-void
.end method

.method public static final synthetic access$setSoundBinding$p(Lru/rocketbank/r2d2/activities/sound/SoundActivity;Lru/rocketbank/r2d2/data/binding/sound/SoundBindingData;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lru/rocketbank/r2d2/activities/sound/SoundActivity;->soundBinding:Lru/rocketbank/r2d2/data/binding/sound/SoundBindingData;

    return-void
.end method

.method public static final synthetic access$setSubscription$p(Lru/rocketbank/r2d2/activities/sound/SoundActivity;Lrx/Subscription;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lru/rocketbank/r2d2/activities/sound/SoundActivity;->subscription:Lrx/Subscription;

    return-void
.end method

.method public static final synthetic access$setToolbarData$p(Lru/rocketbank/r2d2/activities/sound/SoundActivity;Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonOnlyData;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lru/rocketbank/r2d2/activities/sound/SoundActivity;->toolbarData:Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonOnlyData;

    return-void
.end method

.method private final fillPlayList()V
    .locals 7

    .line 251
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/sound/SoundActivity;->binding:Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;

    if-nez v0, :cond_0

    const-string v1, "binding"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget-object v0, v0, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->sounds:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 253
    sget-object v0, Lru/rocketbank/core/utils/SoundNotification;->INSTANCE:Lru/rocketbank/core/utils/SoundNotification;

    invoke-virtual {v0}, Lru/rocketbank/core/utils/SoundNotification;->getNotifications()[Ljava/lang/Integer;

    move-result-object v0

    .line 254
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 255
    sget-object v4, Lru/rocketbank/core/utils/SoundNotification;->INSTANCE:Lru/rocketbank/core/utils/SoundNotification;

    invoke-virtual {v4}, Lru/rocketbank/core/utils/SoundNotification;->getNotification()Ljava/util/Map;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lru/rocketbank/core/utils/SoundNotification$NotificationSound;

    if-eqz v4, :cond_2

    .line 257
    new-instance v5, Lru/rocketbank/r2d2/activities/sound/SoundItemData;

    move-object v6, p0

    check-cast v6, Lru/rocketbank/r2d2/activities/sound/OnSoundAction;

    invoke-direct {v5, v4, v3, v6}, Lru/rocketbank/r2d2/activities/sound/SoundItemData;-><init>(Lru/rocketbank/core/utils/SoundNotification$NotificationSound;ILru/rocketbank/r2d2/activities/sound/OnSoundAction;)V

    .line 258
    invoke-virtual {v4}, Lru/rocketbank/core/utils/SoundNotification$NotificationSound;->getName()I

    move-result v3

    invoke-virtual {p0, v3}, Lru/rocketbank/r2d2/activities/sound/SoundActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 260
    invoke-virtual {v5}, Lru/rocketbank/r2d2/activities/sound/SoundItemData;->getSoundName()Landroid/databinding/ObservableField;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 261
    invoke-virtual {v5}, Lru/rocketbank/r2d2/activities/sound/SoundItemData;->getPlayImage()Landroid/databinding/ObservableField;

    move-result-object v3

    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/sound/SoundActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const v6, 0x7f080231

    invoke-static {v4, v6}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 262
    invoke-virtual {v5}, Lru/rocketbank/r2d2/activities/sound/SoundItemData;->getStopImage()Landroid/databinding/ObservableField;

    move-result-object v3

    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/sound/SoundActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const v6, 0x7f080230

    invoke-static {v4, v6}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 264
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/sound/SoundActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    iget-object v4, p0, Lru/rocketbank/r2d2/activities/sound/SoundActivity;->binding:Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;

    if-nez v4, :cond_1

    const-string v6, "binding"

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    iget-object v4, v4, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->sounds:Landroid/widget/LinearLayout;

    check-cast v4, Landroid/view/ViewGroup;

    const/4 v6, 0x1

    invoke-static {v3, v4, v6}, Lru/rocketbank/r2d2/databinding/LayoutSoundItemBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lru/rocketbank/r2d2/databinding/LayoutSoundItemBinding;

    move-result-object v3

    const-string v4, "itemBinding"

    .line 265
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Lru/rocketbank/r2d2/databinding/LayoutSoundItemBinding;->setData(Lru/rocketbank/r2d2/activities/sound/SoundItemData;)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private final fillSchemes()V
    .locals 4

    .line 181
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/sound/SoundActivity;->soundItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    const/4 v2, 0x6

    if-gt v1, v2, :cond_0

    .line 183
    iget-object v2, p0, Lru/rocketbank/r2d2/activities/sound/SoundActivity;->soundItems:Ljava/util/ArrayList;

    new-instance v3, Lru/rocketbank/r2d2/data/binding/sound/SchemeItemData;

    invoke-direct {v3}, Lru/rocketbank/r2d2/data/binding/sound/SchemeItemData;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 185
    :cond_0
    iget-object v1, p0, Lru/rocketbank/r2d2/activities/sound/SoundActivity;->soundItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lru/rocketbank/r2d2/data/binding/sound/SchemeItemData;

    invoke-virtual {v1, v0}, Lru/rocketbank/r2d2/data/binding/sound/SchemeItemData;->setSound(I)V

    .line 186
    iget-object v1, p0, Lru/rocketbank/r2d2/activities/sound/SoundActivity;->soundItems:Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lru/rocketbank/r2d2/data/binding/sound/SchemeItemData;

    invoke-virtual {v1, v2}, Lru/rocketbank/r2d2/data/binding/sound/SchemeItemData;->setSound(I)V

    .line 187
    iget-object v1, p0, Lru/rocketbank/r2d2/activities/sound/SoundActivity;->soundItems:Ljava/util/ArrayList;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lru/rocketbank/r2d2/data/binding/sound/SchemeItemData;

    invoke-virtual {v1, v2}, Lru/rocketbank/r2d2/data/binding/sound/SchemeItemData;->setSound(I)V

    .line 188
    iget-object v1, p0, Lru/rocketbank/r2d2/activities/sound/SoundActivity;->soundItems:Ljava/util/ArrayList;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lru/rocketbank/r2d2/data/binding/sound/SchemeItemData;

    invoke-virtual {v1, v2}, Lru/rocketbank/r2d2/data/binding/sound/SchemeItemData;->setSound(I)V

    .line 189
    iget-object v1, p0, Lru/rocketbank/r2d2/activities/sound/SoundActivity;->soundItems:Ljava/util/ArrayList;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lru/rocketbank/r2d2/data/binding/sound/SchemeItemData;

    invoke-virtual {v1, v2}, Lru/rocketbank/r2d2/data/binding/sound/SchemeItemData;->setSound(I)V

    .line 190
    iget-object v1, p0, Lru/rocketbank/r2d2/activities/sound/SoundActivity;->soundItems:Ljava/util/ArrayList;

    iget v2, p0, Lru/rocketbank/r2d2/activities/sound/SoundActivity;->activated:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lru/rocketbank/r2d2/data/binding/sound/SchemeItemData;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/data/binding/sound/SchemeItemData;->isActive()Landroid/databinding/ObservableBoolean;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/databinding/ObservableBoolean;->set(Z)V

    .line 191
    iget-object v1, p0, Lru/rocketbank/r2d2/activities/sound/SoundActivity;->soundItems:Ljava/util/ArrayList;

    iget v2, p0, Lru/rocketbank/r2d2/activities/sound/SoundActivity;->activated:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lru/rocketbank/r2d2/data/binding/sound/SchemeItemData;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/data/binding/sound/SchemeItemData;->isCurrent()Landroid/databinding/ObservableBoolean;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/databinding/ObservableBoolean;->set(Z)V

    .line 192
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/sound/SoundActivity;->binding:Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;

    if-nez v0, :cond_1

    const-string v1, "binding"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lru/rocketbank/r2d2/activities/sound/SoundActivity;->soundItems:Ljava/util/ArrayList;

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->setItems(Ljava/util/List;)V

    .line 193
    iget v0, p0, Lru/rocketbank/r2d2/activities/sound/SoundActivity;->activated:I

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/activities/sound/SoundActivity;->onSoundItemClicked(I)V

    return-void
.end method

.method public static final start(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lru/rocketbank/r2d2/activities/sound/SoundActivity;->Companion:Lru/rocketbank/r2d2/activities/sound/SoundActivity$Companion;

    invoke-virtual {v0, p0}, Lru/rocketbank/r2d2/activities/sound/SoundActivity$Companion;->start(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/activities/sound/SoundActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/activities/sound/SoundActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public final _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lru/rocketbank/r2d2/activities/sound/SoundActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/activities/sound/SoundActivity;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/sound/SoundActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/r2d2/activities/sound/SoundActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final animateColor(Ljava/lang/Object;Ljava/lang/String;II)V
    .locals 2

    const-string v0, "obj"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "property"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 319
    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p3, v0, v1

    const/4 p3, 0x1

    aput p4, v0, p3

    invoke-static {p1, p2, v0}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object p1

    .line 321
    new-instance p2, Landroid/support/v7/appcompat/R$style;

    invoke-direct {p2}, Landroid/support/v7/appcompat/R$style;-><init>()V

    check-cast p2, Lcom/nineoldandroids/animation/TypeEvaluator;

    invoke-virtual {p1, p2}, Lcom/nineoldandroids/animation/ObjectAnimator;->setEvaluator(Lcom/nineoldandroids/animation/TypeEvaluator;)V

    .line 322
    invoke-virtual {p1}, Lcom/nineoldandroids/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public final nextPressed(Landroid/view/View;)V
    .locals 3

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/sound/SoundActivity;->showProgressDialog()V

    .line 98
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/sound/SoundActivity;->userAPI:Lru/rocketbank/core/network/api/UserApi;

    if-nez p1, :cond_0

    const-string v0, "userAPI"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    new-instance v0, Lru/rocketbank/core/network/model/PatchProfileBody;

    iget-object v1, p0, Lru/rocketbank/r2d2/activities/sound/SoundActivity;->apiVal:Ljava/lang/String;

    if-nez v1, :cond_1

    const-string v2, "apiVal"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-direct {v0, v1}, Lru/rocketbank/core/network/model/PatchProfileBody;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lru/rocketbank/core/network/api/UserApi;->patchProfile(Lru/rocketbank/core/network/model/PatchProfileBody;)Lrx/Observable;

    move-result-object p1

    .line 99
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object p1

    .line 100
    new-instance v0, Lru/rocketbank/r2d2/activities/sound/SoundActivity$nextPressed$1;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/activities/sound/SoundActivity$nextPressed$1;-><init>(Lru/rocketbank/r2d2/activities/sound/SoundActivity;)V

    check-cast v0, Lrx/Subscriber;

    invoke-virtual {p1, v0}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/activities/sound/SoundActivity;->subscription:Lrx/Subscription;

    return-void
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 124
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/activities/SecuredActivity;->onCreate(Landroid/os/Bundle;)V

    .line 126
    move-object p1, p0

    check-cast p1, Landroid/app/Activity;

    const v0, 0x7f0c0060

    invoke-static {p1, v0}, Landroid/databinding/DataBindingUtil;->setContentView(Landroid/app/Activity;I)Landroid/databinding/ViewDataBinding;

    move-result-object p1

    const-string v0, "DataBindingUtil.setConte\u2026 R.layout.activity_sound)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;

    iput-object p1, p0, Lru/rocketbank/r2d2/activities/sound/SoundActivity;->binding:Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;

    .line 127
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/sound/SoundActivity;->binding:Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;

    if-nez p1, :cond_0

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget-object p1, p1, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->include:Lru/rocketbank/r2d2/databinding/ToolbarWithButtonOnlyBinding;

    if-nez p1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    iget-object p1, p1, Lru/rocketbank/r2d2/databinding/ToolbarWithButtonOnlyBinding;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/activities/sound/SoundActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 128
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/sound/SoundActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 130
    :cond_2
    new-instance p1, Lru/rocketbank/r2d2/data/binding/sound/SoundBindingData;

    invoke-direct {p1}, Lru/rocketbank/r2d2/data/binding/sound/SoundBindingData;-><init>()V

    iput-object p1, p0, Lru/rocketbank/r2d2/activities/sound/SoundActivity;->soundBinding:Lru/rocketbank/r2d2/data/binding/sound/SoundBindingData;

    .line 132
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/sound/SoundActivity;->binding:Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;

    if-nez p1, :cond_3

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/sound/SoundActivity;->soundBinding:Lru/rocketbank/r2d2/data/binding/sound/SoundBindingData;

    if-nez v0, :cond_4

    const-string v1, "soundBinding"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p1, v0}, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->setData(Lru/rocketbank/r2d2/data/binding/sound/SoundBindingData;)V

    .line 134
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/sound/SoundActivity;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object p1

    invoke-interface {p1}, Lru/rocketbank/core/dagger/component/RocketComponent;->getUserApi()Lru/rocketbank/core/network/api/UserApi;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/activities/sound/SoundActivity;->userAPI:Lru/rocketbank/core/network/api/UserApi;

    .line 136
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/sound/SoundActivity;->binding:Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;

    if-nez p1, :cond_5

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_5
    iget-object p1, p1, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->bottom:Landroid/widget/LinearLayout;

    check-cast p1, Landroid/view/View;

    invoke-static {p1}, Landroid/support/design/widget/BottomSheetBehavior;->from(Landroid/view/View;)Landroid/support/design/widget/BottomSheetBehavior;

    move-result-object p1

    const-string v0, "BottomSheetBehavior.from(binding.bottom)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/activities/sound/SoundActivity;->behavior:Landroid/support/design/widget/BottomSheetBehavior;

    .line 137
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/sound/SoundActivity;->behavior:Landroid/support/design/widget/BottomSheetBehavior;

    if-nez p1, :cond_6

    const-string v0, "behavior"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_6
    invoke-virtual {p1}, Landroid/support/design/widget/BottomSheetBehavior;->getPeekHeight()I

    move-result p1

    iput p1, p0, Lru/rocketbank/r2d2/activities/sound/SoundActivity;->behaviorHeight:I

    .line 138
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/sound/SoundActivity;->setCallback()V

    .line 139
    invoke-direct {p0}, Lru/rocketbank/r2d2/activities/sound/SoundActivity;->fillSchemes()V

    .line 140
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/sound/SoundActivity;->soundBinding:Lru/rocketbank/r2d2/data/binding/sound/SoundBindingData;

    if-nez p1, :cond_7

    const-string v0, "soundBinding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_7
    invoke-virtual {p1}, Lru/rocketbank/r2d2/data/binding/sound/SoundBindingData;->getSoundName()Landroid/databinding/ObservableField;

    move-result-object p1

    invoke-virtual {p1}, Landroid/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_8

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_8
    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lru/rocketbank/r2d2/activities/sound/SoundActivity;->apiVal:Ljava/lang/String;

    .line 141
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/sound/SoundActivity;->binding:Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;

    if-nez p1, :cond_9

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_9
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/sound/SoundActivity;->toolbarData:Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonOnlyData;

    invoke-virtual {p1, v0}, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->setToolbarBinding(Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonOnlyData;)V

    .line 142
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/sound/SoundActivity;->toolbarData:Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonOnlyData;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonOnlyData;->getTitle()Landroid/databinding/ObservableField;

    move-result-object p1

    const v0, 0x7f110064

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/activities/sound/SoundActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/databinding/ObservableField;->set(Ljava/lang/Object;)V

    return-void
.end method

.method protected final onDestroy()V
    .locals 1

    .line 173
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/sound/SoundActivity;->player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 174
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 175
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 177
    :cond_0
    invoke-super {p0}, Lru/rocketbank/r2d2/activities/SecuredActivity;->onDestroy()V

    return-void
.end method

.method public final onSoundHeaderClicked()V
    .locals 2

    .line 146
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/sound/SoundActivity;->behavior:Landroid/support/design/widget/BottomSheetBehavior;

    if-nez v0, :cond_0

    const-string v1, "behavior"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Landroid/support/design/widget/BottomSheetBehavior;->getState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 149
    :pswitch_0
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/sound/SoundActivity;->behavior:Landroid/support/design/widget/BottomSheetBehavior;

    if-nez v0, :cond_1

    const-string v1, "behavior"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/support/design/widget/BottomSheetBehavior;->setState(I)V

    return-void

    .line 152
    :pswitch_1
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/sound/SoundActivity;->behavior:Landroid/support/design/widget/BottomSheetBehavior;

    if-nez v0, :cond_2

    const-string v1, "behavior"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/support/design/widget/BottomSheetBehavior;->setState(I)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onSoundItemClicked(I)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x4

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 237
    iget-object v1, p0, Lru/rocketbank/r2d2/activities/sound/SoundActivity;->soundBinding:Lru/rocketbank/r2d2/data/binding/sound/SoundBindingData;

    if-nez v1, :cond_f

    const-string v3, "soundBinding"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 228
    :pswitch_0
    iget-object v3, p0, Lru/rocketbank/r2d2/activities/sound/SoundActivity;->soundBinding:Lru/rocketbank/r2d2/data/binding/sound/SoundBindingData;

    if-nez v3, :cond_0

    const-string v4, "soundBinding"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v3}, Lru/rocketbank/r2d2/data/binding/sound/SoundBindingData;->getSoundName()Landroid/databinding/ObservableField;

    move-result-object v3

    const v4, 0x7f1101f8

    invoke-virtual {p0, v4}, Lru/rocketbank/r2d2/activities/sound/SoundActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 229
    iget-object v3, p0, Lru/rocketbank/r2d2/activities/sound/SoundActivity;->behavior:Landroid/support/design/widget/BottomSheetBehavior;

    if-nez v3, :cond_1

    const-string v4, "behavior"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v3, v2}, Landroid/support/design/widget/BottomSheetBehavior;->setHideable(Z)V

    .line 230
    iget-object v3, p0, Lru/rocketbank/r2d2/activities/sound/SoundActivity;->behavior:Landroid/support/design/widget/BottomSheetBehavior;

    if-nez v3, :cond_2

    const-string v4, "behavior"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v3, v1}, Landroid/support/design/widget/BottomSheetBehavior;->setState(I)V

    .line 231
    sget-object v1, Lru/rocketbank/core/utils/SoundNotification;->INSTANCE:Lru/rocketbank/core/utils/SoundNotification;

    invoke-virtual {v1}, Lru/rocketbank/core/utils/SoundNotification;->resetCycles()V

    const v1, 0x7f110060

    .line 232
    invoke-virtual {p0, v1}, Lru/rocketbank/r2d2/activities/sound/SoundActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "getString(R.string.api_rickmorty)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 220
    :pswitch_1
    iget-object v3, p0, Lru/rocketbank/r2d2/activities/sound/SoundActivity;->soundBinding:Lru/rocketbank/r2d2/data/binding/sound/SoundBindingData;

    if-nez v3, :cond_3

    const-string v4, "soundBinding"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v3}, Lru/rocketbank/r2d2/data/binding/sound/SoundBindingData;->getSoundName()Landroid/databinding/ObservableField;

    move-result-object v3

    const v4, 0x7f110422

    invoke-virtual {p0, v4}, Lru/rocketbank/r2d2/activities/sound/SoundActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 221
    iget-object v3, p0, Lru/rocketbank/r2d2/activities/sound/SoundActivity;->behavior:Landroid/support/design/widget/BottomSheetBehavior;

    if-nez v3, :cond_4

    const-string v4, "behavior"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v3, v2}, Landroid/support/design/widget/BottomSheetBehavior;->setHideable(Z)V

    .line 222
    iget-object v3, p0, Lru/rocketbank/r2d2/activities/sound/SoundActivity;->behavior:Landroid/support/design/widget/BottomSheetBehavior;

    if-nez v3, :cond_5

    const-string v4, "behavior"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {v3, v1}, Landroid/support/design/widget/BottomSheetBehavior;->setState(I)V

    .line 223
    sget-object v1, Lru/rocketbank/core/utils/SoundNotification;->INSTANCE:Lru/rocketbank/core/utils/SoundNotification;

    invoke-virtual {v1}, Lru/rocketbank/core/utils/SoundNotification;->resetCycles()V

    const v1, 0x7f11005d

    .line 224
    invoke-virtual {p0, v1}, Lru/rocketbank/r2d2/activities/sound/SoundActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "getString(R.string.api_lejeboker)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 206
    :pswitch_2
    iget-object v3, p0, Lru/rocketbank/r2d2/activities/sound/SoundActivity;->soundBinding:Lru/rocketbank/r2d2/data/binding/sound/SoundBindingData;

    if-nez v3, :cond_6

    const-string v4, "soundBinding"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_6
    invoke-virtual {v3}, Lru/rocketbank/r2d2/data/binding/sound/SoundBindingData;->getSoundName()Landroid/databinding/ObservableField;

    move-result-object v3

    const v4, 0x7f110211

    invoke-virtual {p0, v4}, Lru/rocketbank/r2d2/activities/sound/SoundActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 207
    iget-object v3, p0, Lru/rocketbank/r2d2/activities/sound/SoundActivity;->behavior:Landroid/support/design/widget/BottomSheetBehavior;

    if-nez v3, :cond_7

    const-string v4, "behavior"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_7
    invoke-virtual {v3, v2}, Landroid/support/design/widget/BottomSheetBehavior;->setHideable(Z)V

    .line 208
    iget-object v3, p0, Lru/rocketbank/r2d2/activities/sound/SoundActivity;->behavior:Landroid/support/design/widget/BottomSheetBehavior;

    if-nez v3, :cond_8

    const-string v4, "behavior"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_8
    invoke-virtual {v3, v1}, Landroid/support/design/widget/BottomSheetBehavior;->setState(I)V

    const v1, 0x7f11005b

    .line 209
    invoke-virtual {p0, v1}, Lru/rocketbank/r2d2/activities/sound/SoundActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "getString(R.string.api_gnom)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 199
    :pswitch_3
    iget-object v3, p0, Lru/rocketbank/r2d2/activities/sound/SoundActivity;->soundBinding:Lru/rocketbank/r2d2/data/binding/sound/SoundBindingData;

    if-nez v3, :cond_9

    const-string v4, "soundBinding"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_9
    invoke-virtual {v3}, Lru/rocketbank/r2d2/data/binding/sound/SoundBindingData;->getSoundName()Landroid/databinding/ObservableField;

    move-result-object v3

    const v4, 0x7f110227

    invoke-virtual {p0, v4}, Lru/rocketbank/r2d2/activities/sound/SoundActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 200
    iget-object v3, p0, Lru/rocketbank/r2d2/activities/sound/SoundActivity;->behavior:Landroid/support/design/widget/BottomSheetBehavior;

    if-nez v3, :cond_a

    const-string v4, "behavior"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_a
    invoke-virtual {v3, v2}, Landroid/support/design/widget/BottomSheetBehavior;->setHideable(Z)V

    .line 201
    iget-object v3, p0, Lru/rocketbank/r2d2/activities/sound/SoundActivity;->behavior:Landroid/support/design/widget/BottomSheetBehavior;

    if-nez v3, :cond_b

    const-string v4, "behavior"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_b
    invoke-virtual {v3, v1}, Landroid/support/design/widget/BottomSheetBehavior;->setState(I)V

    const v1, 0x7f11005c

    .line 202
    invoke-virtual {p0, v1}, Lru/rocketbank/r2d2/activities/sound/SoundActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "getString(R.string.api_humans)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 213
    :pswitch_4
    iget-object v3, p0, Lru/rocketbank/r2d2/activities/sound/SoundActivity;->soundBinding:Lru/rocketbank/r2d2/data/binding/sound/SoundBindingData;

    if-nez v3, :cond_c

    const-string v4, "soundBinding"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_c
    invoke-virtual {v3}, Lru/rocketbank/r2d2/data/binding/sound/SoundBindingData;->getSoundName()Landroid/databinding/ObservableField;

    move-result-object v3

    const v4, 0x7f110347

    invoke-virtual {p0, v4}, Lru/rocketbank/r2d2/activities/sound/SoundActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 214
    iget-object v3, p0, Lru/rocketbank/r2d2/activities/sound/SoundActivity;->behavior:Landroid/support/design/widget/BottomSheetBehavior;

    if-nez v3, :cond_d

    const-string v4, "behavior"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_d
    invoke-virtual {v3, v2}, Landroid/support/design/widget/BottomSheetBehavior;->setHideable(Z)V

    .line 215
    iget-object v3, p0, Lru/rocketbank/r2d2/activities/sound/SoundActivity;->behavior:Landroid/support/design/widget/BottomSheetBehavior;

    if-nez v3, :cond_e

    const-string v4, "behavior"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_e
    invoke-virtual {v3, v1}, Landroid/support/design/widget/BottomSheetBehavior;->setState(I)V

    const v1, 0x7f11005f

    .line 216
    invoke-virtual {p0, v1}, Lru/rocketbank/r2d2/activities/sound/SoundActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "getString(R.string.api_orcs)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 237
    :cond_f
    :goto_0
    invoke-virtual {v1}, Lru/rocketbank/r2d2/data/binding/sound/SoundBindingData;->getSoundName()Landroid/databinding/ObservableField;

    move-result-object v1

    const v3, 0x7f110452

    invoke-virtual {p0, v3}, Lru/rocketbank/r2d2/activities/sound/SoundActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 238
    iget-object v1, p0, Lru/rocketbank/r2d2/activities/sound/SoundActivity;->behavior:Landroid/support/design/widget/BottomSheetBehavior;

    if-nez v1, :cond_10

    const-string v3, "behavior"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_10
    invoke-virtual {v1, v0}, Landroid/support/design/widget/BottomSheetBehavior;->setHideable(Z)V

    .line 239
    iget-object v1, p0, Lru/rocketbank/r2d2/activities/sound/SoundActivity;->behavior:Landroid/support/design/widget/BottomSheetBehavior;

    if-nez v1, :cond_11

    const-string v3, "behavior"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_11
    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Landroid/support/design/widget/BottomSheetBehavior;->setState(I)V

    const-string v1, ""

    .line 197
    :goto_1
    iput-object v1, p0, Lru/rocketbank/r2d2/activities/sound/SoundActivity;->apiVal:Ljava/lang/String;

    .line 243
    iget-object v1, p0, Lru/rocketbank/r2d2/activities/sound/SoundActivity;->soundItems:Ljava/util/ArrayList;

    iget v3, p0, Lru/rocketbank/r2d2/activities/sound/SoundActivity;->selected:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lru/rocketbank/r2d2/data/binding/sound/SchemeItemData;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/data/binding/sound/SchemeItemData;->isCurrent()Landroid/databinding/ObservableBoolean;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/databinding/ObservableBoolean;->set(Z)V

    .line 244
    iget-object v1, p0, Lru/rocketbank/r2d2/activities/sound/SoundActivity;->toolbarData:Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonOnlyData;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonOnlyData;->isEnabled()Landroid/databinding/ObservableBoolean;

    move-result-object v1

    iget v3, p0, Lru/rocketbank/r2d2/activities/sound/SoundActivity;->activated:I

    if-eq v3, p1, :cond_12

    move v2, v0

    :cond_12
    invoke-virtual {v1, v2}, Landroid/databinding/ObservableBoolean;->set(Z)V

    .line 245
    iput p1, p0, Lru/rocketbank/r2d2/activities/sound/SoundActivity;->selected:I

    .line 246
    iget-object v1, p0, Lru/rocketbank/r2d2/activities/sound/SoundActivity;->soundItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lru/rocketbank/r2d2/data/binding/sound/SchemeItemData;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/data/binding/sound/SchemeItemData;->isCurrent()Landroid/databinding/ObservableBoolean;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/databinding/ObservableBoolean;->set(Z)V

    .line 247
    sget-object v0, Lru/rocketbank/core/utils/SoundNotification;->INSTANCE:Lru/rocketbank/core/utils/SoundNotification;

    invoke-virtual {v0, p1}, Lru/rocketbank/core/utils/SoundNotification;->setSelectedMode(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected final onStart()V
    .locals 2

    .line 158
    invoke-super {p0}, Lru/rocketbank/r2d2/activities/SecuredActivity;->onStart()V

    .line 159
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/sound/SoundActivity;->binding:Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;

    if-nez v0, :cond_0

    const-string v1, "binding"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    move-object v1, p0

    check-cast v1, Lru/rocketbank/r2d2/data/binding/sound/SoundsListener;

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->setListener(Lru/rocketbank/r2d2/data/binding/sound/SoundsListener;)V

    .line 160
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/sound/SoundActivity;->binding:Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;

    if-nez v0, :cond_1

    const-string v1, "binding"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    move-object v1, p0

    check-cast v1, Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonHandler;

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->setHandler(Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonHandler;)V

    .line 161
    invoke-direct {p0}, Lru/rocketbank/r2d2/activities/sound/SoundActivity;->fillPlayList()V

    return-void
.end method

.method protected final onStop()V
    .locals 3

    .line 165
    invoke-super {p0}, Lru/rocketbank/r2d2/activities/SecuredActivity;->onStop()V

    .line 166
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/sound/SoundActivity;->subscription:Lrx/Subscription;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lrx/Subscription;->unsubscribe()V

    .line 167
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/sound/SoundActivity;->binding:Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;

    if-nez v0, :cond_1

    const-string v1, "binding"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->setListener(Lru/rocketbank/r2d2/data/binding/sound/SoundsListener;)V

    .line 168
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/sound/SoundActivity;->binding:Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;

    if-nez v0, :cond_2

    const-string v2, "binding"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->setHandler(Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonHandler;)V

    .line 169
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/sound/SoundActivity;->hideProgressDialog()V

    return-void
.end method

.method public final setCallback()V
    .locals 2

    .line 272
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/sound/SoundActivity;->binding:Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;

    if-nez v0, :cond_0

    const-string v1, "binding"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget-object v0, v0, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->bottom:Landroid/widget/LinearLayout;

    .line 273
    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Landroid/support/design/widget/BottomSheetBehavior;->from(Landroid/view/View;)Landroid/support/design/widget/BottomSheetBehavior;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 274
    new-instance v1, Lru/rocketbank/r2d2/activities/sound/SoundActivity$setCallback$1;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/activities/sound/SoundActivity$setCallback$1;-><init>(Lru/rocketbank/r2d2/activities/sound/SoundActivity;)V

    check-cast v1, Landroid/support/design/widget/BottomSheetBehavior$BottomSheetCallback;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/BottomSheetBehavior;->setBottomSheetCallback(Landroid/support/design/widget/BottomSheetBehavior$BottomSheetCallback;)V

    return-void

    :cond_1
    return-void
.end method

.method public final start(ILru/rocketbank/core/utils/SoundNotification$NotificationSound;Lru/rocketbank/r2d2/activities/sound/SoundItemData;)V
    .locals 1

    const-string v0, "notification"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "soundItemData"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    iget-object p2, p0, Lru/rocketbank/r2d2/activities/sound/SoundActivity;->player:Landroid/media/MediaPlayer;

    if-eqz p2, :cond_0

    .line 69
    invoke-virtual {p2}, Landroid/media/MediaPlayer;->stop()V

    .line 70
    invoke-virtual {p2}, Landroid/media/MediaPlayer;->release()V

    .line 73
    :cond_0
    iget-object p2, p0, Lru/rocketbank/r2d2/activities/sound/SoundActivity;->currentSoundItemData:Lru/rocketbank/r2d2/activities/sound/SoundItemData;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lru/rocketbank/r2d2/activities/sound/SoundItemData;->getPlaying()Landroid/databinding/ObservableBoolean;

    move-result-object p2

    if-eqz p2, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/databinding/ObservableBoolean;->set(Z)V

    .line 75
    :cond_1
    iput-object p3, p0, Lru/rocketbank/r2d2/activities/sound/SoundActivity;->currentSoundItemData:Lru/rocketbank/r2d2/activities/sound/SoundItemData;

    const/4 p2, 0x0

    .line 77
    iput-object p2, p0, Lru/rocketbank/r2d2/activities/sound/SoundActivity;->player:Landroid/media/MediaPlayer;

    .line 78
    sget-object p2, Lru/rocketbank/core/utils/SoundNotification;->INSTANCE:Lru/rocketbank/core/utils/SoundNotification;

    invoke-virtual {p2, p1}, Lru/rocketbank/core/utils/SoundNotification;->getSound(I)I

    move-result p1

    if-lez p1, :cond_2

    .line 80
    move-object p2, p0

    check-cast p2, Landroid/content/Context;

    invoke-static {p2, p1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 82
    new-instance p2, Lru/rocketbank/r2d2/activities/sound/SoundActivity$start$$inlined$let$lambda$1;

    invoke-direct {p2, p0, p3}, Lru/rocketbank/r2d2/activities/sound/SoundActivity$start$$inlined$let$lambda$1;-><init>(Lru/rocketbank/r2d2/activities/sound/SoundActivity;Lru/rocketbank/r2d2/activities/sound/SoundItemData;)V

    check-cast p2, Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 87
    new-instance p2, Lru/rocketbank/r2d2/activities/sound/SoundActivity$start$$inlined$let$lambda$2;

    invoke-direct {p2, p0, p3}, Lru/rocketbank/r2d2/activities/sound/SoundActivity$start$$inlined$let$lambda$2;-><init>(Lru/rocketbank/r2d2/activities/sound/SoundActivity;Lru/rocketbank/r2d2/activities/sound/SoundItemData;)V

    check-cast p2, Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 91
    iput-object p1, p0, Lru/rocketbank/r2d2/activities/sound/SoundActivity;->player:Landroid/media/MediaPlayer;

    return-void

    :cond_2
    return-void
.end method

.method public final stop(Lru/rocketbank/r2d2/activities/sound/SoundItemData;)V
    .locals 1

    const-string v0, "soundItemData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/sound/SoundActivity;->player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 61
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/sound/SoundActivity;->player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    :cond_1
    const/4 v0, 0x0

    .line 62
    iput-object v0, p0, Lru/rocketbank/r2d2/activities/sound/SoundActivity;->player:Landroid/media/MediaPlayer;

    .line 63
    iput-object v0, p0, Lru/rocketbank/r2d2/activities/sound/SoundActivity;->currentSoundItemData:Lru/rocketbank/r2d2/activities/sound/SoundItemData;

    .line 64
    invoke-virtual {p1}, Lru/rocketbank/r2d2/activities/sound/SoundItemData;->getPlaying()Landroid/databinding/ObservableBoolean;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/databinding/ObservableBoolean;->set(Z)V

    return-void
.end method
