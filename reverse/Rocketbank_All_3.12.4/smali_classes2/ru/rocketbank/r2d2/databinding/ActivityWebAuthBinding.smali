.class public Lru/rocketbank/r2d2/databinding/ActivityWebAuthBinding;
.super Landroid/databinding/ViewDataBinding;
.source "ActivityWebAuthBinding.java"

# interfaces
.implements Landroid/databinding/generated/callback/OnClickListener$Listener;


# static fields
.field private static final sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field public final background:Landroid/widget/ImageView;

.field public final cancelButton:Lru/rocketbank/core/widgets/RocketTextView;

.field public final confirmButton:Lru/rocketbank/core/widgets/RocketButton;

.field private final mCallback32:Landroid/view/View$OnClickListener;

.field private final mCallback33:Landroid/view/View$OnClickListener;

.field private final mCallback34:Landroid/view/View$OnClickListener;

.field private mData:Lru/rocketbank/r2d2/data/binding/webauth/WebAuthData;

.field private mDirtyFlags:J

.field private mListener:Lru/rocketbank/r2d2/data/binding/webauth/Sec3dAuthListener;

.field private final mboundView0:Landroid/support/constraint/ConstraintLayout;

.field public final merchantIcon:Lde/hdodenhof/circleimageview/CircleImageView;

.field public final merchantText:Lru/rocketbank/core/widgets/RocketTextView;

.field public final notMeButton:Lru/rocketbank/core/widgets/RocketTextView;

