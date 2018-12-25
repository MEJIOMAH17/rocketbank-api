.class public final Lru/rocketbank/core/databinding/WidgetAddressViewBinding;
.super Landroid/databinding/ViewDataBinding;
.source "WidgetAddressViewBinding.java"

# interfaces
.implements Landroid/databinding/generated/callback/OnClickListener$Listener;


# static fields
.field private static final sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field public final addresText:Lru/rocketbank/core/widgets/RocketEditText;

.field public final back:Landroid/widget/ImageView;

.field public final backLayout:Lru/rocketbank/core/widgets/SquareLayout;

.field public final errorDescription:Lru/rocketbank/core/widgets/RocketTextView;

.field private final mCallback30:Landroid/view/View$OnClickListener;

.field private final mCallback31:Landroid/view/View$OnClickListener;

.field private mData:Lru/rocketbank/core/data/binding/RocketAddressViewData;

.field private mDirtyFlags:J

.field private mListener:Lru/rocketbank/core/data/binding/ButtonAddressListener;

.field private final mboundView0:Landroid/widget/LinearLayout;

.field private final mboundView6:Landroid/support/v7/widget/CardView;

.field public final next:Landroid/widget/ImageView;

.field public final nextLayout:Lru/rocketbank/core/widgets/SquareLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 17
    sput-object v0, Lru/rocketbank/core/databinding/WidgetAddressViewBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090168

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 4

    const/16 v0, 0x8

    .line 50
    invoke-direct {p0, p1, p2, v0}, Landroid/databinding/ViewDataBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;I)V

    const-wide/16 v1, -0x1

    .line 511
    iput-wide v1, p0, Lru/rocketbank/core/databinding/WidgetAddressViewBinding;->mDirtyFlags:J

    .line 51
    sget-object v1, Lru/rocketbank/core/databinding/WidgetAddressViewBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    invoke-static {p1, p2, v0, v2, v1}, Lru/rocketbank/core/databinding/WidgetAddressViewBinding;->mapBindings(Landroid/databinding/DataBindingComponent;Landroid/view/View;ILandroid/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x3

    .line 52
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketEditText;

    iput-object v0, p0, Lru/rocketbank/core/databinding/WidgetAddressViewBinding;->addresText:Lru/rocketbank/core/widgets/RocketEditText;

    .line 53
    iget-object v0, p0, Lru/rocketbank/core/databinding/WidgetAddressViewBinding;->addresText:Lru/rocketbank/core/widgets/RocketEditText;

    invoke-virtual {v0, v2}, Lru/rocketbank/core/widgets/RocketEditText;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x2

    .line 54
    aget-object v1, p1, v0

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lru/rocketbank/core/databinding/WidgetAddressViewBinding;->back:Landroid/widget/ImageView;

    .line 55
    iget-object v1, p0, Lru/rocketbank/core/databinding/WidgetAddressViewBinding;->back:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    const/4 v1, 0x1

    .line 56
    aget-object v3, p1, v1

    check-cast v3, Lru/rocketbank/core/widgets/SquareLayout;

    iput-object v3, p0, Lru/rocketbank/core/databinding/WidgetAddressViewBinding;->backLayout:Lru/rocketbank/core/widgets/SquareLayout;

    .line 57
    iget-object v3, p0, Lru/rocketbank/core/databinding/WidgetAddressViewBinding;->backLayout:Lru/rocketbank/core/widgets/SquareLayout;

    invoke-virtual {v3, v2}, Lru/rocketbank/core/widgets/SquareLayout;->setTag(Ljava/lang/Object;)V

    const/4 v3, 0x7

    .line 58
    aget-object v3, p1, v3

    check-cast v3, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v3, p0, Lru/rocketbank/core/databinding/WidgetAddressViewBinding;->errorDescription:Lru/rocketbank/core/widgets/RocketTextView;

    const/4 v3, 0x0

    .line 59
    aget-object v3, p1, v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lru/rocketbank/core/databinding/WidgetAddressViewBinding;->mboundView0:Landroid/widget/LinearLayout;

    .line 60
    iget-object v3, p0, Lru/rocketbank/core/databinding/WidgetAddressViewBinding;->mboundView0:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    const/4 v3, 0x6

    .line 61
    aget-object v3, p1, v3

    check-cast v3, Landroid/support/v7/widget/CardView;

    iput-object v3, p0, Lru/rocketbank/core/databinding/WidgetAddressViewBinding;->mboundView6:Landroid/support/v7/widget/CardView;

    .line 62
    iget-object v3, p0, Lru/rocketbank/core/databinding/WidgetAddressViewBinding;->mboundView6:Landroid/support/v7/widget/CardView;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/CardView;->setTag(Ljava/lang/Object;)V

    const/4 v3, 0x5

    .line 63
    aget-object v3, p1, v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lru/rocketbank/core/databinding/WidgetAddressViewBinding;->next:Landroid/widget/ImageView;

    .line 64
    iget-object v3, p0, Lru/rocketbank/core/databinding/WidgetAddressViewBinding;->next:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    const/4 v3, 0x4

    .line 65
    aget-object p1, p1, v3

    check-cast p1, Lru/rocketbank/core/widgets/SquareLayout;

    iput-object p1, p0, Lru/rocketbank/core/databinding/WidgetAddressViewBinding;->nextLayout:Lru/rocketbank/core/widgets/SquareLayout;

    .line 66
    iget-object p1, p0, Lru/rocketbank/core/databinding/WidgetAddressViewBinding;->nextLayout:Lru/rocketbank/core/widgets/SquareLayout;

    invoke-virtual {p1, v2}, Lru/rocketbank/core/widgets/SquareLayout;->setTag(Ljava/lang/Object;)V

    .line 67
    invoke-virtual {p0, p2}, Lru/rocketbank/core/databinding/WidgetAddressViewBinding;->setRootTag(Landroid/view/View;)V

    .line 69
    new-instance p1, Landroid/databinding/generated/callback/OnClickListener;

    invoke-direct {p1, p0, v1}, Landroid/databinding/generated/callback/OnClickListener;-><init>(Landroid/databinding/generated/callback/OnClickListener$Listener;I)V

    iput-object p1, p0, Lru/rocketbank/core/databinding/WidgetAddressViewBinding;->mCallback30:Landroid/view/View$OnClickListener;

    .line 70
    new-instance p1, Landroid/databinding/generated/callback/OnClickListener;

    invoke-direct {p1, p0, v0}, Landroid/databinding/generated/callback/OnClickListener;-><init>(Landroid/databinding/generated/callback/OnClickListener$Listener;I)V

    iput-object p1, p0, Lru/rocketbank/core/databinding/WidgetAddressViewBinding;->mCallback31:Landroid/view/View$OnClickListener;

    .line 71
    invoke-virtual {p0}, Lru/rocketbank/core/databinding/WidgetAddressViewBinding;->invalidateAll()V

    return-void
.end method

.method public static inflate$3514d18(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lru/rocketbank/core/databinding/WidgetAddressViewBinding;
    .locals 3

    .line 515
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    const v1, 0x7f0c01c8

    const/4 v2, 0x1

    .line 1519
    invoke-static {p0, v1, p1, v2, v0}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Landroid/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lru/rocketbank/core/databinding/WidgetAddressViewBinding;

    return-object p0
.end method

.method private onChangeDataAddressTextHint$69e17aa2(I)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)Z"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 183
    monitor-enter p0

    .line 184
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/core/databinding/WidgetAddressViewBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x8

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/core/databinding/WidgetAddressViewBinding;->mDirtyFlags:J

    .line 185
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

.method private onChangeDataBackButtonColor$69e17aa2(I)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)Z"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 201
    monitor-enter p0

    .line 202
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/core/databinding/WidgetAddressViewBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x20

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/core/databinding/WidgetAddressViewBinding;->mDirtyFlags:J

    .line 203
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

