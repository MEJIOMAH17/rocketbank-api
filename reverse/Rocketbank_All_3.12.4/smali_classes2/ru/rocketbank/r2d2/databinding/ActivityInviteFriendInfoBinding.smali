.class public Lru/rocketbank/r2d2/databinding/ActivityInviteFriendInfoBinding;
.super Landroid/databinding/ViewDataBinding;
.source "ActivityInviteFriendInfoBinding.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/databinding/ActivityInviteFriendInfoBinding$OnClickListenerImpl4;,
        Lru/rocketbank/r2d2/databinding/ActivityInviteFriendInfoBinding$OnClickListenerImpl3;,
        Lru/rocketbank/r2d2/databinding/ActivityInviteFriendInfoBinding$OnClickListenerImpl2;,
        Lru/rocketbank/r2d2/databinding/ActivityInviteFriendInfoBinding$OnClickListenerImpl1;,
        Lru/rocketbank/r2d2/databinding/ActivityInviteFriendInfoBinding$OnClickListenerImpl;
    }
.end annotation


# static fields
.field private static final sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field public final closeButton:Lru/rocketbank/core/widgets/RocketButton;

.field public final facebook:Landroid/widget/ImageButton;

.field public final fullscreenContent:Landroid/support/design/widget/CoordinatorLayout;

.field private mDirtyFlags:J

.field private mHandler:Lru/rocketbank/r2d2/data/binding/InviteFriendsInfoHandler;

.field private mHandlerOnCloseAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/ActivityInviteFriendInfoBinding$OnClickListenerImpl1;

.field private mHandlerOnFacebookAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/ActivityInviteFriendInfoBinding$OnClickListenerImpl3;

.field private mHandlerOnTwitterAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/ActivityInviteFriendInfoBinding$OnClickListenerImpl;

.field private mHandlerOnUrlAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/ActivityInviteFriendInfoBinding$OnClickListenerImpl4;

.field private mHandlerOnVkAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/ActivityInviteFriendInfoBinding$OnClickListenerImpl2;

.field private final mboundView0:Lio/codetail/widget/RevealFrameLayout;

.field public final rocket:Lru/rocketbank/core/widgets/RocketTextView;

.field public final social:Landroid/widget/LinearLayout;

.field public final textPayment:Lru/rocketbank/core/widgets/RocketTextView;

.field public final twitter:Landroid/widget/ImageButton;

.field public final url:Lru/rocketbank/core/widgets/RocketTextView;

.field public final vk:Landroid/widget/ImageButton;

.field public final yourUrl:Lru/rocketbank/core/widgets/RocketTextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 17
    sput-object v0, Lru/rocketbank/r2d2/databinding/ActivityInviteFriendInfoBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090197

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 18
    sget-object v0, Lru/rocketbank/r2d2/databinding/ActivityInviteFriendInfoBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0902ed

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 19
    sget-object v0, Lru/rocketbank/r2d2/databinding/ActivityInviteFriendInfoBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f09042a

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 20
    sget-object v0, Lru/rocketbank/r2d2/databinding/ActivityInviteFriendInfoBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090331

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 21
    sget-object v0, Lru/rocketbank/r2d2/databinding/ActivityInviteFriendInfoBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f09038c

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x0

    .line 59
    invoke-direct {p0, p1, p2, v0}, Landroid/databinding/ViewDataBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;I)V

    const-wide/16 v1, -0x1

    .line 233
    iput-wide v1, p0, Lru/rocketbank/r2d2/databinding/ActivityInviteFriendInfoBinding;->mDirtyFlags:J

    .line 60
    sget-object v1, Lru/rocketbank/r2d2/databinding/ActivityInviteFriendInfoBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v2, Lru/rocketbank/r2d2/databinding/ActivityInviteFriendInfoBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/16 v3, 0xb

    invoke-static {p1, p2, v3, v1, v2}, Lru/rocketbank/r2d2/databinding/ActivityInviteFriendInfoBinding;->mapBindings(Landroid/databinding/DataBindingComponent;Landroid/view/View;ILandroid/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x5

    .line 61
    aget-object v1, p1, v1

    check-cast v1, Lru/rocketbank/core/widgets/RocketButton;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/ActivityInviteFriendInfoBinding;->closeButton:Lru/rocketbank/core/widgets/RocketButton;

    .line 62
    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/ActivityInviteFriendInfoBinding;->closeButton:Lru/rocketbank/core/widgets/RocketButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lru/rocketbank/core/widgets/RocketButton;->setTag(Ljava/lang/Object;)V

    const/4 v1, 0x2

    .line 63
    aget-object v1, p1, v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/ActivityInviteFriendInfoBinding;->facebook:Landroid/widget/ImageButton;

    .line 64
    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/ActivityInviteFriendInfoBinding;->facebook:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    const/4 v1, 0x6

    .line 65
    aget-object v1, p1, v1

    check-cast v1, Landroid/support/design/widget/CoordinatorLayout;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/ActivityInviteFriendInfoBinding;->fullscreenContent:Landroid/support/design/widget/CoordinatorLayout;

    .line 66
    aget-object v0, p1, v0

    check-cast v0, Lio/codetail/widget/RevealFrameLayout;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityInviteFriendInfoBinding;->mboundView0:Lio/codetail/widget/RevealFrameLayout;

    .line 67
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityInviteFriendInfoBinding;->mboundView0:Lio/codetail/widget/RevealFrameLayout;

    invoke-virtual {v0, v2}, Lio/codetail/widget/RevealFrameLayout;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x7

    .line 68
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityInviteFriendInfoBinding;->rocket:Lru/rocketbank/core/widgets/RocketTextView;

    const/16 v0, 0x9

    .line 69
    aget-object v0, p1, v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityInviteFriendInfoBinding;->social:Landroid/widget/LinearLayout;

    const/16 v0, 0xa

    .line 70
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityInviteFriendInfoBinding;->textPayment:Lru/rocketbank/core/widgets/RocketTextView;

    const/4 v0, 0x4

    .line 71
    aget-object v0, p1, v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityInviteFriendInfoBinding;->twitter:Landroid/widget/ImageButton;

    .line 72
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityInviteFriendInfoBinding;->twitter:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 73
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityInviteFriendInfoBinding;->url:Lru/rocketbank/core/widgets/RocketTextView;

    .line 74
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityInviteFriendInfoBinding;->url:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v0, v2}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x3

    .line 75
    aget-object v0, p1, v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityInviteFriendInfoBinding;->vk:Landroid/widget/ImageButton;

    .line 76
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityInviteFriendInfoBinding;->vk:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    const/16 v0, 0x8

    .line 77
    aget-object p1, p1, v0

    check-cast p1, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/ActivityInviteFriendInfoBinding;->yourUrl:Lru/rocketbank/core/widgets/RocketTextView;

    .line 78
    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/ActivityInviteFriendInfoBinding;->setRootTag(Landroid/view/View;)V

    .line 80
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/ActivityInviteFriendInfoBinding;->invalidateAll()V

    return-void
