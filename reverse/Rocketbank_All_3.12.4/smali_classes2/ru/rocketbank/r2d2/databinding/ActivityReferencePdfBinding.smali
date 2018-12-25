.class public Lru/rocketbank/r2d2/databinding/ActivityReferencePdfBinding;
.super Landroid/databinding/ViewDataBinding;
.source "ActivityReferencePdfBinding.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/databinding/ActivityReferencePdfBinding$OnClickListenerImpl1;,
        Lru/rocketbank/r2d2/databinding/ActivityReferencePdfBinding$OnClickListenerImpl;
    }
.end annotation


# static fields
.field private static final sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field public final buttonClose:Lru/rocketbank/core/widgets/RocketTextView;

.field public final buttonTryAgan:Lru/rocketbank/core/widgets/RocketTextView;

.field public final loader:Lru/rocketbank/core/widgets/RocketLoader;

.field private mData:Lru/rocketbank/r2d2/data/binding/reference/ReferencePdfData;

.field private mDirtyFlags:J

.field private mListener:Lru/rocketbank/r2d2/data/binding/reference/ReferencePdfListener;

.field private mListenerCloseClickedAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/ActivityReferencePdfBinding$OnClickListenerImpl;

.field private mListenerRepeatClickedAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/ActivityReferencePdfBinding$OnClickListenerImpl1;

.field private final mboundView0:Landroid/widget/FrameLayout;

.field private final mboundView2:Landroid/widget/LinearLayout;

.field public final statusText:Lru/rocketbank/core/widgets/RocketTextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 17
    sput-object v0, Lru/rocketbank/r2d2/databinding/ActivityReferencePdfBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090225

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x2

    .line 44
    invoke-direct {p0, p1, p2, v0}, Landroid/databinding/ViewDataBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;I)V

    const-wide/16 v1, -0x1

    .line 264
    iput-wide v1, p0, Lru/rocketbank/r2d2/databinding/ActivityReferencePdfBinding;->mDirtyFlags:J

    .line 45
    sget-object v1, Lru/rocketbank/r2d2/databinding/ActivityReferencePdfBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v2, Lru/rocketbank/r2d2/databinding/ActivityReferencePdfBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v3, 0x6

    invoke-static {p1, p2, v3, v1, v2}, Lru/rocketbank/r2d2/databinding/ActivityReferencePdfBinding;->mapBindings(Landroid/databinding/DataBindingComponent;Landroid/view/View;ILandroid/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x3

    .line 46
    aget-object v1, p1, v1

    check-cast v1, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/ActivityReferencePdfBinding;->buttonClose:Lru/rocketbank/core/widgets/RocketTextView;

    .line 47
    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/ActivityReferencePdfBinding;->buttonClose:Lru/rocketbank/core/widgets/RocketTextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    const/4 v1, 0x4

    .line 48
    aget-object v1, p1, v1

    check-cast v1, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/ActivityReferencePdfBinding;->buttonTryAgan:Lru/rocketbank/core/widgets/RocketTextView;

    .line 49
    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/ActivityReferencePdfBinding;->buttonTryAgan:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v1, v2}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    const/4 v1, 0x5

    .line 50
    aget-object v1, p1, v1

    check-cast v1, Lru/rocketbank/core/widgets/RocketLoader;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/ActivityReferencePdfBinding;->loader:Lru/rocketbank/core/widgets/RocketLoader;

    const/4 v1, 0x0

    .line 51
    aget-object v1, p1, v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/ActivityReferencePdfBinding;->mboundView0:Landroid/widget/FrameLayout;

    .line 52
    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/ActivityReferencePdfBinding;->mboundView0:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 53
    aget-object v0, p1, v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityReferencePdfBinding;->mboundView2:Landroid/widget/LinearLayout;

    .line 54
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityReferencePdfBinding;->mboundView2:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 55
    aget-object p1, p1, v0

    check-cast p1, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/ActivityReferencePdfBinding;->statusText:Lru/rocketbank/core/widgets/RocketTextView;

    .line 56
    iget-object p1, p0, Lru/rocketbank/r2d2/databinding/ActivityReferencePdfBinding;->statusText:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {p1, v2}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    .line 57
    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/ActivityReferencePdfBinding;->setRootTag(Landroid/view/View;)V

    .line 59
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/ActivityReferencePdfBinding;->invalidateAll()V

    return-void
