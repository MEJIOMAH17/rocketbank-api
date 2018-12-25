.class public final Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;
.super Lru/rocketbank/r2d2/fragments/RocketFragment;
.source "ProfileFragment.kt"

# interfaces
.implements Lru/rocketbank/r2d2/data/binding/profile/ProfileHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nProfileFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ProfileFragment.kt\nru/rocketbank/r2d2/fragments/profile/ProfileFragment\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1654:1\n1035#2,2:1655\n49#3,2:1657\n49#3,2:1659\n1246#4:1661\n1315#4,3:1662\n1519#4,2:1665\n1246#4:1667\n1315#4,3:1668\n1519#4,2:1671\n*E\n*S KotlinDebug\n*F\n+ 1 ProfileFragment.kt\nru/rocketbank/r2d2/fragments/profile/ProfileFragment\n*L\n707#1,2:1655\n1147#1,2:1657\n1195#1,2:1659\n1226#1:1661\n1226#1,3:1662\n1227#1,2:1665\n1276#1:1667\n1276#1,3:1668\n1277#1,2:1671\n*E\n"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;

.field public static final CHOOSE_FRIEND_REQUST_CODE:I = 0x22b

.field public static final Companion:Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$Companion;

.field private static final JSON:Lokhttp3/MediaType;

.field public static final OPEN_SECURITY_SETTINGS_REQUEST_CODE:I = 0x22c

.field private static final PERM_ASK_CAMERA_AVATAR:I = 0x0

.field private static final PERM_ASK_CAMERA_COVER:I = 0x1

.field private static final PERM_ASK_GALLERY_AVATAR:I = 0x2

.field private static final PERM_ASK_GALLERY_COVER:I = 0x3

.field private static final TAG:Ljava/lang/String; = "PROFILE"

.field private static authInterceptor:Lokhttp3/Interceptor;


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private analyticsInProgress:Z

.field private analyticsItemPosition:I

.field private appBarLayout:Landroid/widget/FrameLayout;

.field private final authorization:Lru/rocketbank/core/user/Authorization;

.field private cameraPhotoPath:Ljava/lang/String;

.field private cardOverlay:Landroid/view/View;

.field private changeNameSubscription:Lrx/Subscription;

.field public cropCircleTransformation:Ljp/wasabeef/glide/transformations/CropCircleTransformation;

.field private fingerprintViewHolder:Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericSwitchViewHolder;

.field private fragmentProfileBinding:Lru/rocketbank/r2d2/databinding/FragmentProfileBinding;

.field private final handler:Landroid/os/Handler;

.field private headerHeight:I

.field private headerOverlay:Landroid/view/View;

.field private min3Subscription:Lrx/Subscription;

.field private paralaxSize:I

.field private parallaxListener:Lru/rocketbank/r2d2/widgets/recycler/parallax/ObservableParallaxListener;

.field private profileAdapter:Lru/rocketbank/r2d2/fragments/profile/ProfileAdapter;

.field private profileData:Lru/rocketbank/r2d2/data/binding/profile/ProfileData;

.field private recyclerProfileView:Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;

.field private refillSubscription:Lrx/Subscription;

.field private final rocketAPI:Lru/rocketbank/core/network/api/RocketAPI;

.field private rocketTitle:Lru/rocketbank/core/widgets/RocketTextView;

.field private final socialNet$delegate:Lkotlin/Lazy;

.field private final touchManager:Lru/rocketbank/core/manager/TouchManager;

.field private uploadSubscription:Lrx/Subscription;

.field private final userApi:Lru/rocketbank/core/network/api/UserApi;

.field private userModel:Lru/rocketbank/core/model/UserModel;

