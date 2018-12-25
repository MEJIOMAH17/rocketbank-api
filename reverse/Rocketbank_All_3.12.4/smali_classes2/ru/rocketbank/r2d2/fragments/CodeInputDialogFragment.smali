.class public final Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "CodeInputDialogFragment.kt"

# interfaces
.implements Lru/rocketbank/core/manager/security/RocketFingerPrintListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment$CodeInputListener;,
        Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCodeInputDialogFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CodeInputDialogFragment.kt\nru/rocketbank/r2d2/fragments/CodeInputDialogFragment\n*L\n1#1,482:1\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment$Companion;

.field private static final PERMISSIONS_FINGER:I = 0x10

.field private static final SPINNER:Ljava/lang/String; = "SPINNER"

.field public static final TAG:Ljava/lang/String; = "CodeInputDialog"


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private alertDialogFragment:Lru/rocketbank/r2d2/fragments/AlertDialogFragment;

.field private authorization:Lru/rocketbank/core/user/Authorization;

.field private codeInputListener:Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment$CodeInputListener;

.field private coverImageView:Landroid/widget/ImageView;

.field private errorView:Lru/rocketbank/core/widgets/RocketTextView;

.field private fingerPrint:Landroid/view/View;

.field private fireCMManager:Lru/rocketbank/core/manager/FireCMManager;

.field private geolocationManager:Lru/rocketbank/core/manager/GeolocationManager;

.field private final hideTouch:Ljava/lang/Runnable;

.field private loginAPI:Lru/rocketbank/core/network/api/LoginApi;

.field private final refreshTouch:Ljava/lang/Runnable;

.field private requestSubscription:Lrx/Subscription;

.field private final resetTouch:Ljava/lang/Runnable;

.field private rocketSMSGroup:Lru/rocketbank/core/widgets/RocketSMSGroup;

.field private final touchHandler:Landroid/os/Handler;

.field private touchManager:Lru/rocketbank/core/manager/TouchManager;

.field private touchTokenInvalidated:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->Companion:Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 62
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->touchHandler:Landroid/os/Handler;

    .line 190
    new-instance v0, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment$refreshTouch$1;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment$refreshTouch$1;-><init>(Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;)V

    check-cast v0, Ljava/lang/Runnable;

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->refreshTouch:Ljava/lang/Runnable;

    .line 194
    new-instance v0, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment$resetTouch$1;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment$resetTouch$1;-><init>(Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;)V

    check-cast v0, Ljava/lang/Runnable;

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->resetTouch:Ljava/lang/Runnable;

    .line 198
    new-instance v0, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment$hideTouch$1;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment$hideTouch$1;-><init>(Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;)V

    check-cast v0, Ljava/lang/Runnable;

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->hideTouch:Ljava/lang/Runnable;

    return-void
.end method

