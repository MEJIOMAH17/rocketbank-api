.class public final Lru/rocketbank/r2d2/activities/ChangeCodeActivity;
.super Lru/rocketbank/r2d2/activities/AbstractActivity;
.source "ChangeCodeActivity.java"


# static fields
.field public static final KEY_CHANGE:Ljava/lang/String; = "KEY_CHANGE"

.field public static final KEY_CHECK_CARD_DATA:Ljava/lang/String; = "KEY_CHECK_CARD_DATA"

.field public static final KEY_IS_ACTIVATION:Ljava/lang/String; = "key_is_activation"

.field public static final KEY_IS_CODE:Ljava/lang/String; = "key_is_code"

.field public static final KEY_NEED_CHECK:Ljava/lang/String; = "KEY_NEED_CHECK"

.field public static final KEY_PIN_TEXT:Ljava/lang/String; = "KEY_PIN_TEXT"

.field public static final KEY_PLASTIC_CHECK_ID:Ljava/lang/String; = "KEY_PLASTIC_CHECK_ID"

.field public static final KEY_RESET_TOKEN:Ljava/lang/String; = "KEY_RESET_TOKEN"

.field public static final KEY_TOKEN_PLASTIC:Ljava/lang/String; = "key_token_plastic"


# instance fields
.field private resetSubscription:Lrx/Subscription;

.field userApi:Lru/rocketbank/core/network/api/UserApi;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lru/rocketbank/r2d2/activities/AbstractActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lru/rocketbank/r2d2/activities/ChangeCodeActivity;Lru/rocketbank/core/model/dto/CheckCardData;Ljava/lang/String;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Lru/rocketbank/r2d2/activities/ChangeCodeActivity;->changeFragment(Lru/rocketbank/core/model/dto/CheckCardData;Ljava/lang/String;)V

    return-void
.end method

