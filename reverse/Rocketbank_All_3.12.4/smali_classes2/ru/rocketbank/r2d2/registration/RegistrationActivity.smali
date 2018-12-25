.class public Lru/rocketbank/r2d2/registration/RegistrationActivity;
.super Lru/rocketbank/r2d2/activities/AbstractActivity;
.source "RegistrationActivity.java"


# static fields
.field public static DEMO:Z = false

.field private static final KEY_STEP:Ljava/lang/String; = "KEY_STEP"

.field public static final REQUEST_CODE:I = 0x929


# instance fields
.field private authorization:Lru/rocketbank/core/user/Authorization;

.field private btnNext:Landroid/widget/Button;

.field dataManager:Lru/rocketbank/core/manager/DataManager;

.field fireCMManager:Lru/rocketbank/core/manager/FireCMManager;

.field headerManager:Lru/rocketbank/core/manager/HeaderManager;

.field private progressRegistrationView:Lru/rocketbank/r2d2/registration/fragment/ProgressRegistrationView;

.field private repeatButton:Lru/rocketbank/core/widgets/RocketButton;

.field rocketShortcutManager:Lru/rocketbank/core/manager/RocketShortcutManager;

.field private statusSubscription:Lrx/Subscription;

.field private toolbar:Landroid/support/v7/widget/Toolbar;

.field private toolbarShadow:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 55
    invoke-direct {p0}, Lru/rocketbank/r2d2/activities/AbstractActivity;-><init>()V

    .line 71
    sget-object v0, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object v0

    invoke-interface {v0}, Lru/rocketbank/core/dagger/component/RocketComponent;->getAuthorization()Lru/rocketbank/core/user/Authorization;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/registration/RegistrationActivity;->authorization:Lru/rocketbank/core/user/Authorization;

    return-void
.end method

