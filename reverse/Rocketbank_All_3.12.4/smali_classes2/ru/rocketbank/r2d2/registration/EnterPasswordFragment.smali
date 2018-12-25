.class public Lru/rocketbank/r2d2/registration/EnterPasswordFragment;
.super Lru/rocketbank/r2d2/fragments/RocketFragment;
.source "EnterPasswordFragment.java"


# static fields
.field private static final KEY_PIN_TEXT:Ljava/lang/String; = "KEY_PIN_TEXT"

.field public static final KEY_PLASTIC_CHECK_ID:Ljava/lang/String; = "KEY_PLASTIC_CHECK_ID"

.field public static final KEY_TOKEN_PLASTIC:Ljava/lang/String; = "key_token_plastic"


# instance fields
.field private activateSubscription:Lrx/Subscription;

.field authorization:Lru/rocketbank/core/user/Authorization;

.field private code:Ljava/lang/String;

.field dataManager:Lru/rocketbank/core/manager/DataManager;

.field private isFirst:Z

.field private pinText:Ljava/lang/String;

.field private pinView:Lme/philio/pinentry/PinEntryView;

.field private plasticToken:Ljava/lang/String;

.field private plastic_check_id:Ljava/lang/String;

.field plasticsApi:Lru/rocketbank/core/network/api/PlasticsApi;

.field private textWatcher:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/RocketFragment;-><init>()V

    const/4 v0, 0x1

    .line 45
    iput-boolean v0, p0, Lru/rocketbank/r2d2/registration/EnterPasswordFragment;->isFirst:Z

    return-void
.end method

.method static synthetic access$000(Lru/rocketbank/r2d2/registration/EnterPasswordFragment;)Z
    .locals 0

    .line 39
    iget-boolean p0, p0, Lru/rocketbank/r2d2/registration/EnterPasswordFragment;->isFirst:Z

    return p0
.end method

.method static synthetic access$002(Lru/rocketbank/r2d2/registration/EnterPasswordFragment;Z)Z
    .locals 0

    .line 39
    iput-boolean p1, p0, Lru/rocketbank/r2d2/registration/EnterPasswordFragment;->isFirst:Z

    return p1
.end method

