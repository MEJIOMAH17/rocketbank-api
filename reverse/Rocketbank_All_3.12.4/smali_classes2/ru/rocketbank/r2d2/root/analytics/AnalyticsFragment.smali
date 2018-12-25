.class public final Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment;
.super Lru/rocketbank/r2d2/fragments/RocketFragment;
.source "AnalyticsFragment.kt"

# interfaces
.implements Lru/rocketbank/r2d2/root/analytics/ChangeAnalyticsListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment$PagerAdapter;,
        Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAnalyticsFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AnalyticsFragment.kt\nru/rocketbank/r2d2/root/analytics/AnalyticsFragment\n*L\n1#1,212:1\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment$Companion;

.field public static final KEY_IS_JOINT_ANALYTICS:Ljava/lang/String; = "KEY_IS_JOINT_ANALYTICS"

.field public static final KEY_JOINT_ACCOUNT:Ljava/lang/String; = "KEY_JOINT_ACCOUNT"


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private final avatarSize:I

.field private cropCircleTransformation:Ljp/wasabeef/glide/transformations/CropCircleTransformation;

.field private currentFragment:Lru/rocketbank/r2d2/fragments/RocketFragment;

.field private isJointAnalytics:Z

.field private jointAccount:Lru/rocketbank/core/model/JointAccount;

.field private userModel:Lru/rocketbank/core/model/UserModel;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment;->Companion:Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/RocketFragment;-><init>()V

    const/16 v0, 0x12c

    .line 33
    iput v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment;->avatarSize:I

    const/4 v0, 0x1

    .line 36
    iput-boolean v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment;->isJointAnalytics:Z

    return-void
.end method

.method public static final synthetic access$getCurrentFragment$p(Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment;)Lru/rocketbank/r2d2/fragments/RocketFragment;
    .locals 0

    .line 26
    iget-object p0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment;->currentFragment:Lru/rocketbank/r2d2/fragments/RocketFragment;

    return-object p0
.end method

