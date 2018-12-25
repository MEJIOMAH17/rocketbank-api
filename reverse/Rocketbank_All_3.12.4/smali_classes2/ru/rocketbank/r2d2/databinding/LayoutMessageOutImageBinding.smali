.class public Lru/rocketbank/r2d2/databinding/LayoutMessageOutImageBinding;
.super Landroid/databinding/ViewDataBinding;
.source "LayoutMessageOutImageBinding.java"

# interfaces
.implements Landroid/databinding/generated/callback/OnClickListener$Listener;


# static fields
.field private static final sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field public final content:Landroid/widget/FrameLayout;

.field public final contentImage:Landroid/widget/ImageView;

.field public final indeterminateProgress:Landroid/widget/ProgressBar;

.field private final mCallback47:Landroid/view/View$OnClickListener;

.field private mDirtyFlags:J

.field private mImageData:Lru/rocketbank/r2d2/root/chat/outgoing/binding/ImageData;

.field private mListener:Lru/rocketbank/r2d2/root/chat/base/ActionListener;

.field private final mboundView0:Landroid/widget/LinearLayout;

.field private final mboundView3:Lru/rocketbank/core/widgets/RocketTextView;

.field public final retry:Lru/rocketbank/core/widgets/RocketTextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 17
    sput-object v0, Lru/rocketbank/r2d2/databinding/LayoutMessageOutImageBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090105

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 18
    sget-object v0, Lru/rocketbank/r2d2/databinding/LayoutMessageOutImageBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0902e2

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x3

    .line 45
    invoke-direct {p0, p1, p2, v0}, Landroid/databinding/ViewDataBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;I)V

    const-wide/16 v1, -0x1

    .line 290
    iput-wide v1, p0, Lru/rocketbank/r2d2/databinding/LayoutMessageOutImageBinding;->mDirtyFlags:J

    .line 46
    sget-object v1, Lru/rocketbank/r2d2/databinding/LayoutMessageOutImageBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v2, Lru/rocketbank/r2d2/databinding/LayoutMessageOutImageBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v3, 0x6

    invoke-static {p1, p2, v3, v1, v2}, Lru/rocketbank/r2d2/databinding/LayoutMessageOutImageBinding;->mapBindings(Landroid/databinding/DataBindingComponent;Landroid/view/View;ILandroid/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x4

    .line 47
    aget-object v1, p1, v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/LayoutMessageOutImageBinding;->content:Landroid/widget/FrameLayout;

    const/4 v1, 0x1

    .line 48
    aget-object v2, p1, v1

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lru/rocketbank/r2d2/databinding/LayoutMessageOutImageBinding;->contentImage:Landroid/widget/ImageView;

    .line 49
    iget-object v2, p0, Lru/rocketbank/r2d2/databinding/LayoutMessageOutImageBinding;->contentImage:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    const/4 v2, 0x2

    .line 50
    aget-object v2, p1, v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lru/rocketbank/r2d2/databinding/LayoutMessageOutImageBinding;->indeterminateProgress:Landroid/widget/ProgressBar;

    .line 51
    iget-object v2, p0, Lru/rocketbank/r2d2/databinding/LayoutMessageOutImageBinding;->indeterminateProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setTag(Ljava/lang/Object;)V

    const/4 v2, 0x0

    .line 52
    aget-object v2, p1, v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lru/rocketbank/r2d2/databinding/LayoutMessageOutImageBinding;->mboundView0:Landroid/widget/LinearLayout;

    .line 53
    iget-object v2, p0, Lru/rocketbank/r2d2/databinding/LayoutMessageOutImageBinding;->mboundView0:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 54
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/LayoutMessageOutImageBinding;->mboundView3:Lru/rocketbank/core/widgets/RocketTextView;

    .line 55
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/LayoutMessageOutImageBinding;->mboundView3:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v0, v3}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x5

    .line 56
    aget-object p1, p1, v0

    check-cast p1, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/LayoutMessageOutImageBinding;->retry:Lru/rocketbank/core/widgets/RocketTextView;

    .line 57
    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/LayoutMessageOutImageBinding;->setRootTag(Landroid/view/View;)V

    .line 59
    new-instance p1, Landroid/databinding/generated/callback/OnClickListener;

    invoke-direct {p1, p0, v1}, Landroid/databinding/generated/callback/OnClickListener;-><init>(Landroid/databinding/generated/callback/OnClickListener$Listener;I)V

    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/LayoutMessageOutImageBinding;->mCallback47:Landroid/view/View$OnClickListener;

    .line 60
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/LayoutMessageOutImageBinding;->invalidateAll()V

    return-void
