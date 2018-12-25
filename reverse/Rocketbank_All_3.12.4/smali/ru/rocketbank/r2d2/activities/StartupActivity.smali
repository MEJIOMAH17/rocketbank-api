.class public final Lru/rocketbank/r2d2/activities/StartupActivity;
.super Lru/rocketbank/r2d2/activities/AbstractActivity;
.source "StartupActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/activities/StartupActivity$Starter;,
        Lru/rocketbank/r2d2/activities/StartupActivity$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStartupActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StartupActivity.kt\nru/rocketbank/r2d2/activities/StartupActivity\n*L\n1#1,97:1\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lru/rocketbank/r2d2/activities/StartupActivity$Companion;

.field private static final FORGET:I = 0x1

.field private static final REFILL_KITCHEN:I = 0x3

.field private static final RESET_SHORT_CODE:I = 0x2


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field public dataManager:Lru/rocketbank/core/manager/DataManager;

.field public rocketShortcutManager:Lru/rocketbank/core/manager/RocketShortcutManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/r2d2/activities/StartupActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/activities/StartupActivity$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/r2d2/activities/StartupActivity;->Companion:Lru/rocketbank/r2d2/activities/StartupActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lru/rocketbank/r2d2/activities/AbstractActivity;-><init>()V

    return-void
.end method

