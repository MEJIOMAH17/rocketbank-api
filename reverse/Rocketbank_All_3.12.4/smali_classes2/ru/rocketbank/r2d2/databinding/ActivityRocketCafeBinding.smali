.class public Lru/rocketbank/r2d2/databinding/ActivityRocketCafeBinding;
.super Landroid/databinding/ViewDataBinding;
.source "ActivityRocketCafeBinding.java"

# interfaces
.implements Landroid/databinding/generated/callback/OnClickListener$Listener;


# static fields
.field private static final sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field public final amountAndDescription:Landroid/widget/TextView;

.field public final background:Lru/rocketbank/r2d2/widgets/BackgroundImageView;

.field public final cancelButton:Lru/rocketbank/core/widgets/RocketTextView;

.field public final linearLayout:Landroid/widget/LinearLayout;

.field private final mCallback51:Landroid/view/View$OnClickListener;

.field private final mCallback52:Landroid/view/View$OnClickListener;

.field private mData:Lru/rocketbank/r2d2/data/binding/kitchen/RocketCafeData;

.field private mDirtyFlags:J

.field private mListener:Lru/rocketbank/r2d2/data/binding/kitchen/RocketCafeListener;

.field private final mboundView0:Landroid/widget/FrameLayout;

.field public final rocketbank:Lde/hdodenhof/circleimageview/CircleImageView;

.field public final textView:Lru/rocketbank/core/widgets/RocketTextView;

.field public final transferButton:Lru/rocketbank/core/widgets/RocketButton;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 17
    sput-object v0, Lru/rocketbank/r2d2/databinding/ActivityRocketCafeBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090069

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 18
    sget-object v0, Lru/rocketbank/r2d2/databinding/ActivityRocketCafeBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f09021e

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 19
    sget-object v0, Lru/rocketbank/r2d2/databinding/ActivityRocketCafeBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0902f7

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 20
    sget-object v0, Lru/rocketbank/r2d2/databinding/ActivityRocketCafeBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f09038f

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x1

    .line 53
    invoke-direct {p0, p1, p2, v0}, Landroid/databinding/ViewDataBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;I)V

    const-wide/16 v1, -0x1

    .line 237
    iput-wide v1, p0, Lru/rocketbank/r2d2/databinding/ActivityRocketCafeBinding;->mDirtyFlags:J

    .line 54
    sget-object v1, Lru/rocketbank/r2d2/databinding/ActivityRocketCafeBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v2, Lru/rocketbank/r2d2/databinding/ActivityRocketCafeBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/16 v3, 0x8

    invoke-static {p1, p2, v3, v1, v2}, Lru/rocketbank/r2d2/databinding/ActivityRocketCafeBinding;->mapBindings(Landroid/databinding/DataBindingComponent;Landroid/view/View;ILandroid/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object p1

    .line 55
    aget-object v1, p1, v0

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/ActivityRocketCafeBinding;->amountAndDescription:Landroid/widget/TextView;

    .line 56
    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/ActivityRocketCafeBinding;->amountAndDescription:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    const/4 v1, 0x4

    .line 57
    aget-object v1, p1, v1

    check-cast v1, Lru/rocketbank/r2d2/widgets/BackgroundImageView;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/ActivityRocketCafeBinding;->background:Lru/rocketbank/r2d2/widgets/BackgroundImageView;

    const/4 v1, 0x3

    .line 58
    aget-object v1, p1, v1

    check-cast v1, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/ActivityRocketCafeBinding;->cancelButton:Lru/rocketbank/core/widgets/RocketTextView;

    .line 59
    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/ActivityRocketCafeBinding;->cancelButton:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v1, v2}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    const/4 v1, 0x5

    .line 60
    aget-object v1, p1, v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/ActivityRocketCafeBinding;->linearLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    .line 61
    aget-object v1, p1, v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/ActivityRocketCafeBinding;->mboundView0:Landroid/widget/FrameLayout;

    .line 62
    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/ActivityRocketCafeBinding;->mboundView0:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    const/4 v1, 0x6

    .line 63
    aget-object v1, p1, v1

    check-cast v1, Lde/hdodenhof/circleimageview/CircleImageView;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/ActivityRocketCafeBinding;->rocketbank:Lde/hdodenhof/circleimageview/CircleImageView;

    const/4 v1, 0x7

    .line 64
    aget-object v1, p1, v1

    check-cast v1, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/ActivityRocketCafeBinding;->textView:Lru/rocketbank/core/widgets/RocketTextView;

    const/4 v1, 0x2

    .line 65
    aget-object p1, p1, v1

    check-cast p1, Lru/rocketbank/core/widgets/RocketButton;

    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/ActivityRocketCafeBinding;->transferButton:Lru/rocketbank/core/widgets/RocketButton;

    .line 66
    iget-object p1, p0, Lru/rocketbank/r2d2/databinding/ActivityRocketCafeBinding;->transferButton:Lru/rocketbank/core/widgets/RocketButton;

    invoke-virtual {p1, v2}, Lru/rocketbank/core/widgets/RocketButton;->setTag(Ljava/lang/Object;)V

    .line 67
    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/ActivityRocketCafeBinding;->setRootTag(Landroid/view/View;)V

    .line 69
    new-instance p1, Landroid/databinding/generated/callback/OnClickListener;

    invoke-direct {p1, p0, v1}, Landroid/databinding/generated/callback/OnClickListener;-><init>(Landroid/databinding/generated/callback/OnClickListener$Listener;I)V

    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/ActivityRocketCafeBinding;->mCallback52:Landroid/view/View$OnClickListener;

    .line 70
    new-instance p1, Landroid/databinding/generated/callback/OnClickListener;

    invoke-direct {p1, p0, v0}, Landroid/databinding/generated/callback/OnClickListener;-><init>(Landroid/databinding/generated/callback/OnClickListener$Listener;I)V

    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/ActivityRocketCafeBinding;->mCallback51:Landroid/view/View$OnClickListener;

    .line 71
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/ActivityRocketCafeBinding;->invalidateAll()V

    return-void
