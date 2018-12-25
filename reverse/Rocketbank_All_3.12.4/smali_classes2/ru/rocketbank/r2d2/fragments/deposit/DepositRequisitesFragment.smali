.class public Lru/rocketbank/r2d2/fragments/deposit/DepositRequisitesFragment;
.super Lru/rocketbank/r2d2/fragments/RocketFragment;
.source "DepositRequisitesFragment.java"


# static fields
.field private static final REQUISITES:Ljava/lang/String; = "REQUISITES"


# instance fields
.field private account:Landroid/widget/TextView;

.field private bankName:Landroid/widget/TextView;

.field private bic:Landroid/widget/TextView;

.field private correspondentAccount:Landroid/widget/TextView;

.field private goal:Landroid/widget/TextView;

.field private inn:Landroid/widget/TextView;

.field private kpp:Landroid/widget/TextView;

.field private requisites:Ljava/lang/String;

.field private requisitesModel:Lru/rocketbank/core/model/RequisitesModel;

.field private sender:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/RocketFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Lru/rocketbank/core/model/RequisitesModel;)Lru/rocketbank/r2d2/fragments/deposit/DepositRequisitesFragment;
    .locals 3

    .line 24
    new-instance v0, Lru/rocketbank/r2d2/fragments/deposit/DepositRequisitesFragment;

    invoke-direct {v0}, Lru/rocketbank/r2d2/fragments/deposit/DepositRequisitesFragment;-><init>()V

    .line 26
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "REQUISITES"

    .line 27
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 29
    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/fragments/deposit/DepositRequisitesFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public fillDetails(Lru/rocketbank/core/model/RequisitesModel;)V
    .locals 3

    .line 83
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositRequisitesFragment;->bankName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lru/rocketbank/core/model/RequisitesModel;->getBankName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositRequisitesFragment;->correspondentAccount:Landroid/widget/TextView;

    invoke-virtual {p1}, Lru/rocketbank/core/model/RequisitesModel;->getKs()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositRequisitesFragment;->bic:Landroid/widget/TextView;

    invoke-virtual {p1}, Lru/rocketbank/core/model/RequisitesModel;->getBic()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositRequisitesFragment;->inn:Landroid/widget/TextView;

    invoke-virtual {p1}, Lru/rocketbank/core/model/RequisitesModel;->getInn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositRequisitesFragment;->kpp:Landroid/widget/TextView;

    invoke-virtual {p1}, Lru/rocketbank/core/model/RequisitesModel;->getKpp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositRequisitesFragment;->account:Landroid/widget/TextView;

    invoke-virtual {p1}, Lru/rocketbank/core/model/RequisitesModel;->getAccount()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositRequisitesFragment;->sender:Landroid/widget/TextView;

    invoke-virtual {p1}, Lru/rocketbank/core/model/RequisitesModel;->getOwner()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositRequisitesFragment;->goal:Landroid/widget/TextView;

    invoke-virtual {p1}, Lru/rocketbank/core/model/RequisitesModel;->getGoal()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string p1, "\u0411\u0430\u043d\u043a: %s\n\n\u041a\u043e\u0440\u0440. \u0441\u0447\u0435\u0442: %s\n\n\u0411\u0418\u041a: %s\n\n\u0418\u041d\u041d: %s\n\n\u041a\u041f\u041f: %s\n\n\u041d\u043e\u043c\u0435\u0440 \u0441\u0447\u0451\u0442\u0430: %s\n\n\u041f\u043e\u043b\u0443\u0447\u0430\u0442\u0435\u043b\u044c: %s\n\n\u041d\u0430\u0437\u043d\u0430\u0447\u0435\u043d\u0438\u0435 \u043f\u043b\u0430\u0442\u0435\u0436\u0430: %s"

    const/16 v0, 0x8

    .line 98
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositRequisitesFragment;->bankName:Landroid/widget/TextView;

    .line 107
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositRequisitesFragment;->correspondentAccount:Landroid/widget/TextView;

    .line 108
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositRequisitesFragment;->bic:Landroid/widget/TextView;

    .line 109
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositRequisitesFragment;->inn:Landroid/widget/TextView;

    .line 110
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositRequisitesFragment;->kpp:Landroid/widget/TextView;

    .line 111
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositRequisitesFragment;->account:Landroid/widget/TextView;

    .line 112
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositRequisitesFragment;->sender:Landroid/widget/TextView;

    .line 113
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositRequisitesFragment;->goal:Landroid/widget/TextView;

    .line 114
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 98
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositRequisitesFragment;->requisites:Ljava/lang/String;

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .line 47
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onAttach(Landroid/app/Activity;)V

    const/4 p1, 0x1

    .line 48
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/fragments/deposit/DepositRequisitesFragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    const v0, 0x7f0d000c

    .line 119
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 120
    invoke-super {p0, p1, p2}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c00d4

    const/4 v0, 0x0

    .line 53
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090075

    .line 55
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositRequisitesFragment;->bankName:Landroid/widget/TextView;

    const p2, 0x7f09010e

    .line 56
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositRequisitesFragment;->correspondentAccount:Landroid/widget/TextView;

    const p2, 0x7f09018a

    .line 57
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositRequisitesFragment;->bic:Landroid/widget/TextView;

    const p2, 0x7f09018b

    .line 58
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositRequisitesFragment;->inn:Landroid/widget/TextView;

    const p2, 0x7f09018c

    .line 59
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositRequisitesFragment;->kpp:Landroid/widget/TextView;

    const p2, 0x7f090189

    .line 60
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositRequisitesFragment;->account:Landroid/widget/TextView;

    const p2, 0x7f09018d

    .line 61
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositRequisitesFragment;->sender:Landroid/widget/TextView;

    const p2, 0x7f09018e

    .line 62
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositRequisitesFragment;->goal:Landroid/widget/TextView;

    return-object p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 125
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f09031d

    if-ne v0, v1, :cond_0

    .line 126
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/deposit/DepositRequisitesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    const-string v0, "\u041e\u0442\u043f\u0440\u0430\u0432\u0438\u0442\u044c \u0440\u0435\u043a\u0432\u0438\u0437\u0438\u0442\u044b"

    const-string v1, "\u0420\u0435\u043a\u0432\u0438\u0437\u0438\u0442\u044b"

    iget-object v2, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositRequisitesFragment;->requisites:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Lru/rocketbank/r2d2/Utils;->shareText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    .line 129
    :cond_0
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 69
    invoke-super {p0, p1, p2}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 71
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/deposit/DepositRequisitesFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    if-eqz p2, :cond_0

    const-string v0, "REQUISITES"

    .line 73
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lru/rocketbank/core/model/RequisitesModel;

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositRequisitesFragment;->requisitesModel:Lru/rocketbank/core/model/RequisitesModel;

    :cond_0
    const p2, 0x7f0903d8

    .line 76
    invoke-virtual {p0, p1, p2}, Lru/rocketbank/r2d2/fragments/deposit/DepositRequisitesFragment;->setupDefaultToolbar(Landroid/view/View;I)I

    .line 78
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositRequisitesFragment;->requisitesModel:Lru/rocketbank/core/model/RequisitesModel;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/fragments/deposit/DepositRequisitesFragment;->fillDetails(Lru/rocketbank/core/model/RequisitesModel;)V

    return-void
.end method