.end method

.method public static bind(Landroid/view/View;)Lru/rocketbank/r2d2/databinding/ActivityInviteFriendInfoBinding;
    .locals 1

    .line 253
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/ActivityInviteFriendInfoBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivityInviteFriendInfoBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivityInviteFriendInfoBinding;
    .locals 2

    const-string v0, "layout/activity_invite_friend_info_0"

    .line 257
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 258
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

    .line 260
    :cond_0
    new-instance v0, Lru/rocketbank/r2d2/databinding/ActivityInviteFriendInfoBinding;

    invoke-direct {v0, p1, p0}, Lru/rocketbank/r2d2/databinding/ActivityInviteFriendInfoBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lru/rocketbank/r2d2/databinding/ActivityInviteFriendInfoBinding;
    .locals 1

    .line 245
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/ActivityInviteFriendInfoBinding;->inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivityInviteFriendInfoBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivityInviteFriendInfoBinding;
    .locals 3

    const v0, 0x7f0c0041

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 249
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-static {p0, p1}, Lru/rocketbank/r2d2/databinding/ActivityInviteFriendInfoBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivityInviteFriendInfoBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lru/rocketbank/r2d2/databinding/ActivityInviteFriendInfoBinding;
    .locals 1

    .line 237
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lru/rocketbank/r2d2/databinding/ActivityInviteFriendInfoBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivityInviteFriendInfoBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivityInviteFriendInfoBinding;
    .locals 1

    const v0, 0x7f0c0041

    .line 241
    invoke-static {p0, v0, p1, p2, p3}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Landroid/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lru/rocketbank/r2d2/databinding/ActivityInviteFriendInfoBinding;

    return-object p0
.end method