.field public final ttl:Lru/rocketbank/core/widgets/RocketTextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 17
    sput-object v0, Lru/rocketbank/r2d2/databinding/ActivityWebAuthBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090069

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 18
    sget-object v0, Lru/rocketbank/r2d2/databinding/ActivityWebAuthBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f09025c

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 5

    const/4 v0, 0x3

    .line 53
    invoke-direct {p0, p1, p2, v0}, Landroid/databinding/ViewDataBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;I)V

    const-wide/16 v1, -0x1

    .line 320
    iput-wide v1, p0, Lru/rocketbank/r2d2/databinding/ActivityWebAuthBinding;->mDirtyFlags:J

    .line 54
    sget-object v1, Lru/rocketbank/r2d2/databinding/ActivityWebAuthBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v2, Lru/rocketbank/r2d2/databinding/ActivityWebAuthBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/16 v3, 0x8

    invoke-static {p1, p2, v3, v1, v2}, Lru/rocketbank/r2d2/databinding/ActivityWebAuthBinding;->mapBindings(Landroid/databinding/DataBindingComponent;Landroid/view/View;ILandroid/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x6

    .line 55
    aget-object v1, p1, v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/ActivityWebAuthBinding;->background:Landroid/widget/ImageView;

    const/4 v1, 0x2

    .line 56
    aget-object v2, p1, v1

    check-cast v2, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v2, p0, Lru/rocketbank/r2d2/databinding/ActivityWebAuthBinding;->cancelButton:Lru/rocketbank/core/widgets/RocketTextView;

    .line 57
    iget-object v2, p0, Lru/rocketbank/r2d2/databinding/ActivityWebAuthBinding;->cancelButton:Lru/rocketbank/core/widgets/RocketTextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    .line 58
    aget-object v2, p1, v0

    check-cast v2, Lru/rocketbank/core/widgets/RocketButton;

    iput-object v2, p0, Lru/rocketbank/r2d2/databinding/ActivityWebAuthBinding;->confirmButton:Lru/rocketbank/core/widgets/RocketButton;

    .line 59
    iget-object v2, p0, Lru/rocketbank/r2d2/databinding/ActivityWebAuthBinding;->confirmButton:Lru/rocketbank/core/widgets/RocketButton;

    invoke-virtual {v2, v3}, Lru/rocketbank/core/widgets/RocketButton;->setTag(Ljava/lang/Object;)V

    const/4 v2, 0x0

    .line 60
    aget-object v2, p1, v2

    check-cast v2, Landroid/support/constraint/ConstraintLayout;

    iput-object v2, p0, Lru/rocketbank/r2d2/databinding/ActivityWebAuthBinding;->mboundView0:Landroid/support/constraint/ConstraintLayout;

    .line 61
    iget-object v2, p0, Lru/rocketbank/r2d2/databinding/ActivityWebAuthBinding;->mboundView0:Landroid/support/constraint/ConstraintLayout;

    invoke-virtual {v2, v3}, Landroid/support/constraint/ConstraintLayout;->setTag(Ljava/lang/Object;)V

    const/4 v2, 0x7

    .line 62
    aget-object v2, p1, v2

    check-cast v2, Lde/hdodenhof/circleimageview/CircleImageView;

    iput-object v2, p0, Lru/rocketbank/r2d2/databinding/ActivityWebAuthBinding;->merchantIcon:Lde/hdodenhof/circleimageview/CircleImageView;

    const/4 v2, 0x5

    .line 63
    aget-object v2, p1, v2

    check-cast v2, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v2, p0, Lru/rocketbank/r2d2/databinding/ActivityWebAuthBinding;->merchantText:Lru/rocketbank/core/widgets/RocketTextView;

    .line 64
    iget-object v2, p0, Lru/rocketbank/r2d2/databinding/ActivityWebAuthBinding;->merchantText:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v2, v3}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    const/4 v2, 0x1

    .line 65
    aget-object v4, p1, v2

    check-cast v4, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v4, p0, Lru/rocketbank/r2d2/databinding/ActivityWebAuthBinding;->notMeButton:Lru/rocketbank/core/widgets/RocketTextView;

    .line 66
    iget-object v4, p0, Lru/rocketbank/r2d2/databinding/ActivityWebAuthBinding;->notMeButton:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v4, v3}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    const/4 v4, 0x4

    .line 67
    aget-object p1, p1, v4

    check-cast p1, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/ActivityWebAuthBinding;->ttl:Lru/rocketbank/core/widgets/RocketTextView;

    .line 68
    iget-object p1, p0, Lru/rocketbank/r2d2/databinding/ActivityWebAuthBinding;->ttl:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {p1, v3}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    .line 69
    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/ActivityWebAuthBinding;->setRootTag(Landroid/view/View;)V

    .line 71
    new-instance p1, Landroid/databinding/generated/callback/OnClickListener;

    invoke-direct {p1, p0, v2}, Landroid/databinding/generated/callback/OnClickListener;-><init>(Landroid/databinding/generated/callback/OnClickListener$Listener;I)V

    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/ActivityWebAuthBinding;->mCallback32:Landroid/view/View$OnClickListener;

    .line 72
    new-instance p1, Landroid/databinding/generated/callback/OnClickListener;

    invoke-direct {p1, p0, v1}, Landroid/databinding/generated/callback/OnClickListener;-><init>(Landroid/databinding/generated/callback/OnClickListener$Listener;I)V

    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/ActivityWebAuthBinding;->mCallback33:Landroid/view/View$OnClickListener;

    .line 73
    new-instance p1, Landroid/databinding/generated/callback/OnClickListener;

    invoke-direct {p1, p0, v0}, Landroid/databinding/generated/callback/OnClickListener;-><init>(Landroid/databinding/generated/callback/OnClickListener$Listener;I)V

    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/ActivityWebAuthBinding;->mCallback34:Landroid/view/View$OnClickListener;

    .line 74
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/ActivityWebAuthBinding;->invalidateAll()V

    return-void
.end method

.method public static bind(Landroid/view/View;)Lru/rocketbank/r2d2/databinding/ActivityWebAuthBinding;
    .locals 1

    .line 340
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/ActivityWebAuthBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivityWebAuthBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivityWebAuthBinding;
    .locals 2

    const-string v0, "layout/activity_web_auth_0"

    .line 344
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 345
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

    .line 347
    :cond_0
    new-instance v0, Lru/rocketbank/r2d2/databinding/ActivityWebAuthBinding;

    invoke-direct {v0, p1, p0}, Lru/rocketbank/r2d2/databinding/ActivityWebAuthBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lru/rocketbank/r2d2/databinding/ActivityWebAuthBinding;
    .locals 1

    .line 332
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/ActivityWebAuthBinding;->inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivityWebAuthBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivityWebAuthBinding;
    .locals 3

    const v0, 0x7f0c0069

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 336
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-static {p0, p1}, Lru/rocketbank/r2d2/databinding/ActivityWebAuthBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivityWebAuthBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lru/rocketbank/r2d2/databinding/ActivityWebAuthBinding;
    .locals 1

    .line 324
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lru/rocketbank/r2d2/databinding/ActivityWebAuthBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivityWebAuthBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivityWebAuthBinding;
    .locals 1

    const v0, 0x7f0c0069

    .line 328
    invoke-static {p0, v0, p1, p2, p3}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Landroid/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lru/rocketbank/r2d2/databinding/ActivityWebAuthBinding;

    return-object p0