.method private changeFragment(Lru/rocketbank/core/model/dto/CheckCardData;Ljava/lang/String;)V
    .locals 10

    .line 171
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/ChangeCodeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "key_is_activation"

    const/4 v2, 0x0

    .line 172
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    const-string v3, "key_is_code"

    .line 173
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    const-string v4, "KEY_NEED_CHECK"

    .line 174
    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    const-string v5, "KEY_CHANGE"

    .line 175
    invoke-virtual {v0, v5, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    const-string v5, "KEY_PIN_TEXT"

    .line 176
    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 178
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/ChangeCodeActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v5

    const v6, 0x1020002

    .line 179
    invoke-virtual {v5, v6}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v7

    if-nez v7, :cond_1

    if-eqz v4, :cond_0

    .line 182
    new-instance v7, Lru/rocketbank/r2d2/fragments/CheckCardFragment;

    invoke-direct {v7}, Lru/rocketbank/r2d2/fragments/CheckCardFragment;-><init>()V

    goto :goto_0

    .line 184
    :cond_0
    new-instance v7, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;

    invoke-direct {v7}, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;-><init>()V

    .line 187
    :goto_0
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    const-string v9, "KEY_PIN_TEXT"

    .line 188
    invoke-virtual {v8, v9, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "KEY_CHECK_CARD_DATA"

    .line 189
    invoke-virtual {v8, v0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p1, "key_is_activation"

    .line 190
    invoke-virtual {v8, p1, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "key_is_code"

    .line 191
    invoke-virtual {v8, p1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "key_token_plastic"

    .line 192
    invoke-virtual {v8, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "KEY_NEED_CHECK"

    .line 193
    invoke-virtual {v8, p1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "KEY_CHANGE"

    .line 194
    invoke-virtual {v8, p1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 195
    invoke-virtual {v7, v8}, Lru/rocketbank/r2d2/fragments/RocketFragment;->setArguments(Landroid/os/Bundle;)V

    .line 198
    invoke-virtual {v5}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    const/4 p2, 0x0

    .line 199
    invoke-virtual {p1, p2}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 200
    invoke-virtual {p1, v6, v7}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 201
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    :cond_1
    return-void
.end method

.method public static startCode(Landroid/content/Context;Ljava/lang/String;ZZ)V
    .locals 1

    const/4 v0, 0x0

    .line 52
    invoke-static {p0, p1, p2, p3, v0}, Lru/rocketbank/r2d2/activities/ChangeCodeActivity;->startCode(Landroid/content/Context;Ljava/lang/String;ZZLru/rocketbank/core/model/dto/CheckCardData;)V

    return-void
.end method

.method public static startCode(Landroid/content/Context;Ljava/lang/String;ZZLru/rocketbank/core/model/dto/CheckCardData;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    .line 56
    invoke-static/range {v0 .. v5}, Lru/rocketbank/r2d2/activities/ChangeCodeActivity;->startCode(Landroid/content/Context;Ljava/lang/String;ZZLru/rocketbank/core/model/dto/CheckCardData;Ljava/lang/String;)V

    return-void
.end method

.method public static startCode(Landroid/content/Context;Ljava/lang/String;ZZLru/rocketbank/core/model/dto/CheckCardData;Ljava/lang/String;)V
    .locals 3

    .line 60
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lru/rocketbank/r2d2/activities/ChangeCodeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "key_is_activation"

    const/4 v2, 0x0

    .line 62
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "key_is_code"

    const/4 v2, 0x1

    .line 63
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "key_token_plastic"

    .line 64
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "KEY_NEED_CHECK"

    .line 65
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p1

    const-string p2, "KEY_CHANGE"

    .line 66
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p1

    const-string p2, "KEY_CHECK_CARD_DATA"

    .line 67
    invoke-virtual {p1, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p1

    const-string p2, "KEY_RESET_TOKEN"

    .line 68
    invoke-virtual {p1, p2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 60
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static startPin(Landroid/content/Context;ZLru/rocketbank/core/model/dto/ChangePin;Z)V
    .locals 3

    if-nez p2, :cond_0

    return-void

    .line 77
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    invoke-virtual {p2}, Lru/rocketbank/core/model/dto/ChangePin;->getPinText()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 79
    invoke-virtual {p2}, Lru/rocketbank/core/model/dto/ChangePin;->getPinText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n\n"

    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    :cond_1
    invoke-virtual {p2}, Lru/rocketbank/core/model/dto/ChangePin;->getPinText2()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 84
    invoke-virtual {p2}, Lru/rocketbank/core/model/dto/ChangePin;->getPinText2()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    :cond_2
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lru/rocketbank/r2d2/activities/ChangeCodeActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "key_is_activation"

    .line 89
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p1

    const-string v1, "key_is_code"

    const/4 v2, 0x0

    .line 90
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p1

    const-string v1, "KEY_CHECK_CARD_DATA"

    .line 91
    invoke-virtual {p2}, Lru/rocketbank/core/model/dto/ChangePin;->getCheckCard()Lru/rocketbank/core/model/dto/CheckCardData;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p1

    const-string v1, "KEY_PIN_TEXT"

    .line 92
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "KEY_CHANGE"

    .line 93
    invoke-virtual {p1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p1

    const-string p3, "KEY_NEED_CHECK"

    const/4 v0, 0x1

    .line 94
    invoke-virtual {p1, p3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p1

    const-string p3, "key_token_plastic"

    .line 95
    invoke-virtual {p2}, Lru/rocketbank/core/model/dto/ChangePin;->getCheckCard()Lru/rocketbank/core/model/dto/CheckCardData;

    move-result-object p2

    invoke-virtual {p2}, Lru/rocketbank/core/model/dto/CheckCardData;->getToken()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 87
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public final onBackPressed()V
    .locals 0

    .line 262
    invoke-static {p0}, Lru/rocketbank/r2d2/Utils;->closeKeyboardIfExists(Landroid/app/Activity;)V

    .line 263
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/ChangeCodeActivity;->finish()V

    return-void
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 110
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/activities/AbstractActivity;->onCreate(Landroid/os/Bundle;)V

    .line 112
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/ChangeCodeActivity;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object p1

    invoke-interface {p1}, Lru/rocketbank/core/dagger/component/RocketComponent;->getUserApi()Lru/rocketbank/core/network/api/UserApi;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/activities/ChangeCodeActivity;->userApi:Lru/rocketbank/core/network/api/UserApi;

    .line 114
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/ChangeCodeActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 116
    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    return-void
.end method

.method public final onEventMainThread(Lru/rocketbank/core/events/CheckCardEvent;)V
    .locals 4

    .line 212
    invoke-virtual {p1}, Lru/rocketbank/core/events/CheckCardEvent;->getException()Ljava/lang/Throwable;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 214
    instance-of p1, v0, Lru/rocketbank/core/network/exception/RocketResponseException;

    const v2, 0x7f11018d

    if-eqz p1, :cond_2

    .line 215
    check-cast v0, Lru/rocketbank/core/network/exception/RocketResponseException;

    .line 216
    invoke-virtual {v0}, Lru/rocketbank/core/network/exception/RocketResponseException;->isNetworkError()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 217
    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 220
    :cond_0
    invoke-virtual {v0}, Lru/rocketbank/core/network/exception/RocketResponseException;->getGenericRequestResponseData()Lru/rocketbank/core/model/dto/GenericRequestResponseData;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 221
    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/GenericRequestResponseData;->getResponse()Lru/rocketbank/core/model/dto/ResponseData;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/GenericRequestResponseData;->getResponse()Lru/rocketbank/core/model/dto/ResponseData;

    move-result-object v0

    invoke-virtual {v0}, Lru/rocketbank/core/model/dto/ResponseData;->getShowIt()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 222
    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/GenericRequestResponseData;->getResponse()Lru/rocketbank/core/model/dto/ResponseData;

    move-result-object p1

    .line 223
    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/ResponseData;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_1
    return-void

    .line 228
    :cond_2
    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 232
    :cond_3
    invoke-virtual {p1}, Lru/rocketbank/core/events/CheckCardEvent;->getPlasticsCheckResponse()Lru/rocketbank/core/network/model/PlasticsCheckResponse;

    move-result-object p1

    .line 234
    iget-object v0, p1, Lru/rocketbank/core/network/model/PlasticsCheckResponse;->response:Lru/rocketbank/core/model/dto/ResponseData;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lru/rocketbank/core/network/model/PlasticsCheckResponse;->response:Lru/rocketbank/core/model/dto/ResponseData;

    invoke-virtual {v0}, Lru/rocketbank/core/model/dto/ResponseData;->getStatus()I

    move-result v0

    const/16 v2, 0xc8

    if-eq v0, v2, :cond_4

    .line 235
    iget-object p1, p1, Lru/rocketbank/core/network/model/PlasticsCheckResponse;->response:Lru/rocketbank/core/model/dto/ResponseData;

    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/ResponseData;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 239
    :cond_4
    iget-object v0, p1, Lru/rocketbank/core/network/model/PlasticsCheckResponse;->plastic:Lru/rocketbank/core/model/PlasticModel;

    if-eqz v0, :cond_6

    iget-object v0, p1, Lru/rocketbank/core/network/model/PlasticsCheckResponse;->plastic:Lru/rocketbank/core/model/PlasticModel;

    invoke-virtual {v0}, Lru/rocketbank/core/model/PlasticModel;->getValidation()Lru/rocketbank/core/model/ValidationModel;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p1, Lru/rocketbank/core/network/model/PlasticsCheckResponse;->plastic:Lru/rocketbank/core/model/PlasticModel;

    invoke-virtual {v0}, Lru/rocketbank/core/model/PlasticModel;->getValidation()Lru/rocketbank/core/model/ValidationModel;

    move-result-object v0

    invoke-virtual {v0}, Lru/rocketbank/core/model/ValidationModel;->getId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    goto :goto_0

    .line 246
    :cond_5
    iget-object p1, p1, Lru/rocketbank/core/network/model/PlasticsCheckResponse;->plastic:Lru/rocketbank/core/model/PlasticModel;

    invoke-virtual {p1}, Lru/rocketbank/core/model/PlasticModel;->getValidation()Lru/rocketbank/core/model/ValidationModel;

    move-result-object p1

    invoke-virtual {p1}, Lru/rocketbank/core/model/ValidationModel;->getId()Ljava/lang/String;

    move-result-object p1

    .line 247
    new-instance v0, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;

    invoke-direct {v0}, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;-><init>()V

    .line 249
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/ChangeCodeActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const v2, 0x1020002

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "KEY_PLASTIC_CHECK_ID"

    .line 250
    invoke-virtual {v1, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;->setArguments(Landroid/os/Bundle;)V

    .line 252
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/ChangeCodeActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    .line 253
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 254
    invoke-virtual {p1, v2, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    const/4 v0, 0x0

    .line 255
    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    const/16 v0, 0x1001

    .line 256
    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentTransaction;->setTransition(I)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 257
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    return-void

    :cond_6
    :goto_0
    const p1, 0x7f11012b

    .line 240
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method protected final onPause()V
    .locals 0

    .line 166
    invoke-static {p0}, Lcom/mikepenz/materialdrawer/util/KeyboardUtil;->hideKeyboard(Landroid/app/Activity;)V

    .line 167
    invoke-super {p0}, Lru/rocketbank/r2d2/activities/AbstractActivity;->onPause()V

    return-void
.end method

.method public final onResume()V
    .locals 3

    .line 121
    invoke-super {p0}, Lru/rocketbank/r2d2/activities/AbstractActivity;->onResume()V

    .line 123
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/ChangeCodeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "KEY_RESET_TOKEN"

    .line 124
    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "key_token_plastic"

    .line 125
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "KEY_CHECK_CARD_DATA"

    .line 126
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/model/dto/CheckCardData;

    .line 127
    invoke-direct {p0, v0, v1}, Lru/rocketbank/r2d2/activities/ChangeCodeActivity;->changeFragment(Lru/rocketbank/core/model/dto/CheckCardData;Ljava/lang/String;)V

    return-void

    .line 129
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/ChangeCodeActivity;->userApi:Lru/rocketbank/core/network/api/UserApi;

    invoke-interface {v0}, Lru/rocketbank/core/network/api/UserApi;->resetShortCode()Lrx/Observable;

    move-result-object v0

    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lru/rocketbank/r2d2/activities/ChangeCodeActivity$1;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/activities/ChangeCodeActivity$1;-><init>(Lru/rocketbank/r2d2/activities/ChangeCodeActivity;)V

    .line 130
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/activities/ChangeCodeActivity;->resetSubscription:Lrx/Subscription;

    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 101
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/ChangeCodeActivity;->resetSubscription:Lrx/Subscription;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/activities/ChangeCodeActivity;->resetSubscription:Lrx/Subscription;

    invoke-interface {v0}, Lrx/Subscription;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/ChangeCodeActivity;->resetSubscription:Lrx/Subscription;

    invoke-interface {v0}, Lrx/Subscription;->unsubscribe()V

    .line 105
    :cond_0
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/activities/AbstractActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
