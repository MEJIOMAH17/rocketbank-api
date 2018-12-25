.class public Lru/rocketbank/r2d2/databinding/FragmentInviteFriendsBinding;
.super Landroid/databinding/ViewDataBinding;
.source "FragmentInviteFriendsBinding.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/databinding/FragmentInviteFriendsBinding$OnClickListenerImpl1;,
        Lru/rocketbank/r2d2/databinding/FragmentInviteFriendsBinding$OnClickListenerImpl;
    }
.end annotation


# static fields
.field private static final sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field public final cat:Landroid/widget/ImageView;

.field public final content:Landroid/widget/FrameLayout;

.field public final fab:Landroid/support/design/widget/FloatingActionButton;

.field public final image:Landroid/widget/FrameLayout;

.field public final listBackground:Landroid/view/View;

.field private mDirtyFlags:J

.field private mHandler:Lru/rocketbank/r2d2/data/binding/InviteFriendsFragmentHandler;

.field private mHandlerOnFabClickAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/FragmentInviteFriendsBinding$OnClickListenerImpl;

.field private mHandlerOnUrlClickAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/FragmentInviteFriendsBinding$OnClickListenerImpl1;

.field public final nothingFound:Landroid/widget/FrameLayout;

.field public final nothingFoundText:Lru/rocketbank/core/widgets/RocketTextView;

.field public final overlay:Landroid/view/View;

.field public final progressBar:Landroid/widget/ProgressBar;

.field public final recyclerView:Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;

.field public final title:Lru/rocketbank/core/widgets/RocketAutofitTextView;

.field public final titleURL:Lru/rocketbank/core/widgets/RocketTextView;

.field public final toolbar:Landroid/support/v7/widget/Toolbar;

