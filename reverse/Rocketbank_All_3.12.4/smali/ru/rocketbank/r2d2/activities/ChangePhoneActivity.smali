.class public final Lru/rocketbank/r2d2/activities/ChangePhoneActivity;
.super Lru/rocketbank/r2d2/activities/SecuredActivity;
.source "ChangePhoneActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/activities/ChangePhoneActivity$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChangePhoneActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChangePhoneActivity.kt\nru/rocketbank/r2d2/activities/ChangePhoneActivity\n*L\n1#1,190:1\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lru/rocketbank/r2d2/activities/ChangePhoneActivity$Companion;

.field private static final KEY_CHANGE_MOBILE_PHONE:Ljava/lang/String; = "KEY_CHANGE_MOBILE_PHONE"

.field private static final KEY_PHONE_NUMBER:Ljava/lang/String; = "KEY_PHONE_NUMBER"

.field private static final KEY_PLASTIC_CHECK_ID:Ljava/lang/String; = "KEY_PLASTIC_CHECK_ID"

.field private static final KEY_SMS_VERIFICATION_ID:Ljava/lang/String; = "KEY_SMS_VERIFICATION_ID"

.field private static final SMS_REQUEST_CODE:I = 0x1


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private changeMobilePhone:Lru/rocketbank/core/model/ChangeMobilePhone;

.field private final eventBus:Lde/greenrobot/event/EventBus;

.field public frameLayout:Landroid/view/ViewGroup;

.field private phoneNumber:Ljava/lang/String;

.field private plasticCheckId:Ljava/lang/String;

.field private smsVerificationId:Ljava/lang/String;

.field private final userApi:Lru/rocketbank/core/network/api/UserApi;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/r2d2/activities/ChangePhoneActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/activities/ChangePhoneActivity$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/r2d2/activities/ChangePhoneActivity;->Companion:Lru/rocketbank/r2d2/activities/ChangePhoneActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Lru/rocketbank/r2d2/activities/SecuredActivity;-><init>()V

    .line 27
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/activities/ChangePhoneActivity;->eventBus:Lde/greenrobot/event/EventBus;

    .line 32
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/ChangePhoneActivity;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object v0

    invoke-interface {v0}, Lru/rocketbank/core/dagger/component/RocketComponent;->getUserApi()Lru/rocketbank/core/network/api/UserApi;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/activities/ChangePhoneActivity;->userApi:Lru/rocketbank/core/network/api/UserApi;

    return-void
.end method

.method public static final synthetic access$getEventBus$p(Lru/rocketbank/r2d2/activities/ChangePhoneActivity;)Lde/greenrobot/event/EventBus;
    .locals 0

    .line 26
    iget-object p0, p0, Lru/rocketbank/r2d2/activities/ChangePhoneActivity;->eventBus:Lde/greenrobot/event/EventBus;

    return-object p0
.end method