# virtual methods
.method protected executeBindings()V
    .locals 11

    .line 136
    monitor-enter p0

    .line 137
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/ActivityInviteFriendInfoBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    .line 138
    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/ActivityInviteFriendInfoBinding;->mDirtyFlags:J

    .line 139
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    iget-object v4, p0, Lru/rocketbank/r2d2/databinding/ActivityInviteFriendInfoBinding;->mHandler:Lru/rocketbank/r2d2/data/binding/InviteFriendsInfoHandler;

    const-wide/16 v5, 0x3

    and-long v7, v0, v5

    cmp-long v0, v7, v2

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    if-eqz v4, :cond_5

    .line 153
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityInviteFriendInfoBinding;->mHandlerOnTwitterAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/ActivityInviteFriendInfoBinding$OnClickListenerImpl;

    if-nez v0, :cond_0

    new-instance v0, Lru/rocketbank/r2d2/databinding/ActivityInviteFriendInfoBinding$OnClickListenerImpl;

    invoke-direct {v0}, Lru/rocketbank/r2d2/databinding/ActivityInviteFriendInfoBinding$OnClickListenerImpl;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityInviteFriendInfoBinding;->mHandlerOnTwitterAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/ActivityInviteFriendInfoBinding$OnClickListenerImpl;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityInviteFriendInfoBinding;->mHandlerOnTwitterAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/ActivityInviteFriendInfoBinding$OnClickListenerImpl;

    :goto_0
    invoke-virtual {v0, v4}, Lru/rocketbank/r2d2/databinding/ActivityInviteFriendInfoBinding$OnClickListenerImpl;->setValue(Lru/rocketbank/r2d2/data/binding/InviteFriendsInfoHandler;)Lru/rocketbank/r2d2/databinding/ActivityInviteFriendInfoBinding$OnClickListenerImpl;

    move-result-object v1

    .line 155
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityInviteFriendInfoBinding;->mHandlerOnCloseAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/ActivityInviteFriendInfoBinding$OnClickListenerImpl1;

    if-nez v0, :cond_1

    new-instance v0, Lru/rocketbank/r2d2/databinding/ActivityInviteFriendInfoBinding$OnClickListenerImpl1;

    invoke-direct {v0}, Lru/rocketbank/r2d2/databinding/ActivityInviteFriendInfoBinding$OnClickListenerImpl1;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityInviteFriendInfoBinding;->mHandlerOnCloseAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/ActivityInviteFriendInfoBinding$OnClickListenerImpl1;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityInviteFriendInfoBinding;->mHandlerOnCloseAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/ActivityInviteFriendInfoBinding$OnClickListenerImpl1;

    :goto_1
    invoke-virtual {v0, v4}, Lru/rocketbank/r2d2/databinding/ActivityInviteFriendInfoBinding$OnClickListenerImpl1;->setValue(Lru/rocketbank/r2d2/data/binding/InviteFriendsInfoHandler;)Lru/rocketbank/r2d2/databinding/ActivityInviteFriendInfoBinding$OnClickListenerImpl1;

    move-result-object v0

    .line 157
    iget-object v5, p0, Lru/rocketbank/r2d2/databinding/ActivityInviteFriendInfoBinding;->mHandlerOnVkAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/ActivityInviteFriendInfoBinding$OnClickListenerImpl2;

    if-nez v5, :cond_2

    new-instance v5, Lru/rocketbank/r2d2/databinding/ActivityInviteFriendInfoBinding$OnClickListenerImpl2;

    invoke-direct {v5}, Lru/rocketbank/r2d2/databinding/ActivityInviteFriendInfoBinding$OnClickListenerImpl2;-><init>()V

    iput-object v5, p0, Lru/rocketbank/r2d2/databinding/ActivityInviteFriendInfoBinding;->mHandlerOnVkAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/ActivityInviteFriendInfoBinding$OnClickListenerImpl2;

    goto :goto_2

    :cond_2
    iget-object v5, p0, Lru/rocketbank/r2d2/databinding/ActivityInviteFriendInfoBinding;->mHandlerOnVkAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/ActivityInviteFriendInfoBinding$OnClickListenerImpl2;

    :goto_2
    invoke-virtual {v5, v4}, Lru/rocketbank/r2d2/databinding/ActivityInviteFriendInfoBinding$OnClickListenerImpl2;->setValue(Lru/rocketbank/r2d2/data/binding/InviteFriendsInfoHandler;)Lru/rocketbank/r2d2/databinding/ActivityInviteFriendInfoBinding$OnClickListenerImpl2;

    move-result-object v5

    .line 159
    iget-object v6, p0, Lru/rocketbank/r2d2/databinding/ActivityInviteFriendInfoBinding;->mHandlerOnFacebookAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/ActivityInviteFriendInfoBinding$OnClickListenerImpl3;

    if-nez v6, :cond_3

    new-instance v6, Lru/rocketbank/r2d2/databinding/ActivityInviteFriendInfoBinding$OnClickListenerImpl3;

    invoke-direct {v6}, Lru/rocketbank/r2d2/databinding/ActivityInviteFriendInfoBinding$OnClickListenerImpl3;-><init>()V

    iput-object v6, p0, Lru/rocketbank/r2d2/databinding/ActivityInviteFriendInfoBinding;->mHandlerOnFacebookAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/ActivityInviteFriendInfoBinding$OnClickListenerImpl3;

    goto :goto_3

    :cond_3
    iget-object v6, p0, Lru/rocketbank/r2d2/databinding/ActivityInviteFriendInfoBinding;->mHandlerOnFacebookAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/ActivityInviteFriendInfoBinding$OnClickListenerImpl3;

    :goto_3
    invoke-virtual {v6, v4}, Lru/rocketbank/r2d2/databinding/ActivityInviteFriendInfoBinding$OnClickListenerImpl3;->setValue(Lru/rocketbank/r2d2/data/binding/InviteFriendsInfoHandler;)Lru/rocketbank/r2d2/databinding/ActivityInviteFriendInfoBinding$OnClickListenerImpl3;

    move-result-object v6

    .line 161
    iget-object v9, p0, Lru/rocketbank/r2d2/databinding/ActivityInviteFriendInfoBinding;->mHandlerOnUrlAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/ActivityInviteFriendInfoBinding$OnClickListenerImpl4;

    if-nez v9, :cond_4

    new-instance v9, Lru/rocketbank/r2d2/databinding/ActivityInviteFriendInfoBinding$OnClickListenerImpl4;

    invoke-direct {v9}, Lru/rocketbank/r2d2/databinding/ActivityInviteFriendInfoBinding$OnClickListenerImpl4;-><init>()V

    iput-object v9, p0, Lru/rocketbank/r2d2/databinding/ActivityInviteFriendInfoBinding;->mHandlerOnUrlAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/ActivityInviteFriendInfoBinding$OnClickListenerImpl4;

    goto :goto_4

    :cond_4
    iget-object v9, p0, Lru/rocketbank/r2d2/databinding/ActivityInviteFriendInfoBinding;->mHandlerOnUrlAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/ActivityInviteFriendInfoBinding$OnClickListenerImpl4;

    :goto_4
    invoke-virtual {v9, v4}, Lru/rocketbank/r2d2/databinding/ActivityInviteFriendInfoBinding$OnClickListenerImpl4;->setValue(Lru/rocketbank/r2d2/data/binding/InviteFriendsInfoHandler;)Lru/rocketbank/r2d2/databinding/ActivityInviteFriendInfoBinding$OnClickListenerImpl4;

    move-result-object v4

    move-object v10, v4

    move-object v4, v1

    move-object v1, v6

    move-object v6, v5

    move-object v5, v10

    goto :goto_5

    :cond_5
    move-object v0, v1

    move-object v4, v0

    move-object v5, v4

    move-object v6, v5

    :goto_5
    cmp-long v9, v7, v2

    if-eqz v9, :cond_6

    .line 168
    iget-object v2, p0, Lru/rocketbank/r2d2/databinding/ActivityInviteFriendInfoBinding;->closeButton:Lru/rocketbank/core/widgets/RocketButton;

    invoke-virtual {v2, v0}, Lru/rocketbank/core/widgets/RocketButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityInviteFriendInfoBinding;->facebook:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityInviteFriendInfoBinding;->twitter:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityInviteFriendInfoBinding;->url:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v0, v5}, Lru/rocketbank/core/widgets/RocketTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityInviteFriendInfoBinding;->vk:Landroid/widget/ImageButton;

    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6
    return-void

    :catchall_0
    move-exception v0

    .line 139
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getHandler()Lru/rocketbank/r2d2/data/binding/InviteFriendsInfoHandler;
    .locals 1

    .line 123
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityInviteFriendInfoBinding;->mHandler:Lru/rocketbank/r2d2/data/binding/InviteFriendsInfoHandler;

    return-object v0