.method private final getCodeResetToken()Lru/rocketbank/r2d2/activities/StartupActivity$Starter;
    .locals 8

    .line 67
    :try_start_0
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/StartupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "intent"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    const-string v1, "uri"

    .line 69
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x6e7a8f40

    if-eq v2, v3, :cond_4

    const v3, -0x4ba01cdd

    if-eq v2, v3, :cond_3

    const v3, -0x478ca21f

    if-eq v2, v3, :cond_2

    const v3, -0x2a07285c

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "kitchen"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 80
    new-instance v1, Lru/rocketbank/r2d2/activities/StartupActivity$Starter;

    sget v2, Lru/rocketbank/r2d2/activities/StartupActivity;->REFILL_KITCHEN:I

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    const-string v3, ""

    invoke-direct {v1, v2, v3, v0}, Lru/rocketbank/r2d2/activities/StartupActivity$Starter;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_2
    const-string v2, "rocketbank.ru"

    .line 69
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 77
    new-instance v1, Lru/rocketbank/r2d2/activities/StartupActivity$Starter;

    sget v3, Lru/rocketbank/r2d2/activities/StartupActivity;->RESET_SHORT_CODE:I

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    const-string v0, "uri.lastPathSegment"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lru/rocketbank/r2d2/activities/StartupActivity$Starter;-><init>(ILjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/Ref;)V

    return-object v1

    :cond_3
    const-string v2, "forgot"

    .line 69
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 71
    new-instance v1, Lru/rocketbank/r2d2/activities/StartupActivity$Starter;

    sget v3, Lru/rocketbank/r2d2/activities/StartupActivity;->FORGET:I

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    const-string v0, "uri.lastPathSegment"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lru/rocketbank/r2d2/activities/StartupActivity$Starter;-><init>(ILjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/Ref;)V

    return-object v1

    :cond_4
    const-string v2, "reset_short_code"

    .line 69
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 74
    new-instance v1, Lru/rocketbank/r2d2/activities/StartupActivity$Starter;

    sget v3, Lru/rocketbank/r2d2/activities/StartupActivity;->RESET_SHORT_CODE:I

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    const-string v0, "uri.lastPathSegment"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lru/rocketbank/r2d2/activities/StartupActivity$Starter;-><init>(ILjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/Ref;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    :cond_5
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public final _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/activities/StartupActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/activities/StartupActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public final _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lru/rocketbank/r2d2/activities/StartupActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/activities/StartupActivity;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/StartupActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/r2d2/activities/StartupActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final getDataManager()Lru/rocketbank/core/manager/DataManager;
    .locals 2

    .line 15
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/StartupActivity;->dataManager:Lru/rocketbank/core/manager/DataManager;

    if-nez v0, :cond_0

    const-string v1, "dataManager"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getRocketShortcutManager()Lru/rocketbank/core/manager/RocketShortcutManager;
    .locals 2

    .line 16
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/StartupActivity;->rocketShortcutManager:Lru/rocketbank/core/manager/RocketShortcutManager;

    if-nez v0, :cond_0

    const-string v1, "rocketShortcutManager"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 19
    sget-object v0, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object v0

    invoke-interface {v0}, Lru/rocketbank/core/dagger/component/RocketComponent;->getDataManager()Lru/rocketbank/core/manager/DataManager;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/activities/StartupActivity;->dataManager:Lru/rocketbank/core/manager/DataManager;

    .line 20
    sget-object v0, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object v0

    invoke-interface {v0}, Lru/rocketbank/core/dagger/component/RocketComponent;->getRocketShortcutManager()Lru/rocketbank/core/manager/RocketShortcutManager;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/activities/StartupActivity;->rocketShortcutManager:Lru/rocketbank/core/manager/RocketShortcutManager;

    .line 22
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/activities/AbstractActivity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/StartupActivity;->getAuthorization()Lru/rocketbank/core/user/Authorization;

    move-result-object p1

    invoke-virtual {p1}, Lru/rocketbank/core/user/Authorization;->isAuthorized()Z

    move-result p1

    if-nez p1, :cond_0

    .line 25
    sget-object p1, Lru/rocketbank/r2d2/manager/SecurityManager;->Companion:Lru/rocketbank/r2d2/manager/SecurityManager$Companion;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/manager/SecurityManager$Companion;->getInstance()Lru/rocketbank/r2d2/manager/SecurityManager;

    move-result-object p1

    invoke-virtual {p1}, Lru/rocketbank/r2d2/manager/SecurityManager;->onStart()V

    .line 29
    :cond_0
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/StartupActivity;->getAuthorization()Lru/rocketbank/core/user/Authorization;

    move-result-object p1

    invoke-virtual {p1}, Lru/rocketbank/core/user/Authorization;->getStatus()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 32
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/StartupActivity;->rocketShortcutManager:Lru/rocketbank/core/manager/RocketShortcutManager;

    if-nez v0, :cond_1

    const-string v1, "rocketShortcutManager"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0}, Lru/rocketbank/core/manager/RocketShortcutManager;->createSupportShortcut()V

    .line 33
    invoke-direct {p0}, Lru/rocketbank/r2d2/activities/StartupActivity;->getCodeResetToken()Lru/rocketbank/r2d2/activities/StartupActivity$Starter;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 35
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/StartupActivity;->dataManager:Lru/rocketbank/core/manager/DataManager;

    if-nez p1, :cond_2

    const-string v1, "dataManager"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p1, Lru/rocketbank/core/manager/DataManager;->isResetCodeToken:Z

    .line 36
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/StartupActivity;->authorization:Lru/rocketbank/core/user/Authorization;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/activities/StartupActivity$Starter;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lru/rocketbank/core/user/Authorization;->setToken(Ljava/lang/String;)V

    .line 37
    invoke-virtual {v0}, Lru/rocketbank/r2d2/activities/StartupActivity$Starter;->getResetType()I

    move-result p1

    .line 38
    sget v2, Lru/rocketbank/r2d2/activities/StartupActivity;->FORGET:I

    if-ne p1, v2, :cond_3

    move-object p1, p0

    check-cast p1, Landroid/content/Context;

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-static {p1, v0, v2, v1}, Lru/rocketbank/r2d2/activities/ChangeCodeActivity;->startCode(Landroid/content/Context;Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 39
    :cond_3
    sget v1, Lru/rocketbank/r2d2/activities/StartupActivity;->RESET_SHORT_CODE:I

    if-ne p1, v1, :cond_4

    move-object v2, p0

    check-cast v2, Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v0}, Lru/rocketbank/r2d2/activities/StartupActivity$Starter;->getToken()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v2 .. v7}, Lru/rocketbank/r2d2/activities/ChangeCodeActivity;->startCode(Landroid/content/Context;Ljava/lang/String;ZZLru/rocketbank/core/model/dto/CheckCardData;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 40
    :cond_4
    sget v1, Lru/rocketbank/r2d2/activities/StartupActivity;->REFILL_KITCHEN:I

    if-ne p1, v1, :cond_b

    sget-object p1, Lru/rocketbank/r2d2/activities/rocketkitchen/RocketCafeActivity;->Companion:Lru/rocketbank/r2d2/activities/rocketkitchen/RocketCafeActivity$Companion;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/activities/StartupActivity$Starter;->getData()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_5
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Lru/rocketbank/r2d2/activities/rocketkitchen/RocketCafeActivity$Companion;->start(Landroid/content/Context;J)V

    goto :goto_1

    :cond_6
    const-string v0, "lead_status"

    .line 44
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 45
    const-class p1, Lru/rocketbank/r2d2/registration/RegistrationActivity;

    goto :goto_0

    .line 47
    :cond_7
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/StartupActivity;->rocketShortcutManager:Lru/rocketbank/core/manager/RocketShortcutManager;

    if-nez p1, :cond_8

    const-string v0, "rocketShortcutManager"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_8
    invoke-virtual {p1}, Lru/rocketbank/core/manager/RocketShortcutManager;->createRefillShortcut()V

    .line 48
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/StartupActivity;->rocketShortcutManager:Lru/rocketbank/core/manager/RocketShortcutManager;

    if-nez p1, :cond_9

    const-string v0, "rocketShortcutManager"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_9
    invoke-virtual {p1}, Lru/rocketbank/core/manager/RocketShortcutManager;->createPhoneShortcut()V

    .line 49
    const-class p1, Lru/rocketbank/r2d2/activities/MainActivity;

    .line 52
    :goto_0
    new-instance v0, Landroid/content/Intent;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 53
    sget-object p1, Lru/rocketbank/core/manager/RocketShortcutManager;->KEY_ACTION:Ljava/lang/String;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/StartupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "intent"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    sget-object p1, Lru/rocketbank/core/manager/RocketShortcutManager;->KEY_EXTRAS:Ljava/lang/String;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/StartupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "intent"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 52
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/activities/StartupActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 58
    :cond_a
    new-instance p1, Landroid/content/Intent;

    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    const-class v1, Lru/rocketbank/r2d2/root/lead/LandingActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/activities/StartupActivity;->startActivity(Landroid/content/Intent;)V

    .line 61
    :cond_b
    :goto_1
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/StartupActivity;->finish()V

    return-void
.end method

.method public final setDataManager(Lru/rocketbank/core/manager/DataManager;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iput-object p1, p0, Lru/rocketbank/r2d2/activities/StartupActivity;->dataManager:Lru/rocketbank/core/manager/DataManager;

    return-void
.end method

.method public final setRocketShortcutManager(Lru/rocketbank/core/manager/RocketShortcutManager;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    iput-object p1, p0, Lru/rocketbank/r2d2/activities/StartupActivity;->rocketShortcutManager:Lru/rocketbank/core/manager/RocketShortcutManager;

    return-void
.end method
