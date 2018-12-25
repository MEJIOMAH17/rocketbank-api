.class public Lru/rocketbank/r2d2/fragments/transfers/BankAmountActivity;
.super Lru/rocketbank/r2d2/activities/SecuredActivity;
.source "BankAmountActivity.java"


# static fields
.field private static final DATA_EXTRA:Ljava/lang/String; = "data"

.field private static final TAG_CHECK_FRAGMENT:Ljava/lang/String; = "check_info_fragment"

.field private static final TAG_EDIT_FRAGMENT:Ljava/lang/String; = "edit_info_fragment"

.field private static final TAG_LOADER_FRAGMENT:Ljava/lang/String; = "loader_fragment"

.field private static final TAG_SECURE_FRAGMENT:Ljava/lang/String; = "secure_fragment"

.field private static final TAG_TRANSFER_FRAGMENT:Ljava/lang/String; = "transfer_fragment"


# instance fields
.field private btnNext:Landroid/widget/Button;

.field private currentFragment:Landroid/support/v4/app/Fragment;

.field public data:Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;

.field private toolbar:Landroid/support/v7/widget/Toolbar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lru/rocketbank/r2d2/activities/SecuredActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lru/rocketbank/r2d2/fragments/transfers/BankAmountActivity;)Landroid/support/v4/app/Fragment;
    .locals 0

    .line 21
    iget-object p0, p0, Lru/rocketbank/r2d2/fragments/transfers/BankAmountActivity;->currentFragment:Landroid/support/v4/app/Fragment;

    return-object p0
.end method