.end method

.method public hasPendingBindings()Z
    .locals 5

    .line 93
    monitor-enter p0

    .line 94
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/ActivityInviteFriendInfoBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    .line 95
    monitor-exit p0

    return v0

    .line 97
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

    .line 85
    monitor-enter p0

    const-wide/16 v0, 0x2

    .line 86
    :try_start_0
    iput-wide v0, p0, Lru/rocketbank/r2d2/databinding/ActivityInviteFriendInfoBinding;->mDirtyFlags:J

    .line 87
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/ActivityInviteFriendInfoBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 87
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

.method public setHandler(Lru/rocketbank/r2d2/data/binding/InviteFriendsInfoHandler;)V
    .locals 6

    .line 114
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/ActivityInviteFriendInfoBinding;->mHandler:Lru/rocketbank/r2d2/data/binding/InviteFriendsInfoHandler;

    .line 115
    monitor-enter p0

    .line 116
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/ActivityInviteFriendInfoBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/ActivityInviteFriendInfoBinding;->mDirtyFlags:J

    .line 117
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x28

    .line 118
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/ActivityInviteFriendInfoBinding;->notifyPropertyChanged(I)V

    .line 119
    invoke-super {p0}, Landroid/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 117
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

    .line 105
    check-cast p2, Lru/rocketbank/r2d2/data/binding/InviteFriendsInfoHandler;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/ActivityInviteFriendInfoBinding;->setHandler(Lru/rocketbank/r2d2/data/binding/InviteFriendsInfoHandler;)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