.field private windowWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass$4641416c(Ljava/lang/Class;)Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    move-result-object v2

    const-string v3, "socialNet"

    const-string v4, "getSocialNet()Lru/rocketbank/core/manager/social/SocialNet;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->Companion:Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$Companion;

    const-string v0, "application/json; charset=utf-8"

    .line 1632
    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    sput-object v0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->JSON:Lokhttp3/MediaType;

    .line 1641
    sget-object v0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$Companion$authInterceptor$1;->INSTANCE:Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$Companion$authInterceptor$1;

    check-cast v0, Lokhttp3/Interceptor;

    sput-object v0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->authInterceptor:Lokhttp3/Interceptor;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 88
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/RocketFragment;-><init>()V

    .line 91
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object v0

    invoke-interface {v0}, Lru/rocketbank/core/dagger/component/RocketComponent;->getUserApi()Lru/rocketbank/core/network/api/UserApi;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->userApi:Lru/rocketbank/core/network/api/UserApi;

    .line 92
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object v0

    invoke-interface {v0}, Lru/rocketbank/core/dagger/component/RocketComponent;->getAuthorization()Lru/rocketbank/core/user/Authorization;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->authorization:Lru/rocketbank/core/user/Authorization;

    .line 93
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object v0

    invoke-interface {v0}, Lru/rocketbank/core/dagger/component/RocketComponent;->getRocketApi()Lru/rocketbank/core/network/api/RocketAPI;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->rocketAPI:Lru/rocketbank/core/network/api/RocketAPI;

    .line 94
    sget-object v0, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object v0

    invoke-interface {v0}, Lru/rocketbank/core/dagger/component/RocketComponent;->getTouchManager()Lru/rocketbank/core/manager/TouchManager;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->touchManager:Lru/rocketbank/core/manager/TouchManager;

    const/4 v0, -0x1

    .line 125
    iput v0, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->analyticsItemPosition:I

    .line 129
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->handler:Landroid/os/Handler;

    .line 131
    new-instance v0, Lru/rocketbank/core/manager/social/FacebookImpl;

    sget-object v1, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lru/rocketbank/core/manager/social/FacebookImpl;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lkotlin/ExceptionsKt__ExceptionsKt;->lazyOf(Ljava/lang/Object;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->socialNet$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$clearAvatar(Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;)V
    .locals 0

    .line 88
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->clearAvatar()V

    return-void
.end method

.method public static final synthetic access$clearCover(Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;)V
    .locals 0

    .line 88
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->clearCover()V

    return-void
.end method

.method public static final synthetic access$getAnalyticsInProgress$p(Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;)Z
    .locals 0

    .line 88
    iget-boolean p0, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->analyticsInProgress:Z

    return p0
.end method

.method public static final synthetic access$getAuthInterceptor$cp()Lokhttp3/Interceptor;
    .locals 1

    .line 88
    sget-object v0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->authInterceptor:Lokhttp3/Interceptor;

    return-object v0
.end method

.method public static final synthetic access$getAuthorization$p(Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;)Lru/rocketbank/core/user/Authorization;
    .locals 0

    .line 88
    iget-object p0, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->authorization:Lru/rocketbank/core/user/Authorization;

    return-object p0
.end method

.method public static final synthetic access$getChangeNameSubscription$p(Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;)Lrx/Subscription;
    .locals 0

    .line 88
    iget-object p0, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->changeNameSubscription:Lrx/Subscription;

    return-object p0
.end method

.method public static final synthetic access$getJSON$cp()Lokhttp3/MediaType;
    .locals 1

    .line 88
    sget-object v0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->JSON:Lokhttp3/MediaType;

    return-object v0
.end method

.method public static final synthetic access$getRocketAPI$p(Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;)Lru/rocketbank/core/network/api/RocketAPI;
    .locals 0

    .line 88
    iget-object p0, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->rocketAPI:Lru/rocketbank/core/network/api/RocketAPI;

    return-object p0
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    .line 88
    sget-object v0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getTouchManager$p(Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;)Lru/rocketbank/core/manager/TouchManager;
    .locals 0

    .line 88
    iget-object p0, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->touchManager:Lru/rocketbank/core/manager/TouchManager;

    return-object p0
.end method

.method public static final synthetic access$getUserApi$p(Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;)Lru/rocketbank/core/network/api/UserApi;
    .locals 0

    .line 88
    iget-object p0, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->userApi:Lru/rocketbank/core/network/api/UserApi;

    return-object p0
.end method

.method public static final synthetic access$getUserModel$p(Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;)Lru/rocketbank/core/model/UserModel;
    .locals 0

    .line 88
    iget-object p0, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->userModel:Lru/rocketbank/core/model/UserModel;

    return-object p0
.end method

.method public static final synthetic access$hideProgressDialog(Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;)V
    .locals 0

    .line 88
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->hideProgressDialog()V

    return-void
.end method

.method public static final synthetic access$onAvatarFromFacebook(Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;)V
    .locals 0

    .line 88
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->onAvatarFromFacebook()V

    return-void
.end method

.method public static final synthetic access$onChangeApp(Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;)V
    .locals 0

    .line 88
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->onChangeApp()V

    return-void
.end method

.method public static final synthetic access$onChangePhone(Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;)V
    .locals 0

    .line 88
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->onChangePhone()V

    return-void
.end method

.method public static final synthetic access$onChangePin(Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;)V
    .locals 0

    .line 88
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->onChangePin()V

    return-void
.end method

.method public static final synthetic access$onChangeRefillLinkRequested(Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;)V
    .locals 0

    .line 88
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->onChangeRefillLinkRequested()V

    return-void
.end method

.method public static final synthetic access$onCheckChanged(Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;ZLru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericSwitchViewHolder;)V
    .locals 0

    .line 88
    invoke-direct {p0, p1, p2, p3}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->onCheckChanged(Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;ZLru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericSwitchViewHolder;)V

    return-void
.end method

.method public static final synthetic access$onFacebookCover(Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;)V
    .locals 0

    .line 88
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->onFacebookCover()V

    return-void
.end method

.method public static final synthetic access$onOneTwoTripUidClick(Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;)V
    .locals 0

    .line 88
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->onOneTwoTripUidClick()V

    return-void
.end method

.method public static final synthetic access$onRefillLinkClick(Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;)V
    .locals 0

    .line 88
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->onRefillLinkClick()V

    return-void
.end method

.method public static final synthetic access$onSetAvatarFromCameraRequested(Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;)V
    .locals 0

    .line 88
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->onSetAvatarFromCameraRequested()V

    return-void
.end method

.method public static final synthetic access$onSetAvatarFromGalleryRequested(Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;)V
    .locals 0

    .line 88
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->onSetAvatarFromGalleryRequested()V

    return-void
.end method

.method public static final synthetic access$onSetCoverFromCameraRequested(Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;)V
    .locals 0

    .line 88
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->onSetCoverFromCameraRequested()V

    return-void
.end method

.method public static final synthetic access$onSetCoverFromGalleryRequested(Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;)V
    .locals 0

    .line 88
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->onSetCoverFromGalleryRequested()V

    return-void
.end method

.method public static final synthetic access$openLink(Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;)V
    .locals 0

    .line 88
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->openLink()V

    return-void
.end method

.method public static final synthetic access$setAnalyticsInProgress$p(Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;Z)V
    .locals 0

    .line 88
    iput-boolean p1, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->analyticsInProgress:Z

    return-void
.end method

.method public static final synthetic access$setAuthInterceptor$cp(Lokhttp3/Interceptor;)V
    .locals 0

    .line 88
    sput-object p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->authInterceptor:Lokhttp3/Interceptor;

    return-void
.end method

.method public static final synthetic access$setChangeNameSubscription$p(Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;Lrx/Subscription;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->changeNameSubscription:Lrx/Subscription;

    return-void
.end method

.method public static final synthetic access$setUserModel$p(Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;Lru/rocketbank/core/model/UserModel;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->userModel:Lru/rocketbank/core/model/UserModel;

    return-void
.end method

.method public static final synthetic access$showProgressDialog(Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;)V
    .locals 0

    .line 88
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->showProgressDialog()V

    return-void
.end method

.method public static final synthetic access$switch3MinInterval(Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;Z)V
    .locals 0

    .line 88
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->switch3MinInterval(Z)V

    return-void
.end method

.method public static final synthetic access$switchFingerPrint(Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;ZLru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericSwitchViewHolder;)V
    .locals 0

    .line 88
    invoke-direct {p0, p1, p2}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->switchFingerPrint(ZLru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericSwitchViewHolder;)V

    return-void
.end method

.method public static final synthetic access$switchJointAnalytics(Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;IZLru/rocketbank/r2d2/widgets/recycler/parallax/vh/AnalyticsProfileViewHolder;)V
    .locals 0

    .line 88
    invoke-direct {p0, p1, p2, p3}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->switchJointAnalytics(IZLru/rocketbank/r2d2/widgets/recycler/parallax/vh/AnalyticsProfileViewHolder;)V

    return-void
.end method

.method public static final synthetic access$uploadAvatar(Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 88
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->uploadAvatar(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static final synthetic access$uploadCover(Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 88
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->uploadCover(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private final addJointAnalytics()V
    .locals 20

    move-object/from16 v0, p0

    const-string v1, ""

    const-string v2, ""

    .line 610
    new-instance v3, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    const/4 v4, 0x0

    iput-object v4, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 611
    iget-object v5, v0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->userModel:Lru/rocketbank/core/model/UserModel;

    if-eqz v5, :cond_13

    iget-object v5, v0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->userModel:Lru/rocketbank/core/model/UserModel;

    if-nez v5, :cond_0

    new-instance v1, Lkotlin/TypeCastException;

    const-string v2, "null cannot be cast to non-null type ru.rocketbank.core.model.UserModel"

    invoke-direct {v1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 612
    :cond_0
    invoke-virtual {v5}, Lru/rocketbank/core/model/UserModel;->getJointAccounts()[Lru/rocketbank/core/model/JointAccount;

    move-result-object v6

    const/4 v7, 0x0

    if-eqz v6, :cond_5

    invoke-virtual {v5}, Lru/rocketbank/core/model/UserModel;->getJointAccounts()[Lru/rocketbank/core/model/JointAccount;

    move-result-object v6

    array-length v6, v6

    if-eqz v6, :cond_5

    .line 613
    invoke-virtual {v5}, Lru/rocketbank/core/model/UserModel;->getJointAccounts()[Lru/rocketbank/core/model/JointAccount;

    move-result-object v1

    const-string v2, "userModel.jointAccounts"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->findConfirmedAccount([Lru/rocketbank/core/model/JointAccount;)Lru/rocketbank/core/model/JointAccount;

    move-result-object v1

    iput-object v1, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 614
    iget-object v1, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Lru/rocketbank/core/model/JointAccount;

    if-nez v1, :cond_1

    .line 615
    invoke-virtual {v5}, Lru/rocketbank/core/model/UserModel;->getJointAccounts()[Lru/rocketbank/core/model/JointAccount;

    move-result-object v1

    aget-object v1, v1, v7

    iput-object v1, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 617
    :cond_1
    iget-object v1, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Lru/rocketbank/core/model/JointAccount;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lru/rocketbank/core/model/JointAccount;->getJoint_user_name_instrumental()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    :cond_2
    const-string v1, ""

    .line 618
    :cond_3
    iget-object v2, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Lru/rocketbank/core/model/JointAccount;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lru/rocketbank/core/model/JointAccount;->getJoint_user_avatar()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5

    :cond_4
    const-string v2, ""

    .line 621
    :cond_5
    iget-object v6, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v6, Lru/rocketbank/core/model/JointAccount;

    if-eqz v6, :cond_6

    iget-object v6, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v6, Lru/rocketbank/core/model/JointAccount;

    invoke-virtual {v6}, Lru/rocketbank/core/model/JointAccount;->isConfirmed()Z

    move-result v6

    if-nez v6, :cond_c

    .line 622
    :cond_6
    invoke-virtual {v5}, Lru/rocketbank/core/model/UserModel;->getForeignJointAccounts()[Lru/rocketbank/core/model/JointAccount;

    move-result-object v6

    if-eqz v6, :cond_c

    invoke-virtual {v5}, Lru/rocketbank/core/model/UserModel;->getForeignJointAccounts()[Lru/rocketbank/core/model/JointAccount;

    move-result-object v6

    array-length v6, v6

    if-eqz v6, :cond_c

    .line 623
    invoke-virtual {v5}, Lru/rocketbank/core/model/UserModel;->getForeignJointAccounts()[Lru/rocketbank/core/model/JointAccount;

    move-result-object v6

    const-string v8, "userModel.foreignJointAccounts"

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v6}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->findConfirmedAccount([Lru/rocketbank/core/model/JointAccount;)Lru/rocketbank/core/model/JointAccount;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 625
    iput-object v6, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    goto :goto_0

    .line 626
    :cond_7
    iget-object v8, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v8, Lru/rocketbank/core/model/JointAccount;

    if-nez v8, :cond_8

    .line 627
    invoke-virtual {v5}, Lru/rocketbank/core/model/UserModel;->getForeignJointAccounts()[Lru/rocketbank/core/model/JointAccount;

    move-result-object v5

    aget-object v6, v5, v7

    .line 628
    iput-object v6, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    :cond_8
    :goto_0
    if-eqz v6, :cond_c

    .line 632
    iget-object v1, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Lru/rocketbank/core/model/JointAccount;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lru/rocketbank/core/model/JointAccount;->getUser_name_instrumental()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_a

    :cond_9
    const-string v1, ""

    .line 633
    :cond_a
    iget-object v2, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Lru/rocketbank/core/model/JointAccount;

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Lru/rocketbank/core/model/JointAccount;->getUser_avatar()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_c

    :cond_b
    const-string v2, ""

    :cond_c
    move-object v7, v1

    move-object v8, v2

    .line 638
    iget-object v1, v0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->profileAdapter:Lru/rocketbank/r2d2/fragments/profile/ProfileAdapter;

    const/4 v2, -0x1

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Lru/rocketbank/r2d2/fragments/profile/ProfileAdapter;->getItemCount()I

    move-result v1

    goto :goto_1

    :cond_d
    move v1, v2

    :goto_1
    iput v1, v0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->analyticsItemPosition:I

    .line 640
    new-instance v1, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$addJointAnalytics$onAnalyticsBind$1;

    invoke-direct {v1, v0, v3}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$addJointAnalytics$onAnalyticsBind$1;-><init>(Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    move-object/from16 v17, v1

    check-cast v17, Lkotlin/jvm/functions/Function2;

    .line 646
    iget-object v1, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Lru/rocketbank/core/model/JointAccount;

    const v5, 0x7f11024d

    if-eqz v1, :cond_11

    .line 647
    iget-object v1, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Lru/rocketbank/core/model/JointAccount;

    invoke-virtual {v1}, Lru/rocketbank/core/model/JointAccount;->isConfirmed()Z

    move-result v1

    if-eqz v1, :cond_e

    :goto_2
    move-object v9, v4

    goto :goto_3

    :cond_e
    const v1, 0x7f1104d1

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 648
    :goto_3
    iget-object v1, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Lru/rocketbank/core/model/JointAccount;

    invoke-virtual {v1}, Lru/rocketbank/core/model/JointAccount;->getId()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_f

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 649
    :cond_f
    iget-object v1, v0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->profileAdapter:Lru/rocketbank/r2d2/fragments/profile/ProfileAdapter;

    if-eqz v1, :cond_10

    .line 650
    invoke-virtual {v0, v5}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v3, "getString(R.string.joint_analytics)"

    invoke-static {v6, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 654
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    .line 655
    new-instance v3, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$addJointAnalytics$1;

    invoke-direct {v3, v0, v2}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$addJointAnalytics$1;-><init>(Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;I)V

    move-object v12, v3

    check-cast v12, Lkotlin/jvm/functions/Function3;

    const/16 v14, 0x20

    const/4 v15, 0x0

    move-object v5, v1

    move-object/from16 v13, v17

    .line 649
    invoke-static/range {v5 .. v15}, Lru/rocketbank/r2d2/adapters/ParallaxAdapter;->addAnalytics$default(Lru/rocketbank/r2d2/adapters/ParallaxAdapter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ZLkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    :cond_10
    return-void

    .line 658
    :cond_11
    iget-object v9, v0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->profileAdapter:Lru/rocketbank/r2d2/fragments/profile/ProfileAdapter;

    if-eqz v9, :cond_12

    .line 659
    invoke-virtual {v0, v5}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v1, "getString(R.string.joint_analytics)"

    invoke-static {v10, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 660
    new-instance v1, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$addJointAnalytics$2;

    invoke-direct {v1, v0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$addJointAnalytics$2;-><init>(Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;)V

    move-object/from16 v16, v1

    check-cast v16, Lkotlin/jvm/functions/Function3;

    const v1, 0x7f11024e

    .line 661
    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v18, 0x36

    const/16 v19, 0x0

    .line 658
    invoke-static/range {v9 .. v19}, Lru/rocketbank/r2d2/adapters/ParallaxAdapter;->addAnalytics$default(Lru/rocketbank/r2d2/adapters/ParallaxAdapter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ZLkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    return-void

    :cond_12
    return-void

    :cond_13
    return-void
.end method

.method private final avatarItem()Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;
    .locals 2

    .line 427
    new-instance v0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;

    invoke-direct {v0}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;-><init>()V

    .line 428
    sget-object v1, Lru/rocketbank/r2d2/fragments/profile/ProfileAdapter;->Companion:Lru/rocketbank/r2d2/fragments/profile/ProfileAdapter$Companion;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/fragments/profile/ProfileAdapter$Companion;->getIMAGE_AVATAR()I

    move-result v1

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->setType(I)V

    .line 429
    sget-object v1, Lru/rocketbank/r2d2/fragments/profile/ProfileAdapter;->Companion:Lru/rocketbank/r2d2/fragments/profile/ProfileAdapter$Companion;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/fragments/profile/ProfileAdapter$Companion;->getVIEW_TYPE_IMAGE()I

    move-result v1

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->setViewType(I)V

    const v1, 0x7f110075

    .line 430
    invoke-virtual {p0, v1}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->setSubtitle(Ljava/lang/String;)V

    const v1, 0x7f11035c

    .line 431
    invoke-virtual {p0, v1}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->setTitle(Ljava/lang/String;)V

    .line 432
    sget-object v1, Lru/rocketbank/r2d2/fragments/profile/ProfileAdapter;->Companion:Lru/rocketbank/r2d2/fragments/profile/ProfileAdapter$Companion;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/fragments/profile/ProfileAdapter$Companion;->getIMAGE_AVATAR()I

    move-result v1

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->setId(I)V

    return-object v0
.end method

.method private final checkOrRequestCamera(I)Z
    .locals 4

    .line 1163
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 1164
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 1165
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    const-string v3, "android.permission.CAMERA"

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 1167
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_3

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    .line 1172
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    if-eqz v1, :cond_4

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 1180
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    if-eqz v2, :cond_5

    const-string v0, "android.permission.CAMERA"

    .line 1188
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1194
    :cond_5
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1195
    check-cast v3, Ljava/util/Collection;

    const/4 v0, 0x0

    .line 1660
    new-array v1, v0, [Ljava/lang/String;

    invoke-interface {v3, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_6

    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1195
    :cond_6
    check-cast v1, [Ljava/lang/String;

    .line 1197
    invoke-virtual {p0, v1, p1}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->requestPermissions([Ljava/lang/String;I)V

    return v0

    :cond_7
    const/4 p1, 0x1

    return p1
.end method

.method private final checkOrRequestGallery(I)Z
    .locals 3

    .line 1137
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 1139
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_1

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    .line 1142
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1146
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1147
    check-cast v1, Ljava/util/Collection;

    const/4 v0, 0x0

    .line 1658
    new-array v2, v0, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1147
    :cond_2
    check-cast v1, [Ljava/lang/String;

    .line 1149
    invoke-virtual {p0, v1, p1}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->requestPermissions([Ljava/lang/String;I)V

    return v0

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method private final clearAvatar()V
    .locals 2

    .line 1440
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->showProgressDialog()V

    const v0, 0x7f110405

    .line 1441
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    .line 1442
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 1443
    sget-object v1, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$clearAvatar$1;->INSTANCE:Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$clearAvatar$1;

    check-cast v1, Lrx/functions/Func1;

    invoke-virtual {v0, v1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    .line 1464
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$clearAvatar$2;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$clearAvatar$2;-><init>(Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;)V

    check-cast v1, Lrx/Observer;

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/Observer;)Lrx/Subscription;

    return-void
.end method

.method private final clearCover()V
    .locals 2

    .line 1394
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->showProgressDialog()V

    .line 1395
    sget-object v0, Lru/rocketbank/core/network/Request;->LINK_API:Ljava/lang/String;

    invoke-static {v0}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    .line 1396
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 1397
    sget-object v1, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$clearCover$1;->INSTANCE:Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$clearCover$1;

    check-cast v1, Lrx/functions/Func1;

    invoke-virtual {v0, v1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    .line 1420
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 1421
    new-instance v1, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$clearCover$2;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$clearCover$2;-><init>(Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;)V

    check-cast v1, Lrx/Observer;

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/Observer;)Lrx/Subscription;

    return-void
.end method

.method private final coverItem()Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;
    .locals 2

    .line 438
    new-instance v0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;

    invoke-direct {v0}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;-><init>()V

    .line 439
    sget-object v1, Lru/rocketbank/r2d2/fragments/profile/ProfileAdapter;->Companion:Lru/rocketbank/r2d2/fragments/profile/ProfileAdapter$Companion;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/fragments/profile/ProfileAdapter$Companion;->getIMAGE_COVER()I

    move-result v1

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->setType(I)V

    .line 440
    sget-object v1, Lru/rocketbank/r2d2/fragments/profile/ProfileAdapter;->Companion:Lru/rocketbank/r2d2/fragments/profile/ProfileAdapter$Companion;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/fragments/profile/ProfileAdapter$Companion;->getVIEW_TYPE_IMAGE()I

    move-result v1

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->setViewType(I)V

    const v1, 0x7f11010f

    .line 441
    invoke-virtual {p0, v1}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->setSubtitle(Ljava/lang/String;)V

    const v1, 0x7f11035d

    .line 442
    invoke-virtual {p0, v1}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->setTitle(Ljava/lang/String;)V

    return-object v0
.end method

.method private final createImageFile()Lru/rocketbank/core/utils/fs/ExternalFile;
    .locals 3

    .line 1313
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "photo_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const-string v2, "Calendar.getInstance()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1315
    sget-object v1, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object v1

    invoke-interface {v1}, Lru/rocketbank/core/dagger/component/RocketComponent;->getFileManager()Lru/rocketbank/core/utils/fs/FileManager;

    move-result-object v1

    const-string v2, "jpg"

    invoke-virtual {v1, v0, v2}, Lru/rocketbank/core/utils/fs/FileManager;->createPublicImageFile(Ljava/lang/String;Ljava/lang/String;)Lru/rocketbank/core/utils/fs/ExternalFile;

    move-result-object v0

    .line 1317
    invoke-virtual {v0}, Lru/rocketbank/core/utils/fs/ExternalFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->cameraPhotoPath:Ljava/lang/String;

    return-object v0
.end method

.method private final fillAdapterWithData()V
    .locals 7

    .line 449
    iget-object v6, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->profileAdapter:Lru/rocketbank/r2d2/fragments/profile/ProfileAdapter;

    if-eqz v6, :cond_7

    .line 451
    invoke-virtual {v6}, Lru/rocketbank/r2d2/fragments/profile/ProfileAdapter;->clearAll()V

    const v0, 0x7f110389

    .line 453
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(R.string.profile)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Lru/rocketbank/r2d2/fragments/profile/ProfileAdapter;->addDelimiter(Ljava/lang/String;)V

    .line 454
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->avatarItem()Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v6, v0, v2, v1, v3}, Lru/rocketbank/r2d2/adapters/ParallaxAdapter;->addStaticItem$default(Lru/rocketbank/r2d2/adapters/ParallaxAdapter;Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;IILjava/lang/Object;)V

    .line 455
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->coverItem()Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;

    move-result-object v0

    invoke-static {v6, v0, v2, v1, v3}, Lru/rocketbank/r2d2/adapters/ParallaxAdapter;->addStaticItem$default(Lru/rocketbank/r2d2/adapters/ParallaxAdapter;Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;IILjava/lang/Object;)V

    const v0, 0x7f110432

    .line 457
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(R.string.sounds)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f11035e

    .line 458
    invoke-virtual {p0, v1}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(R.string.pa_set_sounds)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x7f0801cc

    .line 459
    new-instance v4, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$fillAdapterWithData$$inlined$let$lambda$1;

    invoke-direct {v4, p0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$fillAdapterWithData$$inlined$let$lambda$1;-><init>(Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;)V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 457
    invoke-virtual {v6, v0, v1, v2, v4}, Lru/rocketbank/r2d2/fragments/profile/ProfileAdapter;->addRoundImage(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/functions/Function1;)V

    const v0, 0x7f110406

    .line 464
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(R.string.settings)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Lru/rocketbank/r2d2/fragments/profile/ProfileAdapter;->addDelimiter(Ljava/lang/String;)V

    const v0, 0x7f11034a

    .line 465
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(R.string.pa_3_min_entrance)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f11034b

    .line 466
    invoke-virtual {p0, v1}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(R.string.pa_3_min_entrance_description)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 467
    new-instance v2, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$fillAdapterWithData$$inlined$let$lambda$2;

    invoke-direct {v2, p0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$fillAdapterWithData$$inlined$let$lambda$2;-><init>(Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;)V

    check-cast v2, Lkotlin/jvm/functions/Function3;

    .line 468
    new-instance v4, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$fillAdapterWithData$$inlined$let$lambda$3;

    invoke-direct {v4, p0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$fillAdapterWithData$$inlined$let$lambda$3;-><init>(Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;)V

    check-cast v4, Lkotlin/jvm/functions/Function2;

    .line 465
    invoke-virtual {v6, v0, v1, v2, v4}, Lru/rocketbank/r2d2/fragments/profile/ProfileAdapter;->addSwitch(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;)V

    .line 473
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->touchManager:Lru/rocketbank/core/manager/TouchManager;

    invoke-interface {v0}, Lru/rocketbank/core/manager/TouchManager;->isHardwareDetected()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f110071

    .line 474
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(R.string.auth_with_fingerprint)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f110072

    .line 475
    invoke-virtual {p0, v1}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(R.string.auth_\u2026_fingerprint_description)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 476
    new-instance v2, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$fillAdapterWithData$$inlined$let$lambda$4;

    invoke-direct {v2, p0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$fillAdapterWithData$$inlined$let$lambda$4;-><init>(Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;)V

    check-cast v2, Lkotlin/jvm/functions/Function3;

    .line 477
    new-instance v4, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$fillAdapterWithData$$inlined$let$lambda$5;

    invoke-direct {v4, p0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$fillAdapterWithData$$inlined$let$lambda$5;-><init>(Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;)V

    check-cast v4, Lkotlin/jvm/functions/Function2;

    .line 474
    invoke-virtual {v6, v0, v1, v2, v4}, Lru/rocketbank/r2d2/fragments/profile/ProfileAdapter;->addSwitch(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;)V

    :cond_0
    const v0, 0x7f1100b3

    .line 483
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(R.string.change_pin)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$fillAdapterWithData$$inlined$let$lambda$6;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$fillAdapterWithData$$inlined$let$lambda$6;-><init>(Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v6, v0, v1}, Lru/rocketbank/r2d2/fragments/profile/ProfileAdapter;->addRightArrow(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    const v0, 0x7f1100b2

    .line 484
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(R.string.change_phone_number_button)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$fillAdapterWithData$$inlined$let$lambda$7;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$fillAdapterWithData$$inlined$let$lambda$7;-><init>(Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v6, v0, v1}, Lru/rocketbank/r2d2/fragments/profile/ProfileAdapter;->addRightArrow(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    const v0, 0x7f1100b0

    .line 485
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(R.string.change_app_code)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$fillAdapterWithData$$inlined$let$lambda$8;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$fillAdapterWithData$$inlined$let$lambda$8;-><init>(Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v6, v0, v1}, Lru/rocketbank/r2d2/fragments/profile/ProfileAdapter;->addRightArrow(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 486
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->authorization:Lru/rocketbank/core/user/Authorization;

    invoke-virtual {v0}, Lru/rocketbank/core/user/Authorization;->getUserData()Lru/rocketbank/core/realm/UserData;

    move-result-object v0

    .line 2043
    sget-object v1, Lru/rocketbank/core/model/enums/Cobrand;->Companion:Lru/rocketbank/core/model/enums/Cobrand$Companion;

    .line 3029
    invoke-virtual {v0}, Lru/rocketbank/core/realm/UserData;->realmGet$cobrandName()Ljava/lang/String;

    move-result-object v0

    .line 2043
    invoke-virtual {v1, v0}, Lru/rocketbank/core/model/enums/Cobrand$Companion;->fromCobrandName(Ljava/lang/String;)Lru/rocketbank/core/model/enums/Cobrand;

    move-result-object v0

    .line 486
    sget-object v1, Lru/rocketbank/core/model/enums/Cobrand;->ONETWOTRIP:Lru/rocketbank/core/model/enums/Cobrand;

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->userModel:Lru/rocketbank/core/model/UserModel;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lru/rocketbank/core/model/UserModel;->getOnetwotripUid()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v3

    :goto_0
    if-eqz v0, :cond_3

    const v0, 0x7f110333

    .line 487
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(R.string.onetwotrip_uid_title)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->userModel:Lru/rocketbank/core/model/UserModel;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lru/rocketbank/core/model/UserModel;->getOnetwotripUid()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    move-object v1, v3

    :goto_1
    new-instance v2, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$fillAdapterWithData$$inlined$let$lambda$9;

    invoke-direct {v2, p0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$fillAdapterWithData$$inlined$let$lambda$9;-><init>(Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v6, v0, v1, v2}, Lru/rocketbank/r2d2/fragments/profile/ProfileAdapter;->addItem(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    :cond_3
    const v0, 0x7f110378

    .line 490
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(R.string.penalty_tax_notification)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$fillAdapterWithData$$inlined$let$lambda$10;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$fillAdapterWithData$$inlined$let$lambda$10;-><init>(Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v6, v0, v1}, Lru/rocketbank/r2d2/fragments/profile/ProfileAdapter;->addRightArrow(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 501
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->addJointAnalytics()V

    .line 503
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->userModel:Lru/rocketbank/core/model/UserModel;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lru/rocketbank/core/model/UserModel;->getChangeCodeWord()Lru/rocketbank/core/model/ChangeCodeWord;

    move-result-object v3

    :cond_4
    if-eqz v3, :cond_6

    .line 505
    invoke-virtual {v3}, Lru/rocketbank/core/model/ChangeCodeWord;->getText()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    const v0, 0x7f1100b1

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(R.string.change_code_word)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_5
    new-instance v1, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$fillAdapterWithData$$inlined$let$lambda$11;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$fillAdapterWithData$$inlined$let$lambda$11;-><init>(Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v6, v0, v1}, Lru/rocketbank/r2d2/fragments/profile/ProfileAdapter;->addRightArrow(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    :cond_6
    const v0, 0x7f110359

    .line 513
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v0, "getString(R.string.pa_refill_page)"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f11035a

    .line 514
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v0, "getString(R.string.pa_refill_page_description)"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 515
    new-instance v0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$fillAdapterWithData$$inlined$let$lambda$12;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$fillAdapterWithData$$inlined$let$lambda$12;-><init>(Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;)V

    move-object v3, v0

    check-cast v3, Lkotlin/jvm/functions/Function3;

    .line 516
    new-instance v0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$fillAdapterWithData$$inlined$let$lambda$13;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$fillAdapterWithData$$inlined$let$lambda$13;-><init>(Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 517
    new-instance v0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$fillAdapterWithData$$inlined$let$lambda$14;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$fillAdapterWithData$$inlined$let$lambda$14;-><init>(Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;)V

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function2;

    move-object v0, v6

    .line 513
    invoke-virtual/range {v0 .. v5}, Lru/rocketbank/r2d2/fragments/profile/ProfileAdapter;->addSwitch(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V

    .line 528
    invoke-virtual {v6}, Lru/rocketbank/r2d2/fragments/profile/ProfileAdapter;->notifyDataSetChanged()V

    return-void

    :cond_7
    return-void
.end method

.method private final findConfirmedAccount([Lru/rocketbank/core/model/JointAccount;)Lru/rocketbank/core/model/JointAccount;
    .locals 4

    const/4 v0, 0x0

    .line 1655
    array-length v1, p1

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p1, v0

    .line 707
    invoke-virtual {v2}, Lru/rocketbank/core/model/JointAccount;->isConfirmed()Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private final getSocialNet()Lru/rocketbank/core/manager/social/SocialNet;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->socialNet$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/manager/social/SocialNet;

    return-object v0
.end method

.method private final hideProgressDialog()V
    .locals 2

    .line 391
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 392
    instance-of v1, v0, Lru/rocketbank/r2d2/activities/AbstractActivity;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Lru/rocketbank/r2d2/activities/AbstractActivity;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lru/rocketbank/r2d2/activities/AbstractActivity;->hideProgressDialog()V

    return-void

    :cond_1
    return-void
.end method

.method private final isAvatarSet()Z
    .locals 1

    .line 1508
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->userModel:Lru/rocketbank/core/model/UserModel;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0}, Lru/rocketbank/core/model/UserModel;->getUserpicUrl()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private final isCoverSet()Z
    .locals 1

    .line 1511
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->userModel:Lru/rocketbank/core/model/UserModel;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0}, Lru/rocketbank/core/model/UserModel;->getCover()Lru/rocketbank/core/model/CoverModel;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->userModel:Lru/rocketbank/core/model/UserModel;

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {v0}, Lru/rocketbank/core/model/UserModel;->getCover()Lru/rocketbank/core/model/CoverModel;

    move-result-object v0

    invoke-virtual {v0}, Lru/rocketbank/core/model/CoverModel;->getUrl()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private final jointAccount(Lru/rocketbank/core/model/contact/Contact;)V
    .locals 3

    const/4 v0, 0x1

    .line 667
    iput-boolean v0, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->analyticsInProgress:Z

    .line 668
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->profileAdapter:Lru/rocketbank/r2d2/fragments/profile/ProfileAdapter;

    if-eqz v0, :cond_0

    iget v1, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->analyticsItemPosition:I

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/fragments/profile/ProfileAdapter;->notifyItemChanged(I)V

    .line 669
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->rocketAPI:Lru/rocketbank/core/network/api/RocketAPI;

    invoke-virtual {p1}, Lru/rocketbank/core/model/contact/Contact;->getId()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lru/rocketbank/core/network/api/RocketAPI;->jointAccounts(J)Lrx/Observable;

    move-result-object p1

    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object p1

    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object p1

    .line 670
    new-instance v0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$jointAccount$1;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$jointAccount$1;-><init>(Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;)V

    check-cast v0, Lrx/functions/Action1;

    .line 674
    new-instance v1, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$jointAccount$2;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$jointAccount$2;-><init>(Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;)V

    check-cast v1, Lrx/functions/Action1;

    .line 669
    invoke-virtual {p1, v0, v1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;Lrx/functions/Action1;)Lrx/Subscription;

    return-void
.end method

.method private final loadCover(Lru/rocketbank/core/model/CoverModel;)V
    .locals 4

    .line 771
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->fragmentProfileBinding:Lru/rocketbank/r2d2/databinding/FragmentProfileBinding;

    if-nez v0, :cond_0

    const-string v1, "fragmentProfileBinding"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget-object v0, v0, Lru/rocketbank/r2d2/databinding/FragmentProfileBinding;->coverImage:Landroid/widget/ImageView;

    .line 773
    invoke-virtual {p1}, Lru/rocketbank/core/model/CoverModel;->getUrl()Ljava/lang/String;

    move-result-object v1

    const/high16 v2, -0x1000000

    if-eqz v1, :cond_2

    .line 774
    move-object v1, p0

    check-cast v1, Landroid/support/v4/app/Fragment;

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/Fragment;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    .line 775
    invoke-virtual {p1}, Lru/rocketbank/core/model/CoverModel;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object p1

    .line 776
    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->ALL:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {p1, v1}, Lcom/bumptech/glide/DrawableTypeRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object p1

    .line 777
    invoke-virtual {p1}, Lcom/bumptech/glide/DrawableRequestBuilder;->centerCrop()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object p1

    .line 778
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->placeholder(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object p1

    .line 779
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->authorization:Lru/rocketbank/core/user/Authorization;

    invoke-virtual {v1}, Lru/rocketbank/core/user/Authorization;->getUserData()Lru/rocketbank/core/realm/UserData;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 4043
    sget-object v2, Lru/rocketbank/core/model/enums/Cobrand;->Companion:Lru/rocketbank/core/model/enums/Cobrand$Companion;

    .line 5029
    invoke-virtual {v1}, Lru/rocketbank/core/realm/UserData;->realmGet$cobrandName()Ljava/lang/String;

    move-result-object v1

    .line 4043
    invoke-virtual {v2, v1}, Lru/rocketbank/core/model/enums/Cobrand$Companion;->fromCobrandName(Ljava/lang/String;)Lru/rocketbank/core/model/enums/Cobrand;

    move-result-object v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 4019
    :cond_1
    sget-object v1, Lru/rocketbank/core/model/enums/Cobrand;->ROCKETBANK:Lru/rocketbank/core/model/enums/Cobrand;

    :goto_0
    invoke-virtual {v1}, Lru/rocketbank/core/model/enums/Cobrand;->getDrawableResId()I

    move-result v1

    .line 779
    invoke-virtual {p1, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->error(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object p1

    .line 780
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    return-void

    .line 782
    :cond_2
    move-object p1, p0

    check-cast p1, Landroid/support/v4/app/Fragment;

    invoke-static {p1}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/Fragment;)Lcom/bumptech/glide/RequestManager;

    move-result-object p1

    .line 783
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->authorization:Lru/rocketbank/core/user/Authorization;

    invoke-virtual {v1}, Lru/rocketbank/core/user/Authorization;->getUserData()Lru/rocketbank/core/realm/UserData;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 6043
    sget-object v3, Lru/rocketbank/core/model/enums/Cobrand;->Companion:Lru/rocketbank/core/model/enums/Cobrand$Companion;

    .line 7029
    invoke-virtual {v1}, Lru/rocketbank/core/realm/UserData;->realmGet$cobrandName()Ljava/lang/String;

    move-result-object v1

    .line 6043
    invoke-virtual {v3, v1}, Lru/rocketbank/core/model/enums/Cobrand$Companion;->fromCobrandName(Ljava/lang/String;)Lru/rocketbank/core/model/enums/Cobrand;

    move-result-object v1

    if-eqz v1, :cond_3

    goto :goto_1

    .line 6019
    :cond_3
    sget-object v1, Lru/rocketbank/core/model/enums/Cobrand;->ROCKETBANK:Lru/rocketbank/core/model/enums/Cobrand;

    :goto_1
    invoke-virtual {v1}, Lru/rocketbank/core/model/enums/Cobrand;->getDrawableResId()I

    move-result v1

    .line 783
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object p1

    .line 784
    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->ALL:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {p1, v1}, Lcom/bumptech/glide/DrawableTypeRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object p1

    .line 785
    invoke-virtual {p1}, Lcom/bumptech/glide/DrawableRequestBuilder;->centerCrop()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object p1

    .line 786
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->placeholder(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object p1

    .line 787
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->authorization:Lru/rocketbank/core/user/Authorization;

    invoke-virtual {v1}, Lru/rocketbank/core/user/Authorization;->getUserData()Lru/rocketbank/core/realm/UserData;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 8043
    sget-object v2, Lru/rocketbank/core/model/enums/Cobrand;->Companion:Lru/rocketbank/core/model/enums/Cobrand$Companion;

    .line 9029
    invoke-virtual {v1}, Lru/rocketbank/core/realm/UserData;->realmGet$cobrandName()Ljava/lang/String;

    move-result-object v1

    .line 8043
    invoke-virtual {v2, v1}, Lru/rocketbank/core/model/enums/Cobrand$Companion;->fromCobrandName(Ljava/lang/String;)Lru/rocketbank/core/model/enums/Cobrand;

    move-result-object v1

    if-eqz v1, :cond_4

    goto :goto_2

    .line 8019
    :cond_4
    sget-object v1, Lru/rocketbank/core/model/enums/Cobrand;->ROCKETBANK:Lru/rocketbank/core/model/enums/Cobrand;

    :goto_2
    invoke-virtual {v1}, Lru/rocketbank/core/model/enums/Cobrand;->getDrawableResId()I

    move-result v1

    .line 787
    invoke-virtual {p1, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->error(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object p1

    .line 788
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    return-void
.end method

.method private final loadCoverWithResize(Lru/rocketbank/core/model/CoverModel;)V
    .locals 4

    .line 793
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->fragmentProfileBinding:Lru/rocketbank/r2d2/databinding/FragmentProfileBinding;

    if-nez v0, :cond_0

    const-string v1, "fragmentProfileBinding"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget-object v0, v0, Lru/rocketbank/r2d2/databinding/FragmentProfileBinding;->coverImage:Landroid/widget/ImageView;

    .line 795
    invoke-virtual {p1}, Lru/rocketbank/core/model/CoverModel;->getUrl()Ljava/lang/String;

    move-result-object v1

    const/high16 v2, -0x1000000

    if-eqz v1, :cond_3

    .line 796
    move-object v1, p0

    check-cast v1, Landroid/support/v4/app/Fragment;

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/Fragment;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    .line 797
    invoke-virtual {p1}, Lru/rocketbank/core/model/CoverModel;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object p1

    .line 798
    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->ALL:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {p1, v1}, Lcom/bumptech/glide/DrawableTypeRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object p1

    .line 799
    invoke-virtual {p1}, Lcom/bumptech/glide/DrawableRequestBuilder;->centerCrop()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object p1

    .line 800
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->placeholder(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object p1

    .line 801
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->authorization:Lru/rocketbank/core/user/Authorization;

    invoke-virtual {v1}, Lru/rocketbank/core/user/Authorization;->getUserData()Lru/rocketbank/core/realm/UserData;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 10043
    sget-object v2, Lru/rocketbank/core/model/enums/Cobrand;->Companion:Lru/rocketbank/core/model/enums/Cobrand$Companion;

    .line 11029
    invoke-virtual {v1}, Lru/rocketbank/core/realm/UserData;->realmGet$cobrandName()Ljava/lang/String;

    move-result-object v1

    .line 10043
    invoke-virtual {v2, v1}, Lru/rocketbank/core/model/enums/Cobrand$Companion;->fromCobrandName(Ljava/lang/String;)Lru/rocketbank/core/model/enums/Cobrand;

    move-result-object v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 10019
    :cond_1
    sget-object v1, Lru/rocketbank/core/model/enums/Cobrand;->ROCKETBANK:Lru/rocketbank/core/model/enums/Cobrand;

    :goto_0
    invoke-virtual {v1}, Lru/rocketbank/core/model/enums/Cobrand;->getDrawableResId()I

    move-result v1

    .line 801
    invoke-virtual {p1, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->error(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object p1

    if-nez v0, :cond_2

    .line 802
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    return-void

    .line 804
    :cond_3
    move-object p1, p0

    check-cast p1, Landroid/support/v4/app/Fragment;

    invoke-static {p1}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/Fragment;)Lcom/bumptech/glide/RequestManager;

    move-result-object p1

    .line 805
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->authorization:Lru/rocketbank/core/user/Authorization;

    invoke-virtual {v1}, Lru/rocketbank/core/user/Authorization;->getUserData()Lru/rocketbank/core/realm/UserData;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 12043
    sget-object v3, Lru/rocketbank/core/model/enums/Cobrand;->Companion:Lru/rocketbank/core/model/enums/Cobrand$Companion;

    .line 13029
    invoke-virtual {v1}, Lru/rocketbank/core/realm/UserData;->realmGet$cobrandName()Ljava/lang/String;

    move-result-object v1

    .line 12043
    invoke-virtual {v3, v1}, Lru/rocketbank/core/model/enums/Cobrand$Companion;->fromCobrandName(Ljava/lang/String;)Lru/rocketbank/core/model/enums/Cobrand;

    move-result-object v1

    if-eqz v1, :cond_4

    goto :goto_1

    .line 12019
    :cond_4
    sget-object v1, Lru/rocketbank/core/model/enums/Cobrand;->ROCKETBANK:Lru/rocketbank/core/model/enums/Cobrand;

    :goto_1
    invoke-virtual {v1}, Lru/rocketbank/core/model/enums/Cobrand;->getDrawableResId()I

    move-result v1

    .line 805
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object p1

    .line 806
    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->ALL:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {p1, v1}, Lcom/bumptech/glide/DrawableTypeRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object p1

    .line 807
    invoke-virtual {p1}, Lcom/bumptech/glide/DrawableRequestBuilder;->centerCrop()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object p1

    .line 808
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->placeholder(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object p1

    .line 809
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->authorization:Lru/rocketbank/core/user/Authorization;

    invoke-virtual {v1}, Lru/rocketbank/core/user/Authorization;->getUserData()Lru/rocketbank/core/realm/UserData;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 14043
    sget-object v2, Lru/rocketbank/core/model/enums/Cobrand;->Companion:Lru/rocketbank/core/model/enums/Cobrand$Companion;

    .line 15029
    invoke-virtual {v1}, Lru/rocketbank/core/realm/UserData;->realmGet$cobrandName()Ljava/lang/String;

    move-result-object v1

    .line 14043
    invoke-virtual {v2, v1}, Lru/rocketbank/core/model/enums/Cobrand$Companion;->fromCobrandName(Ljava/lang/String;)Lru/rocketbank/core/model/enums/Cobrand;

    move-result-object v1

    if-eqz v1, :cond_5

    goto :goto_2

    .line 14019
    :cond_5
    sget-object v1, Lru/rocketbank/core/model/enums/Cobrand;->ROCKETBANK:Lru/rocketbank/core/model/enums/Cobrand;

    :goto_2
    invoke-virtual {v1}, Lru/rocketbank/core/model/enums/Cobrand;->getDrawableResId()I

    move-result v1

    .line 809
    invoke-virtual {p1, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->error(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object p1

    if-nez v0, :cond_6

    .line 810
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_6
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    return-void
.end method

.method private final observableFromCamera()Lrx/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 852
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->cameraPhotoPath:Ljava/lang/String;

    invoke-static {v0}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    sget-object v1, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$observableFromCamera$1;->INSTANCE:Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$observableFromCamera$1;

    check-cast v1, Lrx/functions/Func1;

    invoke-virtual {v0, v1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    .line 859
    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 860
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    const-string v1, "Observable.just<String>(\u2026dSchedulers.mainThread())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final observableFromGallery(Landroid/content/Intent;)Lrx/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Lrx/Observable<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 848
    sget-object v0, Lru/rocketbank/r2d2/utils/ImageUpload;->INSTANCE:Lru/rocketbank/r2d2/utils/ImageUpload;

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    const-string v1, "data.data"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/utils/ImageUpload;->observableFromGallery(Landroid/net/Uri;)Lrx/Observable;

    move-result-object p1

    return-object p1
.end method

.method private final onAvatarFromFacebook()V
    .locals 2

    .line 1344
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->getSocialNet()Lru/rocketbank/core/manager/social/SocialNet;

    move-result-object v0

    invoke-interface {v0}, Lru/rocketbank/core/manager/social/SocialNet;->getAvatarID()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->patchFacebook(Ljava/lang/String;Z)V

    return-void
.end method

.method private final onChangeApp()V
    .locals 5

    .line 397
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->userModel:Lru/rocketbank/core/model/UserModel;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0}, Lru/rocketbank/core/model/UserModel;->getChangeShortCode()Lru/rocketbank/core/model/ChangeShortCode;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 399
    invoke-virtual {v0}, Lru/rocketbank/core/model/ChangeShortCode;->getCheckCard()Lru/rocketbank/core/model/dto/CheckCardData;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 400
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->userModel:Lru/rocketbank/core/model/UserModel;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lru/rocketbank/core/model/UserModel;->getChangeShortCode()Lru/rocketbank/core/model/ChangeShortCode;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lru/rocketbank/core/model/ChangeShortCode;->getCheckCard()Lru/rocketbank/core/model/dto/CheckCardData;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lru/rocketbank/core/model/dto/CheckCardData;->getToken()Ljava/lang/String;

    move-result-object v1

    :cond_1
    if-eqz v1, :cond_4

    .line 402
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v3, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->userModel:Lru/rocketbank/core/model/UserModel;

    if-nez v3, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    invoke-virtual {v3}, Lru/rocketbank/core/model/UserModel;->getChangeShortCode()Lru/rocketbank/core/model/ChangeShortCode;

    move-result-object v3

    const-string v4, "userModel!!.changeShortCode"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lru/rocketbank/core/model/ChangeShortCode;->getCheckCard()Lru/rocketbank/core/model/dto/CheckCardData;

    move-result-object v3

    invoke-static {v0, v1, v2, v2, v3}, Lru/rocketbank/r2d2/activities/ChangeCodeActivity;->startCode(Landroid/content/Context;Ljava/lang/String;ZZLru/rocketbank/core/model/dto/CheckCardData;)V

    return-void

    .line 405
    :cond_3
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Lru/rocketbank/r2d2/activities/ChangeCodeActivity;->startCode(Landroid/content/Context;Ljava/lang/String;ZZ)V

    :cond_4
    return-void
.end method

.method private final onChangePhone()V
    .locals 4

    .line 410
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->userModel:Lru/rocketbank/core/model/UserModel;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0}, Lru/rocketbank/core/model/UserModel;->getChangeMobilePhone()Lru/rocketbank/core/model/ChangeMobilePhone;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 412
    sget-object v1, Lru/rocketbank/r2d2/activities/ChangePhoneActivity;->Companion:Lru/rocketbank/r2d2/activities/ChangePhoneActivity$Companion;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    const-string v3, "activity!!"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lru/rocketbank/r2d2/activities/ChangePhoneActivity$Companion;->start(Landroid/content/Context;Lru/rocketbank/core/model/ChangeMobilePhone;)V

    :cond_2
    return-void
.end method

.method private final onChangePin()V
    .locals 4

    .line 417
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 419
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->userModel:Lru/rocketbank/core/model/UserModel;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lru/rocketbank/core/model/UserModel;->getCurrentAccount()Lru/rocketbank/core/model/AccountModel;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lru/rocketbank/core/model/AccountModel;->getChangePin()Lru/rocketbank/core/model/dto/ChangePin;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 420
    invoke-static {v0, v2, v1, v3}, Lru/rocketbank/r2d2/activities/ChangeCodeActivity;->startPin(Landroid/content/Context;ZLru/rocketbank/core/model/dto/ChangePin;Z)V

    return-void

    :cond_0
    return-void

    :cond_1
    return-void
.end method

.method private final onChangeRefillLinkRequested()V
    .locals 4

    .line 1543
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->changeNameSubscription:Lrx/Subscription;

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->unsubscribe(Lrx/Subscription;)V

    .line 1545
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u0418\u043c\u044f \u0441\u0442\u0440\u0430\u043d\u0438\u0447\u043a\u0438"

    .line 1547
    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1549
    new-instance v1, Landroid/widget/EditText;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 1550
    iget-object v2, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->userModel:Lru/rocketbank/core/model/UserModel;

    if-nez v2, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {v2}, Lru/rocketbank/core/model/UserModel;->getUsername()Lru/rocketbank/core/model/UsernameModel;

    move-result-object v2

    const-string v3, "userModel!!.username"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lru/rocketbank/core/model/UsernameModel;->getValue()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1551
    move-object v2, v1

    check-cast v2, Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    const v2, 0x104000a

    .line 1553
    new-instance v3, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$onChangeRefillLinkRequested$1;

    invoke-direct {v3, p0, v1}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$onChangeRefillLinkRequested$1;-><init>(Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;Landroid/widget/EditText;)V

    check-cast v3, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1596
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    return-void
.end method

.method private final onCheckChanged(Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;ZLru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericSwitchViewHolder;)V
    .locals 1

    .line 311
    invoke-virtual {p1}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->getId()I

    move-result p1

    sget-object v0, Lru/rocketbank/r2d2/fragments/profile/ProfileAdapter;->Companion:Lru/rocketbank/r2d2/fragments/profile/ProfileAdapter$Companion;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/fragments/profile/ProfileAdapter$Companion;->getREFILL_ID()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 312
    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->switchRefill(ZLru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericSwitchViewHolder;)V

    return-void

    .line 314
    :cond_0
    invoke-direct {p0, p2}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->switch3MinInterval(Z)V

    return-void
.end method

.method private final onFacebookCover()V
    .locals 2

    .line 1504
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->getSocialNet()Lru/rocketbank/core/manager/social/SocialNet;

    move-result-object v0

    invoke-interface {v0}, Lru/rocketbank/core/manager/social/SocialNet;->getAvatarID()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->patchFacebook(Ljava/lang/String;Z)V

    return-void
.end method

.method private final onOneTwoTripUidClick()V
    .locals 3

    .line 533
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "OneTwoTrip"

    iget-object v2, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->userModel:Lru/rocketbank/core/model/UserModel;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lru/rocketbank/core/model/UserModel;->getOnetwotripUid()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v0, v1, v2}, Lru/rocketbank/r2d2/Utils;->copyTextToClipboard(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f110332

    invoke-static {v0, v1}, Lru/rocketbank/r2d2/helpers/UIHelper;->showSnack(Landroid/view/View;I)V

    return-void
.end method

.method private final onRefillLinkClick()V
    .locals 3

    .line 1514
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f03000f

    .line 1516
    new-instance v2, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$onRefillLinkClick$1;

    invoke-direct {v2, p0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$onRefillLinkClick$1;-><init>(Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;)V

    check-cast v2, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1530
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    return-void
.end method

.method private final onSetAvatarClick()V
    .locals 3

    .line 1322
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1326
    :cond_0
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1328
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->isAvatarSet()Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x7f030001

    goto :goto_0

    :cond_2
    const v1, 0x7f030003

    :goto_0
    new-instance v2, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$onSetAvatarClick$1;

    invoke-direct {v2, p0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$onSetAvatarClick$1;-><init>(Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;)V

    check-cast v2, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1340
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    return-void
.end method

.method private final onSetAvatarFromCameraRequested()V
    .locals 2

    .line 1209
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    .line 1210
    invoke-direct {p0, v0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->checkOrRequestCamera(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1214
    :cond_0
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->startGetFromCameraRequest()V

    :cond_1
    return-void
.end method

.method private final onSetAvatarFromGalleryRequested()V
    .locals 2

    .line 1237
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    const/4 v0, 0x2

    .line 1238
    invoke-direct {p0, v0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->checkOrRequestGallery(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1242
    :cond_0
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->startSetAvatarFromGalleryRequested()V

    :cond_1
    return-void
.end method

.method private final onSetCoverClick()V
    .locals 3

    .line 1482
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1486
    :cond_0
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1488
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->isCoverSet()Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x7f030002

    goto :goto_0

    :cond_2
    const v1, 0x7f030004

    .line 1489
    :goto_0
    new-instance v2, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$onSetCoverClick$1;

    invoke-direct {v2, p0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$onSetCoverClick$1;-><init>(Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;)V

    check-cast v2, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1500
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    return-void
.end method

.method private final onSetCoverFromCameraRequested()V
    .locals 2

    .line 1259
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    .line 1260
    invoke-direct {p0, v0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->checkOrRequestCamera(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1264
    :cond_0
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->startSetCoverFromCameraRequested()V

    :cond_1
    return-void
.end method

.method private final onSetCoverFromGalleryRequested()V
    .locals 2

    .line 1289
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    const/4 v0, 0x3

    .line 1290
    invoke-direct {p0, v0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->checkOrRequestGallery(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1294
    :cond_0
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->startSetCoverFromGalleryRequested()V

    :cond_1
    return-void
.end method

.method private final openLink()V
    .locals 3

    .line 1534
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lru/rocketbank/r2d2/RocketConstants;->INSTANCE:Lru/rocketbank/r2d2/RocketConstants;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/RocketConstants;->getLINK()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->userModel:Lru/rocketbank/core/model/UserModel;

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v1}, Lru/rocketbank/core/model/UserModel;->getUsername()Lru/rocketbank/core/model/UsernameModel;

    move-result-object v1

    const-string v2, "userModel!!.username"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lru/rocketbank/core/model/UsernameModel;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1536
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1537
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    const-string v2, "activity!!"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1538
    invoke-virtual {p0, v1}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->startActivity(Landroid/content/Intent;)V

    :cond_2
    return-void
.end method

.method private final patchFacebook(Ljava/lang/String;Z)V
    .locals 3

    .line 1349
    :try_start_0
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->getSocialNet()Lru/rocketbank/core/manager/social/SocialNet;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Landroid/support/v4/app/Fragment;

    new-instance v2, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$patchFacebook$1;

    invoke-direct {v2, p0, p2, p1}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$patchFacebook$1;-><init>(Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;ZLjava/lang/String;)V

    check-cast v2, Lru/rocketbank/core/manager/social/SocialNetCallback;

    invoke-interface {v0, v1, v2}, Lru/rocketbank/core/manager/social/SocialNet;->authorize(Landroid/support/v4/app/Fragment;Lru/rocketbank/core/manager/social/SocialNetCallback;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1389
    invoke-static {p1}, Lru/rocketbank/core/manager/AnalyticsManager;->logException(Ljava/lang/Throwable;)V

    return-void
.end method

.method private final refreshUserData()V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .line 713
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->fragmentProfileBinding:Lru/rocketbank/r2d2/databinding/FragmentProfileBinding;

    if-nez v0, :cond_0

    const-string v1, "fragmentProfileBinding"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget-object v0, v0, Lru/rocketbank/r2d2/databinding/FragmentProfileBinding;->swipeRefresh:Landroid/support/v4/widget/SwipeRefreshLayout;

    const-string v1, "swipeRefreshLayout"

    .line 715
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 716
    invoke-virtual {v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->destroyDrawingCache()V

    .line 717
    invoke-virtual {v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->clearAnimation()V

    .line 719
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->userModel:Lru/rocketbank/core/model/UserModel;

    if-eqz v0, :cond_3

    .line 721
    invoke-virtual {v0}, Lru/rocketbank/core/model/UserModel;->getFirstName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v2, ""

    .line 722
    :cond_1
    invoke-virtual {v0}, Lru/rocketbank/core/model/UserModel;->getLastName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    const-string v3, ""

    .line 723
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_3
    const-string v2, ""

    .line 728
    :goto_0
    iget-object v3, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->profileData:Lru/rocketbank/r2d2/data/binding/profile/ProfileData;

    if-nez v3, :cond_4

    const-string v4, "profileData"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v3}, Lru/rocketbank/r2d2/data/binding/profile/ProfileData;->getUserName()Landroid/databinding/ObservableField;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/databinding/ObservableField;->set(Ljava/lang/Object;)V

    if-eqz v0, :cond_d

    .line 731
    iget-object v2, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->fragmentProfileBinding:Lru/rocketbank/r2d2/databinding/FragmentProfileBinding;

    if-nez v2, :cond_5

    const-string v3, "fragmentProfileBinding"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_5
    iget-object v2, v2, Lru/rocketbank/r2d2/databinding/FragmentProfileBinding;->userPic:Landroid/widget/ImageView;

    .line 733
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070165

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 734
    iget-object v4, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->userModel:Lru/rocketbank/core/model/UserModel;

    if-nez v4, :cond_6

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_6
    invoke-virtual {v4}, Lru/rocketbank/core/model/UserModel;->getUserpicUrl()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    if-eqz v4, :cond_8

    .line 736
    move-object v6, p0

    check-cast v6, Landroid/support/v4/app/Fragment;

    invoke-static {v6}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/Fragment;)Lcom/bumptech/glide/RequestManager;

    move-result-object v6

    .line 737
    invoke-virtual {v6, v4}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v4

    .line 738
    sget-object v6, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->ALL:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v4, v6}, Lcom/bumptech/glide/DrawableTypeRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v4

    .line 739
    invoke-virtual {v4, v3, v3}, Lcom/bumptech/glide/DrawableRequestBuilder;->override(II)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v3

    new-array v4, v5, [Lcom/bumptech/glide/load/Transformation;

    .line 740
    iget-object v5, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->cropCircleTransformation:Ljp/wasabeef/glide/transformations/CropCircleTransformation;

    if-nez v5, :cond_7

    const-string v6, "cropCircleTransformation"

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_7
    check-cast v5, Lcom/bumptech/glide/load/Transformation;

    aput-object v5, v4, v1

    invoke-virtual {v3, v4}, Lcom/bumptech/glide/DrawableRequestBuilder;->bitmapTransform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    .line 741
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    goto :goto_2

    :cond_8
    const-string v4, "male"

    .line 744
    iget-object v6, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->userModel:Lru/rocketbank/core/model/UserModel;

    if-nez v6, :cond_9

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_9
    invoke-virtual {v6}, Lru/rocketbank/core/model/UserModel;->getGender()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v5}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_a

    const v4, 0x7f08012f

    goto :goto_1

    :cond_a
    const v4, 0x7f080130

    .line 750
    :goto_1
    move-object v6, p0

    check-cast v6, Landroid/support/v4/app/Fragment;

    invoke-static {v6}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/Fragment;)Lcom/bumptech/glide/RequestManager;

    move-result-object v6

    .line 751
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v6, v4}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v4

    .line 752
    sget-object v6, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->ALL:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v4, v6}, Lcom/bumptech/glide/DrawableTypeRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v4

    .line 753
    invoke-virtual {v4, v3, v3}, Lcom/bumptech/glide/DrawableRequestBuilder;->override(II)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v3

    new-array v4, v5, [Lcom/bumptech/glide/load/Transformation;

    .line 754
    iget-object v5, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->cropCircleTransformation:Ljp/wasabeef/glide/transformations/CropCircleTransformation;

    if-nez v5, :cond_b

    const-string v6, "cropCircleTransformation"

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_b
    check-cast v5, Lcom/bumptech/glide/load/Transformation;

    aput-object v5, v4, v1

    invoke-virtual {v3, v4}, Lcom/bumptech/glide/DrawableRequestBuilder;->bitmapTransform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    .line 755
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 758
    :goto_2
    invoke-virtual {v0}, Lru/rocketbank/core/model/UserModel;->getCover()Lru/rocketbank/core/model/CoverModel;

    move-result-object v0

    .line 759
    iget v1, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->windowWidth:I

    if-lez v1, :cond_c

    const-string v1, "coverModel"

    .line 761
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->loadCoverWithResize(Lru/rocketbank/core/model/CoverModel;)V

    goto :goto_3

    :cond_c
    const-string v1, "coverModel"

    .line 763
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->loadCover(Lru/rocketbank/core/model/CoverModel;)V

    .line 766
    :goto_3
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->fillAdapterWithData()V

    :cond_d
    return-void
.end method

.method private final setUserModel(Lru/rocketbank/core/model/UserModel;)V
    .locals 0

    .line 275
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->userModel:Lru/rocketbank/core/model/UserModel;

    return-void
.end method

.method private final setupToolbar()V
    .locals 3

    .line 279
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    const v1, 0x7f080143

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 280
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->profileData:Lru/rocketbank/r2d2/data/binding/profile/ProfileData;

    if-nez v1, :cond_1

    const-string v2, "profileData"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v1}, Lru/rocketbank/r2d2/data/binding/profile/ProfileData;->getToolbarBackDrawable()Landroid/databinding/ObservableField;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 282
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    const v1, 0x7f080144

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 283
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->profileData:Lru/rocketbank/r2d2/data/binding/profile/ProfileData;

    if-nez v1, :cond_3

    const-string v2, "profileData"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v1}, Lru/rocketbank/r2d2/data/binding/profile/ProfileData;->getToolbarWhiteBackDrawable()Landroid/databinding/ObservableField;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 287
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->setupToolbarSizes()V

    return-void
.end method

.method private final setupToolbarSizes()V
    .locals 4

    .line 291
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->getStatusBarHeight()I

    move-result v0

    .line 293
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->fragmentProfileBinding:Lru/rocketbank/r2d2/databinding/FragmentProfileBinding;

    if-nez v1, :cond_0

    const-string v2, "fragmentProfileBinding"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget-object v1, v1, Lru/rocketbank/r2d2/databinding/FragmentProfileBinding;->toolbar:Landroid/support/v7/widget/Toolbar;

    .line 294
    iget-object v2, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->fragmentProfileBinding:Lru/rocketbank/r2d2/databinding/FragmentProfileBinding;

    if-nez v2, :cond_1

    const-string v3, "fragmentProfileBinding"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    iget-object v2, v2, Lru/rocketbank/r2d2/databinding/FragmentProfileBinding;->toolbarReal:Landroid/support/v7/widget/Toolbar;

    .line 296
    invoke-virtual {p0, v1, v0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->setToolbarSize(Landroid/support/v7/widget/Toolbar;I)I

    .line 297
    invoke-virtual {p0, v2, v0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->setToolbarSize(Landroid/support/v7/widget/Toolbar;I)I

    const-string v3, "toolbar"

    .line 299
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/support/v7/widget/Toolbar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 300
    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const-string v3, "realToolbar"

    .line 301
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/Toolbar;->setTranslationY(F)V

    .line 303
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->appBarLayout:Landroid/widget/FrameLayout;

    if-nez v1, :cond_2

    const-string v2, "appBarLayout"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 304
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    add-int/2addr v2, v0

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 305
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->appBarLayout:Landroid/widget/FrameLayout;

    if-nez v0, :cond_3

    const-string v2, "appBarLayout"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 307
    iget v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v0, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->headerHeight:I

    return-void
.end method

.method private final showProgressDialog()V
    .locals 2

    .line 386
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 387
    instance-of v1, v0, Lru/rocketbank/r2d2/activities/AbstractActivity;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Lru/rocketbank/r2d2/activities/AbstractActivity;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lru/rocketbank/r2d2/activities/AbstractActivity;->showProgressDialog()V

    return-void

    :cond_1
    return-void
.end method

.method private final startGetFromCameraRequest()V
    .locals 7

    .line 1219
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1221
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->createImageFile()Lru/rocketbank/core/utils/fs/ExternalFile;

    move-result-object v1

    const-string v2, "output"

    .line 1222
    invoke-virtual {v1}, Lru/rocketbank/core/utils/fs/ExternalFile;->getUri()Landroid/net/Uri;

    move-result-object v3

    check-cast v3, Landroid/os/Parcelable;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1224
    :try_start_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ge v2, v3, :cond_3

    .line 1225
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    const-string v3, "context!!"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/high16 v3, 0x10000

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    const-string v3, "resInfoList"

    .line 1226
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Iterable;

    .line 1661
    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault$251b5948(Ljava/lang/Iterable;)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v3, Ljava/util/Collection;

    .line 1662
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 1663
    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 1226
    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1664
    :cond_1
    check-cast v3, Ljava/util/List;

    check-cast v3, Ljava/lang/Iterable;

    .line 1665
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1227
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    if-nez v4, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    invoke-virtual {v1}, Lru/rocketbank/core/utils/fs/ExternalFile;->getUri()Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x3

    invoke-virtual {v4, v3, v5, v6}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    goto :goto_1

    .line 1230
    :cond_3
    sget v1, Lru/rocketbank/r2d2/utils/ImageUpload;->REQUEST_AVATAR_FROM_CAMERA:I

    invoke-virtual {p0, v0, v1}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    return-void
.end method

.method private final startSetAvatarFromGalleryRequested()V
    .locals 3

    .line 1247
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1252
    :try_start_0
    sget v1, Lru/rocketbank/r2d2/utils/ImageUpload;->REQUEST_AVATAR_FROM_GALLERY:I

    invoke-virtual {p0, v0, v1}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    return-void
.end method

.method private final startSetCoverFromCameraRequested()V
    .locals 7

    .line 1269
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1271
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->createImageFile()Lru/rocketbank/core/utils/fs/ExternalFile;

    move-result-object v1

    const-string v2, "output"

    .line 1272
    invoke-virtual {v1}, Lru/rocketbank/core/utils/fs/ExternalFile;->getUri()Landroid/net/Uri;

    move-result-object v3

    check-cast v3, Landroid/os/Parcelable;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1274
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ge v2, v3, :cond_3

    .line 1275
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    const-string v3, "context!!"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/high16 v3, 0x10000

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    const-string v3, "resInfoList"

    .line 1276
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Iterable;

    .line 1667
    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault$251b5948(Ljava/lang/Iterable;)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v3, Ljava/util/Collection;

    .line 1668
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 1669
    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 1276
    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1670
    :cond_1
    check-cast v3, Ljava/util/List;

    check-cast v3, Ljava/lang/Iterable;

    .line 1671
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1277
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    if-nez v4, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    invoke-virtual {v1}, Lru/rocketbank/core/utils/fs/ExternalFile;->getUri()Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x3

    invoke-virtual {v4, v3, v5, v6}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    goto :goto_1

    .line 1281
    :cond_3
    :try_start_0
    sget v1, Lru/rocketbank/r2d2/utils/ImageUpload;->REQUEST_COVER_FROM_CAMERA:I

    invoke-virtual {p0, v0, v1}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 1283
    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v0}, Lru/rocketbank/core/manager/AnalyticsManager;->logException(Ljava/lang/Throwable;)V

    return-void
.end method

.method private final startSetCoverFromGalleryRequested()V
    .locals 3

    .line 1299
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1305
    :try_start_0
    sget v1, Lru/rocketbank/r2d2/utils/ImageUpload;->REQUEST_COVER_FROM_GALLERY:I

    invoke-virtual {p0, v0, v1}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 1307
    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v0}, Lru/rocketbank/core/manager/AnalyticsManager;->logException(Ljava/lang/Throwable;)V

    return-void
.end method

.method private final switch3MinInterval(Z)V
    .locals 3

    .line 319
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->showProgressDialog()V

    .line 321
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->min3Subscription:Lrx/Subscription;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lrx/Subscription;->unsubscribe()V

    .line 323
    :cond_0
    new-instance v0, Lru/rocketbank/core/network/model/PatchProfileBody;

    invoke-direct {v0}, Lru/rocketbank/core/network/model/PatchProfileBody;-><init>()V

    .line 324
    new-instance v1, Lru/rocketbank/core/network/model/PatchProfileBody$User;

    invoke-direct {v1}, Lru/rocketbank/core/network/model/PatchProfileBody$User;-><init>()V

    invoke-virtual {v0, v1}, Lru/rocketbank/core/network/model/PatchProfileBody;->setUser(Lru/rocketbank/core/network/model/PatchProfileBody$User;)V

    .line 325
    invoke-virtual {v0}, Lru/rocketbank/core/network/model/PatchProfileBody;->getUser()Lru/rocketbank/core/network/model/PatchProfileBody$User;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lru/rocketbank/core/network/model/PatchProfileBody$User;->setShortTermLogin(Ljava/lang/Boolean;)V

    .line 327
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->userApi:Lru/rocketbank/core/network/api/UserApi;

    invoke-interface {v1, v0}, Lru/rocketbank/core/network/api/UserApi;->patchProfile(Lru/rocketbank/core/network/model/PatchProfileBody;)Lrx/Observable;

    move-result-object v0

    .line 328
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 329
    new-instance v1, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$switch3MinInterval$1;

    invoke-direct {v1, p0, p1}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$switch3MinInterval$1;-><init>(Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;Z)V

    check-cast v1, Lrx/Subscriber;

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->min3Subscription:Lrx/Subscription;

    return-void
.end method

.method private final switchFingerPrint(ZLru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericSwitchViewHolder;)V
    .locals 3

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 539
    invoke-virtual {p2, p1}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericSwitchViewHolder;->setClickable(Z)V

    .line 540
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->handler:Landroid/os/Handler;

    new-instance v0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$switchFingerPrint$1;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$switchFingerPrint$1;-><init>(Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;)V

    check-cast v0, Ljava/lang/Runnable;

    const-wide/16 v1, 0xc8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 577
    :cond_0
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->touchManager:Lru/rocketbank/core/manager/TouchManager;

    invoke-interface {p1}, Lru/rocketbank/core/manager/TouchManager;->invalidateToken()V

    .line 579
    :goto_0
    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->fingerprintViewHolder:Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericSwitchViewHolder;

    return-void
.end method

.method private final switchJointAnalytics(IZLru/rocketbank/r2d2/widgets/recycler/parallax/vh/AnalyticsProfileViewHolder;)V
    .locals 1

    if-eqz p2, :cond_1

    .line 683
    sget-object p1, Lru/rocketbank/r2d2/friends/ChooseFriendActivity;->Companion:Lru/rocketbank/r2d2/friends/ChooseFriendActivity$Companion;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    if-nez p2, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    const-string p3, "activity!!"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/app/Activity;

    const/16 p3, 0x22b

    invoke-virtual {p1, p2, p3}, Lru/rocketbank/r2d2/friends/ChooseFriendActivity$Companion;->startForResult(Landroid/app/Activity;I)V

    return-void

    :cond_1
    const/4 p2, 0x1

    .line 685
    invoke-virtual {p3, p2}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/AnalyticsProfileViewHolder;->setInProgress(Z)V

    .line 686
    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->rocketAPI:Lru/rocketbank/core/network/api/RocketAPI;

    const-string v0, ""

    invoke-interface {p2, p1, v0}, Lru/rocketbank/core/network/api/RocketAPI;->jointCancel(ILjava/lang/String;)Lrx/Observable;

    move-result-object p1

    .line 687
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object p1

    .line 688
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object p1

    .line 690
    new-instance p2, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$switchJointAnalytics$1;

    invoke-direct {p2, p0, p3}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$switchJointAnalytics$1;-><init>(Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/AnalyticsProfileViewHolder;)V

    check-cast p2, Lrx/functions/Action1;

    .line 698
    new-instance v0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$switchJointAnalytics$2;

    invoke-direct {v0, p0, p3}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$switchJointAnalytics$2;-><init>(Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/AnalyticsProfileViewHolder;)V

    check-cast v0, Lrx/functions/Action1;

    .line 689
    invoke-virtual {p1, p2, v0}, Lrx/Observable;->subscribe(Lrx/functions/Action1;Lrx/functions/Action1;)Lrx/Subscription;

    return-void
.end method

.method private final switchRefill(ZLru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericSwitchViewHolder;)V
    .locals 3

    .line 352
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->showProgressDialog()V

    .line 354
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->refillSubscription:Lrx/Subscription;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lrx/Subscription;->unsubscribe()V

    .line 356
    :cond_0
    new-instance v0, Lru/rocketbank/core/network/model/PatchProfileBody;

    invoke-direct {v0}, Lru/rocketbank/core/network/model/PatchProfileBody;-><init>()V

    .line 357
    new-instance v1, Lru/rocketbank/core/network/model/PatchProfileBody$User;

    invoke-direct {v1}, Lru/rocketbank/core/network/model/PatchProfileBody$User;-><init>()V

    invoke-virtual {v0, v1}, Lru/rocketbank/core/network/model/PatchProfileBody;->setUser(Lru/rocketbank/core/network/model/PatchProfileBody$User;)V

    .line 358
    invoke-virtual {v0}, Lru/rocketbank/core/network/model/PatchProfileBody;->getUser()Lru/rocketbank/core/network/model/PatchProfileBody$User;

    move-result-object v1

    new-instance v2, Lru/rocketbank/core/network/model/PatchProfileBody$UserName;

    invoke-direct {v2}, Lru/rocketbank/core/network/model/PatchProfileBody$UserName;-><init>()V

    invoke-virtual {v1, v2}, Lru/rocketbank/core/network/model/PatchProfileBody$User;->setUsername(Lru/rocketbank/core/network/model/PatchProfileBody$UserName;)V

    .line 359
    invoke-virtual {v0}, Lru/rocketbank/core/network/model/PatchProfileBody;->getUser()Lru/rocketbank/core/network/model/PatchProfileBody$User;

    move-result-object v1

    invoke-virtual {v1}, Lru/rocketbank/core/network/model/PatchProfileBody$User;->getUsername()Lru/rocketbank/core/network/model/PatchProfileBody$UserName;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lru/rocketbank/core/network/model/PatchProfileBody$UserName;->setWorks(Ljava/lang/Boolean;)V

    .line 361
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->userApi:Lru/rocketbank/core/network/api/UserApi;

    invoke-interface {v1, v0}, Lru/rocketbank/core/network/api/UserApi;->patchProfile(Lru/rocketbank/core/network/model/PatchProfileBody;)Lrx/Observable;

    move-result-object v0

    .line 362
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 363
    new-instance v1, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$switchRefill$1;

    invoke-direct {v1, p0, p2, p1}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$switchRefill$1;-><init>(Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericSwitchViewHolder;Z)V

    check-cast v1, Lrx/Subscriber;

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->refillSubscription:Lrx/Subscription;

    return-void
.end method

.method private final updateFingerprint()V
    .locals 3

    .line 597
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->touchManager:Lru/rocketbank/core/manager/TouchManager;

    invoke-interface {v0}, Lru/rocketbank/core/manager/TouchManager;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 598
    sget-object v0, Lru/rocketbank/r2d2/widgets/FingerprintDialog;->Companion:Lru/rocketbank/r2d2/widgets/FingerprintDialog$Companion;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    const-string v2, "fragmentManager!!"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/widgets/FingerprintDialog$Companion;->showFingerprintDialog(Landroid/support/v4/app/FragmentManager;)V

    return-void

    .line 600
    :cond_1
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->fingerprintViewHolder:Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericSwitchViewHolder;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 601
    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericSwitchViewHolder;->setEnabled(Z)V

    const/4 v1, 0x1

    .line 602
    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericSwitchViewHolder;->setClickable(Z)V

    return-void

    :cond_2
    return-void
.end method

.method private final uploadAvatar(Landroid/graphics/Bitmap;)V
    .locals 4

    .line 1063
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    .line 1064
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1065
    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-static {p1, v2, v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    const-string v0, "Bitmap.createBitmap(bitm\u2026tmap.width, bitmap.width)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 1067
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1068
    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-static {p1, v0, v2, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    const-string v0, "Bitmap.createBitmap(bitm\u2026ap.height, bitmap.height)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1071
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    const/16 v1, 0x400

    if-le v0, v1, :cond_1

    const/4 v0, 0x1

    .line 1072
    invoke-static {p1, v1, v1, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    const-string v0, "Bitmap.createScaledBitma\u2026bitmap, 1024, 1024, true)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1075
    :cond_1
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->showProgressDialog()V

    .line 1077
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->uploadObservable(Landroid/graphics/Bitmap;)Lrx/Observable;

    move-result-object p1

    .line 1078
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object p1

    .line 1079
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object p1

    .line 1080
    new-instance v0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$uploadAvatar$1;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$uploadAvatar$1;-><init>(Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;)V

    check-cast v0, Lrx/Subscriber;

    invoke-virtual {p1, v0}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->uploadSubscription:Lrx/Subscription;

    return-void
.end method

.method private final uploadAvatarWithCamera()V
    .locals 3

    .line 982
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->cameraPhotoPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 983
    sget-object v1, Lru/rocketbank/r2d2/utils/ImageUpload;->INSTANCE:Lru/rocketbank/r2d2/utils/ImageUpload;

    iget v2, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->windowWidth:I

    invoke-virtual {v1, v0, v2}, Lru/rocketbank/r2d2/utils/ImageUpload;->observableFromCamera(Ljava/lang/String;I)Lrx/Observable;

    move-result-object v0

    .line 984
    new-instance v1, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$uploadAvatarWithCamera$$inlined$let$lambda$1;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$uploadAvatarWithCamera$$inlined$let$lambda$1;-><init>(Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;)V

    check-cast v1, Lrx/Subscriber;

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    return-void

    :cond_0
    return-void
.end method

.method private final uploadCover(Landroid/graphics/Bitmap;)V
    .locals 1

    const/16 v0, 0x780

    .line 1005
    invoke-static {p1, v0}, Lru/rocketbank/r2d2/Utils;->shrinkToSize(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    const-string v0, "Utils.shrinkToSize(bitmap, 1920)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1007
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->uploadObservable(Landroid/graphics/Bitmap;)Lrx/Observable;

    move-result-object p1

    .line 1008
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object p1

    .line 1009
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object p1

    .line 1010
    new-instance v0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$uploadCover$1;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$uploadCover$1;-><init>(Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;)V

    check-cast v0, Lrx/Subscriber;

    invoke-virtual {p1, v0}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->uploadSubscription:Lrx/Subscription;

    return-void
.end method

.method private final uploadCoverFromCamera()V
    .locals 4

    .line 955
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->cameraPhotoPath:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 956
    sget-object v2, Lru/rocketbank/r2d2/utils/ImageUpload;->INSTANCE:Lru/rocketbank/r2d2/utils/ImageUpload;

    iget v3, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->windowWidth:I

    invoke-virtual {v2, v0, v3}, Lru/rocketbank/r2d2/utils/ImageUpload;->observableFromCamera(Ljava/lang/String;I)Lrx/Observable;

    move-result-object v0

    new-instance v2, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$uploadCoverFromCamera$$inlined$let$lambda$1;

    invoke-direct {v2, p0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$uploadCoverFromCamera$$inlined$let$lambda$1;-><init>(Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;)V

    check-cast v2, Lrx/Subscriber;

    invoke-virtual {v0, v2}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    .line 976
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const v2, 0x7f110318

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_1
    return-void
.end method

.method private final uploadObservable(Landroid/graphics/Bitmap;)Lrx/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            ")",
            "Lrx/Observable<",
            "Lru/rocketbank/core/network/model/UploadImageResponse;",
            ">;"
        }
    .end annotation

    .line 818
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "file_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".jpg"

    invoke-static {v0, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const-string v1, "File.createTempFile(\"fil\u2026lis().toString(), \".jpg\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 819
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "file.absolutePath"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 824
    invoke-static {p1}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object p1

    new-instance v2, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$uploadObservable$2;

    invoke-direct {v2, p0, v0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$uploadObservable$2;-><init>(Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;Ljava/io/File;)V

    check-cast v2, Lrx/functions/Func1;

    invoke-virtual {p1, v2}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object p1

    .line 840
    new-instance v2, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$uploadObservable$3;

    invoke-direct {v2, v0, v1}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$uploadObservable$3;-><init>(Ljava/io/File;Ljava/lang/String;)V

    check-cast v2, Lrx/functions/Action0;

    invoke-virtual {p1, v2}, Lrx/Observable;->doOnUnsubscribe(Lrx/functions/Action0;)Lrx/Observable;

    move-result-object p1

    const-string v0, "Observable.just(bitmap).\u2026)\n            }\n        }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :catch_0
    move-exception p1

    .line 821
    new-instance v0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$uploadObservable$1;

    invoke-direct {v0, p1}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$uploadObservable$1;-><init>(Ljava/io/IOException;)V

    check-cast v0, Lrx/Observable$OnSubscribe;

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object p1

    const-string v0, "Observable.create { subs\u2026> subscriber.onError(e) }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method public final _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public final _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->_$_findViewCache:Ljava/util/HashMap;

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

    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final getCropCircleTransformation()Ljp/wasabeef/glide/transformations/CropCircleTransformation;
    .locals 2

    .line 121
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->cropCircleTransformation:Ljp/wasabeef/glide/transformations/CropCircleTransformation;

    if-nez v0, :cond_0

    const-string v1, "cropCircleTransformation"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 864
    invoke-super {p0, p1, p2, p3}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x22c

    if-ne p1, v0, :cond_0

    .line 867
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->updateFingerprint()V

    return-void

    :cond_0
    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    return-void

    :cond_1
    const/16 v0, 0x22b

    if-ne p1, v0, :cond_3

    if-eqz p3, :cond_8

    .line 877
    sget-object p1, Lru/rocketbank/r2d2/friends/ChooseFriendActivity;->Companion:Lru/rocketbank/r2d2/friends/ChooseFriendActivity$Companion;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/friends/ChooseFriendActivity$Companion;->getKEY_CONTACT()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 878
    sget-object p1, Lru/rocketbank/r2d2/friends/ChooseFriendActivity;->Companion:Lru/rocketbank/r2d2/friends/ChooseFriendActivity$Companion;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/friends/ChooseFriendActivity$Companion;->getKEY_CONTACT()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    if-nez p1, :cond_2

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type ru.rocketbank.core.model.contact.Contact"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    check-cast p1, Lru/rocketbank/core/model/contact/Contact;

    .line 879
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->jointAccount(Lru/rocketbank/core/model/contact/Contact;)V

    return-void

    :cond_3
    const v0, 0xface

    if-ne p1, v0, :cond_4

    .line 884
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->getSocialNet()Lru/rocketbank/core/manager/social/SocialNet;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lru/rocketbank/core/manager/social/SocialNet;->onActivityResult(IILandroid/content/Intent;)V

    return-void

    .line 887
    :cond_4
    sget p2, Lru/rocketbank/r2d2/utils/ImageUpload;->REQUEST_AVATAR_FROM_CAMERA:I

    if-ne p1, p2, :cond_5

    .line 888
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->showProgressDialog()V

    .line 889
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->uploadAvatarWithCamera()V

    return-void

    .line 891
    :cond_5
    sget p2, Lru/rocketbank/r2d2/utils/ImageUpload;->REQUEST_AVATAR_FROM_GALLERY:I

    if-ne p1, p2, :cond_6

    .line 892
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->showProgressDialog()V

    if-eqz p3, :cond_8

    .line 893
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 894
    invoke-direct {p0, p3}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->observableFromGallery(Landroid/content/Intent;)Lrx/Observable;

    move-result-object p1

    .line 895
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object p1

    .line 896
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object p1

    .line 897
    new-instance p2, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$onActivityResult$1;

    invoke-direct {p2, p0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$onActivityResult$1;-><init>(Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;)V

    check-cast p2, Lrx/Subscriber;

    invoke-virtual {p1, p2}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    return-void

    .line 923
    :cond_6
    sget p2, Lru/rocketbank/r2d2/utils/ImageUpload;->REQUEST_COVER_FROM_CAMERA:I

    if-ne p1, p2, :cond_7

    .line 924
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->showProgressDialog()V

    .line 925
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->uploadCoverFromCamera()V

    return-void

    .line 927
    :cond_7
    sget p2, Lru/rocketbank/r2d2/utils/ImageUpload;->REQUEST_COVER_FROM_GALLERY:I

    if-ne p1, p2, :cond_8

    .line 928
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->showProgressDialog()V

    if-eqz p3, :cond_8

    .line 929
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 930
    invoke-direct {p0, p3}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->observableFromGallery(Landroid/content/Intent;)Lrx/Observable;

    move-result-object p1

    .line 931
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object p1

    .line 932
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object p1

    .line 933
    new-instance p2, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$onActivityResult$2;

    invoke-direct {p2, p0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$onActivityResult$2;-><init>(Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;)V

    check-cast p2, Lrx/Subscriber;

    invoke-virtual {p1, p2}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    :cond_8
    return-void
.end method

.method public final onAvatarChange(Landroid/view/View;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1623
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->onSetAvatarClick()V

    return-void
.end method

.method public final onCoverChange(Landroid/view/View;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1627
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->onSetCoverClick()V

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    new-instance p3, Lru/rocketbank/r2d2/data/binding/profile/ProfileData;

    invoke-direct {p3}, Lru/rocketbank/r2d2/data/binding/profile/ProfileData;-><init>()V

    iput-object p3, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->profileData:Lru/rocketbank/r2d2/data/binding/profile/ProfileData;

    const/4 p3, 0x0

    .line 136
    invoke-static {p1, p2, p3}, Lru/rocketbank/r2d2/databinding/FragmentProfileBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lru/rocketbank/r2d2/databinding/FragmentProfileBinding;

    move-result-object p1

    const-string p2, "FragmentProfileBinding.i\u2026flater, container, false)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->fragmentProfileBinding:Lru/rocketbank/r2d2/databinding/FragmentProfileBinding;

    .line 137
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->fragmentProfileBinding:Lru/rocketbank/r2d2/databinding/FragmentProfileBinding;

    if-nez p1, :cond_0

    const-string p2, "fragmentProfileBinding"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->profileData:Lru/rocketbank/r2d2/data/binding/profile/ProfileData;

    if-nez p2, :cond_1

    const-string p3, "profileData"

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1, p2}, Lru/rocketbank/r2d2/databinding/FragmentProfileBinding;->setData(Lru/rocketbank/r2d2/data/binding/profile/ProfileData;)V

    .line 138
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->fragmentProfileBinding:Lru/rocketbank/r2d2/databinding/FragmentProfileBinding;

    if-nez p1, :cond_2

    const-string p2, "fragmentProfileBinding"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    move-object p2, p0

    check-cast p2, Lru/rocketbank/r2d2/data/binding/profile/ProfileHandler;

    invoke-virtual {p1, p2}, Lru/rocketbank/r2d2/databinding/FragmentProfileBinding;->setHandler(Lru/rocketbank/r2d2/data/binding/profile/ProfileHandler;)V

    .line 140
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->fragmentProfileBinding:Lru/rocketbank/r2d2/databinding/FragmentProfileBinding;

    if-nez p1, :cond_3

    const-string p2, "fragmentProfileBinding"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p1}, Lru/rocketbank/r2d2/databinding/FragmentProfileBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    .line 142
    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->fragmentProfileBinding:Lru/rocketbank/r2d2/databinding/FragmentProfileBinding;

    if-nez p2, :cond_4

    const-string p3, "fragmentProfileBinding"

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    iget-object p2, p2, Lru/rocketbank/r2d2/databinding/FragmentProfileBinding;->feed:Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;

    const-string p3, "fragmentProfileBinding.feed"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->recyclerProfileView:Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;

    .line 144
    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->fragmentProfileBinding:Lru/rocketbank/r2d2/databinding/FragmentProfileBinding;

    if-nez p2, :cond_5

    const-string p3, "fragmentProfileBinding"

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_5
    iget-object p2, p2, Lru/rocketbank/r2d2/databinding/FragmentProfileBinding;->appBar:Landroid/widget/FrameLayout;

    const-string p3, "fragmentProfileBinding.appBar"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->appBarLayout:Landroid/widget/FrameLayout;

    .line 146
    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->fragmentProfileBinding:Lru/rocketbank/r2d2/databinding/FragmentProfileBinding;

    if-nez p2, :cond_6

    const-string p3, "fragmentProfileBinding"

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_6
    iget-object p2, p2, Lru/rocketbank/r2d2/databinding/FragmentProfileBinding;->realToolbarTitle:Lru/rocketbank/core/widgets/RocketTextView;

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->rocketTitle:Lru/rocketbank/core/widgets/RocketTextView;

    .line 147
    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->fragmentProfileBinding:Lru/rocketbank/r2d2/databinding/FragmentProfileBinding;

    if-nez p2, :cond_7

    const-string p3, "fragmentProfileBinding"

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_7
    iget-object p2, p2, Lru/rocketbank/r2d2/databinding/FragmentProfileBinding;->cardOverlay:Landroid/view/View;

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->cardOverlay:Landroid/view/View;

    .line 148
    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->fragmentProfileBinding:Lru/rocketbank/r2d2/databinding/FragmentProfileBinding;

    if-nez p2, :cond_8

    const-string p3, "fragmentProfileBinding"

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_8
    iget-object p2, p2, Lru/rocketbank/r2d2/databinding/FragmentProfileBinding;->headerOverlay:Landroid/view/View;

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->headerOverlay:Landroid/view/View;

    .line 150
    new-instance p2, Ljp/wasabeef/glide/transformations/CropCircleTransformation;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3}, Ljp/wasabeef/glide/transformations/CropCircleTransformation;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->cropCircleTransformation:Ljp/wasabeef/glide/transformations/CropCircleTransformation;

    .line 151
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f07015f

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->paralaxSize:I

    .line 153
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    if-nez p2, :cond_9

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_9
    const-string p3, "window"

    invoke-virtual {p2, p3}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_a

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.view.WindowManager"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    check-cast p2, Landroid/view/WindowManager;

    .line 154
    invoke-interface {p2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p2

    .line 156
    new-instance p3, Landroid/graphics/Point;

    invoke-direct {p3}, Landroid/graphics/Point;-><init>()V

    .line 157
    invoke-virtual {p2, p3}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 158
    iget p2, p3, Landroid/graphics/Point;->x:I

    iput p2, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->windowWidth:I

    return-object p1
.end method

.method public final onDestroyView()V
    .locals 1

    const/4 v0, 0x0

    .line 255
    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->fingerprintViewHolder:Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericSwitchViewHolder;

    .line 256
    invoke-super {p0}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onDestroyView()V

    .line 257
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public final onEventMainThread(Lru/rocketbank/core/events/ChangeFingerprintSwitchEvent;)V
    .locals 1

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 589
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->fingerprintViewHolder:Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericSwitchViewHolder;

    if-eqz v0, :cond_0

    .line 590
    invoke-virtual {p1}, Lru/rocketbank/core/events/ChangeFingerprintSwitchEvent;->getState()Z

    move-result p1

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericSwitchViewHolder;->setEnabled(Z)V

    const/4 p1, 0x1

    .line 591
    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericSwitchViewHolder;->setClickable(Z)V

    return-void

    :cond_0
    return-void
.end method

.method public final onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 4

    const-string v0, "permissions"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "grantResults"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1600
    array-length v1, p3

    :goto_0
    if-ge v0, v1, :cond_1

    .line 1601
    aget v2, p3, v0

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 1604
    aget-object v2, p2, v0

    if-eqz v2, :cond_0

    .line 1605
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f11031e

    const/4 p3, 0x1

    invoke-static {p1, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_1

    .line 1618
    :pswitch_0
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->startSetCoverFromGalleryRequested()V

    goto :goto_1

    .line 1616
    :pswitch_1
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->startSetAvatarFromGalleryRequested()V

    return-void

    .line 1614
    :pswitch_2
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->startSetCoverFromCameraRequested()V

    return-void

    .line 1612
    :pswitch_3
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->startGetFromCameraRequest()V

    return-void

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "outState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1157
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1158
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->parallaxListener:Lru/rocketbank/r2d2/widgets/recycler/parallax/ObservableParallaxListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/widgets/recycler/parallax/ObservableParallaxListener;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void

    :cond_0
    return-void
.end method

.method public final onStart()V
    .locals 2

    .line 164
    invoke-super {p0}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onStart()V

    .line 165
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 166
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->recyclerProfileView:Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;

    if-nez v0, :cond_0

    const-string v1, "recyclerProfileView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->parallaxListener:Lru/rocketbank/r2d2/widgets/recycler/parallax/ObservableParallaxListener;

    check-cast v1, Lcom/github/ksoichiro/android/observablescrollview/ObservableScrollViewCallbacks;

    invoke-virtual {v0, v1}, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->setScrollViewCallbacks(Lcom/github/ksoichiro/android/observablescrollview/ObservableScrollViewCallbacks;)V

    .line 168
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lru/rocketbank/r2d2/Utils;->closeKeyboardIfExists(Landroid/app/Activity;)V

    .line 170
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    const-string v1, "activity!!"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_2

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    return-void

    :cond_2
    return-void
.end method

.method public final onStop()V
    .locals 2

    .line 174
    invoke-super {p0}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onStop()V

    .line 175
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 176
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->recyclerProfileView:Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;

    if-nez v0, :cond_0

    const-string v1, "recyclerProfileView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->setScrollViewCallbacks(Lcom/github/ksoichiro/android/observablescrollview/ObservableScrollViewCallbacks;)V

    .line 178
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->fragmentProfileBinding:Lru/rocketbank/r2d2/databinding/FragmentProfileBinding;

    if-nez v0, :cond_1

    const-string v1, "fragmentProfileBinding"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    iget-object v0, v0, Lru/rocketbank/r2d2/databinding/FragmentProfileBinding;->swipeRefresh:Landroid/support/v4/widget/SwipeRefreshLayout;

    const-string v1, "swipeRefreshLayout"

    .line 180
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 181
    invoke-virtual {v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->destroyDrawingCache()V

    .line 182
    invoke-virtual {v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->clearAnimation()V

    .line 184
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->hideProgressDialog()V

    .line 186
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->changeNameSubscription:Lrx/Subscription;

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->unsubscribe(Lrx/Subscription;)V

    .line 187
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->uploadSubscription:Lrx/Subscription;

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->unsubscribe(Lrx/Subscription;)V

    .line 188
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->refillSubscription:Lrx/Subscription;

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->unsubscribe(Lrx/Subscription;)V

    .line 189
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->min3Subscription:Lrx/Subscription;

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->unsubscribe(Lrx/Subscription;)V

    return-void
.end method

.method public final onUserModel(Lru/rocketbank/core/model/UserModel;)V
    .locals 2

    const-string v0, "userModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 260
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onUserModel(Lru/rocketbank/core/model/UserModel;)V

    .line 262
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->profileAdapter:Lru/rocketbank/r2d2/fragments/profile/ProfileAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/fragments/profile/ProfileAdapter;->updateUserModel(Lru/rocketbank/core/model/UserModel;)V

    .line 264
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->fragmentProfileBinding:Lru/rocketbank/r2d2/databinding/FragmentProfileBinding;

    if-nez v0, :cond_1

    const-string v1, "fragmentProfileBinding"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    iget-object v0, v0, Lru/rocketbank/r2d2/databinding/FragmentProfileBinding;->swipeRefresh:Landroid/support/v4/widget/SwipeRefreshLayout;

    const-string v1, "swipeRefreshLayout"

    .line 265
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 266
    invoke-virtual {v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->destroyDrawingCache()V

    .line 267
    invoke-virtual {v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->clearAnimation()V

    .line 269
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->profileAdapter:Lru/rocketbank/r2d2/fragments/profile/ProfileAdapter;

    if-nez v0, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    invoke-virtual {v0}, Lru/rocketbank/r2d2/fragments/profile/ProfileAdapter;->clearTop()V

    .line 270
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->setUserModel(Lru/rocketbank/core/model/UserModel;)V

    .line 271
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->refreshUserData()V

    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 9

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 193
    invoke-super {p0, p1, p2}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 195
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-static {p1}, Lcom/mikepenz/materialdrawer/util/KeyboardUtil;->hideKeyboard(Landroid/app/Activity;)V

    .line 197
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->setupToolbar()V

    .line 199
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->profileAdapter:Lru/rocketbank/r2d2/fragments/profile/ProfileAdapter;

    if-nez p1, :cond_3

    .line 200
    new-instance p1, Lru/rocketbank/r2d2/fragments/profile/ProfileAdapter;

    const/4 v2, 0x0

    .line 202
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->recyclerProfileView:Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;

    if-nez v0, :cond_0

    const-string v1, "recyclerProfileView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    move-object v3, v0

    check-cast v3, Landroid/support/v7/widget/RecyclerView;

    .line 203
    move-object v4, p0

    check-cast v4, Lru/rocketbank/r2d2/data/binding/profile/ProfileHandler;

    .line 204
    iget-object v5, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->profileData:Lru/rocketbank/r2d2/data/binding/profile/ProfileData;

    if-nez v5, :cond_1

    const-string v0, "profileData"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 205
    :cond_1
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->authorization:Lru/rocketbank/core/user/Authorization;

    invoke-virtual {v0}, Lru/rocketbank/core/user/Authorization;->getUserData()Lru/rocketbank/core/realm/UserData;

    move-result-object v6

    .line 206
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->appBarLayout:Landroid/widget/FrameLayout;

    if-nez v0, :cond_2

    const-string v1, "appBarLayout"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    move-object v7, v0

    check-cast v7, Landroid/view/View;

    .line 207
    iget v8, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->headerHeight:I

    move-object v0, p1

    move-object v1, p0

    .line 200
    invoke-direct/range {v0 .. v8}, Lru/rocketbank/r2d2/fragments/profile/ProfileAdapter;-><init>(Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;Lru/rocketbank/core/model/UserModel;Landroid/support/v7/widget/RecyclerView;Lru/rocketbank/r2d2/data/binding/profile/ProfileHandler;Lru/rocketbank/r2d2/data/binding/profile/ProfileData;Lru/rocketbank/core/realm/UserData;Landroid/view/View;I)V

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->profileAdapter:Lru/rocketbank/r2d2/fragments/profile/ProfileAdapter;

    .line 210
    :cond_3
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->recyclerProfileView:Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;

    if-nez p1, :cond_4

    const-string v0, "recyclerProfileView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p1}, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object p1

    if-nez p1, :cond_6

    .line 211
    new-instance p1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {p1, v0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 212
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->recyclerProfileView:Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;

    if-nez v0, :cond_5

    const-string v1, "recyclerProfileView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_5
    check-cast p1, Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p1}, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 215
    :cond_6
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->recyclerProfileView:Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;

    if-nez p1, :cond_7

    const-string v0, "recyclerProfileView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_7
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->profileAdapter:Lru/rocketbank/r2d2/fragments/profile/ProfileAdapter;

    check-cast v0, Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {p1, v0}, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 216
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->recyclerProfileView:Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;

    if-nez p1, :cond_8

    const-string v0, "recyclerProfileView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_8
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->setVerticalScrollbarPosition(I)V

    .line 218
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->fragmentProfileBinding:Lru/rocketbank/r2d2/databinding/FragmentProfileBinding;

    if-nez p1, :cond_9

    const-string v0, "fragmentProfileBinding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_9
    iget-object p1, p1, Lru/rocketbank/r2d2/databinding/FragmentProfileBinding;->coverImage:Landroid/widget/ImageView;

    const-string v0, "fragmentProfileBinding.coverImage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 219
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 220
    iget v1, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->headerHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 221
    invoke-virtual {p1}, Landroid/widget/ImageView;->requestLayout()V

    .line 223
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->fragmentProfileBinding:Lru/rocketbank/r2d2/databinding/FragmentProfileBinding;

    if-nez p1, :cond_a

    const-string v0, "fragmentProfileBinding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_a
    iget-object p1, p1, Lru/rocketbank/r2d2/databinding/FragmentProfileBinding;->toolbar:Landroid/support/v7/widget/Toolbar;

    .line 224
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->fragmentProfileBinding:Lru/rocketbank/r2d2/databinding/FragmentProfileBinding;

    if-nez v0, :cond_b

    const-string v1, "fragmentProfileBinding"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_b
    iget-object v0, v0, Lru/rocketbank/r2d2/databinding/FragmentProfileBinding;->toolbarReal:Landroid/support/v7/widget/Toolbar;

    const-string v1, "realToolbar"

    .line 226
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, ""

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    const-string v1, "toolbar"

    .line 228
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 230
    iget-object v2, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->parallaxListener:Lru/rocketbank/r2d2/widgets/recycler/parallax/ObservableParallaxListener;

    if-nez v2, :cond_d

    .line 231
    new-instance v2, Lru/rocketbank/r2d2/widgets/recycler/parallax/ObservableParallaxListener;

    const/4 v4, 0x0

    .line 232
    iget v5, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->headerHeight:I

    .line 233
    iget v6, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->paralaxSize:I

    .line 234
    iget-object v3, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->profileData:Lru/rocketbank/r2d2/data/binding/profile/ProfileData;

    if-nez v3, :cond_c

    const-string v7, "profileData"

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_c
    move-object v7, v3

    check-cast v7, Lru/rocketbank/r2d2/data/binding/parallax/ParallaxData;

    .line 235
    iget v8, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    move-object v3, v2

    .line 231
    invoke-direct/range {v3 .. v8}, Lru/rocketbank/r2d2/widgets/recycler/parallax/ObservableParallaxListener;-><init>(IIILru/rocketbank/r2d2/data/binding/parallax/ParallaxData;I)V

    iput-object v2, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->parallaxListener:Lru/rocketbank/r2d2/widgets/recycler/parallax/ObservableParallaxListener;

    goto :goto_0

    .line 237
    :cond_d
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->parallaxListener:Lru/rocketbank/r2d2/widgets/recycler/parallax/ObservableParallaxListener;

    if-eqz v1, :cond_f

    iget-object v2, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->profileData:Lru/rocketbank/r2d2/data/binding/profile/ProfileData;

    if-nez v2, :cond_e

    const-string v3, "profileData"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_e
    check-cast v2, Lru/rocketbank/r2d2/data/binding/parallax/ParallaxData;

    invoke-virtual {v1, v2}, Lru/rocketbank/r2d2/widgets/recycler/parallax/ObservableParallaxListener;->update(Lru/rocketbank/r2d2/data/binding/parallax/ParallaxData;)V

    .line 240
    :cond_f
    :goto_0
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->parallaxListener:Lru/rocketbank/r2d2/widgets/recycler/parallax/ObservableParallaxListener;

    if-nez v1, :cond_10

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_10
    invoke-virtual {v1, p2}, Lru/rocketbank/r2d2/widgets/recycler/parallax/ObservableParallaxListener;->onRestore(Landroid/os/Bundle;)V

    const p2, 0x7f11038e

    .line 243
    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 244
    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {v0, p2}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 245
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->getNavigationClick()Landroid/view/View$OnClickListener;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 246
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->getNavigationClick()Landroid/view/View$OnClickListener;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 248
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->fragmentProfileBinding:Lru/rocketbank/r2d2/databinding/FragmentProfileBinding;

    if-nez p1, :cond_11

    const-string p2, "fragmentProfileBinding"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_11
    iget-object p1, p1, Lru/rocketbank/r2d2/databinding/FragmentProfileBinding;->swipeRefresh:Landroid/support/v4/widget/SwipeRefreshLayout;

    .line 249
    new-instance p2, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$onViewCreated$1;

    invoke-direct {p2, p0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$onViewCreated$1;-><init>(Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;)V

    check-cast p2, Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;

    invoke-virtual {p1, p2}, Landroid/support/v4/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;)V

    return-void
.end method

.method public final setCropCircleTransformation(Ljp/wasabeef/glide/transformations/CropCircleTransformation;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->cropCircleTransformation:Ljp/wasabeef/glide/transformations/CropCircleTransformation;

    return-void
.end method