.method public static final synthetic access$getPhoneNumber$p(Lru/rocketbank/r2d2/activities/ChangePhoneActivity;)Ljava/lang/String;
    .locals 0

    .line 26
    iget-object p0, p0, Lru/rocketbank/r2d2/activities/ChangePhoneActivity;->phoneNumber:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getSmsVerificationId$p(Lru/rocketbank/r2d2/activities/ChangePhoneActivity;)Ljava/lang/String;
    .locals 0

    .line 26
    iget-object p0, p0, Lru/rocketbank/r2d2/activities/ChangePhoneActivity;->smsVerificationId:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$setPhoneNumber$p(Lru/rocketbank/r2d2/activities/ChangePhoneActivity;Ljava/lang/String;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lru/rocketbank/r2d2/activities/ChangePhoneActivity;->phoneNumber:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setSmsVerificationId$p(Lru/rocketbank/r2d2/activities/ChangePhoneActivity;Ljava/lang/String;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lru/rocketbank/r2d2/activities/ChangePhoneActivity;->smsVerificationId:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$showRetryErrorSnackbarMessage(Lru/rocketbank/r2d2/activities/ChangePhoneActivity;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lru/rocketbank/r2d2/activities/ChangePhoneActivity;->showRetryErrorSnackbarMessage()V

    return-void
.end method

.method private final showRetryErrorSnackbarMessage()V
    .locals 3

    .line 112
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/ChangePhoneActivity;->frameLayout:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    const-string v1, "frameLayout"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    check-cast v0, Landroid/view/View;

    const v1, 0x7f11018d

    invoke-static {v0, v1}, Lru/rocketbank/r2d2/helpers/UIHelper;->makeSnack(Landroid/view/View;I)Lru/rocketbank/core/widgets/RocketSnackbar;

    move-result-object v0

    .line 113
    invoke-virtual {v0}, Lru/rocketbank/core/widgets/RocketSnackbar;->setDuration$63dcf297()Lru/rocketbank/core/widgets/RocketSnackbar;

    move-result-object v0

    const v1, 0x7f1103d3

    .line 114
    new-instance v2, Lru/rocketbank/r2d2/activities/ChangePhoneActivity$showRetryErrorSnackbarMessage$1;

    invoke-direct {v2, p0}, Lru/rocketbank/r2d2/activities/ChangePhoneActivity$showRetryErrorSnackbarMessage$1;-><init>(Lru/rocketbank/r2d2/activities/ChangePhoneActivity;)V

    check-cast v2, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lru/rocketbank/core/widgets/RocketSnackbar;->setAction(ILandroid/view/View$OnClickListener;)Lru/rocketbank/core/widgets/RocketSnackbar;

    move-result-object v0

    .line 116
    invoke-virtual {v0}, Lru/rocketbank/core/widgets/RocketSnackbar;->show()V

    return-void
.end method


# virtual methods
.method public final _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/activities/ChangePhoneActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/activities/ChangePhoneActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public final _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lru/rocketbank/r2d2/activities/ChangePhoneActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/activities/ChangePhoneActivity;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/ChangePhoneActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/r2d2/activities/ChangePhoneActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final getFrameLayout()Landroid/view/ViewGroup;
    .locals 2

    .line 30
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/ChangePhoneActivity;->frameLayout:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    const-string v1, "frameLayout"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method protected final onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 168
    invoke-super {p0, p1, p2, p3}, Lru/rocketbank/r2d2/activities/SecuredActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    :cond_0
    if-ne p2, v0, :cond_1

    .line 165
    move-object p1, p0

    check-cast p1, Landroid/content/Context;

    const p2, 0x7f11037e

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 166
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/ChangePhoneActivity;->finish()V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 39
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/activities/SecuredActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0c0030

    .line 40
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/activities/ChangePhoneActivity;->setContentView(I)V

    const v0, 0x7f090105

    .line 42
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/activities/ChangePhoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lru/rocketbank/r2d2/activities/ChangePhoneActivity;->frameLayout:Landroid/view/ViewGroup;

    .line 43
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/ChangePhoneActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    .line 44
    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_1
    if-nez p1, :cond_3

    .line 48
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/ChangePhoneActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "KEY_CHANGE_MOBILE_PHONE"

    .line 49
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/model/ChangeMobilePhone;

    iput-object p1, p0, Lru/rocketbank/r2d2/activities/ChangePhoneActivity;->changeMobilePhone:Lru/rocketbank/core/model/ChangeMobilePhone;

    .line 50
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/ChangePhoneActivity;->changeMobilePhone:Lru/rocketbank/core/model/ChangeMobilePhone;

    if-nez p1, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    invoke-virtual {p1}, Lru/rocketbank/core/model/ChangeMobilePhone;->getCheckCard()Lru/rocketbank/core/model/dto/CheckCardData;

    move-result-object p1

    .line 51
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "KEY_CHECK_CARD_DATA"

    .line 52
    check-cast p1, Landroid/os/Parcelable;

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 54
    new-instance p1, Lru/rocketbank/r2d2/fragments/CheckCardFragment;

    invoke-direct {p1}, Lru/rocketbank/r2d2/fragments/CheckCardFragment;-><init>()V

    .line 55
    invoke-virtual {p1, v1}, Lru/rocketbank/r2d2/fragments/CheckCardFragment;->setArguments(Landroid/os/Bundle;)V

    .line 57
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/ChangePhoneActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 58
    check-cast p1, Landroid/support/v4/app/Fragment;

    invoke-virtual {v1, v0, p1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 59
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    return-void

    :cond_3
    const-string v0, "KEY_PLASTIC_CHECK_ID"

    const/4 v1, 0x0

    .line 61
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/activities/ChangePhoneActivity;->plasticCheckId:Ljava/lang/String;

    const-string v0, "KEY_PHONE_NUMBER"

    .line 62
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/activities/ChangePhoneActivity;->phoneNumber:Ljava/lang/String;

    const-string v0, "KEY_SMS_VERIFICATION_ID"

    .line 63
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/activities/ChangePhoneActivity;->smsVerificationId:Ljava/lang/String;

    return-void
.end method

.method public final onEventMainThread(Lru/rocketbank/core/events/CheckCardEvent;)V
    .locals 3

    const-string v0, "checkCardEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    invoke-virtual {p1}, Lru/rocketbank/core/events/CheckCardEvent;->getException()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {p1}, Lru/rocketbank/core/events/CheckCardEvent;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1}, Lru/rocketbank/core/events/CheckCardEvent;->getException()Ljava/lang/Throwable;

    move-result-object p1

    const v1, 0x7f1103d3

    .line 76
    sget-object v2, Lru/rocketbank/r2d2/activities/ChangePhoneActivity$onEventMainThread$1;->INSTANCE:Lru/rocketbank/r2d2/activities/ChangePhoneActivity$onEventMainThread$1;

    check-cast v2, Landroid/view/View$OnClickListener;

    .line 75
    invoke-static {v0, p1, v1, v2}, Lru/rocketbank/r2d2/helpers/UIHelper;->showSnackWithError(Landroid/view/View;Ljava/lang/Throwable;ILandroid/view/View$OnClickListener;)Lru/rocketbank/core/widgets/RocketSnackbar;

    return-void

    .line 79
    :cond_0
    invoke-virtual {p1}, Lru/rocketbank/core/events/CheckCardEvent;->getPlasticsCheckResponse()Lru/rocketbank/core/network/model/PlasticsCheckResponse;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_7

    .line 81
    iget-object v1, p1, Lru/rocketbank/core/network/model/PlasticsCheckResponse;->response:Lru/rocketbank/core/model/dto/ResponseData;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lru/rocketbank/core/model/dto/ResponseData;->getStatus()I

    move-result v1

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_1

    goto :goto_1

    .line 86
    :cond_1
    iget-object v1, p1, Lru/rocketbank/core/network/model/PlasticsCheckResponse;->plastic:Lru/rocketbank/core/model/PlasticModel;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lru/rocketbank/core/model/PlasticModel;->getValidation()Lru/rocketbank/core/model/ValidationModel;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lru/rocketbank/core/model/ValidationModel;->getId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    move-object v1, v0

    :goto_0
    if-nez v1, :cond_4

    .line 87
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/ChangePhoneActivity;->frameLayout:Landroid/view/ViewGroup;

    if-nez p1, :cond_3

    const-string v0, "frameLayout"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    check-cast p1, Landroid/view/View;

    const v0, 0x7f11012b

    invoke-static {p1, v0}, Lru/rocketbank/r2d2/helpers/UIHelper;->showSnack(Landroid/view/View;I)V

    return-void

    .line 91
    :cond_4
    iget-object p1, p1, Lru/rocketbank/core/network/model/PlasticsCheckResponse;->plastic:Lru/rocketbank/core/model/PlasticModel;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lru/rocketbank/core/model/PlasticModel;->getValidation()Lru/rocketbank/core/model/ValidationModel;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lru/rocketbank/core/model/ValidationModel;->getId()Ljava/lang/String;

    move-result-object v0

    :cond_5
    iput-object v0, p0, Lru/rocketbank/r2d2/activities/ChangePhoneActivity;->plasticCheckId:Ljava/lang/String;

    .line 92
    sget-object p1, Lru/rocketbank/r2d2/fragments/InputPhoneNumberFragment;->Companion:Lru/rocketbank/r2d2/fragments/InputPhoneNumberFragment$Companion;

    iget-object v0, p0, Lru/rocketbank/r2d2/activities/ChangePhoneActivity;->changeMobilePhone:Lru/rocketbank/core/model/ChangeMobilePhone;

    if-nez v0, :cond_6

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_6
    invoke-virtual {p1, v0}, Lru/rocketbank/r2d2/fragments/InputPhoneNumberFragment$Companion;->newInstance(Lru/rocketbank/core/model/ChangeMobilePhone;)Lru/rocketbank/r2d2/fragments/InputPhoneNumberFragment;

    move-result-object p1

    .line 93
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/ChangePhoneActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f010012

    const v2, 0x7f010013

    .line 94
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(II)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f090105

    .line 95
    check-cast p1, Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 96
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    return-void

    .line 82
    :cond_7
    :goto_1
    iget-object v1, p0, Lru/rocketbank/r2d2/activities/ChangePhoneActivity;->frameLayout:Landroid/view/ViewGroup;

    if-nez v1, :cond_8

    const-string v2, "frameLayout"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_8
    check-cast v1, Landroid/view/View;

    if-eqz p1, :cond_9

    iget-object p1, p1, Lru/rocketbank/core/network/model/PlasticsCheckResponse;->response:Lru/rocketbank/core/model/dto/ResponseData;

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/ResponseData;->getDescription()Ljava/lang/String;

    move-result-object v0

    :cond_9
    invoke-static {v1, v0}, Lru/rocketbank/r2d2/helpers/UIHelper;->showSnack(Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method

.method public final onEventMainThread(Lru/rocketbank/core/events/PhoneNumberEvent;)V
    .locals 2

    const-string v0, "phoneNumberEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    invoke-virtual {p1}, Lru/rocketbank/core/events/PhoneNumberEvent;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 127
    :cond_0
    invoke-virtual {p1}, Lru/rocketbank/core/events/PhoneNumberEvent;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/activities/ChangePhoneActivity;->phoneNumber:Ljava/lang/String;

    .line 128
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/ChangePhoneActivity;->showProgressDialog()V

    .line 130
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/ChangePhoneActivity;->userApi:Lru/rocketbank/core/network/api/UserApi;

    invoke-virtual {p1}, Lru/rocketbank/core/events/PhoneNumberEvent;->getPhoneNumber()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lru/rocketbank/r2d2/activities/ChangePhoneActivity;->plasticCheckId:Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Lru/rocketbank/core/network/api/UserApi;->phone(Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;

    move-result-object p1

    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object p1

    new-instance v0, Lru/rocketbank/r2d2/activities/ChangePhoneActivity$onEventMainThread$2;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/activities/ChangePhoneActivity$onEventMainThread$2;-><init>(Lru/rocketbank/r2d2/activities/ChangePhoneActivity;)V

    check-cast v0, Lrx/Subscriber;

    invoke-virtual {p1, v0}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    return-void
.end method

.method protected final onPause()V
    .locals 1

    .line 173
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/mikepenz/materialdrawer/util/KeyboardUtil;->hideKeyboard(Landroid/app/Activity;)V

    .line 174
    invoke-super {p0}, Lru/rocketbank/r2d2/activities/SecuredActivity;->onPause()V

    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "outState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/activities/SecuredActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "KEY_PLASTIC_CHECK_ID"

    .line 102
    iget-object v1, p0, Lru/rocketbank/r2d2/activities/ChangePhoneActivity;->plasticCheckId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "KEY_SMS_VERIFICATION_ID"

    .line 103
    iget-object v1, p0, Lru/rocketbank/r2d2/activities/ChangePhoneActivity;->smsVerificationId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "KEY_PHONE_NUMBER"

    .line 104
    iget-object v1, p0, Lru/rocketbank/r2d2/activities/ChangePhoneActivity;->phoneNumber:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final setFrameLayout(Landroid/view/ViewGroup;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    iput-object p1, p0, Lru/rocketbank/r2d2/activities/ChangePhoneActivity;->frameLayout:Landroid/view/ViewGroup;

    return-void
.end method
