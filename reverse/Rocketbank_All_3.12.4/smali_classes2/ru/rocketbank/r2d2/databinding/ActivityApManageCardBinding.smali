.class public Lru/rocketbank/r2d2/databinding/ActivityApManageCardBinding;
.super Landroid/databinding/ViewDataBinding;
.source "ActivityApManageCardBinding.java"

# interfaces
.implements Landroid/databinding/generated/callback/OnClickListener$Listener;


# static fields
.field private static final sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field public final apLogo:Landroid/support/v7/widget/AppCompatImageView;

.field public final buttonDeleteCard:Lru/rocketbank/core/widgets/RocketCompatButton;

.field public final buttonMainCard:Lru/rocketbank/core/widgets/RocketCompatButton;

.field public final guideline2:Landroid/support/constraint/Guideline;

.field public final guideline4:Landroid/support/constraint/Guideline;

.field public final guideline6:Landroid/support/constraint/Guideline;

.field private final mCallback17:Landroid/view/View$OnClickListener;

.field private final mCallback18:Landroid/view/View$OnClickListener;

.field private mData:Lru/rocketbank/r2d2/data/binding/ap/APManageCardData;

.field private mDirtyFlags:J

.field private mListener:Lru/rocketbank/r2d2/data/binding/ap/APManageCardListener;

.field private final mboundView0:Landroid/support/constraint/ConstraintLayout;

