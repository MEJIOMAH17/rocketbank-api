.class public Lru/rocketbank/r2d2/fragments/refill/bank/AccountDetailsFragment;
.super Lru/rocketbank/r2d2/fragments/RocketFragment;
.source "AccountDetailsFragment.java"

# interfaces
.implements Lru/rocketbank/r2d2/ActionBarTitleInstaller;


# static fields
.field private static final TAG:Ljava/lang/String; = "AccountDetail"

.field protected static final TOKEN:Ljava/lang/String; = "TOKEN"


# instance fields
.field private account:Landroid/widget/TextView;

.field authorization:Lru/rocketbank/core/user/Authorization;

.field private bankAddressView:Landroid/widget/TextView;

.field private bankCorrView:Landroid/widget/TextView;

.field private bankName:Landroid/widget/TextView;

.field private bankReceiverView:Landroid/widget/TextView;

.field private bic:Landroid/widget/TextView;

.field private correspondentAccount:Landroid/widget/TextView;

.field private goal:Landroid/widget/TextView;

.field private inn:Landroid/widget/TextView;

.field private internationalView:Landroid/widget/LinearLayout;

.field private kpp:Landroid/widget/TextView;

.field private requisites:Ljava/lang/String;

.field private russiaView:Landroid/widget/LinearLayout;

.field private sender:Landroid/widget/TextView;

.field private swiftView:Landroid/widget/TextView;

.field private token:Ljava/lang/String;

.field private userModel:Lru/rocketbank/core/model/UserModel;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/RocketFragment;-><init>()V

    const-string v0, ""

    .line 29
    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/refill/bank/AccountDetailsFragment;->requisites:Ljava/lang/String;

    return-void
.end method