.end method

.method public static bind(Landroid/view/View;)Lru/rocketbank/r2d2/databinding/ActivityRocketCafeBinding;
    .locals 1

    .line 257
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/ActivityRocketCafeBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivityRocketCafeBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivityRocketCafeBinding;
    .locals 2

    const-string v0, "layout/activity_rocket_cafe_0"

    .line 261
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 262
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

    .line 264
    :cond_0
    new-instance v0, Lru/rocketbank/r2d2/databinding/ActivityRocketCafeBinding;

    invoke-direct {v0, p1, p0}, Lru/rocketbank/r2d2/databinding/ActivityRocketCafeBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lru/rocketbank/r2d2/databinding/ActivityRocketCafeBinding;
    .locals 1

    .line 249
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/ActivityRocketCafeBinding;->inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivityRocketCafeBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivityRocketCafeBinding;
    .locals 3

    const v0, 0x7f0c0056

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 253
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-static {p0, p1}, Lru/rocketbank/r2d2/databinding/ActivityRocketCafeBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivityRocketCafeBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lru/rocketbank/r2d2/databinding/ActivityRocketCafeBinding;
    .locals 1

    .line 241
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lru/rocketbank/r2d2/databinding/ActivityRocketCafeBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivityRocketCafeBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivityRocketCafeBinding;
    .locals 1

    const v0, 0x7f0c0056

    .line 245
    invoke-static {p0, v0, p1, p2, p3}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Landroid/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lru/rocketbank/r2d2/databinding/ActivityRocketCafeBinding;

    return-object p0
.end method

