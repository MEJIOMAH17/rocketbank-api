.class public Lru/rocketbank/r2d2/databinding/FragmentNewPassportStepBinding;
.super Landroid/databinding/ViewDataBinding;
.source "FragmentNewPassportStepBinding.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/databinding/FragmentNewPassportStepBinding$OnClickListenerImpl1;,
        Lru/rocketbank/r2d2/databinding/FragmentNewPassportStepBinding$OnClickListenerImpl;
    }
.end annotation


# static fields
.field private static final sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field public final button:Lru/rocketbank/core/widgets/RocketButton;

.field public final buttonBottom:Lru/rocketbank/core/widgets/RocketButton;

.field public final helpText:Lru/rocketbank/core/widgets/RocketTextView;

.field public final imageView3:Landroid/support/v7/widget/AppCompatImageView;

.field private mData:Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepData;

.field private mDirtyFlags:J

.field private mListener:Lru/rocketbank/r2d2/registration/new_passport/OnButtonsClickListener;

.field private mListenerBottomButtonClickedAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/FragmentNewPassportStepBinding$OnClickListenerImpl;

.field private mListenerMainClickedAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/FragmentNewPassportStepBinding$OnClickListenerImpl1;

.field private final mboundView0:Landroid/support/constraint/ConstraintLayout;