.method private onChangeDataBackButtonEnabled$3134944c(I)Z
    .locals 6

    if-nez p1, :cond_0

    .line 165
    monitor-enter p0

    .line 166
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/core/databinding/WidgetAddressViewBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x2

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/core/databinding/WidgetAddressViewBinding;->mDirtyFlags:J

    .line 167
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

.method private onChangeDataBackButtonVisible$3134944c(I)Z
    .locals 6

    if-nez p1, :cond_0

    .line 192
    monitor-enter p0

    .line 193
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/core/databinding/WidgetAddressViewBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x10

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/core/databinding/WidgetAddressViewBinding;->mDirtyFlags:J

    .line 194
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

.method private onChangeDataErrorVisible$3134944c(I)Z
    .locals 6

    if-nez p1, :cond_0

    .line 210
    monitor-enter p0

    .line 211
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/core/databinding/WidgetAddressViewBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x40

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/core/databinding/WidgetAddressViewBinding;->mDirtyFlags:J

    .line 212
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

.method private onChangeDataNextButtonColor$69e17aa2(I)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)Z"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 156
    monitor-enter p0

    .line 157
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/core/databinding/WidgetAddressViewBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/core/databinding/WidgetAddressViewBinding;->mDirtyFlags:J

    .line 158
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

.method private onChangeDataNextButtonEnabled$3134944c(I)Z
    .locals 6

    if-nez p1, :cond_0

    .line 174
    monitor-enter p0

    .line 175
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/core/databinding/WidgetAddressViewBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x4

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/core/databinding/WidgetAddressViewBinding;->mDirtyFlags:J

    .line 176
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