.method public static newInstance()Lru/rocketbank/r2d2/fragments/refill/bank/AccountDetailsFragment;
    .locals 1

    .line 54
    new-instance v0, Lru/rocketbank/r2d2/fragments/refill/bank/AccountDetailsFragment;

    invoke-direct {v0}, Lru/rocketbank/r2d2/fragments/refill/bank/AccountDetailsFragment;-><init>()V

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;)Lru/rocketbank/r2d2/fragments/refill/bank/AccountDetailsFragment;
    .locals 3

    .line 58
    new-instance v0, Lru/rocketbank/r2d2/fragments/refill/bank/AccountDetailsFragment;

    invoke-direct {v0}, Lru/rocketbank/r2d2/fragments/refill/bank/AccountDetailsFragment;-><init>()V

    .line 59
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "TOKEN"

    .line 60
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/fragments/refill/bank/AccountDetailsFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private setupUserModel(Lru/rocketbank/core/model/UserModel;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/refill/bank/AccountDetailsFragment;->userModel:Lru/rocketbank/core/model/UserModel;

    return-void
.end method


# virtual methods
.method public fillDetails(Lru/rocketbank/core/model/AccountDetailsModel;)V
    .locals 3

    .line 165
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/refill/bank/AccountDetailsFragment;->russiaView:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 167
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/refill/bank/AccountDetailsFragment;->bankName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lru/rocketbank/core/model/AccountDetailsModel;->getBankName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/refill/bank/AccountDetailsFragment;->userModel:Lru/rocketbank/core/model/UserModel;

    invoke-virtual {v0}, Lru/rocketbank/core/model/UserModel;->getCurrentAccount()Lru/rocketbank/core/model/AccountModel;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/refill/bank/AccountDetailsFragment;->userModel:Lru/rocketbank/core/model/UserModel;

    .line 170
    invoke-virtual {v0}, Lru/rocketbank/core/model/UserModel;->getCurrentAccount()Lru/rocketbank/core/model/AccountModel;

    move-result-object v0

    invoke-virtual {v0}, Lru/rocketbank/core/model/AccountModel;->getCurrentTariff()Lru/rocketbank/core/model/TariffModel;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/refill/bank/AccountDetailsFragment;->userModel:Lru/rocketbank/core/model/UserModel;

    .line 171
    invoke-virtual {v0}, Lru/rocketbank/core/model/UserModel;->getCurrentAccount()Lru/rocketbank/core/model/AccountModel;

    move-result-object v0

    invoke-virtual {v0}, Lru/rocketbank/core/model/AccountModel;->getCurrentTariff()Lru/rocketbank/core/model/TariffModel;

    move-result-object v0

    invoke-virtual {v0}, Lru/rocketbank/core/model/TariffModel;->getPermalink()Lru/rocketbank/core/model/enums/PermalinkTariff;

    move-result-object v0

    sget-object v2, Lru/rocketbank/core/model/enums/PermalinkTariff;->METROPOLIS:Lru/rocketbank/core/model/enums/PermalinkTariff;

    if-ne v0, v2, :cond_0

    .line 172
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/refill/bank/AccountDetailsFragment;->bankName:Landroid/widget/TextView;

    const v2, 0x7f1102a9

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 175
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/refill/bank/AccountDetailsFragment;->correspondentAccount:Landroid/widget/TextView;

    invoke-virtual {p1}, Lru/rocketbank/core/model/AccountDetailsModel;->getKs()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/refill/bank/AccountDetailsFragment;->bic:Landroid/widget/TextView;

    invoke-virtual {p1}, Lru/rocketbank/core/model/AccountDetailsModel;->getBic()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/refill/bank/AccountDetailsFragment;->inn:Landroid/widget/TextView;

    invoke-virtual {p1}, Lru/rocketbank/core/model/AccountDetailsModel;->getInn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/refill/bank/AccountDetailsFragment;->kpp:Landroid/widget/TextView;

    invoke-virtual {p1}, Lru/rocketbank/core/model/AccountDetailsModel;->getKpp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/refill/bank/AccountDetailsFragment;->account:Landroid/widget/TextView;

    invoke-virtual {p1}, Lru/rocketbank/core/model/AccountDetailsModel;->getAccount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/refill/bank/AccountDetailsFragment;->sender:Landroid/widget/TextView;

    invoke-virtual {p1}, Lru/rocketbank/core/model/AccountDetailsModel;->getOwner()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/refill/bank/AccountDetailsFragment;->goal:Landroid/widget/TextView;

    invoke-virtual {p1}, Lru/rocketbank/core/model/AccountDetailsModel;->getGoal()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string p1, "\u0411\u0430\u043d\u043a: %s\n\n\u041a\u043e\u0440\u0440. \u0441\u0447\u0435\u0442: %s\n\n\u0411\u0418\u041a: %s\n\n\u0418\u041d\u041d: %s\n\n\u041a\u041f\u041f: %s\n\n\u041d\u043e\u043c\u0435\u0440 \u0441\u0447\u0451\u0442\u0430: %s\n\n\u041f\u043e\u043b\u0443\u0447\u0430\u0442\u0435\u043b\u044c: %s\n\n\u041d\u0430\u0437\u043d\u0430\u0447\u0435\u043d\u0438\u0435 \u043f\u043b\u0430\u0442\u0435\u0436\u0430: %s"

    const/16 v0, 0x8

    .line 184
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v2, p0, Lru/rocketbank/r2d2/fragments/refill/bank/AccountDetailsFragment;->bankName:Landroid/widget/TextView;

    .line 193
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lru/rocketbank/r2d2/fragments/refill/bank/AccountDetailsFragment;->correspondentAccount:Landroid/widget/TextView;

    .line 194
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lru/rocketbank/r2d2/fragments/refill/bank/AccountDetailsFragment;->bic:Landroid/widget/TextView;

    .line 195
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lru/rocketbank/r2d2/fragments/refill/bank/AccountDetailsFragment;->inn:Landroid/widget/TextView;

    .line 196
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lru/rocketbank/r2d2/fragments/refill/bank/AccountDetailsFragment;->kpp:Landroid/widget/TextView;

    .line 197
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lru/rocketbank/r2d2/fragments/refill/bank/AccountDetailsFragment;->account:Landroid/widget/TextView;

    .line 198
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lru/rocketbank/r2d2/fragments/refill/bank/AccountDetailsFragment;->sender:Landroid/widget/TextView;

    .line 199
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p0, Lru/rocketbank/r2d2/fragments/refill/bank/AccountDetailsFragment;->goal:Landroid/widget/TextView;

    .line 200
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, v0, v1

    .line 184
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/refill/bank/AccountDetailsFragment;->requisites:Ljava/lang/String;

    return-void
.end method

.method public fillDetailsInternational(Lru/rocketbank/core/model/AccountDetailsModel;)V
    .locals 4

    .line 139
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/refill/bank/AccountDetailsFragment;->internationalView:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 141
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/refill/bank/AccountDetailsFragment;->bankCorrView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lru/rocketbank/core/model/AccountDetailsModel;->getCorr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/refill/bank/AccountDetailsFragment;->bankReceiverView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lru/rocketbank/core/model/AccountDetailsModel;->getBenefBank()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/refill/bank/AccountDetailsFragment;->bankAddressView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lru/rocketbank/core/model/AccountDetailsModel;->getBenefBankAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/refill/bank/AccountDetailsFragment;->swiftView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lru/rocketbank/core/model/AccountDetailsModel;->getBenefSwift()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/refill/bank/AccountDetailsFragment;->sender:Landroid/widget/TextView;

    invoke-virtual {p1}, Lru/rocketbank/core/model/AccountDetailsModel;->getOwner()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/refill/bank/AccountDetailsFragment;->account:Landroid/widget/TextView;

    invoke-virtual {p1}, Lru/rocketbank/core/model/AccountDetailsModel;->getAccount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "\u0411\u0430\u043d\u043a \u043a\u043e\u0440\u0440\u0435\u0441\u043f\u043e\u043d\u0434\u0435\u043d\u0442: %s\n\n\u0411\u0430\u043d\u043a \u043f\u043e\u043b\u0443\u0447\u0430\u0442\u0435\u043b\u044f: %s\n\n\u0410\u0434\u0440\u0435\u0441 \u0431\u0430\u043d\u043a\u0430 \u043f\u043e\u043b\u0443\u0447\u0430\u0442\u0435\u043b\u044f: %s\n\nSWIFT: %s\n\n\u041d\u043e\u043c\u0435\u0440 \u0441\u0447\u0451\u0442\u0430: %s\n\n\u041f\u043e\u043b\u0443\u0447\u0430\u0442\u0435\u043b\u044c: %s"

    const/4 v2, 0x6

    .line 149
    new-array v2, v2, [Ljava/lang/Object;

    .line 156
    invoke-virtual {p1}, Lru/rocketbank/core/model/AccountDetailsModel;->getCorr()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 157
    invoke-virtual {p1}, Lru/rocketbank/core/model/AccountDetailsModel;->getBenefBank()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v2, v3

    .line 158
    invoke-virtual {p1}, Lru/rocketbank/core/model/AccountDetailsModel;->getBenefBankAddress()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    aput-object v1, v2, v3

    .line 159
    invoke-virtual {p1}, Lru/rocketbank/core/model/AccountDetailsModel;->getBenefSwift()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x3

    aput-object v1, v2, v3

    .line 160
    invoke-virtual {p1}, Lru/rocketbank/core/model/AccountDetailsModel;->getAccount()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x4

    aput-object v1, v2, v3

    .line 161
    invoke-virtual {p1}, Lru/rocketbank/core/model/AccountDetailsModel;->getOwner()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    .line 149
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/refill/bank/AccountDetailsFragment;->requisites:Ljava/lang/String;

    return-void
.end method

.method public getActionBarTitle()Ljava/lang/String;
    .locals 2

    .line 220
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/refill/bank/AccountDetailsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1101d3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .line 68
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onAttach(Landroid/app/Activity;)V

    const/4 p1, 0x1

    .line 69
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/fragments/refill/bank/AccountDetailsFragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    const v0, 0x7f0d0001

    .line 205
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 206
    invoke-super {p0, p1, p2}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c0101

    const/4 v0, 0x0

    .line 74
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 76
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/fragments/refill/bank/AccountDetailsFragment;->onViewInit(Landroid/view/View;)V

    return-object p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 211
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f09031d

    if-ne v0, v1, :cond_0

    .line 212
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/refill/bank/AccountDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    const-string v0, "\u041e\u0442\u043f\u0440\u0430\u0432\u0438\u0442\u044c \u0440\u0435\u043a\u0432\u0438\u0437\u0438\u0442\u044b"

    const-string v1, "\u0420\u0435\u043a\u0432\u0438\u0437\u0438\u0442\u044b"

    iget-object v2, p0, Lru/rocketbank/r2d2/fragments/refill/bank/AccountDetailsFragment;->requisites:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Lru/rocketbank/r2d2/Utils;->shareText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    .line 215
    :cond_0
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onUserModel(Lru/rocketbank/core/model/UserModel;)V
    .locals 2

    .line 114
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onUserModel(Lru/rocketbank/core/model/UserModel;)V

    .line 116
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/fragments/refill/bank/AccountDetailsFragment;->setupUserModel(Lru/rocketbank/core/model/UserModel;)V

    .line 119
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/refill/bank/AccountDetailsFragment;->token:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 120
    invoke-virtual {p1}, Lru/rocketbank/core/model/UserModel;->getActiveAccount()Lru/rocketbank/core/model/facade/Account;

    move-result-object p1

    goto :goto_0

    .line 122
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/refill/bank/AccountDetailsFragment;->authorization:Lru/rocketbank/core/user/Authorization;

    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/refill/bank/AccountDetailsFragment;->token:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lru/rocketbank/core/user/Authorization;->getAccountImmediate(Lru/rocketbank/core/model/UserModel;Ljava/lang/String;)Lru/rocketbank/core/model/facade/Account;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_2

    .line 126
    invoke-virtual {p1}, Lru/rocketbank/core/model/facade/Account;->getCurrencyCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RUB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 127
    invoke-virtual {p1}, Lru/rocketbank/core/model/facade/Account;->getAccountDetails()Lru/rocketbank/core/model/AccountDetailsModel;

    move-result-object p1

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/fragments/refill/bank/AccountDetailsFragment;->fillDetails(Lru/rocketbank/core/model/AccountDetailsModel;)V

    return-void

    .line 129
    :cond_1
    invoke-virtual {p1}, Lru/rocketbank/core/model/facade/Account;->getAccountDetails()Lru/rocketbank/core/model/AccountDetailsModel;

    move-result-object p1

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/fragments/refill/bank/AccountDetailsFragment;->fillDetailsInternational(Lru/rocketbank/core/model/AccountDetailsModel;)V

    :cond_2
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 104
    invoke-super {p0, p1, p2}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 106
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/refill/bank/AccountDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p2, "TOKEN"

    .line 108
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/refill/bank/AccountDetailsFragment;->token:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method protected onViewInit(Landroid/view/View;)V
    .locals 1

    .line 82
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/refill/bank/AccountDetailsFragment;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object v0

    invoke-interface {v0}, Lru/rocketbank/core/dagger/component/RocketComponent;->getAuthorization()Lru/rocketbank/core/user/Authorization;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/refill/bank/AccountDetailsFragment;->authorization:Lru/rocketbank/core/user/Authorization;

    const v0, 0x7f0902fe

    .line 84
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/refill/bank/AccountDetailsFragment;->russiaView:Landroid/widget/LinearLayout;

    const v0, 0x7f0901f8

    .line 85
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/refill/bank/AccountDetailsFragment;->internationalView:Landroid/widget/LinearLayout;

    const v0, 0x7f090075

    .line 86
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/refill/bank/AccountDetailsFragment;->bankName:Landroid/widget/TextView;

    const v0, 0x7f090073

    .line 88
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/refill/bank/AccountDetailsFragment;->bankCorrView:Landroid/widget/TextView;

    const v0, 0x7f090076

    .line 89
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/refill/bank/AccountDetailsFragment;->bankReceiverView:Landroid/widget/TextView;

    const v0, 0x7f090072

    .line 90
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/refill/bank/AccountDetailsFragment;->bankAddressView:Landroid/widget/TextView;

    const v0, 0x7f09036a

    .line 91
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/refill/bank/AccountDetailsFragment;->swiftView:Landroid/widget/TextView;

    const v0, 0x7f09010e

    .line 93
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/refill/bank/AccountDetailsFragment;->correspondentAccount:Landroid/widget/TextView;

    const v0, 0x7f09018a

    .line 94
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/refill/bank/AccountDetailsFragment;->bic:Landroid/widget/TextView;

    const v0, 0x7f09018b

    .line 95
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/refill/bank/AccountDetailsFragment;->inn:Landroid/widget/TextView;

    const v0, 0x7f09018c

    .line 96
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/refill/bank/AccountDetailsFragment;->kpp:Landroid/widget/TextView;

    const v0, 0x7f09018e

    .line 97
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/refill/bank/AccountDetailsFragment;->goal:Landroid/widget/TextView;

    const v0, 0x7f090189

    .line 98
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/refill/bank/AccountDetailsFragment;->account:Landroid/widget/TextView;

    const v0, 0x7f09018d

    .line 99
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/refill/bank/AccountDetailsFragment;->sender:Landroid/widget/TextView;

    return-void
.end method
