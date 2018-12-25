.class public Lru/rocketbank/r2d2/fragments/EnterPinFragment;
.super Lru/rocketbank/r2d2/fragments/RocketFragment;
.source "EnterPinFragment.java"


# static fields
.field private static final KEY_PIN_TEXT:Ljava/lang/String; = "KEY_PIN_TEXT"

.field public static final KEY_PLASTIC_CHECK_ID:Ljava/lang/String; = "KEY_PLASTIC_CHECK_ID"

.field public static final KEY_TOKEN_PLASTIC:Ljava/lang/String; = "key_token_plastic"


# instance fields
.field private activateSubscription:Lrx/Subscription;

.field authorization:Lru/rocketbank/core/user/Authorization;

.field private code:Ljava/lang/String;

.field private isFirst:Z

.field private pinText:Ljava/lang/String;

.field private plasticToken:Ljava/lang/String;

.field private plastic_check_id:Ljava/lang/String;

.field plasticsApi:Lru/rocketbank/core/network/api/PlasticsApi;

.field private textWatcher:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/RocketFragment;-><init>()V

    const/4 v0, 0x1

    .line 40
    iput-boolean v0, p0, Lru/rocketbank/r2d2/fragments/EnterPinFragment;->isFirst:Z

    return-void
.end method

.method static synthetic access$000(Lru/rocketbank/r2d2/fragments/EnterPinFragment;)Z
    .locals 0

    .line 34
    iget-boolean p0, p0, Lru/rocketbank/r2d2/fragments/EnterPinFragment;->isFirst:Z

    return p0
.end method

.method static synthetic access$002(Lru/rocketbank/r2d2/fragments/EnterPinFragment;Z)Z
    .locals 0

    .line 34
    iput-boolean p1, p0, Lru/rocketbank/r2d2/fragments/EnterPinFragment;->isFirst:Z

    return p1
.end method