.field public final videoView:Landroid/view/TextureView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 17
    sput-object v0, Lru/rocketbank/r2d2/databinding/FragmentInviteFriendsBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0901c7

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 18
    sget-object v0, Lru/rocketbank/r2d2/databinding/FragmentInviteFriendsBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090408

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 19
    sget-object v0, Lru/rocketbank/r2d2/databinding/FragmentInviteFriendsBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0903cc

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 20
    sget-object v0, Lru/rocketbank/r2d2/databinding/FragmentInviteFriendsBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f09029d

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 21
    sget-object v0, Lru/rocketbank/r2d2/databinding/FragmentInviteFriendsBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090223

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 22
    sget-object v0, Lru/rocketbank/r2d2/databinding/FragmentInviteFriendsBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0902ce

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 23
    sget-object v0, Lru/rocketbank/r2d2/databinding/FragmentInviteFriendsBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0902ba

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 24
    sget-object v0, Lru/rocketbank/r2d2/databinding/FragmentInviteFriendsBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f09027e

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 25
    sget-object v0, Lru/rocketbank/r2d2/databinding/FragmentInviteFriendsBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0900cb

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 26
    sget-object v0, Lru/rocketbank/r2d2/databinding/FragmentInviteFriendsBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f09027f

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 27
    sget-object v0, Lru/rocketbank/r2d2/databinding/FragmentInviteFriendsBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0903d8

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x0

    .line 68
    invoke-direct {p0, p1, p2, v0}, Landroid/databinding/ViewDataBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;I)V

    const-wide/16 v1, -0x1

    .line 197
    iput-wide v1, p0, Lru/rocketbank/r2d2/databinding/FragmentInviteFriendsBinding;->mDirtyFlags:J

    .line 69
    sget-object v1, Lru/rocketbank/r2d2/databinding/FragmentInviteFriendsBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v2, Lru/rocketbank/r2d2/databinding/FragmentInviteFriendsBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/16 v3, 0xe

    invoke-static {p1, p2, v3, v1, v2}, Lru/rocketbank/r2d2/databinding/FragmentInviteFriendsBinding;->mapBindings(Landroid/databinding/DataBindingComponent;Landroid/view/View;ILandroid/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object p1

    const/16 v1, 0xb

    .line 70
    aget-object v1, p1, v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/FragmentInviteFriendsBinding;->cat:Landroid/widget/ImageView;

    .line 71
    aget-object v0, p1, v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/FragmentInviteFriendsBinding;->content:Landroid/widget/FrameLayout;

    .line 72
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/FragmentInviteFriendsBinding;->content:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x2

    .line 73
    aget-object v0, p1, v0

    check-cast v0, Landroid/support/design/widget/FloatingActionButton;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/FragmentInviteFriendsBinding;->fab:Landroid/support/design/widget/FloatingActionButton;

    .line 74
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/FragmentInviteFriendsBinding;->fab:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/FloatingActionButton;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x3

    .line 75
    aget-object v0, p1, v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/FragmentInviteFriendsBinding;->image:Landroid/widget/FrameLayout;

    const/4 v0, 0x7

    .line 76
    aget-object v0, p1, v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/FragmentInviteFriendsBinding;->listBackground:Landroid/view/View;

    const/16 v0, 0xa

    .line 77
    aget-object v0, p1, v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/FragmentInviteFriendsBinding;->nothingFound:Landroid/widget/FrameLayout;

    const/16 v0, 0xc

    .line 78
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/FragmentInviteFriendsBinding;->nothingFoundText:Lru/rocketbank/core/widgets/RocketTextView;

    const/4 v0, 0x6

    .line 79
    aget-object v0, p1, v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/FragmentInviteFriendsBinding;->overlay:Landroid/view/View;

    const/16 v0, 0x9

    .line 80
    aget-object v0, p1, v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/FragmentInviteFriendsBinding;->progressBar:Landroid/widget/ProgressBar;

    const/16 v0, 0x8

    .line 81
    aget-object v0, p1, v0

    check-cast v0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/FragmentInviteFriendsBinding;->recyclerView:Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;

    const/4 v0, 0x5

    .line 82
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketAutofitTextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/FragmentInviteFriendsBinding;->title:Lru/rocketbank/core/widgets/RocketAutofitTextView;

    const/4 v0, 0x1

    .line 83
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/FragmentInviteFriendsBinding;->titleURL:Lru/rocketbank/core/widgets/RocketTextView;

    .line 84
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/FragmentInviteFriendsBinding;->titleURL:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    const/16 v0, 0xd

    .line 85
    aget-object v0, p1, v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/FragmentInviteFriendsBinding;->toolbar:Landroid/support/v7/widget/Toolbar;

    const/4 v0, 0x4

    .line 86
    aget-object p1, p1, v0

    check-cast p1, Landroid/view/TextureView;

    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/FragmentInviteFriendsBinding;->videoView:Landroid/view/TextureView;

    .line 87
    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/FragmentInviteFriendsBinding;->setRootTag(Landroid/view/View;)V

    .line 89
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/FragmentInviteFriendsBinding;->invalidateAll()V

    return-void
.end method

.method public static bind(Landroid/view/View;)Lru/rocketbank/r2d2/databinding/FragmentInviteFriendsBinding;
    .locals 1

    .line 217
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/FragmentInviteFriendsBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FragmentInviteFriendsBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FragmentInviteFriendsBinding;
    .locals 2

    const-string v0, "layout/fragment_invite_friends_0"

    .line 221
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 222
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

    .line 224
    :cond_0
    new-instance v0, Lru/rocketbank/r2d2/databinding/FragmentInviteFriendsBinding;

    invoke-direct {v0, p1, p0}, Lru/rocketbank/r2d2/databinding/FragmentInviteFriendsBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lru/rocketbank/r2d2/databinding/FragmentInviteFriendsBinding;
    .locals 1

    .line 209
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/FragmentInviteFriendsBinding;->inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FragmentInviteFriendsBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FragmentInviteFriendsBinding;
    .locals 3

    const v0, 0x7f0c00df

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 213
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-static {p0, p1}, Lru/rocketbank/r2d2/databinding/FragmentInviteFriendsBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FragmentInviteFriendsBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lru/rocketbank/r2d2/databinding/FragmentInviteFriendsBinding;
    .locals 1

    .line 201
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lru/rocketbank/r2d2/databinding/FragmentInviteFriendsBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FragmentInviteFriendsBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FragmentInviteFriendsBinding;
    .locals 1

    const v0, 0x7f0c00df

    .line 205
    invoke-static {p0, v0, p1, p2, p3}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Landroid/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lru/rocketbank/r2d2/databinding/FragmentInviteFriendsBinding;

    return-object p0
.end method


# virtual methods
.method protected executeBindings()V
    .locals 9

    .line 145
    monitor-enter p0

    .line 146
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/FragmentInviteFriendsBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    .line 147
    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/FragmentInviteFriendsBinding;->mDirtyFlags:J

    .line 148
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    iget-object v4, p0, Lru/rocketbank/r2d2/databinding/FragmentInviteFriendsBinding;->mHandler:Lru/rocketbank/r2d2/data/binding/InviteFriendsFragmentHandler;

    const-wide/16 v5, 0x3

    and-long v7, v0, v5

    cmp-long v0, v7, v2

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-eqz v4, :cond_2

    .line 159
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/FragmentInviteFriendsBinding;->mHandlerOnFabClickAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/FragmentInviteFriendsBinding$OnClickListenerImpl;

    if-nez v0, :cond_0

    new-instance v0, Lru/rocketbank/r2d2/databinding/FragmentInviteFriendsBinding$OnClickListenerImpl;

    invoke-direct {v0}, Lru/rocketbank/r2d2/databinding/FragmentInviteFriendsBinding$OnClickListenerImpl;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/FragmentInviteFriendsBinding;->mHandlerOnFabClickAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/FragmentInviteFriendsBinding$OnClickListenerImpl;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/FragmentInviteFriendsBinding;->mHandlerOnFabClickAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/FragmentInviteFriendsBinding$OnClickListenerImpl;

    :goto_0
    invoke-virtual {v0, v4}, Lru/rocketbank/r2d2/databinding/FragmentInviteFriendsBinding$OnClickListenerImpl;->setValue(Lru/rocketbank/r2d2/data/binding/InviteFriendsFragmentHandler;)Lru/rocketbank/r2d2/databinding/FragmentInviteFriendsBinding$OnClickListenerImpl;

    move-result-object v1

    .line 161
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/FragmentInviteFriendsBinding;->mHandlerOnUrlClickAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/FragmentInviteFriendsBinding$OnClickListenerImpl1;

    if-nez v0, :cond_1

    new-instance v0, Lru/rocketbank/r2d2/databinding/FragmentInviteFriendsBinding$OnClickListenerImpl1;

    invoke-direct {v0}, Lru/rocketbank/r2d2/databinding/FragmentInviteFriendsBinding$OnClickListenerImpl1;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/FragmentInviteFriendsBinding;->mHandlerOnUrlClickAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/FragmentInviteFriendsBinding$OnClickListenerImpl1;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/FragmentInviteFriendsBinding;->mHandlerOnUrlClickAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/FragmentInviteFriendsBinding$OnClickListenerImpl1;

    :goto_1
    invoke-virtual {v0, v4}, Lru/rocketbank/r2d2/databinding/FragmentInviteFriendsBinding$OnClickListenerImpl1;->setValue(Lru/rocketbank/r2d2/data/binding/InviteFriendsFragmentHandler;)Lru/rocketbank/r2d2/databinding/FragmentInviteFriendsBinding$OnClickListenerImpl1;

    move-result-object v0

    goto :goto_2

    :cond_2
    move-object v0, v1

    :goto_2
    cmp-long v4, v7, v2

    if-eqz v4, :cond_3

    .line 168
    iget-object v2, p0, Lru/rocketbank/r2d2/databinding/FragmentInviteFriendsBinding;->fab:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {v2, v1}, Landroid/support/design/widget/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/FragmentInviteFriendsBinding;->titleURL:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v1, v0}, Lru/rocketbank/core/widgets/RocketTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    return-void

    :catchall_0
    move-exception v0

    .line 148
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getHandler()Lru/rocketbank/r2d2/data/binding/InviteFriendsFragmentHandler;
    .locals 1

    .line 132
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/FragmentInviteFriendsBinding;->mHandler:Lru/rocketbank/r2d2/data/binding/InviteFriendsFragmentHandler;

    return-object v0