.field public final textView6:Lru/rocketbank/core/widgets/RocketTextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 17
    sput-object v0, Lru/rocketbank/r2d2/databinding/ActivityApManageCardBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090059

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 18
    sget-object v0, Lru/rocketbank/r2d2/databinding/ActivityApManageCardBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0901a7

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 19
    sget-object v0, Lru/rocketbank/r2d2/databinding/ActivityApManageCardBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0901a9

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 20
    sget-object v0, Lru/rocketbank/r2d2/databinding/ActivityApManageCardBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0901ab

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 21
    sget-object v0, Lru/rocketbank/r2d2/databinding/ActivityApManageCardBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090390

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x1

    .line 54
    invoke-direct {p0, p1, p2, v0}, Landroid/databinding/ViewDataBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;I)V

    const-wide/16 v1, -0x1

    .line 295
    iput-wide v1, p0, Lru/rocketbank/r2d2/databinding/ActivityApManageCardBinding;->mDirtyFlags:J

    .line 55
    sget-object v1, Lru/rocketbank/r2d2/databinding/ActivityApManageCardBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v2, Lru/rocketbank/r2d2/databinding/ActivityApManageCardBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/16 v3, 0x8

    invoke-static {p1, p2, v3, v1, v2}, Lru/rocketbank/r2d2/databinding/ActivityApManageCardBinding;->mapBindings(Landroid/databinding/DataBindingComponent;Landroid/view/View;ILandroid/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x3

    .line 56
    aget-object v1, p1, v1

    check-cast v1, Landroid/support/v7/widget/AppCompatImageView;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/ActivityApManageCardBinding;->apLogo:Landroid/support/v7/widget/AppCompatImageView;

    const/4 v1, 0x2

    .line 57
    aget-object v2, p1, v1

    check-cast v2, Lru/rocketbank/core/widgets/RocketCompatButton;

    iput-object v2, p0, Lru/rocketbank/r2d2/databinding/ActivityApManageCardBinding;->buttonDeleteCard:Lru/rocketbank/core/widgets/RocketCompatButton;

    .line 58
    iget-object v2, p0, Lru/rocketbank/r2d2/databinding/ActivityApManageCardBinding;->buttonDeleteCard:Lru/rocketbank/core/widgets/RocketCompatButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lru/rocketbank/core/widgets/RocketCompatButton;->setTag(Ljava/lang/Object;)V

    .line 59
    aget-object v2, p1, v0

    check-cast v2, Lru/rocketbank/core/widgets/RocketCompatButton;

    iput-object v2, p0, Lru/rocketbank/r2d2/databinding/ActivityApManageCardBinding;->buttonMainCard:Lru/rocketbank/core/widgets/RocketCompatButton;

    .line 60
    iget-object v2, p0, Lru/rocketbank/r2d2/databinding/ActivityApManageCardBinding;->buttonMainCard:Lru/rocketbank/core/widgets/RocketCompatButton;

    invoke-virtual {v2, v3}, Lru/rocketbank/core/widgets/RocketCompatButton;->setTag(Ljava/lang/Object;)V

    const/4 v2, 0x4

    .line 61
    aget-object v2, p1, v2

    check-cast v2, Landroid/support/constraint/Guideline;

    iput-object v2, p0, Lru/rocketbank/r2d2/databinding/ActivityApManageCardBinding;->guideline2:Landroid/support/constraint/Guideline;

    const/4 v2, 0x5

    .line 62
    aget-object v2, p1, v2

    check-cast v2, Landroid/support/constraint/Guideline;

    iput-object v2, p0, Lru/rocketbank/r2d2/databinding/ActivityApManageCardBinding;->guideline4:Landroid/support/constraint/Guideline;

    const/4 v2, 0x6

    .line 63
    aget-object v2, p1, v2

    check-cast v2, Landroid/support/constraint/Guideline;

    iput-object v2, p0, Lru/rocketbank/r2d2/databinding/ActivityApManageCardBinding;->guideline6:Landroid/support/constraint/Guideline;

    const/4 v2, 0x0

    .line 64
    aget-object v2, p1, v2

    check-cast v2, Landroid/support/constraint/ConstraintLayout;

    iput-object v2, p0, Lru/rocketbank/r2d2/databinding/ActivityApManageCardBinding;->mboundView0:Landroid/support/constraint/ConstraintLayout;

    .line 65
    iget-object v2, p0, Lru/rocketbank/r2d2/databinding/ActivityApManageCardBinding;->mboundView0:Landroid/support/constraint/ConstraintLayout;

    invoke-virtual {v2, v3}, Landroid/support/constraint/ConstraintLayout;->setTag(Ljava/lang/Object;)V

    const/4 v2, 0x7

    .line 66
    aget-object p1, p1, v2

    check-cast p1, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/ActivityApManageCardBinding;->textView6:Lru/rocketbank/core/widgets/RocketTextView;

    .line 67
    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/ActivityApManageCardBinding;->setRootTag(Landroid/view/View;)V

    .line 69
    new-instance p1, Landroid/databinding/generated/callback/OnClickListener;

    invoke-direct {p1, p0, v0}, Landroid/databinding/generated/callback/OnClickListener;-><init>(Landroid/databinding/generated/callback/OnClickListener$Listener;I)V

    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/ActivityApManageCardBinding;->mCallback17:Landroid/view/View$OnClickListener;

    .line 70
    new-instance p1, Landroid/databinding/generated/callback/OnClickListener;

    invoke-direct {p1, p0, v1}, Landroid/databinding/generated/callback/OnClickListener;-><init>(Landroid/databinding/generated/callback/OnClickListener$Listener;I)V

    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/ActivityApManageCardBinding;->mCallback18:Landroid/view/View$OnClickListener;

    .line 71
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/ActivityApManageCardBinding;->invalidateAll()V

    return-void
.end method

.method public static bind(Landroid/view/View;)Lru/rocketbank/r2d2/databinding/ActivityApManageCardBinding;
    .locals 1

    .line 315
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/ActivityApManageCardBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivityApManageCardBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivityApManageCardBinding;
    .locals 2

    const-string v0, "layout/activity_ap_manage_card_0"

    .line 319
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 320
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

    .line 322
    :cond_0
    new-instance v0, Lru/rocketbank/r2d2/databinding/ActivityApManageCardBinding;

    invoke-direct {v0, p1, p0}, Lru/rocketbank/r2d2/databinding/ActivityApManageCardBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lru/rocketbank/r2d2/databinding/ActivityApManageCardBinding;
    .locals 1

    .line 307
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/ActivityApManageCardBinding;->inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivityApManageCardBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivityApManageCardBinding;
    .locals 3

    const v0, 0x7f0c0023

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 311
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-static {p0, p1}, Lru/rocketbank/r2d2/databinding/ActivityApManageCardBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivityApManageCardBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lru/rocketbank/r2d2/databinding/ActivityApManageCardBinding;
    .locals 1

    .line 299
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lru/rocketbank/r2d2/databinding/ActivityApManageCardBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivityApManageCardBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivityApManageCardBinding;
    .locals 1

    const v0, 0x7f0c0023

    .line 303
    invoke-static {p0, v0, p1, p2, p3}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Landroid/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lru/rocketbank/r2d2/databinding/ActivityApManageCardBinding;

    return-object p0
.end method

.method private onChangeDataDefaultEnabled(Landroid/databinding/ObservableBoolean;I)Z
    .locals 4

    if-nez p2, :cond_0

    .line 142
    monitor-enter p0

    .line 143
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/ActivityApManageCardBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x1

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/ActivityApManageCardBinding;->mDirtyFlags:J

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
    .locals 3

    const/4 p2, 0x0

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_4

    .line 259
    :pswitch_0
    iget-object p1, p0, Lru/rocketbank/r2d2/databinding/ActivityApManageCardBinding;->mListener:Lru/rocketbank/r2d2/data/binding/ap/APManageCardListener;

    .line 263
    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/ActivityApManageCardBinding;->mData:Lru/rocketbank/r2d2/data/binding/ap/APManageCardData;

    if-eqz p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, p2

    :goto_0
    if-eqz v2, :cond_6

    if-eqz v1, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    move v2, p2

    :goto_1
    if-eqz v2, :cond_6

    .line 278
    invoke-virtual {v1}, Lru/rocketbank/r2d2/data/binding/ap/APManageCardData;->getAndroidPayToken()Landroid/databinding/ObservableField;

    move-result-object v1

    if-eqz v1, :cond_2

    move p2, v0

    :cond_2
    if-eqz p2, :cond_6

    .line 284
    invoke-virtual {v1}, Landroid/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 286
    invoke-interface {p1, p2}, Lru/rocketbank/r2d2/data/binding/ap/APManageCardListener;->deleteCardClicked(Ljava/lang/String;)V

    goto :goto_4

    .line 217
    :pswitch_1
    iget-object p1, p0, Lru/rocketbank/r2d2/databinding/ActivityApManageCardBinding;->mListener:Lru/rocketbank/r2d2/data/binding/ap/APManageCardListener;

    .line 221
    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/ActivityApManageCardBinding;->mData:Lru/rocketbank/r2d2/data/binding/ap/APManageCardData;

    if-eqz p1, :cond_3

    move v2, v0

    goto :goto_2

    :cond_3
    move v2, p2

    :goto_2
    if-eqz v2, :cond_6

    if-eqz v1, :cond_4

    move v2, v0

    goto :goto_3

    :cond_4
    move v2, p2

    :goto_3
    if-eqz v2, :cond_6

    .line 236
    invoke-virtual {v1}, Lru/rocketbank/r2d2/data/binding/ap/APManageCardData;->getAndroidPayToken()Landroid/databinding/ObservableField;

    move-result-object v1

    if-eqz v1, :cond_5

    move p2, v0

    :cond_5
    if-eqz p2, :cond_6

    .line 242
    invoke-virtual {v1}, Landroid/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 244
    invoke-interface {p1, p2}, Lru/rocketbank/r2d2/data/binding/ap/APManageCardListener;->makeDefaultClicked(Ljava/lang/String;)V

    return-void

    :cond_6
    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected executeBindings()V
    .locals 14

    .line 153
    monitor-enter p0

    .line 154
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/ActivityApManageCardBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    .line 155
    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/ActivityApManageCardBinding;->mDirtyFlags:J

    .line 156
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    iget-object v4, p0, Lru/rocketbank/r2d2/databinding/ActivityApManageCardBinding;->mData:Lru/rocketbank/r2d2/data/binding/ap/APManageCardData;

    const/4 v5, 0x0

    const-wide/16 v6, 0xd

    and-long v8, v0, v6

    cmp-long v10, v8, v2

    const/4 v11, 0x0

    if-eqz v10, :cond_5

    if-eqz v4, :cond_0

    .line 169
    invoke-virtual {v4}, Lru/rocketbank/r2d2/data/binding/ap/APManageCardData;->getDefaultEnabled()Landroid/databinding/ObservableBoolean;

    move-result-object v5

    .line 171
    :cond_0
    invoke-virtual {p0, v11, v5}, Lru/rocketbank/r2d2/databinding/ActivityApManageCardBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v5, :cond_1

    .line 176
    invoke-virtual {v5}, Landroid/databinding/ObservableBoolean;->get()Z

    move-result v4

    goto :goto_0

    :cond_1
    move v4, v11

    :goto_0
    cmp-long v5, v8, v2

    if-eqz v5, :cond_3

    if-eqz v4, :cond_2

    const-wide/16 v8, 0x20

    or-long v12, v0, v8

    :goto_1
    move-wide v0, v12

    goto :goto_2

    :cond_2
    const-wide/16 v8, 0x10

    or-long v12, v0, v8

    goto :goto_1

    :cond_3
    :goto_2
    if-eqz v4, :cond_4

    goto :goto_3

    :cond_4
    const/4 v5, 0x4

    move v11, v5

    goto :goto_3

    :cond_5
    move v4, v11

    :goto_3
    const-wide/16 v8, 0x8

    and-long v12, v0, v8

    cmp-long v5, v12, v2

    if-eqz v5, :cond_6

    .line 195
    iget-object v5, p0, Lru/rocketbank/r2d2/databinding/ActivityApManageCardBinding;->buttonDeleteCard:Lru/rocketbank/core/widgets/RocketCompatButton;

    iget-object v8, p0, Lru/rocketbank/r2d2/databinding/ActivityApManageCardBinding;->mCallback18:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v8}, Lru/rocketbank/core/widgets/RocketCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6
    and-long v8, v0, v6

    cmp-long v0, v8, v2

    if-eqz v0, :cond_7

    .line 200
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityApManageCardBinding;->buttonMainCard:Lru/rocketbank/core/widgets/RocketCompatButton;

    invoke-virtual {v0, v11}, Lru/rocketbank/core/widgets/RocketCompatButton;->setVisibility(I)V

    .line 201
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityApManageCardBinding;->buttonMainCard:Lru/rocketbank/core/widgets/RocketCompatButton;

    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/ActivityApManageCardBinding;->mCallback17:Landroid/view/View$OnClickListener;

    invoke-static {v0, v1, v4}, Landroid/databinding/adapters/ViewBindingAdapter;->setOnClick(Landroid/view/View;Landroid/view/View$OnClickListener;Z)V

    :cond_7
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