.method private onChangeDataNextButtonVisible$3134944c(I)Z
    .locals 6

    if-nez p1, :cond_0

    .line 219
    monitor-enter p0

    .line 220
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/core/databinding/WidgetAddressViewBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x80

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/core/databinding/WidgetAddressViewBinding;->mDirtyFlags:J

    .line 221
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
    .locals 3

    const/4 p2, 0x0

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    .line 484
    :pswitch_0
    iget-object p1, p0, Lru/rocketbank/core/databinding/WidgetAddressViewBinding;->mListener:Lru/rocketbank/core/data/binding/ButtonAddressListener;

    .line 488
    iget-object v1, p0, Lru/rocketbank/core/databinding/WidgetAddressViewBinding;->mData:Lru/rocketbank/core/data/binding/RocketAddressViewData;

    if-eqz p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, p2

    :goto_0
    if-eqz v2, :cond_3

    if-eqz v1, :cond_1

    move p2, v0

    :cond_1
    if-eqz p2, :cond_3

    .line 501
    invoke-virtual {v1}, Lru/rocketbank/core/data/binding/RocketAddressViewData;->isAddress()Z

    move-result p2

    .line 503
    invoke-interface {p1, p2}, Lru/rocketbank/core/data/binding/ButtonAddressListener;->onNextClicked(Z)V

    goto :goto_1

    .line 465
    :pswitch_1
    iget-object p1, p0, Lru/rocketbank/core/databinding/WidgetAddressViewBinding;->mListener:Lru/rocketbank/core/data/binding/ButtonAddressListener;

    if-eqz p1, :cond_2

    move p2, v0

    :cond_2
    if-eqz p2, :cond_3

    .line 473
    invoke-interface {p1}, Lru/rocketbank/core/data/binding/ButtonAddressListener;->onBackToAddressClicked()V

    return-void

    :cond_3
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected final executeBindings()V
    .locals 34

    move-object/from16 v1, p0

    .line 230
    monitor-enter p0

    .line 231
    :try_start_0
    iget-wide v2, v1, Lru/rocketbank/core/databinding/WidgetAddressViewBinding;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    .line 232
    iput-wide v4, v1, Lru/rocketbank/core/databinding/WidgetAddressViewBinding;->mDirtyFlags:J

    .line 233
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    iget-object v6, v1, Lru/rocketbank/core/databinding/WidgetAddressViewBinding;->mData:Lru/rocketbank/core/data/binding/RocketAddressViewData;

    const-wide/16 v7, 0x6ff

    and-long v9, v2, v7

    cmp-long v7, v9, v4

    const-wide/16 v12, 0x620

    const-wide/16 v14, 0x610

    const-wide/16 v16, 0x608

    const-wide/16 v18, 0x604

    const-wide/16 v20, 0x602

    const-wide/16 v22, 0x601

    const/16 v24, 0x0

    const/4 v8, 0x0

    if-eqz v7, :cond_1c

    and-long v27, v2, v22

    cmp-long v7, v27, v4

    if-eqz v7, :cond_1

    if-eqz v6, :cond_0

    .line 263
    invoke-virtual {v6}, Lru/rocketbank/core/data/binding/RocketAddressViewData;->getNextButtonColor()Landroid/databinding/ObservableField;

    move-result-object v7

    goto :goto_0

    :cond_0
    move-object/from16 v7, v24

    .line 265
    :goto_0
    invoke-virtual {v1, v8, v7}, Lru/rocketbank/core/databinding/WidgetAddressViewBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v7, :cond_1

    .line 270
    invoke-virtual {v7}, Landroid/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/drawable/ColorDrawable;

    goto :goto_1

    :cond_1
    move-object/from16 v7, v24

    :goto_1
    and-long v27, v2, v20

    cmp-long v9, v27, v4

    if-eqz v9, :cond_3

    if-eqz v6, :cond_2

    .line 277
    invoke-virtual {v6}, Lru/rocketbank/core/data/binding/RocketAddressViewData;->getBackButtonEnabled()Landroid/databinding/ObservableBoolean;

    move-result-object v9

    goto :goto_2

    :cond_2
    move-object/from16 v9, v24

    :goto_2
    const/4 v8, 0x1

    .line 279
    invoke-virtual {v1, v8, v9}, Lru/rocketbank/core/databinding/WidgetAddressViewBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v9, :cond_3

    .line 284
    invoke-virtual {v9}, Landroid/databinding/ObservableBoolean;->get()Z

    move-result v8

    goto :goto_3

    :cond_3
    const/4 v8, 0x0

    :goto_3
    and-long v27, v2, v18

    cmp-long v9, v27, v4

    if-eqz v9, :cond_5

    if-eqz v6, :cond_4

    .line 291
    invoke-virtual {v6}, Lru/rocketbank/core/data/binding/RocketAddressViewData;->getNextButtonEnabled()Landroid/databinding/ObservableBoolean;

    move-result-object v9

    goto :goto_4

    :cond_4
    move-object/from16 v9, v24

    :goto_4
    const/4 v10, 0x2

    .line 293
    invoke-virtual {v1, v10, v9}, Lru/rocketbank/core/databinding/WidgetAddressViewBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v9, :cond_5

    .line 298
    invoke-virtual {v9}, Landroid/databinding/ObservableBoolean;->get()Z

    move-result v9

    goto :goto_5

    :cond_5
    const/4 v9, 0x0

    :goto_5
    and-long v10, v2, v16

    cmp-long v27, v10, v4

    if-eqz v27, :cond_7

    if-eqz v6, :cond_6

    .line 305
    invoke-virtual {v6}, Lru/rocketbank/core/data/binding/RocketAddressViewData;->getAddressTextHint()Landroid/databinding/ObservableField;

    move-result-object v10

    goto :goto_6

    :cond_6
    move-object/from16 v10, v24

    :goto_6
    const/4 v11, 0x3

    .line 307
    invoke-virtual {v1, v11, v10}, Lru/rocketbank/core/databinding/WidgetAddressViewBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v10, :cond_7

    .line 312
    invoke-virtual {v10}, Landroid/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object/from16 v10, v24

    :goto_7
    and-long v27, v2, v14

    cmp-long v11, v27, v4

    const/16 v30, 0x8

    if-eqz v11, :cond_d

    if-eqz v6, :cond_8

    .line 319
    invoke-virtual {v6}, Lru/rocketbank/core/data/binding/RocketAddressViewData;->getBackButtonVisible()Landroid/databinding/ObservableBoolean;

    move-result-object v11

    goto :goto_8

    :cond_8
    move-object/from16 v11, v24

    :goto_8
    const/4 v14, 0x4

    .line 321
    invoke-virtual {v1, v14, v11}, Lru/rocketbank/core/databinding/WidgetAddressViewBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v11, :cond_9

    .line 326
    invoke-virtual {v11}, Landroid/databinding/ObservableBoolean;->get()Z

    move-result v11

    goto :goto_9

    :cond_9
    const/4 v11, 0x0

    :goto_9
    cmp-long v14, v27, v4

    if-eqz v14, :cond_b

    if-eqz v11, :cond_a

    const-wide/16 v14, 0x4000

    or-long v27, v2, v14

    :goto_a
    move-wide/from16 v2, v27

    goto :goto_b

    :cond_a
    const-wide/16 v14, 0x2000

    or-long v27, v2, v14

    goto :goto_a

    :cond_b
    :goto_b
    if-eqz v11, :cond_c

    goto :goto_c

    :cond_c
    move/from16 v11, v30

    goto :goto_d

    :cond_d
    :goto_c
    const/4 v11, 0x0

    :goto_d
    and-long v14, v2, v12

    cmp-long v27, v14, v4

    if-eqz v27, :cond_f

    if-eqz v6, :cond_e

    .line 345
    invoke-virtual {v6}, Lru/rocketbank/core/data/binding/RocketAddressViewData;->getBackButtonColor()Landroid/databinding/ObservableField;

    move-result-object v14

    goto :goto_e

    :cond_e
    move-object/from16 v14, v24

    :goto_e
    const/4 v15, 0x5

    .line 347
    invoke-virtual {v1, v15, v14}, Lru/rocketbank/core/databinding/WidgetAddressViewBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v14, :cond_f

    .line 352
    invoke-virtual {v14}, Landroid/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/graphics/drawable/ColorDrawable;

    goto :goto_f

    :cond_f
    move-object/from16 v14, v24

    :goto_f
    const-wide/16 v27, 0x640

    and-long v31, v2, v27

    cmp-long v15, v31, v4

    if-eqz v15, :cond_15

    if-eqz v6, :cond_10

    .line 359
    invoke-virtual {v6}, Lru/rocketbank/core/data/binding/RocketAddressViewData;->getErrorVisible()Landroid/databinding/ObservableBoolean;

    move-result-object v15

    goto :goto_10

    :cond_10
    move-object/from16 v15, v24

    :goto_10
    const/4 v12, 0x6

    .line 361
    invoke-virtual {v1, v12, v15}, Lru/rocketbank/core/databinding/WidgetAddressViewBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v15, :cond_11

    .line 366
    invoke-virtual {v15}, Landroid/databinding/ObservableBoolean;->get()Z

    move-result v12

    goto :goto_11

    :cond_11
    const/4 v12, 0x0

    :goto_11
    cmp-long v13, v31, v4

    if-eqz v13, :cond_13

    if-eqz v12, :cond_12

    const-wide/16 v27, 0x1000

    or-long v31, v2, v27

    goto :goto_12

    :cond_12
    const-wide/16 v27, 0x800

    or-long v31, v2, v27

    goto :goto_12

    :cond_13
    move-wide/from16 v31, v2

    :goto_12
    if-eqz v12, :cond_14

    const/4 v2, 0x0

    goto :goto_13

    :cond_14
    move/from16 v2, v30

    :goto_13
    move v12, v2

    move-wide/from16 v2, v31

    goto :goto_14

    :cond_15
    const/4 v12, 0x0

    :goto_14
    const-wide/16 v25, 0x680

    and-long v27, v2, v25

    cmp-long v13, v27, v4

    if-eqz v13, :cond_1b

    if-eqz v6, :cond_16

    .line 385
    invoke-virtual {v6}, Lru/rocketbank/core/data/binding/RocketAddressViewData;->getNextButtonVisible()Landroid/databinding/ObservableBoolean;

    move-result-object v24

    :cond_16
    move-object/from16 v6, v24

    const/4 v13, 0x7

    .line 387
    invoke-virtual {v1, v13, v6}, Lru/rocketbank/core/databinding/WidgetAddressViewBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v6, :cond_17

    .line 392
    invoke-virtual {v6}, Landroid/databinding/ObservableBoolean;->get()Z

    move-result v6

    goto :goto_15

    :cond_17
    const/4 v6, 0x0

    :goto_15
    cmp-long v13, v27, v4

    if-eqz v13, :cond_19

    if-eqz v6, :cond_18

    const-wide/32 v27, 0x10000

    or-long v31, v2, v27

    :goto_16
    move-wide/from16 v2, v31

    goto :goto_17

    :cond_18
    const-wide/32 v27, 0x8000

    or-long v31, v2, v27

    goto :goto_16

    :cond_19
    :goto_17
    if-eqz v6, :cond_1a

    const/16 v29, 0x0

    goto :goto_18

    :cond_1a
    move/from16 v29, v30

    :goto_18
    move/from16 v6, v29

    goto :goto_19

    :cond_1b
    const/4 v6, 0x0

    goto :goto_19

    :cond_1c
    move-object/from16 v7, v24

    move-object v10, v7

    move-object v14, v10

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_19
    and-long v27, v2, v16

    cmp-long v13, v27, v4

    if-eqz v13, :cond_1d

    .line 412
    iget-object v13, v1, Lru/rocketbank/core/databinding/WidgetAddressViewBinding;->addresText:Lru/rocketbank/core/widgets/RocketEditText;

    invoke-virtual {v13, v10}, Lru/rocketbank/core/widgets/RocketEditText;->setHint(Ljava/lang/CharSequence;)V

    :cond_1d
    and-long v15, v2, v20

    cmp-long v10, v15, v4

    if-eqz v10, :cond_1e

    .line 417
    iget-object v10, v1, Lru/rocketbank/core/databinding/WidgetAddressViewBinding;->back:Landroid/widget/ImageView;

    invoke-virtual {v10, v8}, Landroid/widget/ImageView;->setEnabled(Z)V

    :cond_1e
    const-wide/16 v15, 0x400

    and-long v20, v2, v15

    cmp-long v8, v20, v4

    if-eqz v8, :cond_1f

    .line 422
    iget-object v8, v1, Lru/rocketbank/core/databinding/WidgetAddressViewBinding;->back:Landroid/widget/ImageView;

    iget-object v10, v1, Lru/rocketbank/core/databinding/WidgetAddressViewBinding;->mCallback30:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v10}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 423
    iget-object v8, v1, Lru/rocketbank/core/databinding/WidgetAddressViewBinding;->next:Landroid/widget/ImageView;

    iget-object v10, v1, Lru/rocketbank/core/databinding/WidgetAddressViewBinding;->mCallback31:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v10}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1f
    const-wide/16 v15, 0x620

    and-long v20, v2, v15

    cmp-long v8, v20, v4

    if-eqz v8, :cond_20

    .line 428
    iget-object v8, v1, Lru/rocketbank/core/databinding/WidgetAddressViewBinding;->backLayout:Lru/rocketbank/core/widgets/SquareLayout;

    invoke-static {v8, v14}, Landroid/databinding/adapters/ViewBindingAdapter;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_20
    const-wide/16 v13, 0x610

    and-long v15, v2, v13

    cmp-long v8, v15, v4

    if-eqz v8, :cond_21

    .line 433
    iget-object v8, v1, Lru/rocketbank/core/databinding/WidgetAddressViewBinding;->backLayout:Lru/rocketbank/core/widgets/SquareLayout;

    invoke-virtual {v8, v11}, Lru/rocketbank/core/widgets/SquareLayout;->setVisibility(I)V

    :cond_21
    const-wide/16 v10, 0x640

    and-long v13, v2, v10

    cmp-long v8, v13, v4

    if-eqz v8, :cond_22

    .line 438
    iget-object v8, v1, Lru/rocketbank/core/databinding/WidgetAddressViewBinding;->mboundView6:Landroid/support/v7/widget/CardView;

    invoke-virtual {v8, v12}, Landroid/support/v7/widget/CardView;->setVisibility(I)V

    :cond_22
    and-long v10, v2, v18

    cmp-long v8, v10, v4

    if-eqz v8, :cond_23

    .line 443
    iget-object v8, v1, Lru/rocketbank/core/databinding/WidgetAddressViewBinding;->next:Landroid/widget/ImageView;

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setEnabled(Z)V

    :cond_23
    and-long v8, v2, v22

    cmp-long v10, v8, v4

    if-eqz v10, :cond_24

    .line 448
    iget-object v8, v1, Lru/rocketbank/core/databinding/WidgetAddressViewBinding;->nextLayout:Lru/rocketbank/core/widgets/SquareLayout;

    invoke-static {v8, v7}, Landroid/databinding/adapters/ViewBindingAdapter;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_24
    const-wide/16 v7, 0x680

    and-long v9, v2, v7

    cmp-long v2, v9, v4

    if-eqz v2, :cond_25

    .line 453
    iget-object v2, v1, Lru/rocketbank/core/databinding/WidgetAddressViewBinding;->nextLayout:Lru/rocketbank/core/widgets/SquareLayout;

    invoke-virtual {v2, v6}, Lru/rocketbank/core/widgets/SquareLayout;->setVisibility(I)V

    :cond_25
    return-void

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 233
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public final hasPendingBindings()Z
    .locals 5

    .line 84
    monitor-enter p0

    .line 85
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/core/databinding/WidgetAddressViewBinding;->mDirtyFlags:J

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