.method static synthetic access$100(Lru/rocketbank/r2d2/registration/EnterPasswordFragment;)Ljava/lang/String;
    .locals 0

    .line 39
    iget-object p0, p0, Lru/rocketbank/r2d2/registration/EnterPasswordFragment;->code:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$102(Lru/rocketbank/r2d2/registration/EnterPasswordFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 39
    iput-object p1, p0, Lru/rocketbank/r2d2/registration/EnterPasswordFragment;->code:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lru/rocketbank/r2d2/registration/EnterPasswordFragment;Landroid/view/View;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/registration/EnterPasswordFragment;->init(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$300(Lru/rocketbank/r2d2/registration/EnterPasswordFragment;Landroid/view/View;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/registration/EnterPasswordFragment;->reset(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$400(Lru/rocketbank/r2d2/registration/EnterPasswordFragment;)V
    .locals 0

    .line 39
    invoke-virtual {p0}, Lru/rocketbank/r2d2/registration/EnterPasswordFragment;->showSpinner()V

    return-void
.end method

.method static synthetic access$502(Lru/rocketbank/r2d2/registration/EnterPasswordFragment;Lrx/Subscription;)Lrx/Subscription;
    .locals 0

    .line 39
    iput-object p1, p0, Lru/rocketbank/r2d2/registration/EnterPasswordFragment;->activateSubscription:Lrx/Subscription;

    return-object p1
.end method

.method static synthetic access$600(Lru/rocketbank/r2d2/registration/EnterPasswordFragment;)V
    .locals 0

    .line 39
    invoke-virtual {p0}, Lru/rocketbank/r2d2/registration/EnterPasswordFragment;->hideSpinner()V

    return-void
.end method

.method static synthetic access$700(Lru/rocketbank/r2d2/registration/EnterPasswordFragment;)V
    .locals 0

    .line 39
    invoke-virtual {p0}, Lru/rocketbank/r2d2/registration/EnterPasswordFragment;->hideSpinner()V

    return-void
.end method

.method static synthetic access$800(Lru/rocketbank/r2d2/registration/EnterPasswordFragment;)Ljava/lang/String;
    .locals 0

    .line 39
    iget-object p0, p0, Lru/rocketbank/r2d2/registration/EnterPasswordFragment;->plastic_check_id:Ljava/lang/String;

    return-object p0
.end method

.method private init(Landroid/view/View;)V
    .locals 5

    const v0, 0x7f090149

    .line 110
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lme/philio/pinentry/PinEntryView;

    iput-object v0, p0, Lru/rocketbank/r2d2/registration/EnterPasswordFragment;->pinView:Lme/philio/pinentry/PinEntryView;

    const v0, 0x7f09038f

    .line 111
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f09039a

    .line 112
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f09039e

    .line 113
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 115
    iget-object v3, p0, Lru/rocketbank/r2d2/registration/EnterPasswordFragment;->pinView:Lme/philio/pinentry/PinEntryView;

    invoke-virtual {v3}, Lme/philio/pinentry/PinEntryView;->getText()Landroid/text/Editable;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 116
    iget-object v3, p0, Lru/rocketbank/r2d2/registration/EnterPasswordFragment;->pinView:Lme/philio/pinentry/PinEntryView;

    invoke-virtual {v3}, Lme/philio/pinentry/PinEntryView;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->clearSpans()V

    .line 119
    :cond_0
    iget-object v3, p0, Lru/rocketbank/r2d2/registration/EnterPasswordFragment;->pinView:Lme/philio/pinentry/PinEntryView;

    invoke-virtual {v3}, Lme/philio/pinentry/PinEntryView;->clearText()V

    .line 121
    iget-object v3, p0, Lru/rocketbank/r2d2/registration/EnterPasswordFragment;->textWatcher:Landroid/text/TextWatcher;

    if-eqz v3, :cond_1

    .line 122
    iget-object v3, p0, Lru/rocketbank/r2d2/registration/EnterPasswordFragment;->pinView:Lme/philio/pinentry/PinEntryView;

    iget-object v4, p0, Lru/rocketbank/r2d2/registration/EnterPasswordFragment;->textWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v3, v4}, Lme/philio/pinentry/PinEntryView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 125
    :cond_1
    new-instance v3, Lru/rocketbank/r2d2/registration/EnterPasswordFragment$1;

    invoke-direct {v3, p0, p1, v2}, Lru/rocketbank/r2d2/registration/EnterPasswordFragment$1;-><init>(Lru/rocketbank/r2d2/registration/EnterPasswordFragment;Landroid/view/View;Landroid/widget/TextView;)V

    iput-object v3, p0, Lru/rocketbank/r2d2/registration/EnterPasswordFragment;->textWatcher:Landroid/text/TextWatcher;

    .line 203
    iget-object p1, p0, Lru/rocketbank/r2d2/registration/EnterPasswordFragment;->pinView:Lme/philio/pinentry/PinEntryView;

    iget-object v2, p0, Lru/rocketbank/r2d2/registration/EnterPasswordFragment;->textWatcher:Landroid/text/TextWatcher;

    invoke-virtual {p1, v2}, Lme/philio/pinentry/PinEntryView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 204
    iget-object p1, p0, Lru/rocketbank/r2d2/registration/EnterPasswordFragment;->pinView:Lme/philio/pinentry/PinEntryView;

    invoke-virtual {p1}, Lme/philio/pinentry/PinEntryView;->requestFocus()Z

    .line 205
    iget-boolean p1, p0, Lru/rocketbank/r2d2/registration/EnterPasswordFragment;->isFirst:Z

    if-eqz p1, :cond_2

    const-string p1, "\u0412\u0432\u0435\u0434\u0438\u0442\u0435 \u043d\u043e\u0432\u044b\u0439 \u043f\u0430\u0440\u043e\u043b\u044c \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u044f"

    goto :goto_0

    :cond_2
    const-string p1, "\u041f\u043e\u0432\u0442\u043e\u0440\u0438\u0442\u0435 \u043f\u0430\u0440\u043e\u043b\u044c \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u044f"

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    iget-object p1, p0, Lru/rocketbank/r2d2/registration/EnterPasswordFragment;->pinText:Ljava/lang/String;

    if-eqz p1, :cond_3

    .line 207
    iget-object p1, p0, Lru/rocketbank/r2d2/registration/EnterPasswordFragment;->pinText:Ljava/lang/String;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method

.method public static newInstance()Lru/rocketbank/r2d2/registration/EnterPasswordFragment;
    .locals 2

    .line 59
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 62
    new-instance v1, Lru/rocketbank/r2d2/registration/EnterPasswordFragment;

    invoke-direct {v1}, Lru/rocketbank/r2d2/registration/EnterPasswordFragment;-><init>()V

    .line 63
    invoke-virtual {v1, v0}, Lru/rocketbank/r2d2/registration/EnterPasswordFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v1
.end method

.method private reset(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    .line 212
    iput-object v0, p0, Lru/rocketbank/r2d2/registration/EnterPasswordFragment;->code:Ljava/lang/String;

    const/4 v0, 0x1

    .line 213
    iput-boolean v0, p0, Lru/rocketbank/r2d2/registration/EnterPasswordFragment;->isFirst:Z

    .line 214
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/registration/EnterPasswordFragment;->init(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 69
    invoke-virtual {p0}, Lru/rocketbank/r2d2/registration/EnterPasswordFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p3

    const-string v0, "KEY_PIN_TEXT"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lru/rocketbank/r2d2/registration/EnterPasswordFragment;->pinText:Ljava/lang/String;

    .line 70
    invoke-virtual {p0}, Lru/rocketbank/r2d2/registration/EnterPasswordFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p3

    const-string v0, "key_token_plastic"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lru/rocketbank/r2d2/registration/EnterPasswordFragment;->plasticToken:Ljava/lang/String;

    .line 71
    invoke-virtual {p0}, Lru/rocketbank/r2d2/registration/EnterPasswordFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p3

    const-string v0, "KEY_PLASTIC_CHECK_ID"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lru/rocketbank/r2d2/registration/EnterPasswordFragment;->plastic_check_id:Ljava/lang/String;

    const p3, 0x7f0c00ca

    const/4 v0, 0x0

    .line 72
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 102
    iget-object v0, p0, Lru/rocketbank/r2d2/registration/EnterPasswordFragment;->activateSubscription:Lrx/Subscription;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/registration/EnterPasswordFragment;->activateSubscription:Lrx/Subscription;

    invoke-interface {v0}, Lrx/Subscription;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    iget-object v0, p0, Lru/rocketbank/r2d2/registration/EnterPasswordFragment;->activateSubscription:Lrx/Subscription;

    invoke-interface {v0}, Lrx/Subscription;->unsubscribe()V

    .line 106
    :cond_0
    invoke-super {p0}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onDestroyView()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 89
    iget-object v0, p0, Lru/rocketbank/r2d2/registration/EnterPasswordFragment;->pinView:Lme/philio/pinentry/PinEntryView;

    if-eqz v0, :cond_1

    .line 90
    iget-object v0, p0, Lru/rocketbank/r2d2/registration/EnterPasswordFragment;->pinView:Lme/philio/pinentry/PinEntryView;

    invoke-virtual {v0}, Lme/philio/pinentry/PinEntryView;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lru/rocketbank/r2d2/registration/EnterPasswordFragment;->pinView:Lme/philio/pinentry/PinEntryView;

    invoke-virtual {v0}, Lme/philio/pinentry/PinEntryView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clearSpans()V

    .line 94
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/registration/EnterPasswordFragment;->pinView:Lme/philio/pinentry/PinEntryView;

    invoke-virtual {v0}, Lme/philio/pinentry/PinEntryView;->clearText()V

    .line 97
    :cond_1
    invoke-super {p0}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onPause()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 77
    invoke-super {p0, p1, p2}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 79
    invoke-virtual {p0}, Lru/rocketbank/r2d2/registration/EnterPasswordFragment;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object p2

    invoke-interface {p2}, Lru/rocketbank/core/dagger/component/RocketComponent;->getPlasticApi()Lru/rocketbank/core/network/api/PlasticsApi;

    move-result-object p2

    iput-object p2, p0, Lru/rocketbank/r2d2/registration/EnterPasswordFragment;->plasticsApi:Lru/rocketbank/core/network/api/PlasticsApi;

    .line 80
    invoke-virtual {p0}, Lru/rocketbank/r2d2/registration/EnterPasswordFragment;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object p2

    invoke-interface {p2}, Lru/rocketbank/core/dagger/component/RocketComponent;->getAuthorization()Lru/rocketbank/core/user/Authorization;

    move-result-object p2

    iput-object p2, p0, Lru/rocketbank/r2d2/registration/EnterPasswordFragment;->authorization:Lru/rocketbank/core/user/Authorization;

    .line 81
    invoke-virtual {p0}, Lru/rocketbank/r2d2/registration/EnterPasswordFragment;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object p2

    invoke-interface {p2}, Lru/rocketbank/core/dagger/component/RocketComponent;->getDataManager()Lru/rocketbank/core/manager/DataManager;

    move-result-object p2

    iput-object p2, p0, Lru/rocketbank/r2d2/registration/EnterPasswordFragment;->dataManager:Lru/rocketbank/core/manager/DataManager;

    .line 83
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/registration/EnterPasswordFragment;->init(Landroid/view/View;)V

    return-void
.end method