.method public getData()Lru/rocketbank/r2d2/data/binding/ap/APManageCardData;
    .locals 1

    .line 129
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityApManageCardBinding;->mData:Lru/rocketbank/r2d2/data/binding/ap/APManageCardData;

    return-object v0
.end method

.method public getListener()Lru/rocketbank/r2d2/data/binding/ap/APManageCardListener;
    .locals 1

    .line 117
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityApManageCardBinding;->mListener:Lru/rocketbank/r2d2/data/binding/ap/APManageCardListener;

    return-object v0
.end method

.method public hasPendingBindings()Z
    .locals 5

    .line 84
    monitor-enter p0

    .line 85
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/ActivityApManageCardBinding;->mDirtyFlags:J

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
    iput-wide v0, p0, Lru/rocketbank/r2d2/databinding/ActivityApManageCardBinding;->mDirtyFlags:J

    .line 78
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/ActivityApManageCardBinding;->requestRebind()V

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
    check-cast p2, Landroid/databinding/ObservableBoolean;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/ActivityApManageCardBinding;->onChangeDataDefaultEnabled(Landroid/databinding/ObservableBoolean;I)Z

    move-result p1

    return p1
.end method

.method public setData(Lru/rocketbank/r2d2/data/binding/ap/APManageCardData;)V
    .locals 6

    .line 120
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/ActivityApManageCardBinding;->mData:Lru/rocketbank/r2d2/data/binding/ap/APManageCardData;

    .line 121
    monitor-enter p0

    .line 122
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/ActivityApManageCardBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x4

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/ActivityApManageCardBinding;->mDirtyFlags:J

    .line 123
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x18

    .line 124
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/ActivityApManageCardBinding;->notifyPropertyChanged(I)V

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

.method public setListener(Lru/rocketbank/r2d2/data/binding/ap/APManageCardListener;)V
    .locals 6

    .line 108
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/ActivityApManageCardBinding;->mListener:Lru/rocketbank/r2d2/data/binding/ap/APManageCardListener;

    .line 109
    monitor-enter p0

    .line 110
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/ActivityApManageCardBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x2

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/ActivityApManageCardBinding;->mDirtyFlags:J

    .line 111
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x37

    .line 112
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/ActivityApManageCardBinding;->notifyPropertyChanged(I)V

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
    check-cast p2, Lru/rocketbank/r2d2/data/binding/ap/APManageCardListener;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/ActivityApManageCardBinding;->setListener(Lru/rocketbank/r2d2/data/binding/ap/APManageCardListener;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x18

    if-ne v0, p1, :cond_1

    .line 99
    check-cast p2, Lru/rocketbank/r2d2/data/binding/ap/APManageCardData;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/ActivityApManageCardBinding;->setData(Lru/rocketbank/r2d2/data/binding/ap/APManageCardData;)V

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method
