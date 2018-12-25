.class public Lru/rocketbank/r2d2/fragments/card/NewCardInnerFragment;
.super Lru/rocketbank/r2d2/fragments/RocketFragment;
.source "NewCardInnerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final AV_CARD_MODEL:Ljava/lang/String; = "AV_CARD_MODEL"


# instance fields
.field authorization:Lru/rocketbank/core/user/Authorization;

.field private availableCardModel:Lru/rocketbank/core/model/AvailableCardModel;

.field descriptionView:Lru/rocketbank/core/widgets/RocketTextView;

.field detailsView:Lru/rocketbank/core/widgets/RocketTextView;

.field nameView:Lru/rocketbank/core/widgets/RocketEditText;

.field private openCardSubscription:Lrx/Subscription;

.field openView:Lru/rocketbank/core/widgets/RocketTextView;

.field plasticsApi:Lru/rocketbank/core/network/api/PlasticsApi;

.field private progressDialog:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/RocketFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lru/rocketbank/r2d2/fragments/card/NewCardInnerFragment;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/card/NewCardInnerFragment;->hideProgress()V

    return-void
.end method

.method static synthetic access$100(Lru/rocketbank/r2d2/fragments/card/NewCardInnerFragment;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/card/NewCardInnerFragment;->error()V

    return-void
.end method

.method static synthetic access$200(Lru/rocketbank/r2d2/fragments/card/NewCardInnerFragment;Ljava/lang/String;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/fragments/card/NewCardInnerFragment;->error(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$302(Lru/rocketbank/r2d2/fragments/card/NewCardInnerFragment;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0

    .line 26
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/card/NewCardInnerFragment;->progressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method private error()V
    .locals 1

    const-string v0, "\u041d\u0435 \u0443\u0434\u0430\u043b\u043e\u0441\u044c, \u043f\u043e\u043f\u0440\u043e\u0431\u0443\u0439\u0442\u0435 \u0435\u0449\u0451 \u0440\u0430\u0437"

    .line 154
    invoke-direct {p0, v0}, Lru/rocketbank/r2d2/fragments/card/NewCardInnerFragment;->error(Ljava/lang/String;)V

    return-void
.end method

.method private error(Ljava/lang/String;)V
    .locals 2

    .line 158
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/card/NewCardInnerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private hideProgress()V
    .locals 1

    .line 162
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/card/NewCardInnerFragment;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/card/NewCardInnerFragment;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    .line 164
    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/card/NewCardInnerFragment;->progressDialog:Landroid/app/ProgressDialog;

    :cond_0
    return-void
.end method

.method public static newInstance(Lru/rocketbank/core/model/AvailableCardModel;)Lru/rocketbank/r2d2/fragments/card/NewCardInnerFragment;
    .locals 3

    .line 42
    new-instance v0, Lru/rocketbank/r2d2/fragments/card/NewCardInnerFragment;

    invoke-direct {v0}, Lru/rocketbank/r2d2/fragments/card/NewCardInnerFragment;-><init>()V

    .line 44
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "AV_CARD_MODEL"

    .line 45
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 47
    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/fragments/card/NewCardInnerFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private openCard()V
    .locals 3

    .line 122
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/card/NewCardInnerFragment;->showProgressExecution()V

    .line 123
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/card/NewCardInnerFragment;->availableCardModel:Lru/rocketbank/core/model/AvailableCardModel;

    invoke-virtual {v0}, Lru/rocketbank/core/model/AvailableCardModel;->getCurrency()Lru/rocketbank/core/model/enums/Currency;

    move-result-object v0

    invoke-virtual {v0}, Lru/rocketbank/core/model/enums/Currency;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 124
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/card/NewCardInnerFragment;->plasticsApi:Lru/rocketbank/core/network/api/PlasticsApi;

    const-string v2, ""

    invoke-interface {v1, v0, v2}, Lru/rocketbank/core/network/api/PlasticsApi;->openCard(Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    .line 125
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lru/rocketbank/r2d2/fragments/card/NewCardInnerFragment$1;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/fragments/card/NewCardInnerFragment$1;-><init>(Lru/rocketbank/r2d2/fragments/card/NewCardInnerFragment;)V

    .line 126
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/card/NewCardInnerFragment;->openCardSubscription:Lrx/Subscription;

    return-void
.end method

.method private openDetails()V
    .locals 3

    .line 115
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lru/rocketbank/r2d2/fragments/card/NewCardInnerFragment;->availableCardModel:Lru/rocketbank/core/model/AvailableCardModel;

    invoke-virtual {v2}, Lru/rocketbank/core/model/AvailableCardModel;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 116
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/card/NewCardInnerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 117
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/fragments/card/NewCardInnerFragment;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private showProgressExecution()V
    .locals 3

    .line 169
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/card/NewCardInnerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/card/NewCardInnerFragment;->progressDialog:Landroid/app/ProgressDialog;

    .line 170
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/card/NewCardInnerFragment;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/card/NewCardInnerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f110023

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 171
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/card/NewCardInnerFragment;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 172
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/card/NewCardInnerFragment;->progressDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lru/rocketbank/r2d2/fragments/card/NewCardInnerFragment$2;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/fragments/card/NewCardInnerFragment$2;-><init>(Lru/rocketbank/r2d2/fragments/card/NewCardInnerFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 178
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/card/NewCardInnerFragment;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 103
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f09013a

    if-eq p1, v0, :cond_1

    const v0, 0x7f09028f

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 105
    :cond_0
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/card/NewCardInnerFragment;->openCard()V

    return-void

    .line 109
    :cond_1
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/card/NewCardInnerFragment;->openDetails()V

    :goto_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c00e8

    const/4 v0, 0x0

    .line 55
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f09026c

    .line 57
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lru/rocketbank/core/widgets/RocketEditText;

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/card/NewCardInnerFragment;->nameView:Lru/rocketbank/core/widgets/RocketEditText;

    const p2, 0x7f09012f

    .line 58
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/card/NewCardInnerFragment;->descriptionView:Lru/rocketbank/core/widgets/RocketTextView;

    const p2, 0x7f09028f

    .line 59
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/card/NewCardInnerFragment;->openView:Lru/rocketbank/core/widgets/RocketTextView;

    const p2, 0x7f09013a

    .line 60
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/card/NewCardInnerFragment;->detailsView:Lru/rocketbank/core/widgets/RocketTextView;

    return-object p1
.end method

.method public onPause()V
    .locals 1

    .line 66
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/card/NewCardInnerFragment;->hideProgress()V

    .line 68
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/card/NewCardInnerFragment;->openCardSubscription:Lrx/Subscription;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/card/NewCardInnerFragment;->openCardSubscription:Lrx/Subscription;

    invoke-interface {v0}, Lrx/Subscription;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/card/NewCardInnerFragment;->openCardSubscription:Lrx/Subscription;

    invoke-interface {v0}, Lrx/Subscription;->unsubscribe()V

    .line 72
    :cond_0
    invoke-super {p0}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onPause()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 77
    invoke-super {p0, p1, p2}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 79
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/card/NewCardInnerFragment;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object p1

    invoke-interface {p1}, Lru/rocketbank/core/dagger/component/RocketComponent;->getPlasticApi()Lru/rocketbank/core/network/api/PlasticsApi;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/card/NewCardInnerFragment;->plasticsApi:Lru/rocketbank/core/network/api/PlasticsApi;

    .line 80
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/card/NewCardInnerFragment;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object p1

    invoke-interface {p1}, Lru/rocketbank/core/dagger/component/RocketComponent;->getAuthorization()Lru/rocketbank/core/user/Authorization;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/card/NewCardInnerFragment;->authorization:Lru/rocketbank/core/user/Authorization;

    .line 82
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/card/NewCardInnerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "AV_CARD_MODEL"

    .line 84
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/model/AvailableCardModel;

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/card/NewCardInnerFragment;->availableCardModel:Lru/rocketbank/core/model/AvailableCardModel;

    .line 86
    sget-object p1, Lru/rocketbank/core/model/enums/Currency;->DOLLAR:Lru/rocketbank/core/model/enums/Currency;

    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/card/NewCardInnerFragment;->availableCardModel:Lru/rocketbank/core/model/AvailableCardModel;

    invoke-virtual {p2}, Lru/rocketbank/core/model/AvailableCardModel;->getCurrency()Lru/rocketbank/core/model/enums/Currency;

    move-result-object p2

    invoke-virtual {p1, p2}, Lru/rocketbank/core/model/enums/Currency;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 87
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/card/NewCardInnerFragment;->nameView:Lru/rocketbank/core/widgets/RocketEditText;

    const p2, 0x7f1100a1

    invoke-virtual {p1, p2}, Lru/rocketbank/core/widgets/RocketEditText;->setText(I)V

    goto :goto_0

    .line 88
    :cond_0
    sget-object p1, Lru/rocketbank/core/model/enums/Currency;->EURO:Lru/rocketbank/core/model/enums/Currency;

    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/card/NewCardInnerFragment;->availableCardModel:Lru/rocketbank/core/model/AvailableCardModel;

    invoke-virtual {p2}, Lru/rocketbank/core/model/AvailableCardModel;->getCurrency()Lru/rocketbank/core/model/enums/Currency;

    move-result-object p2

    invoke-virtual {p1, p2}, Lru/rocketbank/core/model/enums/Currency;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 89
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/card/NewCardInnerFragment;->nameView:Lru/rocketbank/core/widgets/RocketEditText;

    const p2, 0x7f110097

    invoke-virtual {p1, p2}, Lru/rocketbank/core/widgets/RocketEditText;->setText(I)V

    goto :goto_0

    .line 90
    :cond_1
    sget-object p1, Lru/rocketbank/core/model/enums/Currency;->ROUBLE:Lru/rocketbank/core/model/enums/Currency;

    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/card/NewCardInnerFragment;->availableCardModel:Lru/rocketbank/core/model/AvailableCardModel;

    invoke-virtual {p2}, Lru/rocketbank/core/model/AvailableCardModel;->getCurrency()Lru/rocketbank/core/model/enums/Currency;

    move-result-object p2

    invoke-virtual {p1, p2}, Lru/rocketbank/core/model/enums/Currency;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 91
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/card/NewCardInnerFragment;->nameView:Lru/rocketbank/core/widgets/RocketEditText;

    const p2, 0x7f11009c

    invoke-virtual {p1, p2}, Lru/rocketbank/core/widgets/RocketEditText;->setText(I)V

    goto :goto_0

    .line 93
    :cond_2
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/card/NewCardInnerFragment;->nameView:Lru/rocketbank/core/widgets/RocketEditText;

    const p2, 0x7f110092

    invoke-virtual {p1, p2}, Lru/rocketbank/core/widgets/RocketEditText;->setText(I)V

    .line 96
    :goto_0
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/card/NewCardInnerFragment;->openView:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {p1, p0}, Lru/rocketbank/core/widgets/RocketTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/card/NewCardInnerFragment;->descriptionView:Lru/rocketbank/core/widgets/RocketTextView;

    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/card/NewCardInnerFragment;->availableCardModel:Lru/rocketbank/core/model/AvailableCardModel;

    invoke-virtual {p2}, Lru/rocketbank/core/model/AvailableCardModel;->getDescription()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lru/rocketbank/core/widgets/RocketTextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/card/NewCardInnerFragment;->detailsView:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {p1, p0}, Lru/rocketbank/core/widgets/RocketTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