.end method

.method private onChangeDataButtonsEnabled(Landroid/databinding/ObservableBoolean;I)Z
    .locals 4

    if-nez p2, :cond_0

    .line 158
    monitor-enter p0

    .line 159
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/ActivityWebAuthBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x2

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/ActivityWebAuthBinding;->mDirtyFlags:J

    .line 160
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

.method private onChangeDataText(Landroid/databinding/ObservableField;I)Z
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

    .line 167
    monitor-enter p0

    .line 168
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/ActivityWebAuthBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x4

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/ActivityWebAuthBinding;->mDirtyFlags:J

    .line 169
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

.method private onChangeDataTtl(Landroid/databinding/ObservableField;I)Z
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

    .line 149
    monitor-enter p0

    .line 150
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/ActivityWebAuthBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x1

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/ActivityWebAuthBinding;->mDirtyFlags:J

    .line 151
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

    .line 305
    :pswitch_0
    iget-object p1, p0, Lru/rocketbank/r2d2/databinding/ActivityWebAuthBinding;->mListener:Lru/rocketbank/r2d2/data/binding/webauth/Sec3dAuthListener;

    if-eqz p1, :cond_0

    move p2, v0

    :cond_0
    if-eqz p2, :cond_3

    .line 313
    invoke-interface {p1}, Lru/rocketbank/r2d2/data/binding/webauth/Sec3dAuthListener;->payClicked()V

    goto :goto_0

    .line 288
    :pswitch_1
    iget-object p1, p0, Lru/rocketbank/r2d2/databinding/ActivityWebAuthBinding;->mListener:Lru/rocketbank/r2d2/data/binding/webauth/Sec3dAuthListener;

    if-eqz p1, :cond_1

    move p2, v0

    :cond_1
    if-eqz p2, :cond_3

    .line 296
    invoke-interface {p1}, Lru/rocketbank/r2d2/data/binding/webauth/Sec3dAuthListener;->cancelClicked()V

    return-void

    .line 271
    :pswitch_2
    iget-object p1, p0, Lru/rocketbank/r2d2/databinding/ActivityWebAuthBinding;->mListener:Lru/rocketbank/r2d2/data/binding/webauth/Sec3dAuthListener;

    if-eqz p1, :cond_2

    move p2, v0

    :cond_2
    if-eqz p2, :cond_3

    .line 279
    invoke-interface {p1}, Lru/rocketbank/r2d2/data/binding/webauth/Sec3dAuthListener;->notMeClicked()V

    return-void

    :cond_3
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected executeBindings()V
    .locals 21

    move-object/from16 v1, p0

    .line 178
    monitor-enter p0

    .line 179
    :try_start_0
    iget-wide v2, v1, Lru/rocketbank/r2d2/databinding/ActivityWebAuthBinding;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    .line 180
    iput-wide v4, v1, Lru/rocketbank/r2d2/databinding/ActivityWebAuthBinding;->mDirtyFlags:J

    .line 181
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    iget-object v6, v1, Lru/rocketbank/r2d2/databinding/ActivityWebAuthBinding;->mData:Lru/rocketbank/r2d2/data/binding/webauth/WebAuthData;

    const-wide/16 v7, 0x37

    and-long v9, v2, v7

    cmp-long v7, v9, v4

    const-wide/16 v8, 0x34

    const-wide/16 v10, 0x32

    const-wide/16 v12, 0x31

    const/4 v14, 0x0

    if-eqz v7, :cond_5

    and-long v16, v2, v12

    cmp-long v7, v16, v4

    if-eqz v7, :cond_1

    if-eqz v6, :cond_0

    .line 198
    invoke-virtual {v6}, Lru/rocketbank/r2d2/data/binding/webauth/WebAuthData;->getTtl()Landroid/databinding/ObservableField;

    move-result-object v7

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    .line 200
    :goto_0
    invoke-virtual {v1, v14, v7}, Lru/rocketbank/r2d2/databinding/ActivityWebAuthBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v7, :cond_1

    .line 205
    invoke-virtual {v7}, Landroid/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    :goto_1
    and-long v16, v2, v10

    cmp-long v18, v16, v4

    if-eqz v18, :cond_3

    if-eqz v6, :cond_2

    .line 212
    invoke-virtual {v6}, Lru/rocketbank/r2d2/data/binding/webauth/WebAuthData;->getButtonsEnabled()Landroid/databinding/ObservableBoolean;

    move-result-object v16

    move-object/from16 v14, v16

    goto :goto_2

    :cond_2
    const/4 v14, 0x0

    :goto_2
    const/4 v15, 0x1

    .line 214
    invoke-virtual {v1, v15, v14}, Lru/rocketbank/r2d2/databinding/ActivityWebAuthBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v14, :cond_3

    .line 219
    invoke-virtual {v14}, Landroid/databinding/ObservableBoolean;->get()Z

    move-result v14

    goto :goto_3

    :cond_3
    const/4 v14, 0x0

    :goto_3
    and-long v15, v2, v8

    cmp-long v17, v15, v4

    if-eqz v17, :cond_6

    if-eqz v6, :cond_4

    .line 226
    invoke-virtual {v6}, Lru/rocketbank/r2d2/data/binding/webauth/WebAuthData;->getText()Landroid/databinding/ObservableField;

    move-result-object v15

    goto :goto_4

    :cond_4
    const/4 v15, 0x0

    :goto_4
    const/4 v6, 0x2

    .line 228
    invoke-virtual {v1, v6, v15}, Lru/rocketbank/r2d2/databinding/ActivityWebAuthBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v15, :cond_6

    .line 233
    invoke-virtual {v15}, Landroid/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v6

    move-object v15, v6

    check-cast v15, Ljava/lang/String;

    goto :goto_5

    :cond_5
    const/4 v7, 0x0

    const/4 v14, 0x0

    :cond_6
    const/4 v15, 0x0

    :goto_5
    const-wide/16 v16, 0x20

    and-long v18, v2, v16

    cmp-long v6, v18, v4

    if-eqz v6, :cond_7

    .line 241
    iget-object v6, v1, Lru/rocketbank/r2d2/databinding/ActivityWebAuthBinding;->cancelButton:Lru/rocketbank/core/widgets/RocketTextView;

    iget-object v12, v1, Lru/rocketbank/r2d2/databinding/ActivityWebAuthBinding;->mCallback33:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v12}, Lru/rocketbank/core/widgets/RocketTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 242
    iget-object v6, v1, Lru/rocketbank/r2d2/databinding/ActivityWebAuthBinding;->confirmButton:Lru/rocketbank/core/widgets/RocketButton;

    iget-object v12, v1, Lru/rocketbank/r2d2/databinding/ActivityWebAuthBinding;->mCallback34:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v12}, Lru/rocketbank/core/widgets/RocketButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 243
    iget-object v6, v1, Lru/rocketbank/r2d2/databinding/ActivityWebAuthBinding;->notMeButton:Lru/rocketbank/core/widgets/RocketTextView;

    iget-object v12, v1, Lru/rocketbank/r2d2/databinding/ActivityWebAuthBinding;->mCallback32:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v12}, Lru/rocketbank/core/widgets/RocketTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_7
    and-long v12, v2, v10

    cmp-long v6, v12, v4

    if-eqz v6, :cond_8

    .line 248
    iget-object v6, v1, Lru/rocketbank/r2d2/databinding/ActivityWebAuthBinding;->cancelButton:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v6, v14}, Lru/rocketbank/core/widgets/RocketTextView;->setEnabled(Z)V

    .line 249
    iget-object v6, v1, Lru/rocketbank/r2d2/databinding/ActivityWebAuthBinding;->confirmButton:Lru/rocketbank/core/widgets/RocketButton;

    invoke-virtual {v6, v14}, Lru/rocketbank/core/widgets/RocketButton;->setEnabled(Z)V

    :cond_8
    and-long v10, v2, v8

    cmp-long v6, v10, v4

    if-eqz v6, :cond_9

    .line 254
    iget-object v6, v1, Lru/rocketbank/r2d2/databinding/ActivityWebAuthBinding;->merchantText:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-static {v6, v15}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_9
    const-wide/16 v8, 0x31

    and-long v10, v2, v8

    cmp-long v2, v10, v4

    if-eqz v2, :cond_a

    .line 259
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/ActivityWebAuthBinding;->ttl:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-static {v2, v7}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_a
    return-void

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 181
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public getData()Lru/rocketbank/r2d2/data/binding/webauth/WebAuthData;
    .locals 1

    .line 132
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityWebAuthBinding;->mData:Lru/rocketbank/r2d2/data/binding/webauth/WebAuthData;

    return-object v0