.method public static final synthetic access$dropAllSession(Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->dropAllSession()V

    return-void
.end method

.method public static final synthetic access$getFingerPrint$p(Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;)Landroid/view/View;
    .locals 1

    .line 47
    iget-object p0, p0, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->fingerPrint:Landroid/view/View;

    if-nez p0, :cond_0

    const-string v0, "fingerPrint"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$getRocketSMSGroup$p(Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;)Lru/rocketbank/core/widgets/RocketSMSGroup;
    .locals 1

    .line 47
    iget-object p0, p0, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->rocketSMSGroup:Lru/rocketbank/core/widgets/RocketSMSGroup;

    if-nez p0, :cond_0

    const-string v0, "rocketSMSGroup"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$handleLogin(Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;ZLru/rocketbank/core/model/LoginResponseData;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->handleLogin(ZLru/rocketbank/core/model/LoginResponseData;)V

    return-void
.end method

.method public static final synthetic access$handleLoginError(Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;Ljava/lang/Throwable;Z)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->handleLoginError(Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public static final synthetic access$refreshFingerPrint(Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->refreshFingerPrint()V

    return-void
.end method

.method public static final synthetic access$requestLogin(Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->requestLogin(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$setFingerPrint$p(Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;Landroid/view/View;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->fingerPrint:Landroid/view/View;

    return-void
.end method

.method public static final synthetic access$setRocketSMSGroup$p(Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;Lru/rocketbank/core/widgets/RocketSMSGroup;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->rocketSMSGroup:Lru/rocketbank/core/widgets/RocketSMSGroup;

    return-void
.end method

.method private final cancelLoginRequest()V
    .locals 1

    .line 250
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->alertDialogFragment:Lru/rocketbank/r2d2/fragments/AlertDialogFragment;

    if-eqz v0, :cond_0

    .line 251
    invoke-virtual {v0}, Lru/rocketbank/r2d2/fragments/AlertDialogFragment;->dismissAllowingStateLoss()V

    const/4 v0, 0x0

    .line 252
    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->alertDialogFragment:Lru/rocketbank/r2d2/fragments/AlertDialogFragment;

    return-void

    :cond_0
    return-void
.end method

.method private final dropAllSession()V
    .locals 2

    .line 314
    sget-object v0, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object v0

    .line 315
    invoke-interface {v0}, Lru/rocketbank/core/dagger/component/RocketComponent;->getAuthorizationStorage()Lru/rocketbank/core/user/AuthorizationStorage;

    move-result-object v1

    invoke-interface {v1}, Lru/rocketbank/core/user/AuthorizationStorage;->removeState()V

    .line 316
    invoke-interface {v0}, Lru/rocketbank/core/dagger/component/RocketComponent;->getAppInfoManager()Lru/rocketbank/core/manager/AppInfoManager;

    move-result-object v0

    invoke-virtual {v0}, Lru/rocketbank/core/manager/AppInfoManager;->resetDeviceToNew()V

    .line 318
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->restart()V

    return-void
.end method

.method private final handleLogin(ZLru/rocketbank/core/model/LoginResponseData;)V
    .locals 3

    .line 339
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->hideSpinner()V

    .line 341
    invoke-virtual {p2}, Lru/rocketbank/core/model/LoginResponseData;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 342
    invoke-virtual {p2}, Lru/rocketbank/core/model/LoginResponseData;->getUser()Lru/rocketbank/core/model/UserModel;

    move-result-object p2

    if-eqz v0, :cond_8

    if-nez p2, :cond_0

    goto/16 :goto_1

    .line 347
    :cond_0
    sget-object v1, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object v1

    invoke-interface {v1}, Lru/rocketbank/core/dagger/component/RocketComponent;->getAnalyticsManager()Lru/rocketbank/core/manager/AnalyticsManager;

    move-result-object v1

    invoke-virtual {v1}, Lru/rocketbank/core/manager/AnalyticsManager;->loginCode()V

    .line 350
    :try_start_0
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->authorization:Lru/rocketbank/core/user/Authorization;

    if-nez v1, :cond_1

    const-string v2, "authorization"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    const-string v2, "user_feed"

    invoke-virtual {v1, v2}, Lru/rocketbank/core/user/Authorization;->setStatus(Ljava/lang/String;)V

    .line 351
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->authorization:Lru/rocketbank/core/user/Authorization;

    if-nez v1, :cond_2

    const-string v2, "authorization"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v1, v0}, Lru/rocketbank/core/user/Authorization;->setToken(Ljava/lang/String;)V

    .line 352
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->authorization:Lru/rocketbank/core/user/Authorization;

    if-nez v0, :cond_3

    const-string v1, "authorization"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v0, p2}, Lru/rocketbank/core/user/Authorization;->setUserModel(Lru/rocketbank/core/model/UserModel;)V

    .line 353
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->fireCMManager:Lru/rocketbank/core/manager/FireCMManager;

    if-nez v0, :cond_4

    const-string v1, "fireCMManager"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v0}, Lru/rocketbank/core/manager/FireCMManager;->sendTokenIfNeeded()V

    .line 355
    sget-object v0, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getFirebaseAnalytics()Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v0

    invoke-virtual {p2}, Lru/rocketbank/core/model/UserModel;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->setUserId(Ljava/lang/String;)V

    .line 357
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 359
    invoke-virtual {p2}, Lru/rocketbank/core/model/UserModel;->getStatus()Lru/rocketbank/core/model/enums/Status;

    move-result-object v1

    sget-object v2, Lru/rocketbank/core/model/enums/Status;->BLOCKED:Lru/rocketbank/core/model/enums/Status;

    if-ne v1, v2, :cond_5

    .line 360
    sget-object v1, Lru/rocketbank/r2d2/activities/CardBlockActivity;->Companion:Lru/rocketbank/r2d2/activities/CardBlockActivity$Companion;

    check-cast v0, Landroid/content/Context;

    invoke-virtual {p2}, Lru/rocketbank/core/model/UserModel;->getBlockReason()Lru/rocketbank/core/model/enums/BlockReason;

    move-result-object p2

    const/4 v2, 0x0

    invoke-virtual {v1, v0, p2, v2}, Lru/rocketbank/r2d2/activities/CardBlockActivity$Companion;->start(Landroid/content/Context;Lru/rocketbank/core/model/enums/BlockReason;Z)V

    goto :goto_0

    .line 361
    :cond_5
    invoke-virtual {p2}, Lru/rocketbank/core/model/UserModel;->getStatus()Lru/rocketbank/core/model/enums/Status;

    move-result-object p2

    sget-object v1, Lru/rocketbank/core/model/enums/Status;->NEW:Lru/rocketbank/core/model/enums/Status;

    if-ne p2, v1, :cond_6

    .line 362
    sget-object p2, Lru/rocketbank/r2d2/activities/FirstRefillActivity;->Companion:Lru/rocketbank/r2d2/activities/FirstRefillActivity$Companion;

    check-cast v0, Landroid/content/Context;

    invoke-virtual {p2, v0}, Lru/rocketbank/r2d2/activities/FirstRefillActivity$Companion;->start(Landroid/content/Context;)V

    .line 366
    :cond_6
    :goto_0
    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->codeInputListener:Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment$CodeInputListener;

    if-eqz p2, :cond_7

    .line 367
    invoke-interface {p2}, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment$CodeInputListener;->onCodeCorrect()V

    .line 368
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->dismissAllowingStateLoss()V

    return-void

    .line 372
    :cond_7
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->dismissAllowingStateLoss()V

    const/4 p2, 0x1

    .line 374
    invoke-static {p1, p2}, Lru/rocketbank/core/manager/AnalyticsManager;->logSignIn(ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 376
    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lru/rocketbank/core/manager/AnalyticsManager;->logException(Ljava/lang/Throwable;)V

    const-string p1, "\u041d\u0435 \u0443\u0434\u0430\u043b\u043e\u0441\u044c \u043f\u043e\u043b\u0443\u0447\u0438\u0442\u044c \u0434\u0430\u043d\u043d\u044b\u0435 \u043e \u043f\u043e\u043b\u044c\u0437\u043e\u0432\u0430\u0442\u0435\u043b\u0435"

    .line 378
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->onCodeInputFailed(Ljava/lang/String;)V

    return-void

    :cond_8
    :goto_1
    const-string p1, "\u041d\u0435 \u0443\u0434\u0430\u043b\u043e\u0441\u044c \u043f\u043e\u043b\u0443\u0447\u0438\u0442\u044c \u0434\u0430\u043d\u043d\u044b\u0435 \u043e \u043f\u043e\u043b\u044c\u0437\u043e\u0432\u0430\u0442\u0435\u043b\u0435"

    .line 345
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->onCodeInputFailed(Ljava/lang/String;)V

    return-void
.end method

.method private final handleLoginError(Ljava/lang/Throwable;Z)V
    .locals 4

    const-string v0, "CodeInputDialog"

    const-string v1, "Failed"

    .line 384
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 386
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->hideSpinner()V

    .line 388
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->touchHandler:Landroid/os/Handler;

    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->refreshTouch:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x0

    .line 390
    invoke-static {p2, v0}, Lru/rocketbank/core/manager/AnalyticsManager;->logSignIn(ZZ)V

    .line 392
    instance-of v0, p1, Lru/rocketbank/core/network/exception/RocketResponseException;

    if-eqz v0, :cond_b

    .line 393
    move-object v0, p1

    check-cast v0, Lru/rocketbank/core/network/exception/RocketResponseException;

    invoke-virtual {v0}, Lru/rocketbank/core/network/exception/RocketResponseException;->getGenericRequestResponseData()Lru/rocketbank/core/model/dto/GenericRequestResponseData;

    move-result-object v0

    .line 396
    :try_start_0
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->rocketSMSGroup:Lru/rocketbank/core/widgets/RocketSMSGroup;

    if-nez v1, :cond_0

    const-string v2, "rocketSMSGroup"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v1}, Lru/rocketbank/core/widgets/RocketSMSGroup;->regroup()V

    if-eqz v0, :cond_1

    .line 397
    invoke-virtual {v0}, Lru/rocketbank/core/model/dto/GenericRequestResponseData;->getResponse()Lru/rocketbank/core/model/dto/ResponseData;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_9

    if-eqz p2, :cond_6

    .line 399
    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->touchManager:Lru/rocketbank/core/manager/TouchManager;

    if-nez p2, :cond_2

    const-string v0, "touchManager"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-interface {p2}, Lru/rocketbank/core/manager/TouchManager;->invalidateToken()V

    .line 400
    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->fingerPrint:Landroid/view/View;

    if-nez p2, :cond_3

    const-string v0, "fingerPrint"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 401
    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->touchManager:Lru/rocketbank/core/manager/TouchManager;

    if-nez p2, :cond_4

    const-string v0, "touchManager"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    invoke-interface {p2}, Lru/rocketbank/core/manager/TouchManager;->clearListener()V

    .line 402
    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->touchManager:Lru/rocketbank/core/manager/TouchManager;

    if-nez p2, :cond_5

    const-string v0, "touchManager"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_5
    invoke-interface {p2}, Lru/rocketbank/core/manager/TouchManager;->close()V

    const/4 p2, 0x1

    .line 403
    iput-boolean p2, p0, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->touchTokenInvalidated:Z

    const p2, 0x7f110478

    .line 404
    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 405
    :cond_6
    invoke-virtual {v0}, Lru/rocketbank/core/model/dto/GenericRequestResponseData;->getResponse()Lru/rocketbank/core/model/dto/ResponseData;

    move-result-object p2

    if-eqz p2, :cond_7

    invoke-virtual {p2}, Lru/rocketbank/core/model/dto/ResponseData;->getDescription()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_8

    :cond_7
    const-string p2, "\u041d\u0435\u0432\u043e\u0437\u043c\u043e\u0436\u043d\u043e \u0432\u043e\u0439\u0442\u0438 \u043f\u043e \u043e\u0442\u043f\u0435\u0447\u0430\u0442\u043a\u0443 \u043f\u0430\u043b\u044c\u0446\u0430. \u0418\u0441\u043f\u043e\u043b\u044c\u0437\u0443\u0439\u0442\u0435 \u043f\u0438\u043d-\u043a\u043e\u0434."

    :cond_8
    :goto_1
    const-string v0, "errorMessage"

    .line 408
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->onCodeInputFailed(Ljava/lang/String;)V

    return-void

    :cond_9
    const p2, 0x7f1100be

    .line 409
    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "getString(R.string.check_network)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->onCodeInputFailed(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p2, "CodeInputDialog"

    const-string v0, "Code error"

    .line 411
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 413
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->rocketSMSGroup:Lru/rocketbank/core/widgets/RocketSMSGroup;

    if-nez p1, :cond_a

    const-string p2, "rocketSMSGroup"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_a
    invoke-virtual {p1}, Lru/rocketbank/core/widgets/RocketSMSGroup;->regroup()V

    const-string p1, "\u041f\u0440\u043e\u0438\u0437\u043e\u0448\u043b\u0430 \u043e\u0448\u0438\u0431\u043a\u0430"

    .line 414
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->onCodeInputFailed(Ljava/lang/String;)V

    return-void

    .line 418
    :cond_b
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->rocketSMSGroup:Lru/rocketbank/core/widgets/RocketSMSGroup;

    if-nez p1, :cond_c

    const-string p2, "rocketSMSGroup"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_c
    invoke-virtual {p1}, Lru/rocketbank/core/widgets/RocketSMSGroup;->regroup()V

    const-string p1, "\u041f\u0440\u043e\u0438\u0437\u043e\u0448\u043b\u0430 \u043e\u0448\u0438\u0431\u043a\u0430"

    .line 419
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->onCodeInputFailed(Ljava/lang/String;)V

    return-void
.end method

.method private final hideSpinner()V
    .locals 2

    .line 442
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 446
    :cond_0
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    const-string v1, "activity!!"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "SPINNER"

    .line 447
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/fragments/dialogs/ProgressDialogFragment;

    if-eqz v0, :cond_2

    .line 448
    invoke-virtual {v0}, Lru/rocketbank/r2d2/fragments/dialogs/ProgressDialogFragment;->dismissAllowingStateLoss()V

    return-void

    :cond_2
    return-void
.end method

.method private final onCodeInputFailed(Ljava/lang/String;)V
    .locals 2

    .line 432
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->rocketSMSGroup:Lru/rocketbank/core/widgets/RocketSMSGroup;

    if-nez v0, :cond_0

    const-string v1, "rocketSMSGroup"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lru/rocketbank/core/widgets/RocketSMSGroup;->regroup()V

    .line 434
    invoke-static {p1}, Lru/rocketbank/r2d2/fragments/AlertDialogFragment;->create(Ljava/lang/String;)Lru/rocketbank/r2d2/fragments/AlertDialogFragment;

    move-result-object p1

    sget-object v0, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment$onCodeInputFailed$1;->INSTANCE:Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment$onCodeInputFailed$1;

    check-cast v0, Lru/rocketbank/r2d2/fragments/AlertDialogFragment$OnPositiveListener;

    invoke-virtual {p1, v0}, Lru/rocketbank/r2d2/fragments/AlertDialogFragment;->setOnPositiveListener(Lru/rocketbank/r2d2/fragments/AlertDialogFragment$OnPositiveListener;)Lru/rocketbank/r2d2/fragments/AlertDialogFragment;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->alertDialogFragment:Lru/rocketbank/r2d2/fragments/AlertDialogFragment;

    .line 438
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 436
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 437
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->alertDialogFragment:Lru/rocketbank/r2d2/fragments/AlertDialogFragment;

    check-cast v0, Landroid/support/v4/app/Fragment;

    const-string v1, "dialog"

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 438
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void

    :cond_1
    return-void
.end method

.method private final onFingerPermission([I)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 469
    array-length v2, p1

    if-nez v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    xor-int/2addr v1, v2

    if-eqz v1, :cond_1

    .line 470
    aget p1, p1, v0

    if-nez p1, :cond_1

    .line 471
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->touchHandler:Landroid/os/Handler;

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->refreshTouch:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method private final refreshFingerPrint()V
    .locals 5

    .line 128
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->touchManager:Lru/rocketbank/core/manager/TouchManager;

    if-nez v0, :cond_0

    const-string v1, "touchManager"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-interface {v0}, Lru/rocketbank/core/manager/TouchManager;->isAvailable()Z

    move-result v0

    .line 131
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->rocketSMSGroup:Lru/rocketbank/core/widgets/RocketSMSGroup;

    if-nez v1, :cond_1

    const-string v2, "rocketSMSGroup"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v1}, Lru/rocketbank/core/widgets/RocketSMSGroup;->setOffImidiate()V

    if-eqz v0, :cond_f

    .line 134
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->rocketSMSGroup:Lru/rocketbank/core/widgets/RocketSMSGroup;

    if-nez v0, :cond_2

    const-string v1, "rocketSMSGroup"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v0}, Lru/rocketbank/core/widgets/RocketSMSGroup;->setTouchWaiting()V

    .line 135
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->touchManager:Lru/rocketbank/core/manager/TouchManager;

    if-nez v0, :cond_3

    const-string v1, "touchManager"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    move-object v1, p0

    check-cast v1, Lru/rocketbank/core/manager/security/RocketFingerPrintListener;

    invoke-interface {v0, v1}, Lru/rocketbank/core/manager/TouchManager;->setListener(Lru/rocketbank/core/manager/security/RocketFingerPrintListener;)V

    .line 136
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->touchManager:Lru/rocketbank/core/manager/TouchManager;

    if-nez v0, :cond_4

    const-string v1, "touchManager"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    invoke-interface {v0}, Lru/rocketbank/core/manager/TouchManager;->gotValidToken()Z

    move-result v0

    if-nez v0, :cond_8

    .line 140
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->touchManager:Lru/rocketbank/core/manager/TouchManager;

    if-nez v0, :cond_5

    const-string v1, "touchManager"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_5
    invoke-interface {v0}, Lru/rocketbank/core/manager/TouchManager;->clearListener()V

    .line 141
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->touchManager:Lru/rocketbank/core/manager/TouchManager;

    if-nez v0, :cond_6

    const-string v1, "touchManager"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_6
    invoke-interface {v0}, Lru/rocketbank/core/manager/TouchManager;->close()V

    .line 142
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->fingerPrint:Landroid/view/View;

    if-nez v0, :cond_7

    const-string v1, "fingerPrint"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_7
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 146
    :cond_8
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->touchManager:Lru/rocketbank/core/manager/TouchManager;

    if-nez v0, :cond_9

    const-string v1, "touchManager"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_9
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lru/rocketbank/core/manager/TouchManager;->initialize(Z)Z

    move-result v0

    if-nez v0, :cond_d

    .line 149
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->rocketSMSGroup:Lru/rocketbank/core/widgets/RocketSMSGroup;

    if-nez v0, :cond_a

    const-string v2, "rocketSMSGroup"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_a
    const v2, 0x7f11047d

    invoke-virtual {p0, v2}, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lru/rocketbank/core/widgets/RocketSMSGroup;->setTouchError(Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->touchManager:Lru/rocketbank/core/manager/TouchManager;

    if-nez v0, :cond_b

    const-string v2, "touchManager"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_b
    invoke-interface {v0}, Lru/rocketbank/core/manager/TouchManager;->clearListener()V

    .line 151
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->touchManager:Lru/rocketbank/core/manager/TouchManager;

    if-nez v0, :cond_c

    const-string v2, "touchManager"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_c
    invoke-interface {v0}, Lru/rocketbank/core/manager/TouchManager;->close()V

    .line 152
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->touchHandler:Landroid/os/Handler;

    new-instance v2, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment$refreshFingerPrint$1;

    invoke-direct {v2, p0}, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment$refreshFingerPrint$1;-><init>(Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;)V

    check-cast v2, Ljava/lang/Runnable;

    const-wide/16 v3, 0x1388

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x1

    .line 156
    iput-boolean v0, p0, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->touchTokenInvalidated:Z

    .line 158
    :cond_d
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->fingerPrint:Landroid/view/View;

    if-nez v0, :cond_e

    const-string v2, "fingerPrint"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_e
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_f
    return-void
.end method

.method private final requestLogin(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .line 259
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 262
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->rocketSMSGroup:Lru/rocketbank/core/widgets/RocketSMSGroup;

    if-nez v0, :cond_1

    const-string v2, "rocketSMSGroup"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0}, Lru/rocketbank/core/widgets/RocketSMSGroup;->setOff()V

    .line 264
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->touchManager:Lru/rocketbank/core/manager/TouchManager;

    if-nez v0, :cond_2

    const-string v2, "touchManager"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-interface {v0}, Lru/rocketbank/core/manager/TouchManager;->clearListener()V

    .line 265
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->touchManager:Lru/rocketbank/core/manager/TouchManager;

    if-nez v0, :cond_3

    const-string v2, "touchManager"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    invoke-interface {v0}, Lru/rocketbank/core/manager/TouchManager;->close()V

    .line 267
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->touchHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    if-eqz p1, :cond_4

    const-string p2, "Token token="

    .line 270
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 272
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->authorization:Lru/rocketbank/core/user/Authorization;

    if-nez v2, :cond_5

    const-string v3, "authorization"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {v2}, Lru/rocketbank/core/user/Authorization;->getLogin()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 273
    sget-object v0, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 274
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Basic "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p2, :cond_6

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    const-string v0, "(this as java.lang.String).getBytes(charset)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    invoke-static {p2, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 277
    :goto_0
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->showSpinner()V

    .line 279
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->authorization:Lru/rocketbank/core/user/Authorization;

    if-nez v0, :cond_7

    const-string v2, "authorization"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_7
    invoke-virtual {v0}, Lru/rocketbank/core/user/Authorization;->getPusherToken()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz p1, :cond_8

    move v1, v2

    .line 283
    :cond_8
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->loginAPI:Lru/rocketbank/core/network/api/LoginApi;

    if-nez p1, :cond_9

    const-string v3, "loginAPI"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_9
    invoke-interface {p1, v0, p2}, Lru/rocketbank/core/network/api/LoginApi;->login(Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;

    move-result-object p1

    .line 284
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object p1

    .line 285
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object p1

    .line 286
    new-instance p2, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment$requestLogin$1;

    invoke-direct {p2, p0, v1}, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment$requestLogin$1;-><init>(Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;Z)V

    check-cast p2, Lrx/Subscriber;

    invoke-virtual {p1, p2}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->requestSubscription:Lrx/Subscription;

    return v2
.end method

.method private final restart()V
    .locals 9

    .line 322
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 323
    new-instance v1, Landroid/content/Intent;

    move-object v2, v0

    check-cast v2, Landroid/content/Context;

    const-class v3, Lru/rocketbank/r2d2/activities/StartupActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v3, 0x1e240

    const/high16 v4, 0x10000000

    .line 325
    invoke-static {v2, v3, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    const-string v2, "alarm"

    .line 330
    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.app.AlarmManager"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast v0, Landroid/app/AlarmManager;

    const/4 v2, 0x1

    .line 331
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x1f4

    add-long v7, v3, v5

    invoke-virtual {v0, v2, v7, v8, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    const/4 v0, 0x0

    .line 333
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void

    :cond_1
    return-void
.end method

.method private final showSpinner()V
    .locals 3

    .line 452
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 457
    :cond_0
    :try_start_0
    new-instance v0, Lru/rocketbank/r2d2/fragments/dialogs/ProgressDialogFragment;

    invoke-direct {v0}, Lru/rocketbank/r2d2/fragments/dialogs/ProgressDialogFragment;-><init>()V

    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    const-string v2, "activity!!"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "SPINNER"

    invoke-virtual {v0, v1, v2}, Lru/rocketbank/r2d2/fragments/dialogs/ProgressDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    return-void
.end method


# virtual methods
.method public final _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public final _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->_$_findViewCache:Ljava/util/HashMap;

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

    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final getCodeInputListener()Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment$CodeInputListener;
    .locals 1

    .line 68
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->codeInputListener:Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment$CodeInputListener;

    return-object v0
.end method

.method public final onAuthenticationError(ILjava/lang/String;)V
    .locals 2

    const-string p1, "errString"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 204
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->touchHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 205
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->rocketSMSGroup:Lru/rocketbank/core/widgets/RocketSMSGroup;

    if-nez p1, :cond_0

    const-string v0, "rocketSMSGroup"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1, p2}, Lru/rocketbank/core/widgets/RocketSMSGroup;->setTouchError(Ljava/lang/String;)V

    .line 206
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->touchHandler:Landroid/os/Handler;

    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->hideTouch:Ljava/lang/Runnable;

    const-wide/16 v0, 0xbb8

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 207
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->touchManager:Lru/rocketbank/core/manager/TouchManager;

    if-nez p1, :cond_1

    const-string p2, "touchManager"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-interface {p1}, Lru/rocketbank/core/manager/TouchManager;->clearListener()V

    .line 208
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->touchManager:Lru/rocketbank/core/manager/TouchManager;

    if-nez p1, :cond_2

    const-string p2, "touchManager"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-interface {p1}, Lru/rocketbank/core/manager/TouchManager;->close()V

    return-void
.end method

.method public final onAuthenticationFailed()V
    .locals 4

    .line 226
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->rocketSMSGroup:Lru/rocketbank/core/widgets/RocketSMSGroup;

    if-nez v0, :cond_0

    const-string v1, "rocketSMSGroup"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    const v1, 0x7f11047c

    invoke-virtual {p0, v1}, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketSMSGroup;->setTouchError(Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->touchHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 228
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->touchHandler:Landroid/os/Handler;

    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->resetTouch:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final onAuthenticationHelp(ILjava/lang/String;)V
    .locals 2

    const-string p1, "helpString"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 213
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->rocketSMSGroup:Lru/rocketbank/core/widgets/RocketSMSGroup;

    if-nez p1, :cond_0

    const-string v0, "rocketSMSGroup"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1, p2}, Lru/rocketbank/core/widgets/RocketSMSGroup;->setTouchError(Ljava/lang/String;)V

    .line 214
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->touchHandler:Landroid/os/Handler;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 215
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->touchHandler:Landroid/os/Handler;

    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->resetTouch:Ljava/lang/Runnable;

    const-wide/16 v0, 0x1388

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final onAuthenticationSucceeded(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    .line 219
    invoke-direct {p0, p1, v0}, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->requestLogin(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 220
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->touchHandler:Landroid/os/Handler;

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->refreshTouch:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 424
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x2

    const v0, 0x7f12017b

    .line 426
    invoke-virtual {p0, p1, v0}, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->setStyle(II)V

    const/4 p1, 0x0

    .line 427
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->setCancelable(Z)V

    return-void
.end method

.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 119
    new-instance p1, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment$onCreateDialog$1;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->getTheme()I

    move-result v1

    invoke-direct {p1, p0, v0, v1}, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment$onCreateDialog$1;-><init>(Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;Landroid/content/Context;I)V

    check-cast p1, Landroid/app/Dialog;

    return-object p1
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    sget-object p3, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {p3}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object p3

    invoke-interface {p3}, Lru/rocketbank/core/dagger/component/RocketComponent;->getLoginApi()Lru/rocketbank/core/network/api/LoginApi;

    move-result-object p3

    iput-object p3, p0, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->loginAPI:Lru/rocketbank/core/network/api/LoginApi;

    .line 76
    sget-object p3, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {p3}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object p3

    invoke-interface {p3}, Lru/rocketbank/core/dagger/component/RocketComponent;->getAuthorization()Lru/rocketbank/core/user/Authorization;

    move-result-object p3

    iput-object p3, p0, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->authorization:Lru/rocketbank/core/user/Authorization;

    .line 77
    sget-object p3, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {p3}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object p3

    invoke-interface {p3}, Lru/rocketbank/core/dagger/component/RocketComponent;->getFireCMManager()Lru/rocketbank/core/manager/FireCMManager;

    move-result-object p3

    iput-object p3, p0, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->fireCMManager:Lru/rocketbank/core/manager/FireCMManager;

    .line 78
    sget-object p3, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {p3}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object p3

    invoke-interface {p3}, Lru/rocketbank/core/dagger/component/RocketComponent;->getGeolocationManager()Lru/rocketbank/core/manager/GeolocationManager;

    move-result-object p3

    iput-object p3, p0, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->geolocationManager:Lru/rocketbank/core/manager/GeolocationManager;

    .line 79
    sget-object p3, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {p3}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object p3

    invoke-interface {p3}, Lru/rocketbank/core/dagger/component/RocketComponent;->getTouchManager()Lru/rocketbank/core/manager/TouchManager;

    move-result-object p3

    iput-object p3, p0, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->touchManager:Lru/rocketbank/core/manager/TouchManager;

    .line 83
    iget-object p3, p0, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->geolocationManager:Lru/rocketbank/core/manager/GeolocationManager;

    if-nez p3, :cond_0

    const-string v0, "geolocationManager"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p3}, Lru/rocketbank/core/manager/GeolocationManager;->update()V

    const p3, 0x7f0c01cd

    const/4 v0, 0x0

    .line 85
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f09017a

    .line 86
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string p3, "view.findViewById(R.id.fingerprint)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->fingerPrint:Landroid/view/View;

    const p2, 0x7f090165

    .line 87
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_1

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketTextView"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    check-cast p2, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->errorView:Lru/rocketbank/core/widgets/RocketTextView;

    const p2, 0x7f090329

    .line 89
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_2

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketSMSGroup"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    check-cast p2, Lru/rocketbank/core/widgets/RocketSMSGroup;

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->rocketSMSGroup:Lru/rocketbank/core/widgets/RocketSMSGroup;

    .line 90
    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->rocketSMSGroup:Lru/rocketbank/core/widgets/RocketSMSGroup;

    if-nez p2, :cond_3

    const-string p3, "rocketSMSGroup"

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    new-instance p3, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment$onCreateView$1;

    invoke-direct {p3, p0}, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment$onCreateView$1;-><init>(Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;)V

    check-cast p3, Lru/rocketbank/core/widgets/RocketSMSInput$OnCodeInputListener;

    invoke-virtual {p2, p3}, Lru/rocketbank/core/widgets/RocketSMSGroup;->setOnCodeInputListener(Lru/rocketbank/core/widgets/RocketSMSInput$OnCodeInputListener;)V

    .line 101
    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->rocketSMSGroup:Lru/rocketbank/core/widgets/RocketSMSGroup;

    if-nez p2, :cond_4

    const-string p3, "rocketSMSGroup"

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    new-instance p3, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment$onCreateView$2;

    invoke-direct {p3, p0}, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment$onCreateView$2;-><init>(Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;)V

    check-cast p3, Lru/rocketbank/core/widgets/RocketSMSGroup$OnCodeResetListener;

    invoke-virtual {p2, p3}, Lru/rocketbank/core/widgets/RocketSMSGroup;->setOnCodeResetListener(Lru/rocketbank/core/widgets/RocketSMSGroup$OnCodeResetListener;)V

    const p2, 0x7f0901cc

    .line 105
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_5

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.widget.ImageView"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->coverImageView:Landroid/widget/ImageView;

    .line 107
    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->touchManager:Lru/rocketbank/core/manager/TouchManager;

    if-nez p2, :cond_6

    const-string p3, "touchManager"

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_6
    invoke-interface {p2}, Lru/rocketbank/core/manager/TouchManager;->isAvailable()Z

    move-result p2

    if-nez p2, :cond_a

    .line 109
    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->touchManager:Lru/rocketbank/core/manager/TouchManager;

    if-nez p2, :cond_7

    const-string p3, "touchManager"

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_7
    invoke-interface {p2}, Lru/rocketbank/core/manager/TouchManager;->gotPermissions()Z

    move-result p2

    if-nez p2, :cond_a

    .line 110
    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->touchManager:Lru/rocketbank/core/manager/TouchManager;

    if-nez p2, :cond_8

    const-string p3, "touchManager"

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_8
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p3

    if-nez p3, :cond_9

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_9
    const-string v0, "activity!!"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Landroid/app/Activity;

    invoke-interface {p2, p3}, Lru/rocketbank/core/manager/TouchManager;->requestPermission$3ef636dc(Landroid/app/Activity;)V

    :cond_a
    return-object p1
.end method

.method public final onDestroyView()V
    .locals 6

    .line 237
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->touchManager:Lru/rocketbank/core/manager/TouchManager;

    if-nez v0, :cond_0

    const-string v1, "touchManager"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-interface {v0}, Lru/rocketbank/core/manager/TouchManager;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_c

    sget-object v0, Lru/rocketbank/r2d2/widgets/FingerprintDialog;->Companion:Lru/rocketbank/r2d2/widgets/FingerprintDialog$Companion;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    const-string v2, "context!!"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    if-nez v2, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    const-string v3, "fragmentManager!!"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->touchManager:Lru/rocketbank/core/manager/TouchManager;

    if-nez v3, :cond_3

    const-string v4, "touchManager"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v0, v1, v2, v3}, Lru/rocketbank/r2d2/widgets/FingerprintDialog$Companion;->showSuggestDialogIfNeed(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;Lru/rocketbank/core/manager/TouchManager;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 238
    iget-boolean v0, p0, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->touchTokenInvalidated:Z

    if-eqz v0, :cond_8

    .line 239
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->touchManager:Lru/rocketbank/core/manager/TouchManager;

    if-nez v0, :cond_4

    const-string v1, "touchManager"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    invoke-interface {v0}, Lru/rocketbank/core/manager/TouchManager;->invalidateToken()V

    .line 240
    sget-object v0, Lru/rocketbank/r2d2/widgets/FingerprintDialog;->Companion:Lru/rocketbank/r2d2/widgets/FingerprintDialog$Companion;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_5

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_5
    const-string v2, "context!!"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 241
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    if-nez v2, :cond_6

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_6
    const-string v3, "activity!!"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string v3, "activity!!.supportFragmentManager"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 242
    iget-object v3, p0, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->touchManager:Lru/rocketbank/core/manager/TouchManager;

    if-nez v3, :cond_7

    const-string v4, "touchManager"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_7
    const v4, 0x7f11047b

    .line 243
    invoke-virtual {p0, v4}, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "getString(R.string.touch_need_refresh)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 240
    invoke-virtual {v0, v1, v2, v3, v4}, Lru/rocketbank/r2d2/widgets/FingerprintDialog$Companion;->showConfirmFingerPrintDialog(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;Lru/rocketbank/core/manager/TouchManager;Ljava/lang/String;)Landroid/support/v7/app/AlertDialog;

    goto :goto_0

    .line 244
    :cond_8
    sget-object v0, Lru/rocketbank/r2d2/widgets/FingerprintDialog;->Companion:Lru/rocketbank/r2d2/widgets/FingerprintDialog$Companion;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_9

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_9
    const-string v2, "context!!"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    if-nez v2, :cond_a

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_a
    const-string v3, "activity!!"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string v3, "activity!!.supportFragmentManager"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->touchManager:Lru/rocketbank/core/manager/TouchManager;

    if-nez v3, :cond_b

    const-string v4, "touchManager"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_b
    invoke-virtual {v0, v1, v2, v3}, Lru/rocketbank/r2d2/widgets/FingerprintDialog$Companion;->checkFingerprint(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;Lru/rocketbank/core/manager/TouchManager;)Landroid/support/v7/app/AlertDialog;

    .line 246
    :cond_c
    :goto_0
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onDestroyView()V

    .line 247
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public final onKeyNeedsForUpdate()V
    .locals 1

    const/4 v0, 0x1

    .line 232
    iput-boolean v0, p0, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->touchTokenInvalidated:Z

    return-void
.end method

.method public final onPause()V
    .locals 3

    .line 170
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->hideSpinner()V

    .line 172
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->touchHandler:Landroid/os/Handler;

    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->refreshTouch:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 173
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->touchHandler:Landroid/os/Handler;

    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->resetTouch:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 174
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->touchManager:Lru/rocketbank/core/manager/TouchManager;

    if-nez v0, :cond_0

    const-string v1, "touchManager"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-interface {v0}, Lru/rocketbank/core/manager/TouchManager;->clearListener()V

    .line 175
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->touchManager:Lru/rocketbank/core/manager/TouchManager;

    if-nez v0, :cond_1

    const-string v1, "touchManager"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-interface {v0}, Lru/rocketbank/core/manager/TouchManager;->close()V

    .line 177
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->alertDialogFragment:Lru/rocketbank/r2d2/fragments/AlertDialogFragment;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lru/rocketbank/r2d2/fragments/AlertDialogFragment;->dismissAllowingStateLoss()V

    .line 179
    :cond_2
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->coverImageView:Landroid/widget/ImageView;

    if-nez v0, :cond_3

    const-string v1, "coverImageView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 181
    :cond_4
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->coverImageView:Landroid/widget/ImageView;

    if-nez v0, :cond_5

    const-string v2, "coverImageView"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 183
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->requestSubscription:Lrx/Subscription;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Lrx/Subscription;->unsubscribe()V

    .line 185
    :cond_6
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->rocketSMSGroup:Lru/rocketbank/core/widgets/RocketSMSGroup;

    if-nez v0, :cond_7

    const-string v1, "rocketSMSGroup"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_7
    invoke-virtual {v0}, Lru/rocketbank/core/widgets/RocketSMSGroup;->regroup()V

    .line 187
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onPause()V

    return-void
.end method

.method public final onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    const-string v0, "permissions"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "grantResults"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p2, 0x10

    if-ne p1, p2, :cond_0

    .line 464
    invoke-direct {p0, p3}, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->onFingerPermission([I)V

    :cond_0
    return-void
.end method

.method public final onResume()V
    .locals 4

    .line 163
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onResume()V

    .line 165
    sget-object v0, Lru/rocketbank/core/utils/ImageHelper;->INSTANCE:Lru/rocketbank/core/utils/ImageHelper;

    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->coverImageView:Landroid/widget/ImageView;

    if-nez v1, :cond_0

    const-string v2, "coverImageView"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget-object v2, p0, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->authorization:Lru/rocketbank/core/user/Authorization;

    if-nez v2, :cond_1

    const-string v3, "authorization"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v2}, Lru/rocketbank/core/user/Authorization;->getUserData()Lru/rocketbank/core/realm/UserData;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lru/rocketbank/core/utils/ImageHelper;->loadCover(Landroid/widget/ImageView;Lru/rocketbank/core/realm/UserData;)V

    .line 166
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->touchHandler:Landroid/os/Handler;

    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->refreshTouch:Ljava/lang/Runnable;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final setCodeInputListener(Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment$CodeInputListener;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->codeInputListener:Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment$CodeInputListener;

    return-void
.end method