.end method

.method public hasPendingBindings()Z
    .locals 5

    .line 102
    monitor-enter p0

    .line 103
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/FragmentInviteFriendsBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    .line 104
    monitor-exit p0

    return v0

    .line 106
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

    .line 94
    monitor-enter p0

    const-wide/16 v0, 0x2

    .line 95
    :try_start_0
    iput-wide v0, p0, Lru/rocketbank/r2d2/databinding/FragmentInviteFriendsBinding;->mDirtyFlags:J

    .line 96
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/FragmentInviteFriendsBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 96
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected onFieldChange(ILjava/lang/Object;I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public setHandler(Lru/rocketbank/r2d2/data/binding/InviteFriendsFragmentHandler;)V
    .locals 6

    .line 123
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/FragmentInviteFriendsBinding;->mHandler:Lru/rocketbank/r2d2/data/binding/InviteFriendsFragmentHandler;

    .line 124
    monitor-enter p0

    .line 125
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/FragmentInviteFriendsBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/FragmentInviteFriendsBinding;->mDirtyFlags:J

    .line 126
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x28

    .line 127
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/FragmentInviteFriendsBinding;->notifyPropertyChanged(I)V

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

.method public setVariable(ILjava/lang/Object;)Z
    .locals 1

    const/16 v0, 0x28

    if-ne v0, p1, :cond_0

    .line 114
    check-cast p2, Lru/rocketbank/r2d2/data/binding/InviteFriendsFragmentHandler;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/FragmentInviteFriendsBinding;->setHandler(Lru/rocketbank/r2d2/data/binding/InviteFriendsFragmentHandler;)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