.end method

.method public static bind(Landroid/view/View;)Lru/rocketbank/r2d2/databinding/LayoutMessageOutImageBinding;
    .locals 1

    .line 310
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/LayoutMessageOutImageBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/LayoutMessageOutImageBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/LayoutMessageOutImageBinding;
    .locals 2

    const-string v0, "layout/layout_message_out_image_0"

    .line 314
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 315
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

    .line 317
    :cond_0
    new-instance v0, Lru/rocketbank/r2d2/databinding/LayoutMessageOutImageBinding;

    invoke-direct {v0, p1, p0}, Lru/rocketbank/r2d2/databinding/LayoutMessageOutImageBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lru/rocketbank/r2d2/databinding/LayoutMessageOutImageBinding;
    .locals 1

    .line 302
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/LayoutMessageOutImageBinding;->inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/LayoutMessageOutImageBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/LayoutMessageOutImageBinding;
    .locals 3

    const v0, 0x7f0c0126

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 306
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-static {p0, p1}, Lru/rocketbank/r2d2/databinding/LayoutMessageOutImageBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/LayoutMessageOutImageBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lru/rocketbank/r2d2/databinding/LayoutMessageOutImageBinding;
    .locals 1

    .line 294
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lru/rocketbank/r2d2/databinding/LayoutMessageOutImageBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/LayoutMessageOutImageBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/LayoutMessageOutImageBinding;
    .locals 1

    const v0, 0x7f0c0126

    .line 298
    invoke-static {p0, v0, p1, p2, p3}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Landroid/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lru/rocketbank/r2d2/databinding/LayoutMessageOutImageBinding;

    return-object p0
.end method

.method private onChangeImageDataProgressVisible(Landroid/databinding/ObservableBoolean;I)Z
    .locals 4

    if-nez p2, :cond_0

    .line 135
    monitor-enter p0

    .line 136
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/LayoutMessageOutImageBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x1

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/LayoutMessageOutImageBinding;->mDirtyFlags:J

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

.method private onChangeImageDataStatusText(Landroid/databinding/ObservableField;I)Z
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

    .line 153
    monitor-enter p0

    .line 154
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/LayoutMessageOutImageBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x4

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/LayoutMessageOutImageBinding;->mDirtyFlags:J

    .line 155
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

.method private onChangeImageDataStatusVisible(Landroid/databinding/ObservableBoolean;I)Z
    .locals 4

    if-nez p2, :cond_0

    .line 144
    monitor-enter p0

    .line 145
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/LayoutMessageOutImageBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x2

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/LayoutMessageOutImageBinding;->mDirtyFlags:J

    .line 146
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

    .line 278
    iget-object p1, p0, Lru/rocketbank/r2d2/databinding/LayoutMessageOutImageBinding;->mListener:Lru/rocketbank/r2d2/root/chat/base/ActionListener;

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 286
    invoke-interface {p1}, Lru/rocketbank/r2d2/root/chat/base/ActionListener;->onClick()V

    :cond_1
    return-void
.end method

