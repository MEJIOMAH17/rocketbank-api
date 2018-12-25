.class public final Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;
.super Lru/rocketbank/r2d2/activities/AbstractActivity;
.source "SmsConfirmationActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSmsConfirmationActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SmsConfirmationActivity.kt\nru/rocketbank/r2d2/root/lead/SmsConfirmationActivity\n*L\n1#1,394:1\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity$Companion;

.field private static final KEY_PHONE_NUMBER:Ljava/lang/String; = "KEY_PHONE_NUMBER"

.field private static final KEY_VERIFICATION_ID:Ljava/lang/String; = "KEY_VERIFICATION_ID"

.field private static final KEY_VERIFY_MODE:Ljava/lang/String; = "KEY_VERIFY_MODE"

.field public static final MODE_VERIFY_PHONE:Ljava/lang/String; = "MODE_VERIFY_PHONE"

.field public static final MODE_VERIFY_REGULAR:Ljava/lang/String; = "MODE_VERIFY_REGULAR"

.field public static final RESULT_NOT_ACCEPT_USER_TERMS:I = 0x3

.field public static final RESULT_NOT_OK:I = 0x2

.field public static final RESULT_OK:I = 0x1

.field private static final VerifyModePhone:I = 0x10

.field private static final VerifyModeRegular:I = 0x20


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private _smsVerificationId:Ljava/lang/String;

.field private alertDialog:Landroid/support/v7/app/AlertDialog;

.field private smsConfirmationReceiver:Landroid/content/BroadcastReceiver;

.field private smsData:Lru/rocketbank/core/model/SmsVerificationResponseData;

.field private smsInput:Lru/rocketbank/core/widgets/RocketSMSInput;

.field private verificationSubscription:Lrx/Subscription;

.field private verifyMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;->Companion:Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Lru/rocketbank/r2d2/activities/AbstractActivity;-><init>()V

    const/16 v0, 0x20

    .line 50
    iput v0, p0, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;->verifyMode:I

    return-void
.end method

.method public static final synthetic access$getAlertDialog$p(Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;)Landroid/support/v7/app/AlertDialog;
    .locals 0

    .line 41
    iget-object p0, p0, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;->alertDialog:Landroid/support/v7/app/AlertDialog;

    return-object p0
.end method

.method public static final synthetic access$getAuthorization$p(Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;)Lru/rocketbank/core/user/Authorization;
    .locals 0

    .line 41
    iget-object p0, p0, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;->authorization:Lru/rocketbank/core/user/Authorization;

    return-object p0
.end method

