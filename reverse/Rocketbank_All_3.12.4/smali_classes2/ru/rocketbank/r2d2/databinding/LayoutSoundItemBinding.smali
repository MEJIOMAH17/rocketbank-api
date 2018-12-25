.class public Lru/rocketbank/r2d2/databinding/LayoutSoundItemBinding;
.super Landroid/databinding/ViewDataBinding;
.source "LayoutSoundItemBinding.java"

# interfaces
.implements Landroid/databinding/generated/callback/OnClickListener$Listener;


# static fields
.field private static final sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private final mCallback46:Landroid/view/View$OnClickListener;

.field private mData:Lru/rocketbank/r2d2/activities/sound/SoundItemData;

.field private mDirtyFlags:J

.field private final mboundView0:Landroid/widget/RelativeLayout;

.field private final mboundView1:Lru/rocketbank/core/widgets/RocketTextView;

.field private final mboundView2:Landroid/widget/ImageButton;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x4

    .line 35
    invoke-direct {p0, p1, p2, v0}, Landroid/databinding/ViewDataBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;I)V

    const-wide/16 v0, -0x1

    .line 273
    iput-wide v0, p0, Lru/rocketbank/r2d2/databinding/LayoutSoundItemBinding;->mDirtyFlags:J

    .line 36
    sget-object v0, Lru/rocketbank/r2d2/databinding/LayoutSoundItemBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lru/rocketbank/r2d2/databinding/LayoutSoundItemBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v2, 0x3

    invoke-static {p1, p2, v2, v0, v1}, Lru/rocketbank/r2d2/databinding/LayoutSoundItemBinding;->mapBindings(Landroid/databinding/DataBindingComponent;Landroid/view/View;ILandroid/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    .line 37
    aget-object v0, p1, v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/LayoutSoundItemBinding;->mboundView0:Landroid/widget/RelativeLayout;

    .line 38
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/LayoutSoundItemBinding;->mboundView0:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 39
    aget-object v2, p1, v0

    check-cast v2, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v2, p0, Lru/rocketbank/r2d2/databinding/LayoutSoundItemBinding;->mboundView1:Lru/rocketbank/core/widgets/RocketTextView;

    .line 40
    iget-object v2, p0, Lru/rocketbank/r2d2/databinding/LayoutSoundItemBinding;->mboundView1:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v2, v1}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    const/4 v2, 0x2

    .line 41
    aget-object p1, p1, v2

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/LayoutSoundItemBinding;->mboundView2:Landroid/widget/ImageButton;

    .line 42
    iget-object p1, p0, Lru/rocketbank/r2d2/databinding/LayoutSoundItemBinding;->mboundView2:Landroid/widget/ImageButton;

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 43
    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/LayoutSoundItemBinding;->setRootTag(Landroid/view/View;)V

    .line 45
    new-instance p1, Landroid/databinding/generated/callback/OnClickListener;

    invoke-direct {p1, p0, v0}, Landroid/databinding/generated/callback/OnClickListener;-><init>(Landroid/databinding/generated/callback/OnClickListener$Listener;I)V

    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/LayoutSoundItemBinding;->mCallback46:Landroid/view/View$OnClickListener;

    .line 46
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/LayoutSoundItemBinding;->invalidateAll()V

    return-void
.end method

.method public static bind(Landroid/view/View;)Lru/rocketbank/r2d2/databinding/LayoutSoundItemBinding;
    .locals 1

    .line 293
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/LayoutSoundItemBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/LayoutSoundItemBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/LayoutSoundItemBinding;
    .locals 2

    const-string v0, "layout/layout_sound_item_0"

    .line 297
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 298
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "view tag isn\'t correct on view:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 300
    :cond_0
    new-instance v0, Lru/rocketbank/r2d2/databinding/LayoutSoundItemBinding;

    invoke-direct {v0, p1, p0}, Lru/rocketbank/r2d2/databinding/LayoutSoundItemBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lru/rocketbank/r2d2/databinding/LayoutSoundItemBinding;
    .locals 1

    .line 285
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/LayoutSoundItemBinding;->inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/LayoutSoundItemBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/LayoutSoundItemBinding;
    .locals 3

    const v0, 0x7f0c0142

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 289
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-static {p0, p1}, Lru/rocketbank/r2d2/databinding/LayoutSoundItemBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/LayoutSoundItemBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lru/rocketbank/r2d2/databinding/LayoutSoundItemBinding;
    .locals 1

    .line 277
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lru/rocketbank/r2d2/databinding/LayoutSoundItemBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/LayoutSoundItemBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/LayoutSoundItemBinding;
    .locals 1

    const v0, 0x7f0c0142

    .line 281
    invoke-static {p0, v0, p1, p2, p3}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Landroid/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lru/rocketbank/r2d2/databinding/LayoutSoundItemBinding;

    return-object p0
.end method

