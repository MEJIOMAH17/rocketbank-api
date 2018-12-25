.class public Lru/rocketbank/r2d2/fragments/CheckCardFragment;
.super Lru/rocketbank/r2d2/fragments/RocketFragment;
.source "CheckCardFragment.java"

# interfaces
.implements Lru/rocketbank/core/widgets/listener/CardNumberListener;
.implements Lru/rocketbank/r2d2/data/binding/card/CardAbilityHandler;
.implements Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonHandler;
.implements Lru/rocketbank/r2d2/fragments/NextButtonListener;


# static fields
.field private static final KEY_CARD_IS_VALID:Ljava/lang/String; = "KEY_CARD_IS_VALID"


# instance fields
.field private binding:Lru/rocketbank/r2d2/databinding/FragmentCheckBinding;

.field private cardAbilityData:Lru/rocketbank/r2d2/data/binding/card/CardAbilityData;

.field private cardIsValid:Z

.field private checkCardData:Lru/rocketbank/core/model/dto/CheckCardData;

.field private checkSubscription:Lrx/Subscription;

.field private creditCardView:Lru/rocketbank/core/widgets/CreditCardView;

.field private digits:Ljava/lang/String;

.field private eventBus:Lde/greenrobot/event/EventBus;

.field private isActivation:Z

.field private newNextButton:Landroid/widget/Button;

.field private nfcInputCard:Lru/rocketbank/r2d2/utils/NfcInputCard;

.field private plasticToken:Ljava/lang/String;

.field plasticsApi:Lru/rocketbank/core/network/api/PlasticsApi;

.field private toolbarWithButtonData:Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonData;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/RocketFragment;-><init>()V

    .line 47
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/CheckCardFragment;->eventBus:Lde/greenrobot/event/EventBus;

    const/4 v0, 0x0

    .line 59
    iput-boolean v0, p0, Lru/rocketbank/r2d2/fragments/CheckCardFragment;->cardIsValid:Z

    return-void
.end method

.method static synthetic access$000(Lru/rocketbank/r2d2/fragments/CheckCardFragment;)Lru/rocketbank/r2d2/activities/AbstractActivity;
    .locals 0

    .line 45
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/CheckCardFragment;->getAbstractActivity()Lru/rocketbank/r2d2/activities/AbstractActivity;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lru/rocketbank/r2d2/fragments/CheckCardFragment;)Lde/greenrobot/event/EventBus;
    .locals 0

    .line 45
    iget-object p0, p0, Lru/rocketbank/r2d2/fragments/CheckCardFragment;->eventBus:Lde/greenrobot/event/EventBus;

    return-object p0
.end method