.method public static final synthetic access$getPlaceholder(Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment;)I
    .locals 0

    .line 26
    invoke-direct {p0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment;->getPlaceholder()I

    move-result p0

    return p0
.end method

.method public static final synthetic access$isJointAnalytics$p(Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment;)Z
    .locals 0

    .line 26
    iget-boolean p0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment;->isJointAnalytics:Z

    return p0
.end method

.method public static final synthetic access$loadBitmap(Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment;I)Landroid/graphics/Bitmap;
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment;->loadBitmap(I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$loadBitmap(Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment;->loadBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setCurrentFragment$p(Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment;Lru/rocketbank/r2d2/fragments/RocketFragment;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment;->currentFragment:Lru/rocketbank/r2d2/fragments/RocketFragment;

    return-void
.end method

.method public static final synthetic access$setJointAnalytics$p(Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment;Z)V
    .locals 0

    .line 26
    iput-boolean p1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment;->isJointAnalytics:Z

    return-void
.end method

.method private final createDoubleAvatar(Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lrx/Observable<",
            "[",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 107
    new-instance v0, Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment$createDoubleAvatar$1;

    invoke-direct {v0, p0, p1, p2}, Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment$createDoubleAvatar$1;-><init>(Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment;Ljava/lang/String;Ljava/lang/String;)V

    check-cast v0, Lrx/Observable$OnSubscribe;

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object p1

    const-string p2, "Observable.create { subs\u2026)\n            }\n        }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final currentFragment()Lru/rocketbank/r2d2/fragments/RocketFragment;
    .locals 1

    .line 162
    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment;->currentFragment:Lru/rocketbank/r2d2/fragments/RocketFragment;

    return-object v0
.end method

.method private final getPlaceholder()I
    .locals 1

    const v0, 0x7f080061

    return v0
.end method

.method private final loadBitmap(I)Landroid/graphics/Bitmap;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 88
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bumptech/glide/DrawableTypeRequest;->asBitmap()Lcom/bumptech/glide/BitmapTypeRequest;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/bumptech/glide/load/Transformation;

    iget-object v1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment;->cropCircleTransformation:Ljp/wasabeef/glide/transformations/CropCircleTransformation;

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    check-cast v1, Lcom/bumptech/glide/load/Transformation;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/BitmapTypeRequest;->transform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object p1

    iget v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment;->avatarSize:I

    iget v1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment;->avatarSize:I

    invoke-virtual {p1, v0, v1}, Lcom/bumptech/glide/BitmapRequestBuilder;->into(II)Lcom/bumptech/glide/request/FutureTarget;

    move-result-object p1

    invoke-interface {p1}, Lcom/bumptech/glide/request/FutureTarget;->get()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "Glide.with(context).load\u2026arSize, avatarSize).get()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/graphics/Bitmap;

    return-object p1
.end method

.method private final loadBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 83
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bumptech/glide/DrawableTypeRequest;->asBitmap()Lcom/bumptech/glide/BitmapTypeRequest;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/bumptech/glide/load/Transformation;

    iget-object v1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment;->cropCircleTransformation:Ljp/wasabeef/glide/transformations/CropCircleTransformation;

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    check-cast v1, Lcom/bumptech/glide/load/Transformation;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/BitmapTypeRequest;->transform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object p1

    iget v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment;->avatarSize:I

    iget v1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment;->avatarSize:I

    invoke-virtual {p1, v0, v1}, Lcom/bumptech/glide/BitmapRequestBuilder;->into(II)Lcom/bumptech/glide/request/FutureTarget;

    move-result-object p1

    invoke-interface {p1}, Lcom/bumptech/glide/request/FutureTarget;->get()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "Glide.with(context).load\u2026arSize, avatarSize).get()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/graphics/Bitmap;

    return-object p1
.end method

.method private final updateAnalytics(Z)V
    .locals 2

    .line 121
    iput-boolean p1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment;->isJointAnalytics:Z

    .line 122
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment;->getView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    sget v0, Lru/rocketbank/r2d2/R$id;->buttonChangeAnalyticsToolbar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment;->isJointAnalytics:Z

    invoke-virtual {p1, v0}, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;->setDoubleAvatar(Z)V

    .line 123
    :cond_0
    iget-object p1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment;->userModel:Lru/rocketbank/core/model/UserModel;

    if-nez p1, :cond_1

    return-void

    .line 126
    :cond_1
    iget-object p1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment;->jointAccount:Lru/rocketbank/core/model/JointAccount;

    if-eqz p1, :cond_6

    sget-object p1, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->Companion:Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment$Companion;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment$Companion;->getAvatars()[Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_6

    .line 127
    iget-object p1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment;->userModel:Lru/rocketbank/core/model/UserModel;

    if-nez p1, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    invoke-virtual {p1}, Lru/rocketbank/core/model/UserModel;->getUserpicUrl()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3

    const-string p1, ""

    :cond_3
    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment;->jointAccount:Lru/rocketbank/core/model/JointAccount;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lru/rocketbank/core/model/JointAccount;->getJoint_user_avatar()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    :cond_4
    const-string v0, ""

    :cond_5
    invoke-direct {p0, p1, v0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment;->createDoubleAvatar(Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;

    move-result-object p1

    .line 128
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object p1

    .line 129
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object p1

    new-instance v0, Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment$updateAnalytics$1;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment$updateAnalytics$1;-><init>(Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment;)V

    check-cast v0, Lrx/Subscriber;

    invoke-virtual {p1, v0}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 146
    :cond_6
    iget-object p1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment;->jointAccount:Lru/rocketbank/core/model/JointAccount;

    if-nez p1, :cond_7

    const/16 p1, 0x8

    goto :goto_0

    :cond_7
    const/4 p1, 0x0

    .line 147
    :goto_0
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_8

    sget v1, Lru/rocketbank/r2d2/R$id;->buttonChangeAnalyticsToolbar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;

    if-eqz v0, :cond_8

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;->setVisibility(I)V

    return-void

    :cond_8
    return-void
.end method


# virtual methods
.method public final _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public final _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final canBack()Z
    .locals 1

    .line 153
    invoke-direct {p0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment;->currentFragment()Lru/rocketbank/r2d2/fragments/RocketFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lru/rocketbank/r2d2/fragments/RocketFragment;->canBack()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final getJointIds()[I
    .locals 1

    .line 79
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment;->getJointIds$App_prodRelease()[I

    move-result-object v0

    return-object v0
.end method

.method public final getJointIds$App_prodRelease()[I
    .locals 3

    .line 197
    iget-boolean v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment;->isJointAnalytics:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 200
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment;->jointAccount:Lru/rocketbank/core/model/JointAccount;

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    .line 201
    new-array v0, v0, [I

    const/4 v1, 0x0

    iget-object v2, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment;->jointAccount:Lru/rocketbank/core/model/JointAccount;

    if-nez v2, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {v2}, Lru/rocketbank/core/model/JointAccount;->getId()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v1

    return-object v0

    :cond_3
    return-object v1
.end method

.method public final onBackPressed()Z
    .locals 1

    .line 150
    invoke-direct {p0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment;->currentFragment()Lru/rocketbank/r2d2/fragments/RocketFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onBackPressed()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final onChangeAnalytics(Z[I)V
    .locals 1

    .line 74
    iput-boolean p1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment;->isJointAnalytics:Z

    .line 75
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment;->updateAnalytics(Z)V

    .line 76
    invoke-direct {p0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment;->currentFragment()Lru/rocketbank/r2d2/fragments/RocketFragment;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type ru.rocketbank.r2d2.root.analytics.ChangeAnalyticsListener"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    check-cast v0, Lru/rocketbank/r2d2/root/analytics/ChangeAnalyticsListener;

    invoke-interface {v0, p1, p2}, Lru/rocketbank/r2d2/root/analytics/ChangeAnalyticsListener;->onChangeAnalytics(Z[I)V

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const v1, 0x7f0c00c1

    .line 41
    invoke-virtual {p1, v1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0903d8

    .line 42
    invoke-virtual {p0, p1, p2}, Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment;->setupDefaultToolbar(Landroid/view/View;I)I

    .line 43
    new-instance p2, Ljp/wasabeef/glide/transformations/CropCircleTransformation;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p2, v1}, Ljp/wasabeef/glide/transformations/CropCircleTransformation;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment;->cropCircleTransformation:Ljp/wasabeef/glide/transformations/CropCircleTransformation;

    .line 45
    sget p2, Lru/rocketbank/r2d2/R$id;->toolbar:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/support/v7/widget/Toolbar;

    const v1, 0x7f110056

    invoke-virtual {p2, v1}, Landroid/support/v7/widget/Toolbar;->setTitle(I)V

    .line 46
    sget p2, Lru/rocketbank/r2d2/R$id;->tabLayout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/support/design/widget/TabLayout;

    const-string v1, "tabLayout"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/support/design/widget/TabLayout;->setTabGravity(I)V

    .line 47
    sget p2, Lru/rocketbank/r2d2/R$id;->tabLayout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/support/design/widget/TabLayout;

    sget v1, Lru/rocketbank/r2d2/R$id;->tabLayout:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/design/widget/TabLayout;

    invoke-virtual {v1}, Landroid/support/design/widget/TabLayout;->newTab()Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v1

    const-string v2, "TEST"

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/support/design/widget/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/support/design/widget/TabLayout;->addTab(Landroid/support/design/widget/TabLayout$Tab;)V

    .line 48
    sget p2, Lru/rocketbank/r2d2/R$id;->tabLayout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/support/design/widget/TabLayout;

    sget v1, Lru/rocketbank/r2d2/R$id;->tabLayout:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/design/widget/TabLayout;

    invoke-virtual {v1}, Landroid/support/design/widget/TabLayout;->newTab()Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v1

    const v2, 0x7f110458

    invoke-virtual {v1, v2}, Landroid/support/design/widget/TabLayout$Tab;->setText(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/support/design/widget/TabLayout;->addTab(Landroid/support/design/widget/TabLayout$Tab;)V

    .line 50
    sget p2, Lru/rocketbank/r2d2/R$id;->viewPager:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/support/v4/view/ViewPager;

    const-string v1, "viewPager"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment$PagerAdapter;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    const-string v4, "childFragmentManager"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x2

    new-array v4, v4, [Lkotlin/Pair;

    const v5, 0x7f1100ad

    .line 51
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lru/rocketbank/r2d2/root/analytics/AnalyticsContainerFragment;

    invoke-direct {v6}, Lru/rocketbank/r2d2/root/analytics/AnalyticsContainerFragment;-><init>()V

    .line 1037
    new-instance v7, Lkotlin/Pair;

    invoke-direct {v7, v5, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v7, v4, v0

    .line 52
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v5, Lru/rocketbank/r2d2/root/analytics/AnalyticsTagsFragment;

    invoke-direct {v5}, Lru/rocketbank/r2d2/root/analytics/AnalyticsTagsFragment;-><init>()V

    .line 2037
    new-instance v6, Lkotlin/Pair;

    invoke-direct {v6, v2, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x1

    aput-object v6, v4, v2

    const-string v5, "pairs"

    .line 50
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2056
    new-instance v5, Ljava/util/TreeMap;

    invoke-direct {v5}, Ljava/util/TreeMap;-><init>()V

    move-object v6, v5

    check-cast v6, Ljava/util/Map;

    invoke-static {v6, v4}, Lkotlin/collections/AbstractList$Companion;->putAll(Ljava/util/Map;[Lkotlin/Pair;)V

    check-cast v5, Ljava/util/SortedMap;

    .line 50
    invoke-direct {v1, p0, v3, v5}, Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment$PagerAdapter;-><init>(Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment;Landroid/support/v4/app/FragmentManager;Ljava/util/SortedMap;)V

    check-cast v1, Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {p2, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 55
    sget p2, Lru/rocketbank/r2d2/R$id;->tabLayout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/support/design/widget/TabLayout;

    sget v1, Lru/rocketbank/r2d2/R$id;->viewPager:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager;

    invoke-virtual {p2, v1}, Landroid/support/design/widget/TabLayout;->setupWithViewPager(Landroid/support/v4/view/ViewPager;)V

    if-eqz p3, :cond_0

    const-string p2, "KEY_IS_JOINT_ANALYTICS"

    .line 57
    invoke-virtual {p3, p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    goto :goto_0

    :cond_0
    iget-boolean p2, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment;->isJointAnalytics:Z

    :goto_0
    iput-boolean p2, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment;->isJointAnalytics:Z

    if-eqz p3, :cond_1

    const-string p2, "KEY_JOINT_ACCOUNT"

    .line 58
    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lru/rocketbank/core/model/JointAccount;

    if-nez p2, :cond_2

    :cond_1
    iget-object p2, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment;->jointAccount:Lru/rocketbank/core/model/JointAccount;

    :cond_2
    iput-object p2, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment;->jointAccount:Lru/rocketbank/core/model/JointAccount;

    .line 60
    sget p2, Lru/rocketbank/r2d2/R$id;->buttonChangeAnalyticsToolbar:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;

    new-instance v1, Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment$onCreateView$$inlined$with$lambda$1;

    invoke-direct {v1, p0, p3}, Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment$onCreateView$$inlined$with$lambda$1;-><init>(Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment;Landroid/os/Bundle;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v1}, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    sget-object p2, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->Companion:Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment$Companion;

    invoke-virtual {p2}, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment$Companion;->getAvatars()[Landroid/graphics/Bitmap;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 62
    sget p2, Lru/rocketbank/r2d2/R$id;->buttonChangeAnalyticsToolbar:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;

    sget-object p3, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->Companion:Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment$Companion;

    invoke-virtual {p3}, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment$Companion;->getAvatars()[Landroid/graphics/Bitmap;

    move-result-object p3

    if-nez p3, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    aget-object p3, p3, v0

    sget-object v1, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->Companion:Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment$Companion;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment$Companion;->getAvatars()[Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4
    aget-object v1, v1, v2

    invoke-virtual {p2, p3, v1}, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;->setAvatars(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 64
    :cond_5
    sget p2, Lru/rocketbank/r2d2/R$id;->buttonChangeAnalyticsToolbar:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;

    iget-boolean p3, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment;->isJointAnalytics:Z

    invoke-virtual {p2, p3}, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;->setDoubleAvatar(Z)V

    .line 66
    iget-object p2, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment;->jointAccount:Lru/rocketbank/core/model/JointAccount;

    if-nez p2, :cond_6

    const/16 v0, 0x8

    .line 67
    :cond_6
    sget p2, Lru/rocketbank/r2d2/R$id;->buttonChangeAnalyticsToolbar:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;

    const-string p3, "buttonChangeAnalyticsToolbar"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;->setVisibility(I)V

    return-object p1
.end method

.method public final synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onDestroyView()V

    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public final onPause()V
    .locals 2

    .line 165
    invoke-super {p0}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onPause()V

    .line 166
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    sget v1, Lru/rocketbank/r2d2/R$id;->viewPager:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->onSaveInstanceState()Landroid/os/Parcelable;

    return-void

    :cond_0
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "outState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "KEY_IS_JOINT_ANALYTICS"

    .line 158
    iget-boolean v1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment;->isJointAnalytics:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "KEY_JOINT_ACCOUNT"

    .line 159
    iget-object v1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment;->jointAccount:Lru/rocketbank/core/model/JointAccount;

    check-cast v1, Landroid/os/Parcelable;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method public final onUserModel(Lru/rocketbank/core/model/UserModel;)V
    .locals 2

    const-string v0, "userModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onUserModel(Lru/rocketbank/core/model/UserModel;)V

    .line 93
    iput-object p1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment;->userModel:Lru/rocketbank/core/model/UserModel;

    .line 94
    invoke-virtual {p1}, Lru/rocketbank/core/model/UserModel;->getJointAccount()Lru/rocketbank/core/model/JointAccount;

    move-result-object p1

    .line 95
    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment;->jointAccount:Lru/rocketbank/core/model/JointAccount;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment;->jointAccount:Lru/rocketbank/core/model/JointAccount;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0}, Lru/rocketbank/core/model/JointAccount;->getId()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1}, Lru/rocketbank/core/model/JointAccount;->getId()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 96
    sget-object v0, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->Companion:Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment$Companion;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment$Companion;->setAvatars([Landroid/graphics/Bitmap;)V

    .line 98
    :cond_1
    iput-object p1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment;->jointAccount:Lru/rocketbank/core/model/JointAccount;

    .line 99
    iget-boolean p1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment;->isJointAnalytics:Z

    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment;->updateAnalytics(Z)V

    return-void
.end method