.method public final invalidateAll()V
    .locals 2

    .line 76
    monitor-enter p0

    const-wide/16 v0, 0x400

    .line 77
    :try_start_0
    iput-wide v0, p0, Lru/rocketbank/core/databinding/WidgetAddressViewBinding;->mDirtyFlags:J

    .line 78
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    invoke-virtual {p0}, Lru/rocketbank/core/databinding/WidgetAddressViewBinding;->requestRebind()V

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

.method protected final onFieldChange(ILjava/lang/Object;I)Z
    .locals 0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    .line 150
    :pswitch_0
    invoke-direct {p0, p3}, Lru/rocketbank/core/databinding/WidgetAddressViewBinding;->onChangeDataNextButtonVisible$3134944c(I)Z

    move-result p1

    return p1

    .line 148
    :pswitch_1
    invoke-direct {p0, p3}, Lru/rocketbank/core/databinding/WidgetAddressViewBinding;->onChangeDataErrorVisible$3134944c(I)Z

    move-result p1

    return p1

    .line 146
    :pswitch_2
    invoke-direct {p0, p3}, Lru/rocketbank/core/databinding/WidgetAddressViewBinding;->onChangeDataBackButtonColor$69e17aa2(I)Z

    move-result p1

    return p1

    .line 144
    :pswitch_3
    invoke-direct {p0, p3}, Lru/rocketbank/core/databinding/WidgetAddressViewBinding;->onChangeDataBackButtonVisible$3134944c(I)Z

    move-result p1

    return p1

    .line 142
    :pswitch_4
    invoke-direct {p0, p3}, Lru/rocketbank/core/databinding/WidgetAddressViewBinding;->onChangeDataAddressTextHint$69e17aa2(I)Z

    move-result p1

    return p1

    .line 140
    :pswitch_5
    invoke-direct {p0, p3}, Lru/rocketbank/core/databinding/WidgetAddressViewBinding;->onChangeDataNextButtonEnabled$3134944c(I)Z

    move-result p1

    return p1

    .line 138
    :pswitch_6
    invoke-direct {p0, p3}, Lru/rocketbank/core/databinding/WidgetAddressViewBinding;->onChangeDataBackButtonEnabled$3134944c(I)Z

    move-result p1

    return p1

    .line 136
    :pswitch_7
    invoke-direct {p0, p3}, Lru/rocketbank/core/databinding/WidgetAddressViewBinding;->onChangeDataNextButtonColor$69e17aa2(I)Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final setVariable(ILjava/lang/Object;)Z
    .locals 5

    const/16 v0, 0x37

    if-ne v0, p1, :cond_0

    .line 96
    check-cast p2, Lru/rocketbank/core/data/binding/ButtonAddressListener;

    .line 1108
    iput-object p2, p0, Lru/rocketbank/core/databinding/WidgetAddressViewBinding;->mListener:Lru/rocketbank/core/data/binding/ButtonAddressListener;

    .line 1109
    monitor-enter p0

    .line 1110
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/core/databinding/WidgetAddressViewBinding;->mDirtyFlags:J

    const-wide/16 v1, 0x100

    or-long v3, p1, v1

    iput-wide v3, p0, Lru/rocketbank/core/databinding/WidgetAddressViewBinding;->mDirtyFlags:J

    .line 1111
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1112
    invoke-virtual {p0, v0}, Lru/rocketbank/core/databinding/WidgetAddressViewBinding;->notifyPropertyChanged(I)V

    .line 1113
    invoke-super {p0}, Landroid/databinding/ViewDataBinding;->requestRebind()V

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 1111
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_0
    const/16 v0, 0x18

    if-ne v0, p1, :cond_1

    .line 99
    check-cast p2, Lru/rocketbank/core/data/binding/RocketAddressViewData;

    .line 1120
    iput-object p2, p0, Lru/rocketbank/core/databinding/WidgetAddressViewBinding;->mData:Lru/rocketbank/core/data/binding/RocketAddressViewData;

    .line 1121
    monitor-enter p0

    .line 1122
    :try_start_2
    iget-wide p1, p0, Lru/rocketbank/core/databinding/WidgetAddressViewBinding;->mDirtyFlags:J

    const-wide/16 v1, 0x200

    or-long v3, p1, v1

    iput-wide v3, p0, Lru/rocketbank/core/databinding/WidgetAddressViewBinding;->mDirtyFlags:J

    .line 1123
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1124
    invoke-virtual {p0, v0}, Lru/rocketbank/core/databinding/WidgetAddressViewBinding;->notifyPropertyChanged(I)V

    .line 1125
    invoke-super {p0}, Landroid/databinding/ViewDataBinding;->requestRebind()V

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :catchall_1
    move-exception p1

    .line 1123
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method