.method protected executeBindings()V
    .locals 22

    move-object/from16 v1, p0

    .line 164
    monitor-enter p0

    .line 165
    :try_start_0
    iget-wide v2, v1, Lru/rocketbank/r2d2/databinding/LayoutMessageOutImageBinding;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    .line 166
    iput-wide v4, v1, Lru/rocketbank/r2d2/databinding/LayoutMessageOutImageBinding;->mDirtyFlags:J

    .line 167
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    iget-object v6, v1, Lru/rocketbank/r2d2/databinding/LayoutMessageOutImageBinding;->mImageData:Lru/rocketbank/r2d2/root/chat/outgoing/binding/ImageData;

    const-wide/16 v7, 0x37

    and-long v9, v2, v7

    cmp-long v7, v9, v4

    const-wide/16 v8, 0x34

    const-wide/16 v10, 0x32

    const-wide/16 v12, 0x31

    const/4 v15, 0x0

    if-eqz v7, :cond_e

    and-long v16, v2, v12

    cmp-long v7, v16, v4

    const/16 v18, 0x8

    if-eqz v7, :cond_5

    if-eqz v6, :cond_0

    .line 186
    invoke-virtual {v6}, Lru/rocketbank/r2d2/root/chat/outgoing/binding/ImageData;->getProgressVisible()Landroid/databinding/ObservableBoolean;

    move-result-object v7

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    .line 188
    :goto_0
    invoke-virtual {v1, v15, v7}, Lru/rocketbank/r2d2/databinding/LayoutMessageOutImageBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v7, :cond_1

    .line 193
    invoke-virtual {v7}, Landroid/databinding/ObservableBoolean;->get()Z

    move-result v7

    goto :goto_1

    :cond_1
    move v7, v15

    :goto_1
    cmp-long v19, v16, v4

    if-eqz v19, :cond_3

    if-eqz v7, :cond_2

    const-wide/16 v16, 0x80

    or-long v19, v2, v16

    :goto_2
    move-wide/from16 v2, v19

    goto :goto_3

    :cond_2
    const-wide/16 v16, 0x40

    or-long v19, v2, v16

    goto :goto_2

    :cond_3
    :goto_3
    if-eqz v7, :cond_4

    goto :goto_4

    :cond_4
    move/from16 v7, v18

    goto :goto_5

    :cond_5
    :goto_4
    move v7, v15

    :goto_5
    and-long v16, v2, v10

    cmp-long v19, v16, v4

    if-eqz v19, :cond_b

    if-eqz v6, :cond_6

    .line 212
    invoke-virtual {v6}, Lru/rocketbank/r2d2/root/chat/outgoing/binding/ImageData;->getStatusVisible()Landroid/databinding/ObservableBoolean;

    move-result-object v19

    move-object/from16 v14, v19

    goto :goto_6

    :cond_6
    const/4 v14, 0x0

    :goto_6
    const/4 v15, 0x1

    .line 214
    invoke-virtual {v1, v15, v14}, Lru/rocketbank/r2d2/databinding/LayoutMessageOutImageBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v14, :cond_7

    .line 219
    invoke-virtual {v14}, Landroid/databinding/ObservableBoolean;->get()Z

    move-result v15

    goto :goto_7

    :cond_7
    const/4 v15, 0x0

    :goto_7
    cmp-long v14, v16, v4

    if-eqz v14, :cond_9

    if-eqz v15, :cond_8

    const-wide/16 v16, 0x200

    or-long v19, v2, v16

    goto :goto_8

    :cond_8
    const-wide/16 v16, 0x100

    or-long v19, v2, v16

    goto :goto_8

    :cond_9
    move-wide/from16 v19, v2

    :goto_8
    if-eqz v15, :cond_a

    const/16 v18, 0x0

    :cond_a
    move/from16 v15, v18

    move-wide/from16 v2, v19

    goto :goto_9

    :cond_b
    const/4 v15, 0x0

    :goto_9
    and-long v16, v2, v8

    cmp-long v14, v16, v4

    if-eqz v14, :cond_d

    if-eqz v6, :cond_c

    .line 238
    invoke-virtual {v6}, Lru/rocketbank/r2d2/root/chat/outgoing/binding/ImageData;->getStatusText()Landroid/databinding/ObservableField;

    move-result-object v14

    goto :goto_a

    :cond_c
    const/4 v14, 0x0

    :goto_a
    const/4 v6, 0x2

    .line 240
    invoke-virtual {v1, v6, v14}, Lru/rocketbank/r2d2/databinding/LayoutMessageOutImageBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v14, :cond_d

    .line 245
    invoke-virtual {v14}, Landroid/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v6

    move-object v14, v6

    check-cast v14, Ljava/lang/String;

    goto :goto_b

    :cond_d
    const/4 v14, 0x0

    goto :goto_b

    :cond_e
    const/4 v7, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_b
    const-wide/16 v16, 0x20

    and-long v18, v2, v16

    cmp-long v6, v18, v4

    if-eqz v6, :cond_f

    .line 253
    iget-object v6, v1, Lru/rocketbank/r2d2/databinding/LayoutMessageOutImageBinding;->contentImage:Landroid/widget/ImageView;

    iget-object v10, v1, Lru/rocketbank/r2d2/databinding/LayoutMessageOutImageBinding;->mCallback47:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_f
    and-long v10, v2, v12

    cmp-long v6, v10, v4

    if-eqz v6, :cond_10

    .line 258
    iget-object v6, v1, Lru/rocketbank/r2d2/databinding/LayoutMessageOutImageBinding;->indeterminateProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v6, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_10
    and-long v6, v2, v8

    cmp-long v8, v6, v4

    if-eqz v8, :cond_11

    .line 263
    iget-object v6, v1, Lru/rocketbank/r2d2/databinding/LayoutMessageOutImageBinding;->mboundView3:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-static {v6, v14}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_11
    const-wide/16 v6, 0x32

    and-long v8, v2, v6

    cmp-long v2, v8, v4

    if-eqz v2, :cond_12

    .line 268
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/LayoutMessageOutImageBinding;->mboundView3:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v2, v15}, Lru/rocketbank/core/widgets/RocketTextView;->setVisibility(I)V

    :cond_12
    return-void

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 167
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public getImageData()Lru/rocketbank/r2d2/root/chat/outgoing/binding/ImageData;
    .locals 1

    .line 118
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/LayoutMessageOutImageBinding;->mImageData:Lru/rocketbank/r2d2/root/chat/outgoing/binding/ImageData;

    return-object v0