.end method

.method public static bind(Landroid/view/View;)Lru/rocketbank/r2d2/databinding/ActivityReferencePdfBinding;
    .locals 1

    .line 284
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/ActivityReferencePdfBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivityReferencePdfBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivityReferencePdfBinding;
    .locals 2

    const-string v0, "layout/activity_reference_pdf_0"

    .line 288
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 289
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

    .line 291
    :cond_0
    new-instance v0, Lru/rocketbank/r2d2/databinding/ActivityReferencePdfBinding;

    invoke-direct {v0, p1, p0}, Lru/rocketbank/r2d2/databinding/ActivityReferencePdfBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lru/rocketbank/r2d2/databinding/ActivityReferencePdfBinding;
    .locals 1

    .line 276
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/ActivityReferencePdfBinding;->inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivityReferencePdfBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivityReferencePdfBinding;
    .locals 3

    const v0, 0x7f0c0051

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 280
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-static {p0, p1}, Lru/rocketbank/r2d2/databinding/ActivityReferencePdfBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivityReferencePdfBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lru/rocketbank/r2d2/databinding/ActivityReferencePdfBinding;
    .locals 1

    .line 268
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lru/rocketbank/r2d2/databinding/ActivityReferencePdfBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivityReferencePdfBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivityReferencePdfBinding;
    .locals 1

    const v0, 0x7f0c0051

    .line 272
    invoke-static {p0, v0, p1, p2, p3}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Landroid/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lru/rocketbank/r2d2/databinding/ActivityReferencePdfBinding;

    return-object p0
.end method

.method private onChangeDataButtonsToolbar(Landroid/databinding/ObservableBoolean;I)Z
    .locals 4

    if-nez p2, :cond_0

    .line 132
    monitor-enter p0

    .line 133
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/ActivityReferencePdfBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x1

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/ActivityReferencePdfBinding;->mDirtyFlags:J

    .line 134
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