.method private onChangeDataAmount(Landroid/databinding/ObservableField;I)Z
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

    .line 142
    monitor-enter p0

    .line 143
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/ActivityRocketCafeBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x1

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/ActivityRocketCafeBinding;->mDirtyFlags:J

    .line 144
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
    .locals 1

    const/4 p2, 0x0

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 205
    :pswitch_0
    iget-object p1, p0, Lru/rocketbank/r2d2/databinding/ActivityRocketCafeBinding;->mListener:Lru/rocketbank/r2d2/data/binding/kitchen/RocketCafeListener;

    if-eqz p1, :cond_0

    move p2, v0

    :cond_0
    if-eqz p2, :cond_2

    .line 213
    invoke-interface {p1}, Lru/rocketbank/r2d2/data/binding/kitchen/RocketCafeListener;->cancelButtonClicked()V

    return-void

    .line 222
    :pswitch_1
    iget-object p1, p0, Lru/rocketbank/r2d2/databinding/ActivityRocketCafeBinding;->mListener:Lru/rocketbank/r2d2/data/binding/kitchen/RocketCafeListener;

    if-eqz p1, :cond_1

    move p2, v0

    :cond_1
    if-eqz p2, :cond_2

    .line 230
    invoke-interface {p1}, Lru/rocketbank/r2d2/data/binding/kitchen/RocketCafeListener;->confirmButtonClicked()V

    :cond_2
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected executeBindings()V
    .locals 10

    .line 153
    monitor-enter p0

    .line 154
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/ActivityRocketCafeBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    .line 155
    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/ActivityRocketCafeBinding;->mDirtyFlags:J

    .line 156
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    iget-object v4, p0, Lru/rocketbank/r2d2/databinding/ActivityRocketCafeBinding;->mData:Lru/rocketbank/r2d2/data/binding/kitchen/RocketCafeData;

    const-wide/16 v5, 0xd

    and-long v7, v0, v5

    cmp-long v5, v7, v2

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    if-eqz v4, :cond_0

    .line 169
    invoke-virtual {v4}, Lru/rocketbank/r2d2/data/binding/kitchen/RocketCafeData;->getAmount()Landroid/databinding/ObservableField;

    move-result-object v4

    goto :goto_0

    :cond_0
    move-object v4, v6

    :goto_0
    const/4 v5, 0x0

    .line 171
    invoke-virtual {p0, v5, v4}, Lru/rocketbank/r2d2/databinding/ActivityRocketCafeBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v4, :cond_1

    .line 176
    invoke-virtual {v4}, Landroid/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Ljava/lang/String;

    .line 181
    :cond_1
    iget-object v4, p0, Lru/rocketbank/r2d2/databinding/ActivityRocketCafeBinding;->amountAndDescription:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v9, 0x7f1103d7

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v6, v9, v5

    invoke-static {v4, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    :cond_2
    cmp-long v4, v7, v2

    if-eqz v4, :cond_3

    .line 187
    iget-object v4, p0, Lru/rocketbank/r2d2/databinding/ActivityRocketCafeBinding;->amountAndDescription:Landroid/widget/TextView;

    invoke-static {v4, v6}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_3
    const-wide/16 v4, 0x8

    and-long v6, v0, v4

    cmp-long v0, v6, v2

    if-eqz v0, :cond_4

    .line 192
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityRocketCafeBinding;->cancelButton:Lru/rocketbank/core/widgets/RocketTextView;

    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/ActivityRocketCafeBinding;->mCallback52:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityRocketCafeBinding;->transferButton:Lru/rocketbank/core/widgets/RocketButton;

    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/ActivityRocketCafeBinding;->mCallback51:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    return-void

    :catchall_0
    move-exception v0

    .line 156
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getData()Lru/rocketbank/r2d2/data/binding/kitchen/RocketCafeData;
    .locals 1

    .line 129
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityRocketCafeBinding;->mData:Lru/rocketbank/r2d2/data/binding/kitchen/RocketCafeData;

    return-object v0
.end method

.method public getListener()Lru/rocketbank/r2d2/data/binding/kitchen/RocketCafeListener;
    .locals 1

    .line 117
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityRocketCafeBinding;->mListener:Lru/rocketbank/r2d2/data/binding/kitchen/RocketCafeListener;

    return-object v0
.end method

.method public hasPendingBindings()Z
    .locals 5

    .line 84
    monitor-enter p0

    .line 85
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/ActivityRocketCafeBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    .line 86
    monitor-exit p0

    return v0

    .line 88
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

    .line 76
    monitor-enter p0

    const-wide/16 v0, 0x8

    .line 77
    :try_start_0
    iput-wide v0, p0, Lru/rocketbank/r2d2/databinding/ActivityRocketCafeBinding;->mDirtyFlags:J

    .line 78
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/ActivityRocketCafeBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 78
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected onFieldChange(ILjava/lang/Object;I)Z
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 136
    :cond_0
    check-cast p2, Landroid/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/ActivityRocketCafeBinding;->onChangeDataAmount(Landroid/databinding/ObservableField;I)Z

    move-result p1

    return p1
.end method

.method public setData(Lru/rocketbank/r2d2/data/binding/kitchen/RocketCafeData;)V
    .locals 6

    .line 120
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/ActivityRocketCafeBinding;->mData:Lru/rocketbank/r2d2/data/binding/kitchen/RocketCafeData;

    .line 121
    monitor-enter p0

    .line 122
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/ActivityRocketCafeBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x4

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/ActivityRocketCafeBinding;->mDirtyFlags:J

    .line 123
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x18

    .line 124
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/ActivityRocketCafeBinding;->notifyPropertyChanged(I)V

    .line 125
    invoke-super {p0}, Landroid/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 123
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setListener(Lru/rocketbank/r2d2/data/binding/kitchen/RocketCafeListener;)V
    .locals 6

    .line 108
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/ActivityRocketCafeBinding;->mListener:Lru/rocketbank/r2d2/data/binding/kitchen/RocketCafeListener;

    .line 109
    monitor-enter p0

    .line 110
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/ActivityRocketCafeBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x2

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/ActivityRocketCafeBinding;->mDirtyFlags:J

    .line 111
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x37

    .line 112
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/ActivityRocketCafeBinding;->notifyPropertyChanged(I)V

    .line 113
    invoke-super {p0}, Landroid/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 111
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .locals 1

    const/16 v0, 0x37

    if-ne v0, p1, :cond_0

    .line 96
    check-cast p2, Lru/rocketbank/r2d2/data/binding/kitchen/RocketCafeListener;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/ActivityRocketCafeBinding;->setListener(Lru/rocketbank/r2d2/data/binding/kitchen/RocketCafeListener;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x18

    if-ne v0, p1, :cond_1

    .line 99
    check-cast p2, Lru/rocketbank/r2d2/data/binding/kitchen/RocketCafeData;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/ActivityRocketCafeBinding;->setData(Lru/rocketbank/r2d2/data/binding/kitchen/RocketCafeData;)V

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method