.method public static final synthetic access$getSmsData$p(Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;)Lru/rocketbank/core/model/SmsVerificationResponseData;
    .locals 1

    .line 41
    iget-object p0, p0, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;->smsData:Lru/rocketbank/core/model/SmsVerificationResponseData;

    if-nez p0, :cond_0

    const-string v0, "smsData"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$getSmsInput$p(Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;)Lru/rocketbank/core/widgets/RocketSMSInput;
    .locals 1

    .line 41
    iget-object p0, p0, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;->smsInput:Lru/rocketbank/core/widgets/RocketSMSInput;

    if-nez p0, :cond_0

    const-string v0, "smsInput"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$processResponseData(Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;Lru/rocketbank/core/model/SmsVerificationResponseData;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;->processResponseData(Lru/rocketbank/core/model/SmsVerificationResponseData;)V

    return-void
.end method

.method public static final synthetic access$processResponseData(Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;Lru/rocketbank/core/network/model/SmsVerificationPhoneResponse;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;->processResponseData(Lru/rocketbank/core/network/model/SmsVerificationPhoneResponse;)V

    return-void
.end method

.method public static final synthetic access$requestSmsVerification(Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;Ljava/lang/String;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;->requestSmsVerification(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$saveUser(Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;Lru/rocketbank/core/model/SmsVerificationResponseData;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;->saveUser(Lru/rocketbank/core/model/SmsVerificationResponseData;)V

    return-void
.end method

.method public static final synthetic access$setAlertDialog$p(Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;Landroid/support/v7/app/AlertDialog;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;->alertDialog:Landroid/support/v7/app/AlertDialog;

    return-void
.end method

.method public static final synthetic access$setAuthorization$p(Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;Lru/rocketbank/core/user/Authorization;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;->authorization:Lru/rocketbank/core/user/Authorization;

    return-void
.end method

.method public static final synthetic access$setSmsData$p(Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;Lru/rocketbank/core/model/SmsVerificationResponseData;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;->smsData:Lru/rocketbank/core/model/SmsVerificationResponseData;

    return-void
.end method

.method public static final synthetic access$setSmsInput$p(Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;Lru/rocketbank/core/widgets/RocketSMSInput;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;->smsInput:Lru/rocketbank/core/widgets/RocketSMSInput;

    return-void
.end method

.method public static final synthetic access$showNetworkErrorDialog(Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;Ljava/lang/String;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;->showNetworkErrorDialog(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$showPrivacy(Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;->showPrivacy()V

    return-void
.end method

.method private final checkResponse(Lru/rocketbank/core/model/dto/ResponseData;)Z
    .locals 3

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 199
    new-instance p1, Ljava/lang/Exception;

    const-string v1, "\u041d\u0435 \u0443\u0434\u0430\u043b\u043e\u0441\u044c \u043f\u043e\u043b\u0443\u0447\u0438\u0442\u044c \u0438\u043d\u0444\u043e\u0440\u043c\u0430\u0446\u0438\u044e \u043e \u0437\u0430\u043f\u0440\u043e\u0441\u0435."

    invoke-direct {p1, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;->handleError(Ljava/lang/Throwable;)V

    return v0

    .line 203
    :cond_0
    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/ResponseData;->getCode()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 204
    new-instance p1, Ljava/lang/Exception;

    const-string v1, "\u041d\u0435 \u0443\u0434\u0430\u043b\u043e\u0441\u044c \u043f\u043e\u043b\u0443\u0447\u0438\u0442\u044c \u043a\u043e\u0434 \u043f\u0440\u043e\u0432\u0435\u0440\u043a\u0438."

    invoke-direct {p1, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;->handleError(Ljava/lang/Throwable;)V

    return v0

    .line 208
    :cond_1
    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/ResponseData;->getStatus()I

    move-result v1

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_2

    .line 209
    new-instance v1, Ljava/lang/Exception;

    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/ResponseData;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    invoke-virtual {p0, v1}, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;->handleError(Ljava/lang/Throwable;)V

    return v0

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private final processResponseData(Lru/rocketbank/core/model/SmsVerificationResponseData;)V
    .locals 4

    .line 146
    invoke-virtual {p1}, Lru/rocketbank/core/model/SmsVerificationResponseData;->getResponse()Lru/rocketbank/core/model/dto/ResponseData;

    move-result-object v0

    .line 148
    invoke-direct {p0, v0}, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;->checkResponse(Lru/rocketbank/core/model/dto/ResponseData;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const-string v1, "response"

    .line 152
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lru/rocketbank/core/model/dto/ResponseData;->getRegistrationStatus()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 153
    new-instance p1, Lru/rocketbank/core/exceptions/RocketException;

    const-string v0, "\u041d\u0435 \u0443\u0434\u0430\u043b\u043e\u0441\u044c \u043f\u043e\u043b\u0443\u0447\u0438\u0442\u044c \u0441\u0442\u0430\u0442\u0443\u0441 \u0440\u0435\u0433\u0438\u0441\u0442\u0440\u0430\u0446\u0438\u0438."

    invoke-direct {p1, v0}, Lru/rocketbank/core/exceptions/RocketException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;->handleError(Ljava/lang/Throwable;)V

    return-void

    .line 158
    :cond_1
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "KEY_PHONE_NUMBER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 159
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x5

    if-nez v1, :cond_2

    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "(this as java.lang.String).substring(startIndex)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v1, :cond_4

    :cond_3
    const-string v1, ""

    .line 160
    :cond_4
    iget-object v2, p0, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;->analyticsManager:Lru/rocketbank/core/manager/AnalyticsManager;

    invoke-virtual {v2, v1}, Lru/rocketbank/core/manager/AnalyticsManager;->phoneConfirm(Ljava/lang/String;)V

    .line 162
    sget-object v1, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object v1

    invoke-interface {v1}, Lru/rocketbank/core/dagger/component/RocketComponent;->getAuthorization()Lru/rocketbank/core/user/Authorization;

    move-result-object v1

    .line 164
    invoke-virtual {v0}, Lru/rocketbank/core/model/dto/ResponseData;->getRegistrationStatus()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, 0x14365992

    if-eq v2, v3, :cond_7

    const v1, 0x5f966e35

    if-eq v2, v1, :cond_6

    goto :goto_0

    :cond_6
    const-string v1, "lead_status"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 167
    iput-object p1, p0, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;->smsData:Lru/rocketbank/core/model/SmsVerificationResponseData;

    .line 169
    iget-object p1, p0, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;->analyticsManager:Lru/rocketbank/core/manager/AnalyticsManager;

    invoke-virtual {p1}, Lru/rocketbank/core/manager/AnalyticsManager;->newUserPhoneEnter()V

    .line 170
    invoke-direct {p0}, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;->showPrivacy()V

    return-void

    :cond_7
    const-string v2, "user_feed"

    .line 164
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "user_feed"

    .line 174
    invoke-virtual {v1, v0}, Lru/rocketbank/core/user/Authorization;->setStatus(Ljava/lang/String;)V

    .line 175
    new-instance v0, Landroid/content/Intent;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    const-class v2, Lru/rocketbank/r2d2/activities/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;->startActivity(Landroid/content/Intent;)V

    .line 177
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;->saveUser(Lru/rocketbank/core/model/SmsVerificationResponseData;)V

    const/4 p1, 0x1

    .line 179
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;->setResult(I)V

    .line 180
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;->finish()V

    :cond_8
    :goto_0
    return-void
.end method

.method private final processResponseData(Lru/rocketbank/core/network/model/SmsVerificationPhoneResponse;)V
    .locals 0

    .line 217
    invoke-virtual {p1}, Lru/rocketbank/core/network/model/SmsVerificationPhoneResponse;->getResponse()Lru/rocketbank/core/model/dto/ResponseData;

    move-result-object p1

    .line 218
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;->checkResponse(Lru/rocketbank/core/model/dto/ResponseData;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    return-void
.end method

.method private final requestSmsVerification(Ljava/lang/String;)V
    .locals 3

    .line 131
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;->showProgressDialog()V

    .line 132
    iget-object v0, p0, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;->_smsVerificationId:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 133
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;->getLocalBus()Lde/greenrobot/event/EventBus;

    move-result-object v1

    const-class v2, Lru/rocketbank/r2d2/root/lead/SmsVerificationEvent;

    invoke-virtual {v1, v2}, Lde/greenrobot/event/EventBus;->removeStickyEvent(Ljava/lang/Class;)Ljava/lang/Object;

    .line 134
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;->getLocalBus()Lde/greenrobot/event/EventBus;

    move-result-object v1

    new-instance v2, Lru/rocketbank/r2d2/root/lead/SmsVerificationEvent;

    invoke-direct {v2, p1, v0}, Lru/rocketbank/r2d2/root/lead/SmsVerificationEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lde/greenrobot/event/EventBus;->postSticky(Ljava/lang/Object;)V

    .line 136
    iget v1, p0, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;->verifyMode:I

    const/16 v2, 0x20

    if-ne v1, v2, :cond_0

    .line 137
    invoke-direct {p0, p1, v0}, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;->verifyCode(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 139
    :cond_0
    invoke-direct {p0, p1, v0}, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;->verifyPhone(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    return-void
.end method

.method private final saveUser(Lru/rocketbank/core/model/SmsVerificationResponseData;)V
    .locals 2

    .line 187
    iget-object v0, p0, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;->authorization:Lru/rocketbank/core/user/Authorization;

    invoke-virtual {p1}, Lru/rocketbank/core/model/SmsVerificationResponseData;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lru/rocketbank/core/user/Authorization;->setToken(Ljava/lang/String;)V

    .line 190
    :try_start_0
    iget-object v0, p0, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;->authorization:Lru/rocketbank/core/user/Authorization;

    invoke-virtual {p1}, Lru/rocketbank/core/model/SmsVerificationResponseData;->getUser()Lru/rocketbank/core/model/UserModel;

    move-result-object p1

    invoke-virtual {v0, p1}, Lru/rocketbank/core/user/Authorization;->setUserModel(Lru/rocketbank/core/model/UserModel;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 192
    :catch_0
    new-instance p1, Lru/rocketbank/core/exceptions/RocketException;

    const-string v0, "\u041d\u0435 \u0443\u0434\u0430\u043b\u043e\u0441\u044c \u043f\u043e\u043b\u0443\u0447\u0438\u0442\u044c \u0441\u0442\u0430\u0442\u0443\u0441 \u0440\u0435\u0433\u0438\u0441\u0442\u0440\u0430\u0446\u0438\u0438."

    invoke-direct {p1, v0}, Lru/rocketbank/core/exceptions/RocketException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;->handleError(Ljava/lang/Throwable;)V

    return-void
.end method

.method private final setAlertDialog(Landroid/support/v7/app/AlertDialog;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;->alertDialog:Landroid/support/v7/app/AlertDialog;

    return-void
.end method

.method private final showNetworkErrorDialog(Ljava/lang/String;)V
    .locals 2

    .line 288
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 289
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 290
    new-instance v0, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity$showNetworkErrorDialog$1;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity$showNetworkErrorDialog$1;-><init>(Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;)V

    check-cast v0, Landroid/content/DialogInterface$OnClickListener;

    const v1, 0x7f1103cd

    invoke-virtual {p1, v1, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 293
    sget-object v0, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity$showNetworkErrorDialog$2;->INSTANCE:Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity$showNetworkErrorDialog$2;

    check-cast v0, Landroid/content/DialogInterface$OnClickListener;

    const/high16 v1, 0x1040000

    invoke-virtual {p1, v1, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 296
    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object p1

    .line 297
    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog;->show()V

    return-void
.end method

.method private final showPrivacy()V
    .locals 2

    .line 224
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;->showProgressDialog()V

    .line 225
    iget-object v0, p0, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;->rocketApi:Lru/rocketbank/core/network/api/RocketAPI;

    invoke-interface {v0}, Lru/rocketbank/core/network/api/RocketAPI;->privacy()Lrx/Observable;

    move-result-object v0

    .line 226
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 227
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 228
    new-instance v1, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity$showPrivacy$1;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity$showPrivacy$1;-><init>(Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;)V

    check-cast v1, Lrx/Subscriber;

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    return-void
.end method

.method private final verifyCode(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 320
    sget-object v0, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object v0

    invoke-interface {v0}, Lru/rocketbank/core/dagger/component/RocketComponent;->getPhoneApi()Lru/rocketbank/core/network/api/PhoneApi;

    move-result-object v0

    .line 321
    invoke-interface {v0, p2, p2, p1}, Lru/rocketbank/core/network/api/PhoneApi;->verify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;

    move-result-object p1

    .line 324
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object p1

    .line 325
    new-instance p2, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity$verifyCode$1;

    invoke-direct {p2, p0}, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity$verifyCode$1;-><init>(Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;)V

    check-cast p2, Lrx/Subscriber;

    invoke-virtual {p1, p2}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;->verificationSubscription:Lrx/Subscription;

    return-void
.end method

.method private final verifyPhone(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 343
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object v0

    invoke-interface {v0}, Lru/rocketbank/core/dagger/component/RocketComponent;->getPhoneApi()Lru/rocketbank/core/network/api/PhoneApi;

    move-result-object v0

    invoke-interface {v0, p2, p2, p1}, Lru/rocketbank/core/network/api/PhoneApi;->smsVerification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;

    move-result-object p1

    .line 346
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object p1

    .line 347
    new-instance p2, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity$verifyPhone$1;

    invoke-direct {p2, p0}, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity$verifyPhone$1;-><init>(Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;)V

    check-cast p2, Lrx/Subscriber;

    invoke-virtual {p1, p2}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    return-void
.end method


# virtual methods
.method public final _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public final _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final getAlertDialog()Landroid/support/v7/app/AlertDialog;
    .locals 1

    .line 52
    iget-object v0, p0, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;->alertDialog:Landroid/support/v7/app/AlertDialog;

    return-object v0
.end method

.method public final handleError(Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 302
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;->hideProgressDialog()V

    .line 304
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 305
    instance-of v1, p1, Lru/rocketbank/core/network/exception/RocketResponseException;

    if-eqz v1, :cond_0

    .line 306
    check-cast p1, Lru/rocketbank/core/network/exception/RocketResponseException;

    invoke-virtual {p1}, Lru/rocketbank/core/network/exception/RocketResponseException;->getDescription()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    .line 312
    :cond_0
    :try_start_0
    invoke-static {v0}, Lru/rocketbank/r2d2/fragments/AlertDialogFragment;->create(Ljava/lang/String;)Lru/rocketbank/r2d2/fragments/AlertDialogFragment;

    move-result-object p1

    new-instance v0, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity$handleError$1;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity$handleError$1;-><init>(Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;)V

    check-cast v0, Lru/rocketbank/r2d2/fragments/AlertDialogFragment$OnPositiveListener;

    invoke-virtual {p1, v0}, Lru/rocketbank/r2d2/fragments/AlertDialogFragment;->setOnPositiveListener(Lru/rocketbank/r2d2/fragments/AlertDialogFragment$OnPositiveListener;)Lru/rocketbank/r2d2/fragments/AlertDialogFragment;

    move-result-object p1

    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "dialog"

    invoke-virtual {p1, v0, v1}, Lru/rocketbank/r2d2/fragments/AlertDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    return-void
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 58
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/activities/AbstractActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c005f

    .line 59
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;->setContentView(I)V

    const p1, 0x7f090069

    .line 61
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.widget.ImageView"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    check-cast p1, Landroid/widget/ImageView;

    .line 62
    sget-object v0, Lru/rocketbank/r2d2/root/lead/LeadConfig;->INSTANCE:Lru/rocketbank/r2d2/root/lead/LeadConfig;

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/root/lead/LeadConfig;->showBackground(Landroid/widget/ImageView;)V

    .line 64
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "KEY_VERIFICATION_ID"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;->_smsVerificationId:Ljava/lang/String;

    .line 65
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "KEY_VERIFY_MODE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, "MODE_VERIFY_REGULAR"

    :cond_1
    const-string v0, "MODE_VERIFY_PHONE"

    .line 67
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/16 p1, 0x10

    goto :goto_0

    :cond_2
    const/16 p1, 0x20

    :goto_0
    iput p1, p0, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;->verifyMode:I

    const p1, 0x7f090327

    .line 73
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;->findView(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "findView(R.id.sms_input)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lru/rocketbank/core/widgets/RocketSMSInput;

    iput-object p1, p0, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;->smsInput:Lru/rocketbank/core/widgets/RocketSMSInput;

    .line 74
    iget-object p1, p0, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;->smsInput:Lru/rocketbank/core/widgets/RocketSMSInput;

    if-nez p1, :cond_3

    const-string v0, "smsInput"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    new-instance v0, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity$onCreate$1;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity$onCreate$1;-><init>(Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;)V

    check-cast v0, Lru/rocketbank/core/widgets/RocketSMSInput$OnCodeInputListener;

    invoke-virtual {p1, v0}, Lru/rocketbank/core/widgets/RocketSMSInput;->setOnCodeInputListener(Lru/rocketbank/core/widgets/RocketSMSInput$OnCodeInputListener;)V

    .line 80
    new-instance p1, Lru/rocketbank/core/receiver/SmsReceiver;

    .line 81
    new-instance v0, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity$onCreate$2;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity$onCreate$2;-><init>(Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;)V

    check-cast v0, Lru/rocketbank/core/receiver/SmsReceiver$SmsDelegate;

    .line 80
    invoke-direct {p1, v0}, Lru/rocketbank/core/receiver/SmsReceiver;-><init>(Lru/rocketbank/core/receiver/SmsReceiver$SmsDelegate;)V

    check-cast p1, Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;->smsConfirmationReceiver:Landroid/content/BroadcastReceiver;

    const p1, 0x7f090285

    .line 87
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_4

    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketNumpad"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    check-cast p1, Lru/rocketbank/core/widgets/RocketNumpad;

    const/4 v0, 0x0

    .line 88
    invoke-virtual {p1, v0}, Lru/rocketbank/core/widgets/RocketNumpad;->setResetEnabled(Z)V

    .line 90
    new-instance v0, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity$onCreate$3;

    invoke-direct {v0, p0, p1}, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity$onCreate$3;-><init>(Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;Lru/rocketbank/core/widgets/RocketNumpad;)V

    check-cast v0, Lru/rocketbank/core/widgets/RocketNumpad$OnNumberListener;

    invoke-virtual {p1, v0}, Lru/rocketbank/core/widgets/RocketNumpad;->setOnNumberListener(Lru/rocketbank/core/widgets/RocketNumpad$OnNumberListener;)V

    .line 107
    move-object p1, p0

    check-cast p1, Landroid/app/Activity;

    invoke-static {p1}, Lru/rocketbank/r2d2/Utils;->closeKeyboardIfExists(Landroid/app/Activity;)V

    const/4 p1, 0x2

    .line 108
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;->setResult(I)V

    return-void
.end method

.method protected final onPause()V
    .locals 2

    .line 120
    invoke-super {p0}, Lru/rocketbank/r2d2/activities/AbstractActivity;->onPause()V

    .line 122
    iget-object v0, p0, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;->verificationSubscription:Lrx/Subscription;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lrx/Subscription;->unsubscribe()V

    :cond_0
    const/4 v0, 0x0

    .line 123
    iput-object v0, p0, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;->verificationSubscription:Lrx/Subscription;

    .line 125
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    .line 126
    iget-object v0, p0, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;->smsConfirmationReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_1
    return-void
.end method

.method protected final onResume()V
    .locals 3

    .line 112
    invoke-super {p0}, Lru/rocketbank/r2d2/activities/AbstractActivity;->onResume()V

    .line 114
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 115
    iget-object v0, p0, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;->smsConfirmationReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.provider.Telephony.SMS_RECEIVED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method