.field public final titleText:Lru/rocketbank/core/widgets/RocketTextView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x6

    .line 43
    invoke-direct {p0, p1, p2, v0}, Landroid/databinding/ViewDataBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;I)V

    const-wide/16 v1, -0x1

    .line 418
    iput-wide v1, p0, Lru/rocketbank/r2d2/databinding/FragmentNewPassportStepBinding;->mDirtyFlags:J

    .line 44
    sget-object v1, Lru/rocketbank/r2d2/databinding/FragmentNewPassportStepBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v2, Lru/rocketbank/r2d2/databinding/FragmentNewPassportStepBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    invoke-static {p1, p2, v0, v1, v2}, Lru/rocketbank/r2d2/databinding/FragmentNewPassportStepBinding;->mapBindings(Landroid/databinding/DataBindingComponent;Landroid/view/View;ILandroid/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x3

    .line 45
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketButton;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/FragmentNewPassportStepBinding;->button:Lru/rocketbank/core/widgets/RocketButton;

    .line 46
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/FragmentNewPassportStepBinding;->button:Lru/rocketbank/core/widgets/RocketButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketButton;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x2

    .line 47
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketButton;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/FragmentNewPassportStepBinding;->buttonBottom:Lru/rocketbank/core/widgets/RocketButton;

    .line 48
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/FragmentNewPassportStepBinding;->buttonBottom:Lru/rocketbank/core/widgets/RocketButton;

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketButton;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x4

    .line 49
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/FragmentNewPassportStepBinding;->helpText:Lru/rocketbank/core/widgets/RocketTextView;

    .line 50
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/FragmentNewPassportStepBinding;->helpText:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x5

    .line 51
    aget-object v0, p1, v0

    check-cast v0, Landroid/support/v7/widget/AppCompatImageView;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/FragmentNewPassportStepBinding;->imageView3:Landroid/support/v7/widget/AppCompatImageView;

    .line 52
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/FragmentNewPassportStepBinding;->imageView3:Landroid/support/v7/widget/AppCompatImageView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/AppCompatImageView;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 53
    aget-object v0, p1, v0

    check-cast v0, Landroid/support/constraint/ConstraintLayout;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/FragmentNewPassportStepBinding;->mboundView0:Landroid/support/constraint/ConstraintLayout;

    .line 54
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/FragmentNewPassportStepBinding;->mboundView0:Landroid/support/constraint/ConstraintLayout;

    invoke-virtual {v0, v1}, Landroid/support/constraint/ConstraintLayout;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 55
    aget-object p1, p1, v0

    check-cast p1, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/FragmentNewPassportStepBinding;->titleText:Lru/rocketbank/core/widgets/RocketTextView;

    .line 56
    iget-object p1, p0, Lru/rocketbank/r2d2/databinding/FragmentNewPassportStepBinding;->titleText:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {p1, v1}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    .line 57
    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/FragmentNewPassportStepBinding;->setRootTag(Landroid/view/View;)V

    .line 59
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/FragmentNewPassportStepBinding;->invalidateAll()V

    return-void
.end method

.method public static bind(Landroid/view/View;)Lru/rocketbank/r2d2/databinding/FragmentNewPassportStepBinding;
    .locals 1

    .line 438
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/FragmentNewPassportStepBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FragmentNewPassportStepBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FragmentNewPassportStepBinding;
    .locals 2

    const-string v0, "layout/fragment_new_passport_step_0"

    .line 442
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 443
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

    .line 445
    :cond_0
    new-instance v0, Lru/rocketbank/r2d2/databinding/FragmentNewPassportStepBinding;

    invoke-direct {v0, p1, p0}, Lru/rocketbank/r2d2/databinding/FragmentNewPassportStepBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lru/rocketbank/r2d2/databinding/FragmentNewPassportStepBinding;
    .locals 1

    .line 430
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/FragmentNewPassportStepBinding;->inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FragmentNewPassportStepBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FragmentNewPassportStepBinding;
    .locals 3

    const v0, 0x7f0c00e6

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 434
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-static {p0, p1}, Lru/rocketbank/r2d2/databinding/FragmentNewPassportStepBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FragmentNewPassportStepBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lru/rocketbank/r2d2/databinding/FragmentNewPassportStepBinding;
    .locals 1

    .line 422
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lru/rocketbank/r2d2/databinding/FragmentNewPassportStepBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FragmentNewPassportStepBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FragmentNewPassportStepBinding;
    .locals 1

    const v0, 0x7f0c00e6

    .line 426
    invoke-static {p0, v0, p1, p2, p3}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Landroid/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lru/rocketbank/r2d2/databinding/FragmentNewPassportStepBinding;

    return-object p0
.end method

.method private onChangeDataBottomButtonText(Landroid/databinding/ObservableField;I)Z
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
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/FragmentNewPassportStepBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x2

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/FragmentNewPassportStepBinding;->mDirtyFlags:J

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

.method private onChangeDataButtonsEnabled(Landroid/databinding/ObservableBoolean;I)Z
    .locals 4

    if-nez p2, :cond_0

    .line 167
    monitor-enter p0

    .line 168
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/FragmentNewPassportStepBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x8

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/FragmentNewPassportStepBinding;->mDirtyFlags:J

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

.method private onChangeDataHelpText(Landroid/databinding/ObservableField;I)Z
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

    .line 176
    monitor-enter p0

    .line 177
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/FragmentNewPassportStepBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x10

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/FragmentNewPassportStepBinding;->mDirtyFlags:J

    .line 178
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

.method private onChangeDataImage(Landroid/databinding/ObservableField;I)Z
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

    .line 158
    monitor-enter p0

    .line 159
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/FragmentNewPassportStepBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x4

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/FragmentNewPassportStepBinding;->mDirtyFlags:J

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

.method private onChangeDataMainButtonText(Landroid/databinding/ObservableField;I)Z
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

    .line 185
    monitor-enter p0

    .line 186
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/FragmentNewPassportStepBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x20

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/FragmentNewPassportStepBinding;->mDirtyFlags:J

    .line 187
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

.method private onChangeDataPhotoTitle(Landroid/databinding/ObservableField;I)Z
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

    .line 140
    monitor-enter p0

    .line 141
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/FragmentNewPassportStepBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x1

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/FragmentNewPassportStepBinding;->mDirtyFlags:J

    .line 142
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
.method protected executeBindings()V
    .locals 34

    move-object/from16 v1, p0

    .line 196
    monitor-enter p0

    .line 197
    :try_start_0
    iget-wide v2, v1, Lru/rocketbank/r2d2/databinding/FragmentNewPassportStepBinding;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    .line 198
    iput-wide v4, v1, Lru/rocketbank/r2d2/databinding/FragmentNewPassportStepBinding;->mDirtyFlags:J

    .line 199
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    iget-object v6, v1, Lru/rocketbank/r2d2/databinding/FragmentNewPassportStepBinding;->mListener:Lru/rocketbank/r2d2/registration/new_passport/OnButtonsClickListener;

    .line 212
    iget-object v7, v1, Lru/rocketbank/r2d2/databinding/FragmentNewPassportStepBinding;->mData:Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepData;

    const-wide/16 v8, 0x140

    and-long v10, v2, v8

    cmp-long v12, v10, v4

    if-eqz v12, :cond_2

    if-eqz v6, :cond_2

    .line 227
    iget-object v11, v1, Lru/rocketbank/r2d2/databinding/FragmentNewPassportStepBinding;->mListenerBottomButtonClickedAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/FragmentNewPassportStepBinding$OnClickListenerImpl;

    if-nez v11, :cond_0

    new-instance v11, Lru/rocketbank/r2d2/databinding/FragmentNewPassportStepBinding$OnClickListenerImpl;

    invoke-direct {v11}, Lru/rocketbank/r2d2/databinding/FragmentNewPassportStepBinding$OnClickListenerImpl;-><init>()V

    iput-object v11, v1, Lru/rocketbank/r2d2/databinding/FragmentNewPassportStepBinding;->mListenerBottomButtonClickedAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/FragmentNewPassportStepBinding$OnClickListenerImpl;

    goto :goto_0

    :cond_0
    iget-object v11, v1, Lru/rocketbank/r2d2/databinding/FragmentNewPassportStepBinding;->mListenerBottomButtonClickedAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/FragmentNewPassportStepBinding$OnClickListenerImpl;

    :goto_0
    invoke-virtual {v11, v6}, Lru/rocketbank/r2d2/databinding/FragmentNewPassportStepBinding$OnClickListenerImpl;->setValue(Lru/rocketbank/r2d2/registration/new_passport/OnButtonsClickListener;)Lru/rocketbank/r2d2/databinding/FragmentNewPassportStepBinding$OnClickListenerImpl;

    move-result-object v11

    .line 229
    iget-object v12, v1, Lru/rocketbank/r2d2/databinding/FragmentNewPassportStepBinding;->mListenerMainClickedAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/FragmentNewPassportStepBinding$OnClickListenerImpl1;

    if-nez v12, :cond_1

    new-instance v12, Lru/rocketbank/r2d2/databinding/FragmentNewPassportStepBinding$OnClickListenerImpl1;

    invoke-direct {v12}, Lru/rocketbank/r2d2/databinding/FragmentNewPassportStepBinding$OnClickListenerImpl1;-><init>()V

    iput-object v12, v1, Lru/rocketbank/r2d2/databinding/FragmentNewPassportStepBinding;->mListenerMainClickedAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/FragmentNewPassportStepBinding$OnClickListenerImpl1;

    goto :goto_1

    :cond_1
    iget-object v12, v1, Lru/rocketbank/r2d2/databinding/FragmentNewPassportStepBinding;->mListenerMainClickedAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/FragmentNewPassportStepBinding$OnClickListenerImpl1;

    :goto_1
    invoke-virtual {v12, v6}, Lru/rocketbank/r2d2/databinding/FragmentNewPassportStepBinding$OnClickListenerImpl1;->setValue(Lru/rocketbank/r2d2/registration/new_passport/OnButtonsClickListener;)Lru/rocketbank/r2d2/databinding/FragmentNewPassportStepBinding$OnClickListenerImpl1;

    move-result-object v6

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    const/4 v11, 0x0

    :goto_2
    const-wide/16 v12, 0x1bf

    and-long v14, v2, v12

    cmp-long v12, v14, v4

    const-wide/16 v15, 0x190

    const-wide/16 v17, 0x188

    const-wide/16 v19, 0x184

    const-wide/16 v21, 0x182

    const-wide/16 v23, 0x181

    const/4 v10, 0x0

    if-eqz v12, :cond_19

    and-long v26, v2, v23

    cmp-long v12, v26, v4

    if-eqz v12, :cond_4

    if-eqz v7, :cond_3

    .line 239
    invoke-virtual {v7}, Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepData;->getPhotoTitle()Landroid/databinding/ObservableField;

    move-result-object v12

    goto :goto_3

    :cond_3
    const/4 v12, 0x0

    .line 241
    :goto_3
    invoke-virtual {v1, v10, v12}, Lru/rocketbank/r2d2/databinding/FragmentNewPassportStepBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v12, :cond_4

    .line 246
    invoke-virtual {v12}, Landroid/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    goto :goto_4

    :cond_4
    const/4 v12, 0x0

    :goto_4
    and-long v26, v2, v21

    cmp-long v28, v26, v4

    const/4 v10, 0x4

    const/4 v8, 0x1

    if-eqz v28, :cond_b

    if-eqz v7, :cond_5

    .line 253
    invoke-virtual {v7}, Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepData;->getBottomButtonText()Landroid/databinding/ObservableField;

    move-result-object v9

    goto :goto_5

    :cond_5
    const/4 v9, 0x0

    .line 255
    :goto_5
    invoke-virtual {v1, v8, v9}, Lru/rocketbank/r2d2/databinding/FragmentNewPassportStepBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v9, :cond_6

    .line 260
    invoke-virtual {v9}, Landroid/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    goto :goto_6

    :cond_6
    const/4 v9, 0x0

    :goto_6
    if-eqz v9, :cond_7

    move/from16 v28, v8

    goto :goto_7

    :cond_7
    const/16 v28, 0x0

    :goto_7
    cmp-long v30, v26, v4

    if-eqz v30, :cond_9

    if-eqz v28, :cond_8

    const-wide/16 v26, 0x1000

    or-long v30, v2, v26

    :goto_8
    move-wide/from16 v2, v30

    goto :goto_9

    :cond_8
    const-wide/16 v26, 0x800

    or-long v30, v2, v26

    goto :goto_8

    :cond_9
    :goto_9
    if-eqz v28, :cond_a

    goto :goto_a

    :cond_a
    move/from16 v26, v10

    goto :goto_b

    :cond_b
    const/4 v9, 0x0

    :goto_a
    const/16 v26, 0x0

    :goto_b
    and-long v27, v2, v19

    cmp-long v30, v27, v4

    if-eqz v30, :cond_d

    if-eqz v7, :cond_c

    .line 283
    invoke-virtual {v7}, Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepData;->getImage()Landroid/databinding/ObservableField;

    move-result-object v27

    move-object/from16 v8, v27

    goto :goto_c

    :cond_c
    const/4 v8, 0x0

    :goto_c
    const/4 v13, 0x2

    .line 285
    invoke-virtual {v1, v13, v8}, Lru/rocketbank/r2d2/databinding/FragmentNewPassportStepBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v8, :cond_d

    .line 290
    invoke-virtual {v8}, Landroid/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/drawable/Drawable;

    goto :goto_d

    :cond_d
    const/4 v8, 0x0

    :goto_d
    and-long v13, v2, v17

    cmp-long v27, v13, v4

    if-eqz v27, :cond_f

    if-eqz v7, :cond_e

    .line 297
    invoke-virtual {v7}, Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepData;->getButtonsEnabled()Landroid/databinding/ObservableBoolean;

    move-result-object v13

    goto :goto_e

    :cond_e
    const/4 v13, 0x0

    :goto_e
    const/4 v14, 0x3

    .line 299
    invoke-virtual {v1, v14, v13}, Lru/rocketbank/r2d2/databinding/FragmentNewPassportStepBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v13, :cond_f

    .line 304
    invoke-virtual {v13}, Landroid/databinding/ObservableBoolean;->get()Z

    move-result v13

    goto :goto_f

    :cond_f
    const/4 v13, 0x0

    :goto_f
    and-long v27, v2, v15

    cmp-long v14, v27, v4

    if-eqz v14, :cond_16

    if-eqz v7, :cond_10

    .line 311
    invoke-virtual {v7}, Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepData;->getHelpText()Landroid/databinding/ObservableField;

    move-result-object v14

    goto :goto_10

    :cond_10
    const/4 v14, 0x0

    .line 313
    :goto_10
    invoke-virtual {v1, v10, v14}, Lru/rocketbank/r2d2/databinding/FragmentNewPassportStepBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v14, :cond_11

    .line 318
    invoke-virtual {v14}, Landroid/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    goto :goto_11

    :cond_11
    const/4 v10, 0x0

    :goto_11
    if-eqz v10, :cond_12

    const/16 v32, 0x1

    goto :goto_12

    :cond_12
    const/16 v32, 0x0

    :goto_12
    cmp-long v14, v27, v4

    if-eqz v14, :cond_14

    if-eqz v32, :cond_13

    const-wide/16 v27, 0x400

    or-long v30, v2, v27

    goto :goto_13

    :cond_13
    const-wide/16 v27, 0x200

    or-long v30, v2, v27

    goto :goto_13

    :cond_14
    move-wide/from16 v30, v2

    :goto_13
    if-eqz v32, :cond_15

    const/16 v29, 0x0

    goto :goto_14

    :cond_15
    const/16 v2, 0x8

    move/from16 v29, v2

    :goto_14
    move-object v14, v10

    move/from16 v10, v29

    move-wide/from16 v2, v30

    goto :goto_15

    :cond_16
    const/4 v10, 0x0

    const/4 v14, 0x0

    :goto_15
    const-wide/16 v27, 0x1a0

    and-long v30, v2, v27

    cmp-long v27, v30, v4

    if-eqz v27, :cond_18

    if-eqz v7, :cond_17

    .line 341
    invoke-virtual {v7}, Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepData;->getMainButtonText()Landroid/databinding/ObservableField;

    move-result-object v7

    goto :goto_16

    :cond_17
    const/4 v7, 0x0

    :goto_16
    const/4 v15, 0x5

    .line 343
    invoke-virtual {v1, v15, v7}, Lru/rocketbank/r2d2/databinding/FragmentNewPassportStepBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v7, :cond_18

    .line 348
    invoke-virtual {v7}, Landroid/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    move-object v15, v12

    goto :goto_17

    :cond_18
    move-object v15, v12

    const/4 v7, 0x0

    :goto_17
    move-object v12, v8

    move/from16 v8, v26

    goto :goto_18

    :cond_19
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_18
    and-long v25, v2, v17

    cmp-long v16, v25, v4

    if-eqz v16, :cond_1a

    .line 356
    iget-object v4, v1, Lru/rocketbank/r2d2/databinding/FragmentNewPassportStepBinding;->button:Lru/rocketbank/core/widgets/RocketButton;

    invoke-virtual {v4, v13}, Lru/rocketbank/core/widgets/RocketButton;->setEnabled(Z)V

    .line 357
    iget-object v4, v1, Lru/rocketbank/r2d2/databinding/FragmentNewPassportStepBinding;->buttonBottom:Lru/rocketbank/core/widgets/RocketButton;

    invoke-virtual {v4, v13}, Lru/rocketbank/core/widgets/RocketButton;->setEnabled(Z)V

    :cond_1a
    const-wide/16 v4, 0x140

    and-long v16, v2, v4

    const-wide/16 v4, 0x0

    cmp-long v13, v16, v4

    if-eqz v13, :cond_1b

    .line 362
    iget-object v13, v1, Lru/rocketbank/r2d2/databinding/FragmentNewPassportStepBinding;->button:Lru/rocketbank/core/widgets/RocketButton;

    invoke-virtual {v13, v6}, Lru/rocketbank/core/widgets/RocketButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 363
    iget-object v6, v1, Lru/rocketbank/r2d2/databinding/FragmentNewPassportStepBinding;->buttonBottom:Lru/rocketbank/core/widgets/RocketButton;

    invoke-virtual {v6, v11}, Lru/rocketbank/core/widgets/RocketButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1b
    const-wide/16 v16, 0x1a0

    and-long v25, v2, v16

    cmp-long v6, v25, v4

    if-eqz v6, :cond_1c

    .line 368
    iget-object v6, v1, Lru/rocketbank/r2d2/databinding/FragmentNewPassportStepBinding;->button:Lru/rocketbank/core/widgets/RocketButton;

    invoke-static {v6, v7}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_1c
    and-long v6, v2, v21

    cmp-long v11, v6, v4

    if-eqz v11, :cond_1d

    .line 373
    iget-object v6, v1, Lru/rocketbank/r2d2/databinding/FragmentNewPassportStepBinding;->buttonBottom:Lru/rocketbank/core/widgets/RocketButton;

    invoke-static {v6, v9}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 374
    iget-object v6, v1, Lru/rocketbank/r2d2/databinding/FragmentNewPassportStepBinding;->buttonBottom:Lru/rocketbank/core/widgets/RocketButton;

    invoke-virtual {v6, v8}, Lru/rocketbank/core/widgets/RocketButton;->setVisibility(I)V

    :cond_1d
    const-wide/16 v6, 0x190

    and-long v8, v2, v6

    cmp-long v6, v8, v4

    if-eqz v6, :cond_1e

    .line 379
    iget-object v6, v1, Lru/rocketbank/r2d2/databinding/FragmentNewPassportStepBinding;->helpText:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-static {v6, v14}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 380
    iget-object v6, v1, Lru/rocketbank/r2d2/databinding/FragmentNewPassportStepBinding;->helpText:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v6, v10}, Lru/rocketbank/core/widgets/RocketTextView;->setVisibility(I)V

    :cond_1e
    and-long v6, v2, v19

    cmp-long v8, v6, v4

    if-eqz v8, :cond_1f

    .line 385
    iget-object v6, v1, Lru/rocketbank/r2d2/databinding/FragmentNewPassportStepBinding;->imageView3:Landroid/support/v7/widget/AppCompatImageView;

    invoke-static {v6, v12}, Lru/rocketbank/r2d2/widgets/BindingViewAdapter;->setDrawable(Landroid/support/v7/widget/AppCompatImageView;Landroid/graphics/drawable/Drawable;)V

    :cond_1f
    and-long v6, v2, v23

    cmp-long v2, v6, v4

    if-eqz v2, :cond_20

    .line 390
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/FragmentNewPassportStepBinding;->titleText:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-static {v2, v15}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_20
    return-void

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 199
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public getData()Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepData;
    .locals 1

    .line 117
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/FragmentNewPassportStepBinding;->mData:Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepData;

    return-object v0