.method static synthetic access$100(Lru/rocketbank/r2d2/fragments/EnterPinFragment;)Ljava/lang/String;
    .locals 0

    .line 34
    iget-object p0, p0, Lru/rocketbank/r2d2/fragments/EnterPinFragment;->code:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$102(Lru/rocketbank/r2d2/fragments/EnterPinFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 34
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/EnterPinFragment;->code:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lru/rocketbank/r2d2/fragments/EnterPinFragment;Landroid/view/View;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/fragments/EnterPinFragment;->init(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$300(Lru/rocketbank/r2d2/fragments/EnterPinFragment;Landroid/view/View;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/fragments/EnterPinFragment;->reset(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$402(Lru/rocketbank/r2d2/fragments/EnterPinFragment;Lrx/Subscription;)Lrx/Subscription;
    .locals 0

    .line 34
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/EnterPinFragment;->activateSubscription:Lrx/Subscription;

    return-object p1
.end method

.method static synthetic access$500(Lru/rocketbank/r2d2/fragments/EnterPinFragment;)Ljava/lang/String;
    .locals 0

    .line 34
    iget-object p0, p0, Lru/rocketbank/r2d2/fragments/EnterPinFragment;->plasticToken:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lru/rocketbank/r2d2/fragments/EnterPinFragment;)Ljava/lang/String;
    .locals 0

    .line 34
    iget-object p0, p0, Lru/rocketbank/r2d2/fragments/EnterPinFragment;->plastic_check_id:Ljava/lang/String;

    return-object p0
.end method

.method private init(Landroid/view/View;)V
    .locals 6

    const v0, 0x7f090149

    .line 90
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lme/philio/pinentry/PinEntryView;

    const v1, 0x7f09038f

    .line 91
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f09039a

    .line 92
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f09039e

    .line 93
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 94
    invoke-virtual {v0}, Lme/philio/pinentry/PinEntryView;->clearText()V

    const v4, 0x7f0903da

    .line 96
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 98
    iget-object v4, p0, Lru/rocketbank/r2d2/fragments/EnterPinFragment;->textWatcher:Landroid/text/TextWatcher;

    if-eqz v4, :cond_0

    .line 99
    iget-object v4, p0, Lru/rocketbank/r2d2/fragments/EnterPinFragment;->textWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v4}, Lme/philio/pinentry/PinEntryView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 102
    :cond_0
    new-instance v4, Lru/rocketbank/r2d2/fragments/EnterPinFragment$1;

    invoke-direct {v4, p0, p1, v3}, Lru/rocketbank/r2d2/fragments/EnterPinFragment$1;-><init>(Lru/rocketbank/r2d2/fragments/EnterPinFragment;Landroid/view/View;Landroid/widget/TextView;)V

    iput-object v4, p0, Lru/rocketbank/r2d2/fragments/EnterPinFragment;->textWatcher:Landroid/text/TextWatcher;

    .line 180
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/EnterPinFragment;->textWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, p1}, Lme/philio/pinentry/PinEntryView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 181
    new-instance p1, Lru/rocketbank/r2d2/fragments/EnterPinFragment$2;

    invoke-direct {p1, p0, v0}, Lru/rocketbank/r2d2/fragments/EnterPinFragment$2;-><init>(Lru/rocketbank/r2d2/fragments/EnterPinFragment;Lme/philio/pinentry/PinEntryView;)V

    invoke-virtual {v0, p1}, Lme/philio/pinentry/PinEntryView;->post(Ljava/lang/Runnable;)Z

    .line 187
    iget-boolean p1, p0, Lru/rocketbank/r2d2/fragments/EnterPinFragment;->isFirst:Z

    if-eqz p1, :cond_1

    const-string p1, "\u0412\u0432\u0435\u0434\u0438\u0442\u0435 \u043d\u043e\u0432\u044b\u0439 PIN-\u043a\u043e\u0434 \u043a\u0430\u0440\u0442\u044b"

    goto :goto_0

    :cond_1
    const-string p1, "\u041f\u043e\u0432\u0442\u043e\u0440\u0438\u0442\u0435 PIN-\u043a\u043e\u0434 \u043a\u0430\u0440\u0442\u044b"

    :goto_0
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/EnterPinFragment;->pinText:Ljava/lang/String;

    if-eqz p1, :cond_2

    .line 189
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/EnterPinFragment;->pinText:Ljava/lang/String;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lru/rocketbank/r2d2/fragments/EnterPinFragment;
    .locals 2

    .line 52
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "KEY_PIN_TEXT"

    .line 53
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "key_token_plastic"

    .line 54
    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "KEY_PLASTIC_CHECK_ID"

    .line 55
    invoke-virtual {v0, p0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    new-instance p0, Lru/rocketbank/r2d2/fragments/EnterPinFragment;

    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/EnterPinFragment;-><init>()V

    .line 58
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/fragments/EnterPinFragment;->setArguments(Landroid/os/Bundle;)V

    return-object p0
.end method

.method private reset(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    .line 194
    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/EnterPinFragment;->code:Ljava/lang/String;

    const/4 v0, 0x1

    .line 195
    iput-boolean v0, p0, Lru/rocketbank/r2d2/fragments/EnterPinFragment;->isFirst:Z

    .line 196
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/fragments/EnterPinFragment;->init(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 64
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/EnterPinFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p3

    const-string v0, "KEY_PIN_TEXT"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lru/rocketbank/r2d2/fragments/EnterPinFragment;->pinText:Ljava/lang/String;

    .line 65
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/EnterPinFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p3

    const-string v0, "key_token_plastic"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lru/rocketbank/r2d2/fragments/EnterPinFragment;->plasticToken:Ljava/lang/String;

    .line 66
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/EnterPinFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p3

    const-string v0, "KEY_PLASTIC_CHECK_ID"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lru/rocketbank/r2d2/fragments/EnterPinFragment;->plastic_check_id:Ljava/lang/String;

    const p3, 0x7f0c00ca

    const/4 v0, 0x0

    .line 67
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 82
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/EnterPinFragment;->activateSubscription:Lrx/Subscription;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/EnterPinFragment;->activateSubscription:Lrx/Subscription;

    invoke-interface {v0}, Lrx/Subscription;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 83
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/EnterPinFragment;->activateSubscription:Lrx/Subscription;

    invoke-interface {v0}, Lrx/Subscription;->unsubscribe()V

    .line 86
    :cond_0
    invoke-super {p0}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onDestroyView()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 72
    invoke-super {p0, p1, p2}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 74
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/EnterPinFragment;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object p2

    invoke-interface {p2}, Lru/rocketbank/core/dagger/component/RocketComponent;->getPlasticApi()Lru/rocketbank/core/network/api/PlasticsApi;

    move-result-object p2

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/EnterPinFragment;->plasticsApi:Lru/rocketbank/core/network/api/PlasticsApi;

    .line 75
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/EnterPinFragment;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object p2

    invoke-interface {p2}, Lru/rocketbank/core/dagger/component/RocketComponent;->getAuthorization()Lru/rocketbank/core/user/Authorization;

    move-result-object p2

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/EnterPinFragment;->authorization:Lru/rocketbank/core/user/Authorization;

    .line 77
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/fragments/EnterPinFragment;->init(Landroid/view/View;)V

    return-void
.end method