.method private onChangeDataStatusText(Landroid/databinding/ObservableField;I)Z
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

    .line 141
    monitor-enter p0

    .line 142
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/ActivityReferencePdfBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x2

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/ActivityReferencePdfBinding;->mDirtyFlags:J

    .line 143
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
    .locals 22

    move-object/from16 v1, p0

    .line 152
    monitor-enter p0

    .line 153
    :try_start_0
    iget-wide v2, v1, Lru/rocketbank/r2d2/databinding/ActivityReferencePdfBinding;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    .line 154
    iput-wide v4, v1, Lru/rocketbank/r2d2/databinding/ActivityReferencePdfBinding;->mDirtyFlags:J

    .line 155
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    iget-object v6, v1, Lru/rocketbank/r2d2/databinding/ActivityReferencePdfBinding;->mListener:Lru/rocketbank/r2d2/data/binding/reference/ReferencePdfListener;

    .line 159
    iget-object v7, v1, Lru/rocketbank/r2d2/databinding/ActivityReferencePdfBinding;->mData:Lru/rocketbank/r2d2/data/binding/reference/ReferencePdfData;

    const-wide/16 v8, 0x14

    and-long v10, v2, v8

    cmp-long v12, v10, v4

    if-eqz v12, :cond_2

    if-eqz v6, :cond_2

    .line 172
    iget-object v11, v1, Lru/rocketbank/r2d2/databinding/ActivityReferencePdfBinding;->mListenerCloseClickedAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/ActivityReferencePdfBinding$OnClickListenerImpl;

    if-nez v11, :cond_0

    new-instance v11, Lru/rocketbank/r2d2/databinding/ActivityReferencePdfBinding$OnClickListenerImpl;

    invoke-direct {v11}, Lru/rocketbank/r2d2/databinding/ActivityReferencePdfBinding$OnClickListenerImpl;-><init>()V

    iput-object v11, v1, Lru/rocketbank/r2d2/databinding/ActivityReferencePdfBinding;->mListenerCloseClickedAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/ActivityReferencePdfBinding$OnClickListenerImpl;

    goto :goto_0

    :cond_0
    iget-object v11, v1, Lru/rocketbank/r2d2/databinding/ActivityReferencePdfBinding;->mListenerCloseClickedAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/ActivityReferencePdfBinding$OnClickListenerImpl;

    :goto_0
    invoke-virtual {v11, v6}, Lru/rocketbank/r2d2/databinding/ActivityReferencePdfBinding$OnClickListenerImpl;->setValue(Lru/rocketbank/r2d2/data/binding/reference/ReferencePdfListener;)Lru/rocketbank/r2d2/databinding/ActivityReferencePdfBinding$OnClickListenerImpl;

    move-result-object v11

    .line 174
    iget-object v12, v1, Lru/rocketbank/r2d2/databinding/ActivityReferencePdfBinding;->mListenerRepeatClickedAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/ActivityReferencePdfBinding$OnClickListenerImpl1;

    if-nez v12, :cond_1

    new-instance v12, Lru/rocketbank/r2d2/databinding/ActivityReferencePdfBinding$OnClickListenerImpl1;

    invoke-direct {v12}, Lru/rocketbank/r2d2/databinding/ActivityReferencePdfBinding$OnClickListenerImpl1;-><init>()V

    iput-object v12, v1, Lru/rocketbank/r2d2/databinding/ActivityReferencePdfBinding;->mListenerRepeatClickedAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/ActivityReferencePdfBinding$OnClickListenerImpl1;

    goto :goto_1

    :cond_1
    iget-object v12, v1, Lru/rocketbank/r2d2/databinding/ActivityReferencePdfBinding;->mListenerRepeatClickedAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/ActivityReferencePdfBinding$OnClickListenerImpl1;

    :goto_1
    invoke-virtual {v12, v6}, Lru/rocketbank/r2d2/databinding/ActivityReferencePdfBinding$OnClickListenerImpl1;->setValue(Lru/rocketbank/r2d2/data/binding/reference/ReferencePdfListener;)Lru/rocketbank/r2d2/databinding/ActivityReferencePdfBinding$OnClickListenerImpl1;

    move-result-object v6

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    const/4 v11, 0x0

    :goto_2
    const-wide/16 v12, 0x1b

    and-long v14, v2, v12

    cmp-long v12, v14, v4

    const-wide/16 v13, 0x1a

    const-wide/16 v15, 0x19

    const/4 v10, 0x0

    if-eqz v12, :cond_a

    and-long v18, v2, v15

    cmp-long v12, v18, v4

    if-eqz v12, :cond_8

    if-eqz v7, :cond_3

    .line 184
    invoke-virtual {v7}, Lru/rocketbank/r2d2/data/binding/reference/ReferencePdfData;->getButtonsToolbar()Landroid/databinding/ObservableBoolean;

    move-result-object v12

    goto :goto_3

    :cond_3
    const/4 v12, 0x0

    .line 186
    :goto_3
    invoke-virtual {v1, v10, v12}, Lru/rocketbank/r2d2/databinding/ActivityReferencePdfBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v12, :cond_4

    .line 191
    invoke-virtual {v12}, Landroid/databinding/ObservableBoolean;->get()Z

    move-result v12

    goto :goto_4

    :cond_4
    move v12, v10

    :goto_4
    cmp-long v20, v18, v4

    if-eqz v20, :cond_6

    if-eqz v12, :cond_5

    const-wide/16 v18, 0x40

    or-long v20, v2, v18

    goto :goto_5

    :cond_5
    const-wide/16 v18, 0x20

    or-long v20, v2, v18

    goto :goto_5

    :cond_6
    move-wide/from16 v20, v2

    :goto_5
    if-eqz v12, :cond_7

    goto :goto_6

    :cond_7
    const/4 v10, 0x4

    :goto_6
    move-wide/from16 v2, v20

    :cond_8
    and-long v18, v2, v13

    cmp-long v12, v18, v4

    if-eqz v12, :cond_a

    if-eqz v7, :cond_9

    .line 210
    invoke-virtual {v7}, Lru/rocketbank/r2d2/data/binding/reference/ReferencePdfData;->getStatusText()Landroid/databinding/ObservableField;

    move-result-object v7

    goto :goto_7

    :cond_9
    const/4 v7, 0x0

    :goto_7
    const/4 v12, 0x1

    .line 212
    invoke-virtual {v1, v12, v7}, Lru/rocketbank/r2d2/databinding/ActivityReferencePdfBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v7, :cond_a

    .line 217
    invoke-virtual {v7}, Landroid/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    goto :goto_8

    :cond_a
    const/4 v7, 0x0

    :goto_8
    and-long v17, v2, v8

    cmp-long v8, v17, v4

    if-eqz v8, :cond_b

    .line 225
    iget-object v8, v1, Lru/rocketbank/r2d2/databinding/ActivityReferencePdfBinding;->buttonClose:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v8, v11}, Lru/rocketbank/core/widgets/RocketTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    iget-object v8, v1, Lru/rocketbank/r2d2/databinding/ActivityReferencePdfBinding;->buttonTryAgan:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v8, v6}, Lru/rocketbank/core/widgets/RocketTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_b
    and-long v8, v2, v15

    cmp-long v6, v8, v4

    if-eqz v6, :cond_c

    .line 231
    iget-object v6, v1, Lru/rocketbank/r2d2/databinding/ActivityReferencePdfBinding;->mboundView2:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_c
    and-long v8, v2, v13

    cmp-long v2, v8, v4

    if-eqz v2, :cond_d

    .line 236
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/ActivityReferencePdfBinding;->statusText:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-static {v2, v7}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_d
    return-void

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 155
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public getData()Lru/rocketbank/r2d2/data/binding/reference/ReferencePdfData;
    .locals 1

    .line 117
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityReferencePdfBinding;->mData:Lru/rocketbank/r2d2/data/binding/reference/ReferencePdfData;

    return-object v0