.end method

.method public getListener()Lru/rocketbank/r2d2/data/binding/webauth/Sec3dAuthListener;
    .locals 1

    .line 120
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityWebAuthBinding;->mListener:Lru/rocketbank/r2d2/data/binding/webauth/Sec3dAuthListener;

    return-object v0
.end method

.method public hasPendingBindings()Z
    .locals 5

    .line 87
    monitor-enter p0

    .line 88
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/ActivityWebAuthBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    .line 89
    monitor-exit p0

    return v0

    .line 91
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

    .line 79
    monitor-enter p0

    const-wide/16 v0, 0x20

    .line 80
    :try_start_0
    iput-wide v0, p0, Lru/rocketbank/r2d2/databinding/ActivityWebAuthBinding;->mDirtyFlags:J

    .line 81
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/ActivityWebAuthBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 81
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

    .line 143
    :pswitch_0
    check-cast p2, Landroid/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/ActivityWebAuthBinding;->onChangeDataText(Landroid/databinding/ObservableField;I)Z

    move-result p1

    return p1

    .line 141
    :pswitch_1
    check-cast p2, Landroid/databinding/ObservableBoolean;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/ActivityWebAuthBinding;->onChangeDataButtonsEnabled(Landroid/databinding/ObservableBoolean;I)Z

    move-result p1

    return p1

    .line 139
    :pswitch_2
    check-cast p2, Landroid/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/ActivityWebAuthBinding;->onChangeDataTtl(Landroid/databinding/ObservableField;I)Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setData(Lru/rocketbank/r2d2/data/binding/webauth/WebAuthData;)V
    .locals 6

    .line 123
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/ActivityWebAuthBinding;->mData:Lru/rocketbank/r2d2/data/binding/webauth/WebAuthData;

    .line 124
    monitor-enter p0

    .line 125
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/ActivityWebAuthBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x10

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/ActivityWebAuthBinding;->mDirtyFlags:J

    .line 126
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x18

    .line 127
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/ActivityWebAuthBinding;->notifyPropertyChanged(I)V

    .line 128
    invoke-super {p0}, Landroid/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 126
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setListener(Lru/rocketbank/r2d2/data/binding/webauth/Sec3dAuthListener;)V
    .locals 6

    .line 111
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/ActivityWebAuthBinding;->mListener:Lru/rocketbank/r2d2/data/binding/webauth/Sec3dAuthListener;

    .line 112
    monitor-enter p0

    .line 113
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/ActivityWebAuthBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x8

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/ActivityWebAuthBinding;->mDirtyFlags:J

    .line 114
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x37

    .line 115
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/ActivityWebAuthBinding;->notifyPropertyChanged(I)V

    .line 116
    invoke-super {p0}, Landroid/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 114
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

    .line 99
    check-cast p2, Lru/rocketbank/r2d2/data/binding/webauth/Sec3dAuthListener;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/ActivityWebAuthBinding;->setListener(Lru/rocketbank/r2d2/data/binding/webauth/Sec3dAuthListener;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x18

    if-ne v0, p1, :cond_1

    .line 102
    check-cast p2, Lru/rocketbank/r2d2/data/binding/webauth/WebAuthData;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/ActivityWebAuthBinding;->setData(Lru/rocketbank/r2d2/data/binding/webauth/WebAuthData;)V

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method