.method private onChangeDataPlayImage(Landroid/databinding/ObservableField;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/databinding/ObservableField<",
            "Landroid/graphics/drawable/Drawable;",
            ">;I)Z"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 108
    monitor-enter p0

    .line 109
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/LayoutSoundItemBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x1

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/LayoutSoundItemBinding;->mDirtyFlags:J

    .line 110
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private onChangeDataPlaying(Landroid/databinding/ObservableBoolean;I)Z
    .locals 4

    if-nez p2, :cond_0

    .line 126
    monitor-enter p0

    .line 127
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/LayoutSoundItemBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x4

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/LayoutSoundItemBinding;->mDirtyFlags:J

    .line 128
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private onChangeDataSoundName(Landroid/databinding/ObservableField;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/databinding/ObservableField<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 135
    monitor-enter p0

    .line 136
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/LayoutSoundItemBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x8

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/LayoutSoundItemBinding;->mDirtyFlags:J

    .line 137
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private onChangeDataStopImage(Landroid/databinding/ObservableField;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/databinding/ObservableField<",
            "Landroid/graphics/drawable/Drawable;",
            ">;I)Z"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 117
    monitor-enter p0

    .line 118
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/LayoutSoundItemBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x2

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/LayoutSoundItemBinding;->mDirtyFlags:J

    .line 119
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public final _internalCallbackOnClick(ILandroid/view/View;)V
    .locals 0

    .line 261
    iget-object p1, p0, Lru/rocketbank/r2d2/databinding/LayoutSoundItemBinding;->mData:Lru/rocketbank/r2d2/activities/sound/SoundItemData;

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 269
    invoke-virtual {p1}, Lru/rocketbank/r2d2/activities/sound/SoundItemData;->mediaClick()V

    :cond_1
    return-void
.end method

.method protected executeBindings()V
    .locals 21

    move-object/from16 v1, p0

    .line 146
    monitor-enter p0

    .line 147
    :try_start_0
    iget-wide v2, v1, Lru/rocketbank/r2d2/databinding/LayoutSoundItemBinding;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    .line 148
    iput-wide v4, v1, Lru/rocketbank/r2d2/databinding/LayoutSoundItemBinding;->mDirtyFlags:J

    .line 149
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    iget-object v6, v1, Lru/rocketbank/r2d2/databinding/LayoutSoundItemBinding;->mData:Lru/rocketbank/r2d2/activities/sound/SoundItemData;

    const-wide/16 v7, 0x3f

    and-long v9, v2, v7

    cmp-long v7, v9, v4

    const-wide/16 v10, 0x40

    const-wide/16 v12, 0x80

    const-wide/16 v14, 0x37

    const/4 v8, 0x0

    if-eqz v7, :cond_6

    and-long v18, v2, v14

    cmp-long v7, v18, v4

    if-eqz v7, :cond_3

    if-eqz v6, :cond_0

    .line 168
    invoke-virtual {v6}, Lru/rocketbank/r2d2/activities/sound/SoundItemData;->getPlaying()Landroid/databinding/ObservableBoolean;

    move-result-object v7

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    const/4 v9, 0x2

    .line 170
    invoke-virtual {v1, v9, v7}, Lru/rocketbank/r2d2/databinding/LayoutSoundItemBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v7, :cond_1

    .line 175
    invoke-virtual {v7}, Landroid/databinding/ObservableBoolean;->get()Z

    move-result v7

    goto :goto_1

    :cond_1
    move v7, v8

    :goto_1
    cmp-long v9, v18, v4

    if-eqz v9, :cond_4

    if-eqz v7, :cond_2

    or-long v18, v2, v12

    :goto_2
    move-wide/from16 v2, v18

    goto :goto_3

    :cond_2
    or-long v18, v2, v10

    goto :goto_2

    :cond_3
    move v7, v8

    :cond_4
    :goto_3
    const-wide/16 v16, 0x38

    and-long v18, v2, v16

    cmp-long v9, v18, v4

    if-eqz v9, :cond_7

    if-eqz v6, :cond_5

    .line 190
    invoke-virtual {v6}, Lru/rocketbank/r2d2/activities/sound/SoundItemData;->getSoundName()Landroid/databinding/ObservableField;

    move-result-object v9

    goto :goto_4

    :cond_5
    const/4 v9, 0x0

    :goto_4
    const/4 v14, 0x3

    .line 192
    invoke-virtual {v1, v14, v9}, Lru/rocketbank/r2d2/databinding/LayoutSoundItemBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v9, :cond_7

    .line 197
    invoke-virtual {v9}, Landroid/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    goto :goto_5

    :cond_6
    move v7, v8

    :cond_7
    const/4 v9, 0x0

    :goto_5
    and-long v14, v2, v10

    cmp-long v10, v14, v4

    if-eqz v10, :cond_9

    if-eqz v6, :cond_8

    .line 207
    invoke-virtual {v6}, Lru/rocketbank/r2d2/activities/sound/SoundItemData;->getPlayImage()Landroid/databinding/ObservableField;

    move-result-object v10

    goto :goto_6

    :cond_8
    const/4 v10, 0x0

    .line 209
    :goto_6
    invoke-virtual {v1, v8, v10}, Lru/rocketbank/r2d2/databinding/LayoutSoundItemBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v10, :cond_9

    .line 214
    invoke-virtual {v10}, Landroid/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/drawable/Drawable;

    goto :goto_7

    :cond_9
    const/4 v8, 0x0

    :goto_7
    and-long v10, v2, v12

    cmp-long v12, v10, v4

    if-eqz v12, :cond_b

    if-eqz v6, :cond_a

    .line 221
    invoke-virtual {v6}, Lru/rocketbank/r2d2/activities/sound/SoundItemData;->getStopImage()Landroid/databinding/ObservableField;

    move-result-object v6

    goto :goto_8

    :cond_a
    const/4 v6, 0x0

    :goto_8
    const/4 v10, 0x1

    .line 223
    invoke-virtual {v1, v10, v6}, Lru/rocketbank/r2d2/databinding/LayoutSoundItemBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v6, :cond_b

    .line 228
    invoke-virtual {v6}, Landroid/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/drawable/Drawable;

    goto :goto_9

    :cond_b
    const/4 v6, 0x0

    :goto_9
    const-wide/16 v10, 0x37

    and-long v12, v2, v10

    cmp-long v10, v12, v4

    if-eqz v10, :cond_d

    if-eqz v7, :cond_c

    goto :goto_a

    :cond_c
    move-object v6, v8

    goto :goto_a

    :cond_d
    const/4 v6, 0x0

    :goto_a
    const-wide/16 v7, 0x38

    and-long v10, v2, v7

    cmp-long v7, v10, v4

    if-eqz v7, :cond_e

    .line 241
    iget-object v7, v1, Lru/rocketbank/r2d2/databinding/LayoutSoundItemBinding;->mboundView1:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-static {v7, v9}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_e
    const-wide/16 v7, 0x20

    and-long v9, v2, v7

    cmp-long v2, v9, v4

    if-eqz v2, :cond_f

    .line 246
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/LayoutSoundItemBinding;->mboundView2:Landroid/widget/ImageButton;

    iget-object v3, v1, Lru/rocketbank/r2d2/databinding/LayoutSoundItemBinding;->mCallback46:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_f
    cmp-long v2, v12, v4

    if-eqz v2, :cond_10

    .line 251
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/LayoutSoundItemBinding;->mboundView2:Landroid/widget/ImageButton;

    invoke-static {v2, v6}, Landroid/databinding/adapters/ImageViewBindingAdapter;->setImageDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    :cond_10
    return-void

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 149
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public getData()Lru/rocketbank/r2d2/activities/sound/SoundItemData;
    .locals 1

    .line 89
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/LayoutSoundItemBinding;->mData:Lru/rocketbank/r2d2/activities/sound/SoundItemData;

    return-object v0
.end method

.method public hasPendingBindings()Z
    .locals 5

    .line 59
    monitor-enter p0

    .line 60
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/LayoutSoundItemBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    .line 61
    monitor-exit p0

    return v0

    .line 63
    :cond_0
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public invalidateAll()V
    .locals 2

    .line 51
    monitor-enter p0

    const-wide/16 v0, 0x20

    .line 52
    :try_start_0
    iput-wide v0, p0, Lru/rocketbank/r2d2/databinding/LayoutSoundItemBinding;->mDirtyFlags:J

    .line 53
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/LayoutSoundItemBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 53
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected onFieldChange(ILjava/lang/Object;I)Z
    .locals 0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    .line 102
    :pswitch_0
    check-cast p2, Landroid/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/LayoutSoundItemBinding;->onChangeDataSoundName(Landroid/databinding/ObservableField;I)Z

    move-result p1

    return p1

    .line 100
    :pswitch_1
    check-cast p2, Landroid/databinding/ObservableBoolean;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/LayoutSoundItemBinding;->onChangeDataPlaying(Landroid/databinding/ObservableBoolean;I)Z

    move-result p1

    return p1

    .line 98
    :pswitch_2
    check-cast p2, Landroid/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/LayoutSoundItemBinding;->onChangeDataStopImage(Landroid/databinding/ObservableField;I)Z

    move-result p1

    return p1

    .line 96
    :pswitch_3
    check-cast p2, Landroid/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/LayoutSoundItemBinding;->onChangeDataPlayImage(Landroid/databinding/ObservableField;I)Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setData(Lru/rocketbank/r2d2/activities/sound/SoundItemData;)V
    .locals 6

    .line 80
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/LayoutSoundItemBinding;->mData:Lru/rocketbank/r2d2/activities/sound/SoundItemData;

    .line 81
    monitor-enter p0

    .line 82
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/LayoutSoundItemBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x10

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/LayoutSoundItemBinding;->mDirtyFlags:J

    .line 83
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x18

    .line 84
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/LayoutSoundItemBinding;->notifyPropertyChanged(I)V

    .line 85
    invoke-super {p0}, Landroid/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 83
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .locals 1

    const/16 v0, 0x18

    if-ne v0, p1, :cond_0

    .line 71
    check-cast p2, Lru/rocketbank/r2d2/activities/sound/SoundItemData;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/LayoutSoundItemBinding;->setData(Lru/rocketbank/r2d2/activities/sound/SoundItemData;)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