.end method

.method public getListener()Lru/rocketbank/r2d2/root/chat/base/ActionListener;
    .locals 1

    .line 106
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/LayoutMessageOutImageBinding;->mListener:Lru/rocketbank/r2d2/root/chat/base/ActionListener;

    return-object v0
.end method

.method public hasPendingBindings()Z
    .locals 5

    .line 73
    monitor-enter p0

    .line 74
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/LayoutMessageOutImageBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    .line 75
    monitor-exit p0

    return v0

    .line 77
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

    .line 65
    monitor-enter p0

    const-wide/16 v0, 0x20

    .line 66
    :try_start_0
    iput-wide v0, p0, Lru/rocketbank/r2d2/databinding/LayoutMessageOutImageBinding;->mDirtyFlags:J

    .line 67
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/LayoutMessageOutImageBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 67
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

    .line 129
    :pswitch_0
    check-cast p2, Landroid/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/LayoutMessageOutImageBinding;->onChangeImageDataStatusText(Landroid/databinding/ObservableField;I)Z

    move-result p1

    return p1

    .line 127
    :pswitch_1
    check-cast p2, Landroid/databinding/ObservableBoolean;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/LayoutMessageOutImageBinding;->onChangeImageDataStatusVisible(Landroid/databinding/ObservableBoolean;I)Z

    move-result p1

    return p1

    .line 125
    :pswitch_2
    check-cast p2, Landroid/databinding/ObservableBoolean;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/LayoutMessageOutImageBinding;->onChangeImageDataProgressVisible(Landroid/databinding/ObservableBoolean;I)Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setImageData(Lru/rocketbank/r2d2/root/chat/outgoing/binding/ImageData;)V
    .locals 6

    .line 109
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/LayoutMessageOutImageBinding;->mImageData:Lru/rocketbank/r2d2/root/chat/outgoing/binding/ImageData;

    .line 110
    monitor-enter p0

    .line 111
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/LayoutMessageOutImageBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x10

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/LayoutMessageOutImageBinding;->mDirtyFlags:J

    .line 112
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x2c

    .line 113
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/LayoutMessageOutImageBinding;->notifyPropertyChanged(I)V

    .line 114
    invoke-super {p0}, Landroid/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 112
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setListener(Lru/rocketbank/r2d2/root/chat/base/ActionListener;)V
    .locals 6

    .line 97
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/LayoutMessageOutImageBinding;->mListener:Lru/rocketbank/r2d2/root/chat/base/ActionListener;

    .line 98
    monitor-enter p0

    .line 99
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/LayoutMessageOutImageBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x8

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/LayoutMessageOutImageBinding;->mDirtyFlags:J

    .line 100
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x37

    .line 101
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/LayoutMessageOutImageBinding;->notifyPropertyChanged(I)V

    .line 102
    invoke-super {p0}, Landroid/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 100
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

    .line 85
    check-cast p2, Lru/rocketbank/r2d2/root/chat/base/ActionListener;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/LayoutMessageOutImageBinding;->setListener(Lru/rocketbank/r2d2/root/chat/base/ActionListener;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x2c

    if-ne v0, p1, :cond_1

    .line 88
    check-cast p2, Lru/rocketbank/r2d2/root/chat/outgoing/binding/ImageData;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/LayoutMessageOutImageBinding;->setImageData(Lru/rocketbank/r2d2/root/chat/outgoing/binding/ImageData;)V

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method