.method private callAmountFragment()V
    .locals 4

    .line 80
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/BankAmountActivity;->data:Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;

    invoke-static {v0}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->newInstance(Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/BankAmountActivity;->currentFragment:Landroid/support/v4/app/Fragment;

    .line 81
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/BankAmountActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 82
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/transfers/BankAmountActivity;->currentFragment:Landroid/support/v4/app/Fragment;

    const-string v2, "transfer_fragment"

    const v3, 0x7f090105

    .line 83
    invoke-virtual {v0, v3, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const/4 v1, 0x0

    .line 84
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 85
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    return-void
.end method

.method private removeFragment(Landroid/support/v4/app/Fragment;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 201
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/BankAmountActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    :cond_0
    return-void
.end method

.method public static startActivity(Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;Landroid/content/Context;)V
    .locals 2

    .line 38
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lru/rocketbank/r2d2/fragments/transfers/BankAmountActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "data"

    .line 39
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 40
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public callConfirmFragment(Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;)V
    .locals 2

    .line 122
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/BankAmountActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/BankAmountActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const-string v1, "\u041f\u0440\u043e\u0432\u0435\u0440\u043a\u0430 \u0440\u0435\u043a\u0432\u0438\u0437\u0438\u0442\u043e\u0432"

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 125
    :cond_0
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/BankAmountActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "check_info_fragment"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_1

    .line 127
    sget-object v0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceCheckInfoFragment;->Companion:Lru/rocketbank/r2d2/fragments/transfers/RemittanceCheckInfoFragment$Companion;

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceCheckInfoFragment$Companion;->newInstance(Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 128
    :cond_1
    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/BankAmountActivity;->currentFragment:Landroid/support/v4/app/Fragment;

    .line 129
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/BankAmountActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    .line 130
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    const v0, 0x7f090105

    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/transfers/BankAmountActivity;->currentFragment:Landroid/support/v4/app/Fragment;

    .line 131
    invoke-virtual {p1, v0, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 132
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public callEditInfoFragment()V
    .locals 3

    .line 136
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/BankAmountActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/BankAmountActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const-string v1, "\u0420\u0435\u0434\u0430\u043a\u0442\u0438\u0440\u043e\u0432\u0430\u043d\u0438\u0435"

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 138
    :cond_0
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/BankAmountActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "edit_info_fragment"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_1

    .line 140
    sget-object v0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceCheckInfoFragment;->Companion:Lru/rocketbank/r2d2/fragments/transfers/RemittanceCheckInfoFragment$Companion;

    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/transfers/BankAmountActivity;->data:Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceCheckInfoFragment$Companion;->newInstance(Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;Z)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 142
    :cond_1
    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/BankAmountActivity;->currentFragment:Landroid/support/v4/app/Fragment;

    .line 143
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/BankAmountActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 144
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f090105

    iget-object v2, p0, Lru/rocketbank/r2d2/fragments/transfers/BankAmountActivity;->currentFragment:Landroid/support/v4/app/Fragment;

    .line 145
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const/4 v1, 0x0

    .line 146
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 147
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public callRemittanceTransferLoader(Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;)V
    .locals 3

    .line 151
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/BankAmountActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 152
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/BankAmountActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const-string v1, "\u041f\u0435\u0440\u0435\u0432\u043e\u0434"

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 153
    :cond_0
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/BankAmountActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "loader_fragment"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_1

    .line 155
    sget-object v0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceLoaderTransferFragment;->Companion:Lru/rocketbank/r2d2/fragments/transfers/RemittanceLoaderTransferFragment$Companion;

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceLoaderTransferFragment$Companion;->newInstance(Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;)Lru/rocketbank/r2d2/fragments/transfers/RemittanceLoaderTransferFragment;

    move-result-object v0

    .line 156
    :cond_1
    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/BankAmountActivity;->currentFragment:Landroid/support/v4/app/Fragment;

    .line 157
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/BankAmountActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    .line 158
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    const v0, 0x7f090105

    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/transfers/BankAmountActivity;->currentFragment:Landroid/support/v4/app/Fragment;

    const-string v2, "loader_fragment"

    .line 159
    invoke-virtual {p1, v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 160
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .line 182
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/BankAmountActivity;->currentFragment:Landroid/support/v4/app/Fragment;

    instance-of v0, v0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;

    if-eqz v0, :cond_0

    .line 183
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/BankAmountActivity;->finish()V

    return-void

    .line 185
    :cond_0
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/BankAmountActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 186
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/BankAmountActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const-string v1, "\u0421\u0443\u043c\u043c\u0430"

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 187
    :cond_1
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/BankAmountActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "transfer_fragment"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 188
    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/BankAmountActivity;->currentFragment:Landroid/support/v4/app/Fragment;

    .line 190
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/BankAmountActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f090105

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 192
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/BankAmountActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "secure_fragment"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    invoke-direct {p0, v0}, Lru/rocketbank/r2d2/fragments/transfers/BankAmountActivity;->removeFragment(Landroid/support/v4/app/Fragment;)V

    .line 193
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/BankAmountActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "loader_fragment"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    invoke-direct {p0, v0}, Lru/rocketbank/r2d2/fragments/transfers/BankAmountActivity;->removeFragment(Landroid/support/v4/app/Fragment;)V

    .line 194
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/BankAmountActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "edit_info_fragment"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    invoke-direct {p0, v0}, Lru/rocketbank/r2d2/fragments/transfers/BankAmountActivity;->removeFragment(Landroid/support/v4/app/Fragment;)V

    .line 195
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/BankAmountActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "check_info_fragment"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    invoke-direct {p0, v0}, Lru/rocketbank/r2d2/fragments/transfers/BankAmountActivity;->removeFragment(Landroid/support/v4/app/Fragment;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 45
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/activities/SecuredActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0c0025

    .line 46
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/fragments/transfers/BankAmountActivity;->setContentView(I)V

    const v0, 0x7f0903d8

    .line 47
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/fragments/transfers/BankAmountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/BankAmountActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    .line 48
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/BankAmountActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/fragments/transfers/BankAmountActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 49
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/BankAmountActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/BankAmountActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    if-eqz p1, :cond_1

    const-string v0, "data"

    .line 54
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/BankAmountActivity;->data:Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;

    goto :goto_0

    .line 56
    :cond_1
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/BankAmountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "data"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/BankAmountActivity;->data:Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;

    :goto_0
    if-nez p1, :cond_2

    .line 60
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/transfers/BankAmountActivity;->callAmountFragment()V

    goto :goto_1

    .line 62
    :cond_2
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/BankAmountActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    const v0, 0x7f090105

    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/BankAmountActivity;->currentFragment:Landroid/support/v4/app/Fragment;

    :goto_1
    const p1, 0x7f09008a

    .line 65
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/fragments/transfers/BankAmountActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/BankAmountActivity;->btnNext:Landroid/widget/Button;

    .line 66
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/BankAmountActivity;->btnNext:Landroid/widget/Button;

    new-instance v0, Lru/rocketbank/r2d2/fragments/transfers/BankAmountActivity$1;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/fragments/transfers/BankAmountActivity$1;-><init>(Lru/rocketbank/r2d2/fragments/transfers/BankAmountActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onEventMainThread(Lru/rocketbank/core/events/NextButtonEvent;)V
    .locals 2

    .line 90
    invoke-virtual {p1}, Lru/rocketbank/core/events/NextButtonEvent;->getFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/transfers/BankAmountActivity;->currentFragment:Landroid/support/v4/app/Fragment;

    if-eq v0, v1, :cond_0

    return-void

    .line 93
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/BankAmountActivity;->btnNext:Landroid/widget/Button;

    invoke-virtual {p1}, Lru/rocketbank/core/events/NextButtonEvent;->isEnable()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 94
    invoke-virtual {p1}, Lru/rocketbank/core/events/NextButtonEvent;->getVisibility()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 95
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/BankAmountActivity;->btnNext:Landroid/widget/Button;

    invoke-virtual {p1}, Lru/rocketbank/core/events/NextButtonEvent;->getVisibility()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 97
    :cond_1
    invoke-virtual {p1}, Lru/rocketbank/core/events/NextButtonEvent;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 98
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/BankAmountActivity;->btnNext:Landroid/widget/Button;

    invoke-virtual {p1}, Lru/rocketbank/core/events/NextButtonEvent;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .line 116
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/activities/SecuredActivity;->onNewIntent(Landroid/content/Intent;)V

    const-string v0, "data"

    .line 117
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/BankAmountActivity;->data:Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;

    .line 118
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/transfers/BankAmountActivity;->callAmountFragment()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 171
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 176
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/activities/SecuredActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 173
    :cond_0
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/BankAmountActivity;->onBackPressed()V

    const/4 p1, 0x1

    return p1
.end method

.method protected onPause()V
    .locals 0

    .line 110
    invoke-static {p0}, Lru/rocketbank/r2d2/Utils;->closeKeyboardIfExists(Landroid/app/Activity;)V

    .line 111
    invoke-super {p0}, Lru/rocketbank/r2d2/activities/SecuredActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 104
    invoke-super {p0}, Lru/rocketbank/r2d2/activities/SecuredActivity;->onResume()V

    .line 105
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/BankAmountActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    const v1, 0x7f110055

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setTitle(I)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 165
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/activities/SecuredActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "data"

    .line 166
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/transfers/BankAmountActivity;->data:Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method