.end method

.method public getListener()Lru/rocketbank/r2d2/data/binding/reference/ReferencePdfListener;
    .locals 1

    .line 105
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityReferencePdfBinding;->mListener:Lru/rocketbank/r2d2/data/binding/reference/ReferencePdfListener;

    return-object v0
.end method

.method public hasPendingBindings()Z
    .locals 5

    .line 72
    monitor-enter p0

    .line 73
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/ActivityReferencePdfBinding;->mDirtyFlags:J

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

    const-wide/16 v0, 0x10

    .line 65
    :try_start_0
    iput-wide v0, p0, Lru/rocketbank/r2d2/databinding/ActivityReferencePdfBinding;->mDirtyFlags:J

    .line 66
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/ActivityReferencePdfBinding;->requestRebind()V

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

    .line 126
    :pswitch_0
    check-cast p2, Landroid/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/ActivityReferencePdfBinding;->onChangeDataStatusText(Landroid/databinding/ObservableField;I)Z

    move-result p1

    return p1

    .line 124
    :pswitch_1
    check-cast p2, Landroid/databinding/ObservableBoolean;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/ActivityReferencePdfBinding;->onChangeDataButtonsToolbar(Landroid/databinding/ObservableBoolean;I)Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setData(Lru/rocketbank/r2d2/data/binding/reference/ReferencePdfData;)V
    .locals 6

    .line 108
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/ActivityReferencePdfBinding;->mData:Lru/rocketbank/r2d2/data/binding/reference/ReferencePdfData;

    .line 109
    monitor-enter p0

    .line 110
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/ActivityReferencePdfBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x8

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/ActivityReferencePdfBinding;->mDirtyFlags:J

    .line 111
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x18

    .line 112
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/ActivityReferencePdfBinding;->notifyPropertyChanged(I)V

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

.method public setListener(Lru/rocketbank/r2d2/data/binding/reference/ReferencePdfListener;)V
    .locals 6

    .line 96
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/ActivityReferencePdfBinding;->mListener:Lru/rocketbank/r2d2/data/binding/reference/ReferencePdfListener;

    .line 97
    monitor-enter p0

    .line 98
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/ActivityReferencePdfBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x4

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/ActivityReferencePdfBinding;->mDirtyFlags:J

    .line 99
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x37

    .line 100
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/ActivityReferencePdfBinding;->notifyPropertyChanged(I)V

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
    check-cast p2, Lru/rocketbank/r2d2/data/binding/reference/ReferencePdfListener;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/ActivityReferencePdfBinding;->setListener(Lru/rocketbank/r2d2/data/binding/reference/ReferencePdfListener;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x18

    if-ne v0, p1, :cond_1

    .line 87
    check-cast p2, Lru/rocketbank/r2d2/data/binding/reference/ReferencePdfData;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/ActivityReferencePdfBinding;->setData(Lru/rocketbank/r2d2/data/binding/reference/ReferencePdfData;)V

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method