.method private checkCard(Ljava/lang/String;)V
    .locals 2

    .line 180
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/CheckCardFragment;->digits:Ljava/lang/String;

    .line 182
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/CheckCardFragment;->getAbstractActivity()Lru/rocketbank/r2d2/activities/AbstractActivity;

    move-result-object v0

    invoke-virtual {v0}, Lru/rocketbank/r2d2/activities/AbstractActivity;->showProgressDialog()V

    .line 183
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/CheckCardFragment;->checkSubscription:Lrx/Subscription;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/CheckCardFragment;->checkSubscription:Lrx/Subscription;

    invoke-interface {v0}, Lrx/Subscription;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 184
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/CheckCardFragment;->checkSubscription:Lrx/Subscription;

    invoke-interface {v0}, Lrx/Subscription;->unsubscribe()V

    .line 187
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/CheckCardFragment;->plasticsApi:Lru/rocketbank/core/network/api/PlasticsApi;

    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/CheckCardFragment;->plasticToken:Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Lru/rocketbank/core/network/api/PlasticsApi;->check(Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;

    move-result-object p1

    .line 188
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object p1

    new-instance v0, Lru/rocketbank/r2d2/fragments/CheckCardFragment$2;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/fragments/CheckCardFragment$2;-><init>(Lru/rocketbank/r2d2/fragments/CheckCardFragment;)V

    .line 189
    invoke-virtual {p1, v0}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/CheckCardFragment;->checkSubscription:Lrx/Subscription;

    return-void
.end method

.method private getAbstractActivity()Lru/rocketbank/r2d2/activities/AbstractActivity;
    .locals 1

    .line 220
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/CheckCardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/activities/AbstractActivity;

    return-object v0
.end method

.method public static newInstance(Lru/rocketbank/core/model/dto/CheckCardData;)Lru/rocketbank/r2d2/fragments/CheckCardFragment;
    .locals 2

    .line 66
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "KEY_CHECK_CARD_DATA"

    .line 67
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "key_token_plastic"

    .line 68
    invoke-virtual {p0}, Lru/rocketbank/core/model/dto/CheckCardData;->getToken()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    new-instance p0, Lru/rocketbank/r2d2/fragments/CheckCardFragment;

    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/CheckCardFragment;-><init>()V

    .line 70
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/fragments/CheckCardFragment;->setArguments(Landroid/os/Bundle;)V

    return-object p0
.end method

.method private updateNextButton()V
    .locals 1

    .line 300
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/CheckCardFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/CheckCardFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/fragments/CheckCardFragment;->updateNextButton(Landroid/support/v4/app/Fragment;)V

    return-void
.end method


# virtual methods
.method public allCardIsValid(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public binReady(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public cancelBin()V
    .locals 0

    return-void
.end method

.method public cardChanged()V
    .locals 0

    return-void
.end method

.method public cardInvalid()V
    .locals 0

    return-void
.end method

.method public cardNumberIsInvalid(Ljava/lang/String;)V
    .locals 0

    const/4 p1, 0x0

    .line 241
    iput-boolean p1, p0, Lru/rocketbank/r2d2/fragments/CheckCardFragment;->cardIsValid:Z

    .line 242
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/CheckCardFragment;->updateNextButton()V

    return-void
.end method

.method public cardNumberIsValid(Ljava/lang/String;)V
    .locals 0

    const/4 p1, 0x1

    .line 235
    iput-boolean p1, p0, Lru/rocketbank/r2d2/fragments/CheckCardFragment;->cardIsValid:Z

    .line 236
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/CheckCardFragment;->updateNextButton()V

    return-void
.end method

.method public cvvIsInvalid()V
    .locals 0

    return-void
.end method

.method public cvvIsValid()V
    .locals 0

    return-void
.end method

.method public dateIsInvalid()V
    .locals 0

    return-void
.end method

.method public dateIsValid()V
    .locals 0

    return-void
.end method

.method public nextPressed(Landroid/view/View;)V
    .locals 2

    .line 292
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/CheckCardFragment;->creditCardView:Lru/rocketbank/core/widgets/CreditCardView;

    invoke-virtual {p1}, Lru/rocketbank/core/widgets/CreditCardView;->getCardNumber()Ljava/lang/String;

    move-result-object p1

    .line 293
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/CheckCardFragment;->checkCardData:Lru/rocketbank/core/model/dto/CheckCardData;

    invoke-virtual {v0}, Lru/rocketbank/core/model/dto/CheckCardData;->getDigitsCount()I

    move-result v0

    .line 294
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 296
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/fragments/CheckCardFragment;->checkCard(Ljava/lang/String;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 77
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/CheckCardFragment;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object v0

    invoke-interface {v0}, Lru/rocketbank/core/dagger/component/RocketComponent;->getPlasticApi()Lru/rocketbank/core/network/api/PlasticsApi;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/CheckCardFragment;->plasticsApi:Lru/rocketbank/core/network/api/PlasticsApi;

    .line 79
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/CheckCardFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "KEY_CHECK_CARD_DATA"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/model/dto/CheckCardData;

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/CheckCardFragment;->checkCardData:Lru/rocketbank/core/model/dto/CheckCardData;

    .line 80
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/CheckCardFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "key_is_activation"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lru/rocketbank/r2d2/fragments/CheckCardFragment;->isActivation:Z

    .line 81
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/CheckCardFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "key_token_plastic"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/CheckCardFragment;->plasticToken:Ljava/lang/String;

    const/4 v0, 0x0

    .line 83
    invoke-static {p1, p2, v0}, Lru/rocketbank/r2d2/databinding/FragmentCheckBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lru/rocketbank/r2d2/databinding/FragmentCheckBinding;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/CheckCardFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentCheckBinding;

    .line 85
    new-instance p1, Lru/rocketbank/r2d2/data/binding/card/CardAbilityData;

    invoke-direct {p1}, Lru/rocketbank/r2d2/data/binding/card/CardAbilityData;-><init>()V

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/CheckCardFragment;->cardAbilityData:Lru/rocketbank/r2d2/data/binding/card/CardAbilityData;

    .line 87
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/CheckCardFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentCheckBinding;

    invoke-virtual {p1, p0}, Lru/rocketbank/r2d2/databinding/FragmentCheckBinding;->setActions(Lru/rocketbank/r2d2/data/binding/card/CardAbilityHandler;)V

    .line 88
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/CheckCardFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentCheckBinding;

    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/CheckCardFragment;->cardAbilityData:Lru/rocketbank/r2d2/data/binding/card/CardAbilityData;

    invoke-virtual {p1, p2}, Lru/rocketbank/r2d2/databinding/FragmentCheckBinding;->setAbility(Lru/rocketbank/r2d2/data/binding/card/CardAbilityData;)V

    .line 90
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/CheckCardFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentCheckBinding;

    invoke-virtual {p1, p0}, Lru/rocketbank/r2d2/databinding/FragmentCheckBinding;->setHandler(Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonHandler;)V

    .line 91
    new-instance p1, Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonData;

    const p2, 0x7f110104

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/fragments/CheckCardFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    const v1, 0x7f110314

    invoke-virtual {p0, v1}, Lru/rocketbank/r2d2/fragments/CheckCardFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, p2, v1, v0, v0}, Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonData;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/CheckCardFragment;->toolbarWithButtonData:Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonData;

    .line 92
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/CheckCardFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentCheckBinding;

    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/CheckCardFragment;->toolbarWithButtonData:Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonData;

    invoke-virtual {p1, p2}, Lru/rocketbank/r2d2/databinding/FragmentCheckBinding;->setToolbarBinding(Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonData;)V

    .line 93
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/CheckCardFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentCheckBinding;

    iget-object p1, p1, Lru/rocketbank/r2d2/databinding/FragmentCheckBinding;->creditCard:Lru/rocketbank/core/widgets/CreditCardView;

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/CheckCardFragment;->creditCardView:Lru/rocketbank/core/widgets/CreditCardView;

    .line 94
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/CheckCardFragment;->creditCardView:Lru/rocketbank/core/widgets/CreditCardView;

    invoke-virtual {p1}, Lru/rocketbank/core/widgets/CreditCardView;->setNeedCheckBin$1385ff()V

    .line 95
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/CheckCardFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentCheckBinding;

    iget-object p1, p1, Lru/rocketbank/r2d2/databinding/FragmentCheckBinding;->newNext:Landroid/widget/Button;

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/CheckCardFragment;->newNextButton:Landroid/widget/Button;

    .line 96
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/CheckCardFragment;->newNextButton:Landroid/widget/Button;

    new-instance p2, Lru/rocketbank/r2d2/fragments/CheckCardFragment$1;

    invoke-direct {p2, p0}, Lru/rocketbank/r2d2/fragments/CheckCardFragment$1;-><init>(Lru/rocketbank/r2d2/fragments/CheckCardFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/CheckCardFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentCheckBinding;

    iget-object p1, p1, Lru/rocketbank/r2d2/databinding/FragmentCheckBinding;->textViewInputCardDigitsHint:Lru/rocketbank/core/widgets/RocketTextView;

    if-eqz p3, :cond_0

    const-string p2, "KEY_CARD_IS_VALID"

    .line 106
    invoke-virtual {p3, p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Lru/rocketbank/r2d2/fragments/CheckCardFragment;->cardIsValid:Z

    .line 109
    :cond_0
    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/CheckCardFragment;->checkCardData:Lru/rocketbank/core/model/dto/CheckCardData;

    if-eqz p2, :cond_2

    .line 110
    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/CheckCardFragment;->checkCardData:Lru/rocketbank/core/model/dto/CheckCardData;

    invoke-virtual {p2}, Lru/rocketbank/core/model/dto/CheckCardData;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/CheckCardFragment;->creditCardView:Lru/rocketbank/core/widgets/CreditCardView;

    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/CheckCardFragment;->checkCardData:Lru/rocketbank/core/model/dto/CheckCardData;

    invoke-virtual {p2}, Lru/rocketbank/core/model/dto/CheckCardData;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lru/rocketbank/core/widgets/CreditCardView;->setCardHolder(Ljava/lang/String;)V

    .line 112
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/CheckCardFragment;->checkCardData:Lru/rocketbank/core/model/dto/CheckCardData;

    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/CheckCardData;->getDigits()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 115
    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/CheckCardFragment;->creditCardView:Lru/rocketbank/core/widgets/CreditCardView;

    invoke-virtual {p2, p1}, Lru/rocketbank/core/widgets/CreditCardView;->setCardNumberHint(Ljava/lang/String;)V

    .line 118
    :cond_1
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/CheckCardFragment;->checkCardData:Lru/rocketbank/core/model/dto/CheckCardData;

    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/CheckCardData;->getCardImage()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 119
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2

    .line 120
    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/CheckCardFragment;->creditCardView:Lru/rocketbank/core/widgets/CreditCardView;

    invoke-virtual {p2, p1}, Lru/rocketbank/core/widgets/CreditCardView;->setCardBackground(Ljava/lang/String;)V

    .line 124
    :cond_2
    iget-boolean p1, p0, Lru/rocketbank/r2d2/fragments/CheckCardFragment;->isActivation:Z

    if-nez p1, :cond_4

    .line 125
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/CheckCardFragment;->getAbstractActivity()Lru/rocketbank/r2d2/activities/AbstractActivity;

    move-result-object p1

    .line 126
    invoke-virtual {p1}, Lru/rocketbank/r2d2/activities/AbstractActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p2

    if-nez p2, :cond_3

    .line 128
    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/CheckCardFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentCheckBinding;

    iget-object p2, p2, Lru/rocketbank/r2d2/databinding/FragmentCheckBinding;->toolbarInclude:Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;

    iget-object p2, p2, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p1, p2}, Lru/rocketbank/r2d2/activities/AbstractActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 129
    :cond_3
    invoke-virtual {p1}, Lru/rocketbank/r2d2/activities/AbstractActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    const/4 p2, 0x1

    .line 130
    invoke-virtual {p1, p2}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    goto :goto_0

    .line 132
    :cond_4
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/CheckCardFragment;->toolbarWithButtonData:Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonData;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonData;->getToolbarVisible()Landroid/databinding/ObservableBoolean;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/databinding/ObservableBoolean;->set(Z)V

    .line 135
    :goto_0
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/CheckCardFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentCheckBinding;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/databinding/FragmentCheckBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 140
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/CheckCardFragment;->checkSubscription:Lrx/Subscription;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/CheckCardFragment;->checkSubscription:Lrx/Subscription;

    invoke-interface {v0}, Lrx/Subscription;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 141
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/CheckCardFragment;->checkSubscription:Lrx/Subscription;

    invoke-interface {v0}, Lrx/Subscription;->unsubscribe()V

    .line 144
    :cond_0
    invoke-super {p0}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onDestroyView()V

    return-void
.end method

.method public onEvent(Lru/rocketbank/core/events/RetryEvent;)V
    .locals 0

    .line 216
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/CheckCardFragment;->digits:Ljava/lang/String;

    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/fragments/CheckCardFragment;->checkCard(Ljava/lang/String;)V

    return-void
.end method

.method public onNextButtonClick()V
    .locals 1

    const/4 v0, 0x0

    .line 305
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/fragments/CheckCardFragment;->nextPressed(Landroid/view/View;)V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 160
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/CheckCardFragment;->nfcInputCard:Lru/rocketbank/r2d2/utils/NfcInputCard;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/utils/NfcInputCard;->onStop()V

    .line 161
    invoke-super {p0}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onPause()V

    return-void
.end method

.method public onPressedPhoto(Landroid/view/View;)V
    .locals 0

    .line 283
    :try_start_0
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/CheckCardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lru/rocketbank/r2d2/activities/AbstractActivity;

    .line 284
    invoke-virtual {p1}, Lru/rocketbank/r2d2/activities/AbstractActivity;->takeAShot()V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    return-void
.end method

.method public onResume()V
    .locals 4

    .line 149
    invoke-super {p0}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onResume()V

    .line 151
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/CheckCardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 152
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/CheckCardFragment;->cardAbilityData:Lru/rocketbank/r2d2/data/binding/card/CardAbilityData;

    const-string v2, "android.hardware.nfc"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "android.hardware.camera"

    .line 153
    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    .line 152
    invoke-virtual {v1, v2, v0}, Lru/rocketbank/r2d2/data/binding/card/CardAbilityData;->updateAbility(ZZ)V

    .line 154
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/CheckCardFragment;->nfcInputCard:Lru/rocketbank/r2d2/utils/NfcInputCard;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/utils/NfcInputCard;->onCreate()V

    .line 155
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/CheckCardFragment;->updateNextButton()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 211
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "KEY_CARD_IS_VALID"

    .line 212
    iget-boolean v1, p0, Lru/rocketbank/r2d2/fragments/CheckCardFragment;->cardIsValid:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 166
    invoke-super {p0, p1, p2}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 168
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/CheckCardFragment;->creditCardView:Lru/rocketbank/core/widgets/CreditCardView;

    invoke-virtual {p1, p0}, Lru/rocketbank/core/widgets/CreditCardView;->setCardNumberListener(Lru/rocketbank/core/widgets/listener/CardNumberListener;)V

    .line 170
    new-instance p1, Lru/rocketbank/r2d2/utils/NfcInputCard;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/CheckCardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/CheckCardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lru/rocketbank/r2d2/utils/NfcInputCard;-><init>(Landroid/app/Activity;Ljava/lang/Class;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/CheckCardFragment;->nfcInputCard:Lru/rocketbank/r2d2/utils/NfcInputCard;

    .line 172
    iget-boolean p1, p0, Lru/rocketbank/r2d2/fragments/CheckCardFragment;->isActivation:Z

    if-eqz p1, :cond_0

    .line 173
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/CheckCardFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentCheckBinding;

    iget-object p1, p1, Lru/rocketbank/r2d2/databinding/FragmentCheckBinding;->toolbarInclude:Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 176
    :cond_0
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/CheckCardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    const p2, 0x7f110096

    invoke-virtual {p1, p2}, Landroid/support/v4/app/FragmentActivity;->setTitle(I)V

    return-void
.end method

.method public updateNextButton(Landroid/support/v4/app/Fragment;)V
    .locals 5

    .line 310
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/CheckCardFragment;->toolbarWithButtonData:Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonData;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonData;->getButtonEnabled()Landroid/databinding/ObservableBoolean;

    move-result-object v0

    iget-boolean v1, p0, Lru/rocketbank/r2d2/fragments/CheckCardFragment;->cardIsValid:Z

    invoke-virtual {v0, v1}, Landroid/databinding/ObservableBoolean;->set(Z)V

    .line 311
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/CheckCardFragment;->newNextButton:Landroid/widget/Button;

    iget-boolean v1, p0, Lru/rocketbank/r2d2/fragments/CheckCardFragment;->cardIsValid:Z

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 313
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/CheckCardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 317
    :cond_0
    invoke-static {}, Lru/rocketbank/r2d2/RocketApplication;->getContext()Lru/rocketbank/core/BaseRocketApplication;

    move-result-object v0

    const v1, 0x7f110315

    invoke-virtual {v0, v1}, Lru/rocketbank/core/BaseRocketApplication;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 318
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v1

    new-instance v2, Lru/rocketbank/core/events/NextButtonEvent;

    iget-boolean v3, p0, Lru/rocketbank/r2d2/fragments/CheckCardFragment;->cardIsValid:Z

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, p1, v3, v4, v0}, Lru/rocketbank/core/events/NextButtonEvent;-><init>(Landroid/support/v4/app/Fragment;ZLjava/lang/Integer;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method