.method static synthetic access$000(Lru/rocketbank/r2d2/registration/RegistrationActivity;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lru/rocketbank/r2d2/registration/RegistrationActivity;->requestUserStatus()V

    return-void
.end method

.method static synthetic access$100(Lru/rocketbank/r2d2/registration/RegistrationActivity;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lru/rocketbank/r2d2/registration/RegistrationActivity;->startSupportChatActivity()V

    return-void
.end method

.method static synthetic access$200(Lru/rocketbank/r2d2/registration/RegistrationActivity;Ljava/lang/String;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/registration/RegistrationActivity;->showErrorToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lru/rocketbank/r2d2/registration/RegistrationActivity;)Lrx/Subscription;
    .locals 0

    .line 55
    iget-object p0, p0, Lru/rocketbank/r2d2/registration/RegistrationActivity;->statusSubscription:Lrx/Subscription;

    return-object p0
.end method

.method static synthetic access$302(Lru/rocketbank/r2d2/registration/RegistrationActivity;Lrx/Subscription;)Lrx/Subscription;
    .locals 0

    .line 55
    iput-object p1, p0, Lru/rocketbank/r2d2/registration/RegistrationActivity;->statusSubscription:Lrx/Subscription;

    return-object p1
.end method

.method static synthetic access$400(Lru/rocketbank/r2d2/registration/RegistrationActivity;)Lru/rocketbank/core/widgets/RocketButton;
    .locals 0

    .line 55
    iget-object p0, p0, Lru/rocketbank/r2d2/registration/RegistrationActivity;->repeatButton:Lru/rocketbank/core/widgets/RocketButton;

    return-object p0
.end method

.method static synthetic access$500(Lru/rocketbank/r2d2/registration/RegistrationActivity;Lru/rocketbank/core/model/StatusResponseData;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/registration/RegistrationActivity;->handleStatus(Lru/rocketbank/core/model/StatusResponseData;)V

    return-void
.end method

.method private chooseFragment(Lru/rocketbank/r2d2/registration/RegistrationStep;)Lru/rocketbank/r2d2/registration/FormFragment;
    .locals 6

    .line 366
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 367
    invoke-direct {p0}, Lru/rocketbank/r2d2/registration/RegistrationActivity;->setSupportButton()V

    .line 368
    sget-object v1, Lru/rocketbank/r2d2/registration/RegistrationActivity$5;->$SwitchMap$ru$rocketbank$r2d2$registration$RegistrationStep$Step:[I

    invoke-virtual {p1}, Lru/rocketbank/r2d2/registration/RegistrationStep;->getStep()Lru/rocketbank/r2d2/registration/RegistrationStep$Step;

    move-result-object v2

    invoke-virtual {v2}, Lru/rocketbank/r2d2/registration/RegistrationStep$Step;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    packed-switch v1, :pswitch_data_0

    .line 371
    iget-object v1, p0, Lru/rocketbank/r2d2/registration/RegistrationActivity;->progressRegistrationView:Lru/rocketbank/r2d2/registration/fragment/ProgressRegistrationView;

    invoke-virtual {v1, v3}, Lru/rocketbank/r2d2/registration/fragment/ProgressRegistrationView;->setStep(I)V

    .line 372
    new-instance v1, Lru/rocketbank/r2d2/registration/fragment/PassportRegistrationFragment;

    invoke-direct {v1}, Lru/rocketbank/r2d2/registration/fragment/PassportRegistrationFragment;-><init>()V

    goto/16 :goto_0

    .line 425
    :pswitch_0
    iget-object v1, p0, Lru/rocketbank/r2d2/registration/RegistrationActivity;->progressRegistrationView:Lru/rocketbank/r2d2/registration/fragment/ProgressRegistrationView;

    invoke-virtual {v1, v5}, Lru/rocketbank/r2d2/registration/fragment/ProgressRegistrationView;->setStep(I)V

    .line 426
    new-instance v1, Lru/rocketbank/r2d2/registration/fragment/FormCheckRegistrationFragment;

    invoke-direct {v1}, Lru/rocketbank/r2d2/registration/fragment/FormCheckRegistrationFragment;-><init>()V

    goto/16 :goto_0

    .line 421
    :pswitch_1
    iget-object v1, p0, Lru/rocketbank/r2d2/registration/RegistrationActivity;->progressRegistrationView:Lru/rocketbank/r2d2/registration/fragment/ProgressRegistrationView;

    invoke-virtual {v1, v5}, Lru/rocketbank/r2d2/registration/fragment/ProgressRegistrationView;->setStep(I)V

    .line 422
    new-instance v1, Lru/rocketbank/r2d2/registration/fragment/RegistrationCallNeedFragment;

    invoke-direct {v1}, Lru/rocketbank/r2d2/registration/fragment/RegistrationCallNeedFragment;-><init>()V

    goto/16 :goto_0

    .line 417
    :pswitch_2
    iget-object v1, p0, Lru/rocketbank/r2d2/registration/RegistrationActivity;->progressRegistrationView:Lru/rocketbank/r2d2/registration/fragment/ProgressRegistrationView;

    invoke-virtual {v1, v5}, Lru/rocketbank/r2d2/registration/fragment/ProgressRegistrationView;->setStep(I)V

    .line 418
    new-instance v1, Lru/rocketbank/r2d2/registration/fragment/RottedRegistrationFragment;

    invoke-direct {v1}, Lru/rocketbank/r2d2/registration/fragment/RottedRegistrationFragment;-><init>()V

    goto/16 :goto_0

    .line 413
    :pswitch_3
    iget-object v1, p0, Lru/rocketbank/r2d2/registration/RegistrationActivity;->progressRegistrationView:Lru/rocketbank/r2d2/registration/fragment/ProgressRegistrationView;

    invoke-virtual {v1, v2}, Lru/rocketbank/r2d2/registration/fragment/ProgressRegistrationView;->setStep(I)V

    .line 414
    new-instance v1, Lru/rocketbank/r2d2/registration/fragment/PasswordRegistrationFragment;

    invoke-direct {v1}, Lru/rocketbank/r2d2/registration/fragment/PasswordRegistrationFragment;-><init>()V

    goto/16 :goto_0

    .line 409
    :pswitch_4
    iget-object v1, p0, Lru/rocketbank/r2d2/registration/RegistrationActivity;->progressRegistrationView:Lru/rocketbank/r2d2/registration/fragment/ProgressRegistrationView;

    invoke-virtual {v1, v2}, Lru/rocketbank/r2d2/registration/fragment/ProgressRegistrationView;->setStep(I)V

    .line 410
    new-instance v1, Lru/rocketbank/r2d2/registration/fragment/PinRegistrationFragment;

    invoke-direct {v1}, Lru/rocketbank/r2d2/registration/fragment/PinRegistrationFragment;-><init>()V

    goto/16 :goto_0

    .line 405
    :pswitch_5
    iget-object v1, p0, Lru/rocketbank/r2d2/registration/RegistrationActivity;->progressRegistrationView:Lru/rocketbank/r2d2/registration/fragment/ProgressRegistrationView;

    invoke-virtual {v1, v4}, Lru/rocketbank/r2d2/registration/fragment/ProgressRegistrationView;->setStep(I)V

    .line 406
    new-instance v1, Lru/rocketbank/r2d2/registration/fragment/RejectedRegistrationFragment;

    invoke-direct {v1}, Lru/rocketbank/r2d2/registration/fragment/RejectedRegistrationFragment;-><init>()V

    goto :goto_0

    .line 401
    :pswitch_6
    iget-object v1, p0, Lru/rocketbank/r2d2/registration/RegistrationActivity;->progressRegistrationView:Lru/rocketbank/r2d2/registration/fragment/ProgressRegistrationView;

    invoke-virtual {v1, v4}, Lru/rocketbank/r2d2/registration/fragment/ProgressRegistrationView;->setStep(I)V

    .line 402
    new-instance v1, Lru/rocketbank/r2d2/registration/fragment/CheckingRegistrationFragment;

    invoke-direct {v1}, Lru/rocketbank/r2d2/registration/fragment/CheckingRegistrationFragment;-><init>()V

    goto :goto_0

    .line 397
    :pswitch_7
    iget-object v1, p0, Lru/rocketbank/r2d2/registration/RegistrationActivity;->progressRegistrationView:Lru/rocketbank/r2d2/registration/fragment/ProgressRegistrationView;

    invoke-virtual {v1, v4}, Lru/rocketbank/r2d2/registration/fragment/ProgressRegistrationView;->setStep(I)V

    .line 398
    new-instance v1, Lru/rocketbank/r2d2/registration/fragment/DeliveryScheduledRegistrationFragment;

    invoke-direct {v1}, Lru/rocketbank/r2d2/registration/fragment/DeliveryScheduledRegistrationFragment;-><init>()V

    goto :goto_0

    .line 387
    :pswitch_8
    iget-object v1, p0, Lru/rocketbank/r2d2/registration/RegistrationActivity;->progressRegistrationView:Lru/rocketbank/r2d2/registration/fragment/ProgressRegistrationView;

    invoke-virtual {v1, v4}, Lru/rocketbank/r2d2/registration/fragment/ProgressRegistrationView;->setStep(I)V

    const/4 v1, 0x0

    .line 389
    invoke-virtual {p1}, Lru/rocketbank/r2d2/registration/RegistrationStep;->getStatusResponseData()Lru/rocketbank/core/model/StatusResponseData;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 390
    invoke-virtual {p1}, Lru/rocketbank/r2d2/registration/RegistrationStep;->getStatusResponseData()Lru/rocketbank/core/model/StatusResponseData;

    move-result-object v2

    invoke-virtual {v2}, Lru/rocketbank/core/model/StatusResponseData;->getDelivery()Lru/rocketbank/core/model/DeliveryData;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 391
    invoke-virtual {p1}, Lru/rocketbank/r2d2/registration/RegistrationStep;->getStatusResponseData()Lru/rocketbank/core/model/StatusResponseData;

    move-result-object v1

    invoke-virtual {v1}, Lru/rocketbank/core/model/StatusResponseData;->getDelivery()Lru/rocketbank/core/model/DeliveryData;

    move-result-object v1

    invoke-virtual {v1}, Lru/rocketbank/core/model/DeliveryData;->getToken()Ljava/lang/String;

    move-result-object v1

    .line 393
    :cond_0
    new-instance v2, Lru/rocketbank/r2d2/registration/fragment/DeliveringRegistrationFragment;

    invoke-direct {v2}, Lru/rocketbank/r2d2/registration/fragment/DeliveringRegistrationFragment;-><init>()V

    .line 394
    invoke-static {}, Lru/rocketbank/r2d2/registration/fragment/DeliveringRegistrationFragment;->getKEY_TOKEN()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    goto :goto_0

    .line 383
    :pswitch_9
    iget-object v1, p0, Lru/rocketbank/r2d2/registration/RegistrationActivity;->progressRegistrationView:Lru/rocketbank/r2d2/registration/fragment/ProgressRegistrationView;

    invoke-virtual {v1, v5}, Lru/rocketbank/r2d2/registration/fragment/ProgressRegistrationView;->setStep(I)V

    .line 384
    new-instance v1, Lru/rocketbank/r2d2/registration/fragment/IssuingRegistrationFragment;

    invoke-direct {v1}, Lru/rocketbank/r2d2/registration/fragment/IssuingRegistrationFragment;-><init>()V

    goto :goto_0

    .line 379
    :pswitch_a
    iget-object v1, p0, Lru/rocketbank/r2d2/registration/RegistrationActivity;->progressRegistrationView:Lru/rocketbank/r2d2/registration/fragment/ProgressRegistrationView;

    invoke-virtual {v1, v5}, Lru/rocketbank/r2d2/registration/fragment/ProgressRegistrationView;->setStep(I)V

    .line 380
    new-instance v1, Lru/rocketbank/r2d2/registration/fragment/FillFormRegistrationFragment;

    invoke-direct {v1}, Lru/rocketbank/r2d2/registration/fragment/FillFormRegistrationFragment;-><init>()V

    goto :goto_0

    .line 375
    :pswitch_b
    iget-object v1, p0, Lru/rocketbank/r2d2/registration/RegistrationActivity;->progressRegistrationView:Lru/rocketbank/r2d2/registration/fragment/ProgressRegistrationView;

    invoke-virtual {v1, v3}, Lru/rocketbank/r2d2/registration/fragment/ProgressRegistrationView;->setStep(I)V

    .line 376
    new-instance v1, Lru/rocketbank/r2d2/registration/fragment/PassportRegRegistrationFragment;

    invoke-direct {v1}, Lru/rocketbank/r2d2/registration/fragment/PassportRegRegistrationFragment;-><init>()V

    :goto_0
    const-string v2, "KEY_MODEL"

    .line 429
    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 431
    invoke-virtual {v1, v0}, Lru/rocketbank/r2d2/registration/FormFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleStatus(Lru/rocketbank/core/model/StatusResponseData;)V
    .locals 4

    .line 254
    new-instance v0, Lru/rocketbank/r2d2/registration/RegistrationStep;

    invoke-direct {v0}, Lru/rocketbank/r2d2/registration/RegistrationStep;-><init>()V

    .line 255
    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/registration/RegistrationStep;->setStatusResponseData(Lru/rocketbank/core/model/StatusResponseData;)V

    .line 256
    invoke-virtual {p1}, Lru/rocketbank/core/model/StatusResponseData;->getStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x1

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v2, "issuing"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    goto/16 :goto_1

    :sswitch_1
    const-string v2, "document_check"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto/16 :goto_1

    :sswitch_2
    const-string v2, "document_rejected"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x7

    goto/16 :goto_1

    :sswitch_3
    const-string v2, "password"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x6

    goto :goto_1

    :sswitch_4
    const-string v2, "delivery_scheduled"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_5
    const-string v2, "need_call"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x9

    goto :goto_1

    :sswitch_6
    const-string v2, "delivery"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_7
    const-string v2, "form_check"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xa

    goto :goto_1

    :sswitch_8
    const-string v2, "live"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xc

    goto :goto_1

    :sswitch_9
    const-string v2, "pin"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    goto :goto_1

    :sswitch_a
    const-string v2, "go"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xb

    goto :goto_1

    :sswitch_b
    const-string v2, "rotted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    goto :goto_1

    :sswitch_c
    const-string v2, "fill_form"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    goto/16 :goto_2

    .line 308
    :pswitch_0
    iget-object v0, p0, Lru/rocketbank/r2d2/registration/RegistrationActivity;->authorization:Lru/rocketbank/core/user/Authorization;

    invoke-virtual {p1}, Lru/rocketbank/core/model/StatusResponseData;->getGo()Lru/rocketbank/core/model/StatusResponseSubData;

    move-result-object v1

    invoke-virtual {v1}, Lru/rocketbank/core/model/StatusResponseSubData;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lru/rocketbank/core/user/Authorization;->setLogin(Ljava/lang/String;)V

    .line 309
    iget-object v0, p0, Lru/rocketbank/r2d2/registration/RegistrationActivity;->authorization:Lru/rocketbank/core/user/Authorization;

    const-string v1, "user_feed"

    invoke-virtual {v0, v1}, Lru/rocketbank/core/user/Authorization;->setStatus(Ljava/lang/String;)V

    .line 310
    iget-object v0, p0, Lru/rocketbank/r2d2/registration/RegistrationActivity;->authorization:Lru/rocketbank/core/user/Authorization;

    invoke-virtual {p1}, Lru/rocketbank/core/model/StatusResponseData;->getToken()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lru/rocketbank/core/user/Authorization;->setToken(Ljava/lang/String;)V

    .line 311
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lru/rocketbank/r2d2/activities/MainActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/registration/RegistrationActivity;->startActivity(Landroid/content/Intent;)V

    .line 312
    invoke-virtual {p0}, Lru/rocketbank/r2d2/registration/RegistrationActivity;->finish()V

    return-void

    .line 301
    :pswitch_1
    iget-object v0, p0, Lru/rocketbank/r2d2/registration/RegistrationActivity;->authorization:Lru/rocketbank/core/user/Authorization;

    invoke-virtual {p1}, Lru/rocketbank/core/model/StatusResponseData;->getGo()Lru/rocketbank/core/model/StatusResponseSubData;

    move-result-object v1

    invoke-virtual {v1}, Lru/rocketbank/core/model/StatusResponseSubData;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lru/rocketbank/core/user/Authorization;->setLogin(Ljava/lang/String;)V

    .line 302
    iget-object v0, p0, Lru/rocketbank/r2d2/registration/RegistrationActivity;->authorization:Lru/rocketbank/core/user/Authorization;

    const-string v1, "user_feed"

    invoke-virtual {v0, v1}, Lru/rocketbank/core/user/Authorization;->setStatus(Ljava/lang/String;)V

    .line 303
    iget-object v0, p0, Lru/rocketbank/r2d2/registration/RegistrationActivity;->authorization:Lru/rocketbank/core/user/Authorization;

    invoke-virtual {p1}, Lru/rocketbank/core/model/StatusResponseData;->getGo()Lru/rocketbank/core/model/StatusResponseSubData;

    move-result-object p1

    invoke-virtual {p1}, Lru/rocketbank/core/model/StatusResponseSubData;->getToken()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lru/rocketbank/core/user/Authorization;->setToken(Ljava/lang/String;)V

    .line 304
    sget-object p1, Lru/rocketbank/r2d2/activities/FirstRefillActivity;->Companion:Lru/rocketbank/r2d2/activities/FirstRefillActivity$Companion;

    invoke-virtual {p1, p0}, Lru/rocketbank/r2d2/activities/FirstRefillActivity$Companion;->start(Landroid/content/Context;)V

    .line 305
    invoke-virtual {p0}, Lru/rocketbank/r2d2/registration/RegistrationActivity;->finish()V

    return-void

    .line 297
    :pswitch_2
    sget-object p1, Lru/rocketbank/r2d2/registration/RegistrationStep$Step;->FORM_CHECK:Lru/rocketbank/r2d2/registration/RegistrationStep$Step;

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/registration/RegistrationStep;->setStep(Lru/rocketbank/r2d2/registration/RegistrationStep$Step;)V

    goto :goto_2

    .line 294
    :pswitch_3
    sget-object p1, Lru/rocketbank/r2d2/registration/RegistrationStep$Step;->NEED_CALL:Lru/rocketbank/r2d2/registration/RegistrationStep$Step;

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/registration/RegistrationStep;->setStep(Lru/rocketbank/r2d2/registration/RegistrationStep$Step;)V

    goto :goto_2

    .line 291
    :pswitch_4
    sget-object p1, Lru/rocketbank/r2d2/registration/RegistrationStep$Step;->ROTTED:Lru/rocketbank/r2d2/registration/RegistrationStep$Step;

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/registration/RegistrationStep;->setStep(Lru/rocketbank/r2d2/registration/RegistrationStep$Step;)V

    goto :goto_2

    .line 287
    :pswitch_5
    sget-object p1, Lru/rocketbank/r2d2/registration/RegistrationStep$Step;->DOCUMENT_REJECTED:Lru/rocketbank/r2d2/registration/RegistrationStep$Step;

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/registration/RegistrationStep;->setStep(Lru/rocketbank/r2d2/registration/RegistrationStep$Step;)V

    goto :goto_2

    .line 284
    :pswitch_6
    sget-object p1, Lru/rocketbank/r2d2/registration/RegistrationStep$Step;->PASSWORD:Lru/rocketbank/r2d2/registration/RegistrationStep$Step;

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/registration/RegistrationStep;->setStep(Lru/rocketbank/r2d2/registration/RegistrationStep$Step;)V

    goto :goto_2

    .line 281
    :pswitch_7
    sget-object p1, Lru/rocketbank/r2d2/registration/RegistrationStep$Step;->PIN:Lru/rocketbank/r2d2/registration/RegistrationStep$Step;

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/registration/RegistrationStep;->setStep(Lru/rocketbank/r2d2/registration/RegistrationStep$Step;)V

    goto :goto_2

    .line 278
    :pswitch_8
    sget-object p1, Lru/rocketbank/r2d2/registration/RegistrationStep$Step;->DOCUMENT_CHECK:Lru/rocketbank/r2d2/registration/RegistrationStep$Step;

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/registration/RegistrationStep;->setStep(Lru/rocketbank/r2d2/registration/RegistrationStep$Step;)V

    goto :goto_2

    .line 270
    :pswitch_9
    invoke-virtual {p1}, Lru/rocketbank/core/model/StatusResponseData;->getDelivery()Lru/rocketbank/core/model/DeliveryData;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lru/rocketbank/core/model/StatusResponseData;->getDelivery()Lru/rocketbank/core/model/DeliveryData;

    move-result-object p1

    invoke-virtual {p1}, Lru/rocketbank/core/model/DeliveryData;->getToken()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 271
    invoke-static {p0, p1, v3}, Lru/rocketbank/r2d2/root/delivery/DeliveryActivity;->startCompleted(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 272
    invoke-virtual {p0}, Lru/rocketbank/r2d2/registration/RegistrationActivity;->finish()V

    return-void

    .line 275
    :cond_1
    sget-object p1, Lru/rocketbank/r2d2/registration/RegistrationStep$Step;->DELIVERY_SHEDULED:Lru/rocketbank/r2d2/registration/RegistrationStep$Step;

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/registration/RegistrationStep;->setStep(Lru/rocketbank/r2d2/registration/RegistrationStep$Step;)V

    goto :goto_2

    .line 265
    :pswitch_a
    sget-object p1, Lru/rocketbank/r2d2/registration/RegistrationStep$Step;->DELIVERING:Lru/rocketbank/r2d2/registration/RegistrationStep$Step;

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/registration/RegistrationStep;->setStep(Lru/rocketbank/r2d2/registration/RegistrationStep$Step;)V

    goto :goto_2

    .line 262
    :pswitch_b
    sget-object p1, Lru/rocketbank/r2d2/registration/RegistrationStep$Step;->ISSUING:Lru/rocketbank/r2d2/registration/RegistrationStep$Step;

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/registration/RegistrationStep;->setStep(Lru/rocketbank/r2d2/registration/RegistrationStep$Step;)V

    goto :goto_2

    .line 258
    :pswitch_c
    sget-object p1, Lru/rocketbank/r2d2/registration/RegistrationStep$Step;->NEEDS_PASSPORT:Lru/rocketbank/r2d2/registration/RegistrationStep$Step;

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/registration/RegistrationStep;->setStep(Lru/rocketbank/r2d2/registration/RegistrationStep$Step;)V

    .line 259
    iget-object p1, p0, Lru/rocketbank/r2d2/registration/RegistrationActivity;->analyticsManager:Lru/rocketbank/core/manager/AnalyticsManager;

    invoke-virtual {p1}, Lru/rocketbank/core/manager/AnalyticsManager;->newUserPhoneConfirm()V

    .line 316
    :goto_2
    invoke-direct {p0, v0}, Lru/rocketbank/r2d2/registration/RegistrationActivity;->chooseFragment(Lru/rocketbank/r2d2/registration/RegistrationStep;)Lru/rocketbank/r2d2/registration/FormFragment;

    move-result-object p1

    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/registration/RegistrationActivity;->replaceFragment(Lru/rocketbank/r2d2/registration/FormFragment;)V

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x42893600 -> :sswitch_c
        -0x3724dd24 -> :sswitch_b
        0xce8 -> :sswitch_a
        0x1b195 -> :sswitch_9
        0x32b0ec -> :sswitch_8
        0xefcb1cd -> :sswitch_7
        0x31151bf4 -> :sswitch_6
        0x40219867 -> :sswitch_5
        0x41567622 -> :sswitch_4
        0x4889ba9b -> :sswitch_3
        0x6e5d8322 -> :sswitch_2
        0x70c498e4 -> :sswitch_1
        0x7d36f356 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private replaceFragment(Lru/rocketbank/r2d2/registration/FormFragment;)V
    .locals 3

    .line 320
    invoke-virtual {p0}, Lru/rocketbank/r2d2/registration/RegistrationActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 321
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f010012

    const v2, 0x7f010013

    .line 322
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(II)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f090105

    .line 323
    invoke-virtual {v0, v1, p1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 324
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 325
    invoke-virtual {p1}, Lru/rocketbank/r2d2/registration/FormFragment;->getTitle()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 327
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/registration/RegistrationActivity;->setTitle(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    const p1, 0x7f11046d

    .line 329
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/registration/RegistrationActivity;->setTitle(I)V

    return-void
.end method

.method private requestUserStatus()V
    .locals 3

    .line 173
    invoke-virtual {p0}, Lru/rocketbank/r2d2/registration/RegistrationActivity;->showProgressDialog()V

    .line 174
    invoke-virtual {p0}, Lru/rocketbank/r2d2/registration/RegistrationActivity;->getAuthorization()Lru/rocketbank/core/user/Authorization;

    move-result-object v0

    invoke-virtual {v0}, Lru/rocketbank/core/user/Authorization;->getPusherToken()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 175
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 179
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/registration/RegistrationActivity;->authorization:Lru/rocketbank/core/user/Authorization;

    invoke-virtual {v0}, Lru/rocketbank/core/user/Authorization;->getToken()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 181
    iget-object v0, p0, Lru/rocketbank/r2d2/registration/RegistrationActivity;->authorization:Lru/rocketbank/core/user/Authorization;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lru/rocketbank/core/user/Authorization;->setStatus(Ljava/lang/String;)V

    .line 182
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lru/rocketbank/r2d2/activities/StartupActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/registration/RegistrationActivity;->startActivity(Landroid/content/Intent;)V

    .line 184
    :cond_1
    iget-object v0, p0, Lru/rocketbank/r2d2/registration/RegistrationActivity;->fireCMManager:Lru/rocketbank/core/manager/FireCMManager;

    invoke-virtual {v0}, Lru/rocketbank/core/manager/FireCMManager;->sendTokenIfNeededExecute()V

    .line 186
    invoke-virtual {p0}, Lru/rocketbank/r2d2/registration/RegistrationActivity;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object v0

    invoke-interface {v0}, Lru/rocketbank/core/dagger/component/RocketComponent;->getLeadsApi()Lru/rocketbank/core/network/api/SexyLeadsApi;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/r2d2/registration/RegistrationActivity;->headerManager:Lru/rocketbank/core/manager/HeaderManager;

    invoke-virtual {v1}, Lru/rocketbank/core/manager/HeaderManager;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lru/rocketbank/core/network/api/SexyLeadsApi;->getStatus(Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    .line 187
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    const-wide/16 v1, 0xa

    .line 188
    invoke-virtual {v0, v1, v2}, Lrx/Observable;->retry(J)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lru/rocketbank/r2d2/registration/RegistrationActivity$4;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/registration/RegistrationActivity$4;-><init>(Lru/rocketbank/r2d2/registration/RegistrationActivity;)V

    .line 189
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/registration/RegistrationActivity;->statusSubscription:Lrx/Subscription;

    return-void
.end method

.method private setNextButton()V
    .locals 2

    .line 160
    iget-object v0, p0, Lru/rocketbank/r2d2/registration/RegistrationActivity;->btnNext:Landroid/widget/Button;

    new-instance v1, Lru/rocketbank/r2d2/registration/RegistrationActivity$3;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/registration/RegistrationActivity$3;-><init>(Lru/rocketbank/r2d2/registration/RegistrationActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    iget-object v0, p0, Lru/rocketbank/r2d2/registration/RegistrationActivity;->btnNext:Landroid/widget/Button;

    const v1, 0x7f110314

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    return-void
.end method

.method private setSupportButton()V
    .locals 2

    .line 145
    iget-object v0, p0, Lru/rocketbank/r2d2/registration/RegistrationActivity;->btnNext:Landroid/widget/Button;

    new-instance v1, Lru/rocketbank/r2d2/registration/RegistrationActivity$2;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/registration/RegistrationActivity$2;-><init>(Lru/rocketbank/r2d2/registration/RegistrationActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    iget-object v0, p0, Lru/rocketbank/r2d2/registration/RegistrationActivity;->btnNext:Landroid/widget/Button;

    const v1, 0x7f11044b

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    return-void
.end method

.method private showErrorToast(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 250
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static startActivity(Landroid/content/Context;)V
    .locals 2

    .line 76
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lru/rocketbank/r2d2/registration/RegistrationActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private startSupportChatActivity()V
    .locals 0

    .line 155
    invoke-static {p0}, Lru/rocketbank/r2d2/registration/SupportChatLeadActivity;->start(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 352
    invoke-super {p0, p1, p2, p3}, Lru/rocketbank/r2d2/activities/AbstractActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 81
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/activities/AbstractActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0c0054

    .line 82
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/registration/RegistrationActivity;->setContentView(I)V

    .line 85
    invoke-virtual {p0}, Lru/rocketbank/r2d2/registration/RegistrationActivity;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object v0

    invoke-interface {v0}, Lru/rocketbank/core/dagger/component/RocketComponent;->getFireCMManager()Lru/rocketbank/core/manager/FireCMManager;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/registration/RegistrationActivity;->fireCMManager:Lru/rocketbank/core/manager/FireCMManager;

    .line 86
    invoke-virtual {p0}, Lru/rocketbank/r2d2/registration/RegistrationActivity;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object v0

    invoke-interface {v0}, Lru/rocketbank/core/dagger/component/RocketComponent;->getDataManager()Lru/rocketbank/core/manager/DataManager;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/registration/RegistrationActivity;->dataManager:Lru/rocketbank/core/manager/DataManager;

    .line 87
    invoke-virtual {p0}, Lru/rocketbank/r2d2/registration/RegistrationActivity;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object v0

    invoke-interface {v0}, Lru/rocketbank/core/dagger/component/RocketComponent;->getHeaderManager()Lru/rocketbank/core/manager/HeaderManager;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/registration/RegistrationActivity;->headerManager:Lru/rocketbank/core/manager/HeaderManager;

    .line 88
    invoke-virtual {p0}, Lru/rocketbank/r2d2/registration/RegistrationActivity;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object v0

    invoke-interface {v0}, Lru/rocketbank/core/dagger/component/RocketComponent;->getRocketShortcutManager()Lru/rocketbank/core/manager/RocketShortcutManager;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/registration/RegistrationActivity;->rocketShortcutManager:Lru/rocketbank/core/manager/RocketShortcutManager;

    .line 90
    iget-object v0, p0, Lru/rocketbank/r2d2/registration/RegistrationActivity;->rocketShortcutManager:Lru/rocketbank/core/manager/RocketShortcutManager;

    invoke-virtual {v0}, Lru/rocketbank/core/manager/RocketShortcutManager;->createSupportShortcut()V

    const v0, 0x7f0903d8

    .line 92
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/registration/RegistrationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p0, Lru/rocketbank/r2d2/registration/RegistrationActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    const v0, 0x7f0903dc

    .line 93
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/registration/RegistrationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/registration/RegistrationActivity;->toolbarShadow:Landroid/view/View;

    const v0, 0x7f0902d8

    .line 94
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/registration/RegistrationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/registration/fragment/ProgressRegistrationView;

    iput-object v0, p0, Lru/rocketbank/r2d2/registration/RegistrationActivity;->progressRegistrationView:Lru/rocketbank/r2d2/registration/fragment/ProgressRegistrationView;

    const v0, 0x7f0902de

    .line 95
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/registration/RegistrationActivity;->findView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketButton;

    iput-object v0, p0, Lru/rocketbank/r2d2/registration/RegistrationActivity;->repeatButton:Lru/rocketbank/core/widgets/RocketButton;

    .line 96
    iget-object v0, p0, Lru/rocketbank/r2d2/registration/RegistrationActivity;->repeatButton:Lru/rocketbank/core/widgets/RocketButton;

    const v1, 0x7f060208

    invoke-static {p0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketButton;->setBackgroundColor(I)V

    .line 98
    iget-object v0, p0, Lru/rocketbank/r2d2/registration/RegistrationActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/registration/RegistrationActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 99
    iget-object v0, p0, Lru/rocketbank/r2d2/registration/RegistrationActivity;->toolbarShadow:Landroid/view/View;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 101
    sget-object v0, Lru/rocketbank/r2d2/utils/GaToken;->INSTANCE:Lru/rocketbank/r2d2/utils/GaToken;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/registration/RegistrationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lru/rocketbank/r2d2/registration/RegistrationActivity;->getRocketApi()Lru/rocketbank/core/network/api/RocketAPI;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lru/rocketbank/r2d2/utils/GaToken;->sendGaToken(Landroid/content/Context;Lru/rocketbank/core/network/api/RocketAPI;)V

    .line 103
    invoke-virtual {p0}, Lru/rocketbank/r2d2/registration/RegistrationActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 104
    invoke-virtual {p0}, Lru/rocketbank/r2d2/registration/RegistrationActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_1
    if-nez p1, :cond_2

    .line 108
    invoke-direct {p0}, Lru/rocketbank/r2d2/registration/RegistrationActivity;->requestUserStatus()V

    goto :goto_2

    .line 110
    :cond_2
    invoke-virtual {p0}, Lru/rocketbank/r2d2/registration/RegistrationActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f090105

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 112
    check-cast v0, Lru/rocketbank/r2d2/registration/FormFragment;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/registration/FormFragment;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 114
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/registration/RegistrationActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    const v0, 0x7f11046d

    .line 116
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/registration/RegistrationActivity;->setTitle(I)V

    .line 119
    :cond_4
    :goto_1
    iget-object v0, p0, Lru/rocketbank/r2d2/registration/RegistrationActivity;->progressRegistrationView:Lru/rocketbank/r2d2/registration/fragment/ProgressRegistrationView;

    const-string v1, "KEY_STEP"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/registration/fragment/ProgressRegistrationView;->setStep(I)V

    :goto_2
    const p1, 0x7f09008a

    .line 122
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/registration/RegistrationActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lru/rocketbank/r2d2/registration/RegistrationActivity;->btnNext:Landroid/widget/Button;

    .line 124
    invoke-direct {p0}, Lru/rocketbank/r2d2/registration/RegistrationActivity;->setSupportButton()V

    .line 126
    invoke-virtual {p0}, Lru/rocketbank/r2d2/registration/RegistrationActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_5

    const-string v0, "KEY_ACTION"

    .line 127
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "KEY_ACTION"

    const-string v1, ""

    .line 128
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ru.rocketbank.r2d2.action.SUPPORT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "KEY_ACTION"

    .line 129
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 130
    invoke-direct {p0}, Lru/rocketbank/r2d2/registration/RegistrationActivity;->startSupportChatActivity()V

    .line 134
    :cond_5
    iget-object p1, p0, Lru/rocketbank/r2d2/registration/RegistrationActivity;->repeatButton:Lru/rocketbank/core/widgets/RocketButton;

    new-instance v0, Lru/rocketbank/r2d2/registration/RegistrationActivity$1;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/registration/RegistrationActivity$1;-><init>(Lru/rocketbank/r2d2/registration/RegistrationActivity;)V

    invoke-virtual {p1, v0}, Lru/rocketbank/core/widgets/RocketButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onEventMainThread(Lru/rocketbank/core/events/NextButtonEvent;)V
    .locals 3

    .line 436
    invoke-virtual {p1}, Lru/rocketbank/core/events/NextButtonEvent;->getFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    invoke-virtual {p0}, Lru/rocketbank/r2d2/registration/RegistrationActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f090105

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    if-eq v0, v1, :cond_0

    return-void

    .line 440
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/registration/RegistrationActivity;->btnNext:Landroid/widget/Button;

    invoke-virtual {p1}, Lru/rocketbank/core/events/NextButtonEvent;->isEnable()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 441
    iget-object v0, p0, Lru/rocketbank/r2d2/registration/RegistrationActivity;->btnNext:Landroid/widget/Button;

    invoke-virtual {p1}, Lru/rocketbank/core/events/NextButtonEvent;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 442
    invoke-direct {p0}, Lru/rocketbank/r2d2/registration/RegistrationActivity;->setNextButton()V

    return-void
.end method

.method public onEventMainThread(Lru/rocketbank/r2d2/registration/RegistrationStep;)V
    .locals 0

    .line 339
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/registration/RegistrationActivity;->chooseFragment(Lru/rocketbank/r2d2/registration/RegistrationStep;)Lru/rocketbank/r2d2/registration/FormFragment;

    move-result-object p1

    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/registration/RegistrationActivity;->replaceFragment(Lru/rocketbank/r2d2/registration/FormFragment;)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 447
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/activities/AbstractActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "KEY_STEP"

    .line 448
    iget-object v1, p0, Lru/rocketbank/r2d2/registration/RegistrationActivity;->progressRegistrationView:Lru/rocketbank/r2d2/registration/fragment/ProgressRegistrationView;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/registration/fragment/ProgressRegistrationView;->getStep()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method