.end method

.method public getListener()Lru/rocketbank/r2d2/registration/new_passport/OnButtonsClickListener;
    .locals 1

    .line 105
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/FragmentNewPassportStepBinding;->mListener:Lru/rocketbank/r2d2/registration/new_passport/OnButtonsClickListener;

    return-object v0
.end method

.method public hasPendingBindings()Z
    .locals 5

    .line 72
    monitor-enter p0

    .line 73
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/FragmentNewPassportStepBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    .line 74
    monitor-exit p0

    return v0

    .line 76
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

    .line 64
    monitor-enter p0

    const-wide/16 v0, 0x100

    .line 65
    :try_start_0
    iput-wide v0, p0, Lru/rocketbank/r2d2/databinding/FragmentNewPassportStepBinding;->mDirtyFlags:J

    .line 66
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/FragmentNewPassportStepBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 66
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

    .line 134
    :pswitch_0
    check-cast p2, Landroid/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/FragmentNewPassportStepBinding;->onChangeDataMainButtonText(Landroid/databinding/ObservableField;I)Z

    move-result p1

    return p1

    .line 132
    :pswitch_1
    check-cast p2, Landroid/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/FragmentNewPassportStepBinding;->onChangeDataHelpText(Landroid/databinding/ObservableField;I)Z

    move-result p1

    return p1

    .line 130
    :pswitch_2
    check-cast p2, Landroid/databinding/ObservableBoolean;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/FragmentNewPassportStepBinding;->onChangeDataButtonsEnabled(Landroid/databinding/ObservableBoolean;I)Z

    move-result p1

    return p1

    .line 128
    :pswitch_3
    check-cast p2, Landroid/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/FragmentNewPassportStepBinding;->onChangeDataImage(Landroid/databinding/ObservableField;I)Z

    move-result p1

    return p1

    .line 126
    :pswitch_4
    check-cast p2, Landroid/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/FragmentNewPassportStepBinding;->onChangeDataBottomButtonText(Landroid/databinding/ObservableField;I)Z

    move-result p1

    return p1

    .line 124
    :pswitch_5
    check-cast p2, Landroid/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/FragmentNewPassportStepBinding;->onChangeDataPhotoTitle(Landroid/databinding/ObservableField;I)Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setData(Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepData;)V
    .locals 6

    .line 108
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/FragmentNewPassportStepBinding;->mData:Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepData;

    .line 109
    monitor-enter p0

    .line 110
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/FragmentNewPassportStepBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x80

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/FragmentNewPassportStepBinding;->mDirtyFlags:J

    .line 111
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x18

    .line 112
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/FragmentNewPassportStepBinding;->notifyPropertyChanged(I)V

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

.method public setListener(Lru/rocketbank/r2d2/registration/new_passport/OnButtonsClickListener;)V
    .locals 6

    .line 96
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/FragmentNewPassportStepBinding;->mListener:Lru/rocketbank/r2d2/registration/new_passport/OnButtonsClickListener;

    .line 97
    monitor-enter p0

    .line 98
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/FragmentNewPassportStepBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x40

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/FragmentNewPassportStepBinding;->mDirtyFlags:J

    .line 99
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x37

    .line 100
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/FragmentNewPassportStepBinding;->notifyPropertyChanged(I)V

    .line 101
    invoke-super {p0}, Landroid/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 99
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

    .line 84
    check-cast p2, Lru/rocketbank/r2d2/registration/new_passport/OnButtonsClickListener;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/FragmentNewPassportStepBinding;->setListener(Lru/rocketbank/r2d2/registration/new_passport/OnButtonsClickListener;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x18

    if-ne v0, p1, :cond_1

    .line 87
    check-cast p2, Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepData;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/FragmentNewPassportStepBinding;->setData(Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepData;)V

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method
