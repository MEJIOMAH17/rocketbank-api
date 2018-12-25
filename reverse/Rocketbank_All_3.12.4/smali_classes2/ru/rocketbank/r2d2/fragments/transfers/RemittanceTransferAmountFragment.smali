.class public Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;
.super Lru/rocketbank/r2d2/fragments/RocketFragment;
.source "RemittanceTransferAmountFragment.java"

# interfaces
.implements Lru/rocketbank/r2d2/fragments/NextButtonListener;


# static fields
.field private static final DATA_EXTRA:Ljava/lang/String; = "data"

.field private static final STATE_COMMISSION_LOADED:I = 0x0

.field private static final STATE_COMMISSION_LOADING:I = 0x1


# instance fields
.field private accountFrom:Lru/rocketbank/core/model/facade/Account;

.field private accountWidget:Lru/rocketbank/r2d2/widget/AccountWidget;

.field private amount:Ljava/lang/Double;

.field private bespInfo:Landroid/widget/ImageButton;

.field private bespPopupText:Ljava/lang/String;

.field private bespSwitch:Landroid/support/v7/widget/SwitchCompat;

.field private bespTextView:Landroid/widget/TextView;

.field private bespView:Landroid/view/View;

.field private bikSubscription:Lrx/Subscription;

.field private btn_more:Landroid/widget/ImageView;

.field public buttonEnabled:Z

.field private commission:Landroid/widget/TextView;

.field private commissionSubscription:Lrx/Subscription;

.field currencyManager:Lru/rocketbank/core/manager/CurrencyManager;

.field private data:Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;

.field private edittextAmount:Landroid/widget/EditText;

.field private hasCommission:Z

.field private logo:Lde/hdodenhof/circleimageview/CircleImageView;

.field moneyFormatter:Lru/rocketbank/core/utils/MoneyFormatter;

.field private name:Landroid/widget/TextView;

.field private number_card:Landroid/widget/TextView;

.field private popup:Landroid/widget/PopupWindow;

.field private progressBar:Landroid/widget/ProgressBar;

.field rocketAPI:Lru/rocketbank/core/network/api/RocketAPI;

.field private scrollView:Landroid/widget/ScrollView;

.field private selectAccountSubscription:Lrx/Subscription;

.field private textSubscriptionAmount:Lrx/Subscription;

.field private userModel:Lru/rocketbank/core/model/UserModel;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 56
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/RocketFragment;-><init>()V

    const/4 v0, 0x0

    .line 95
    iput-boolean v0, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->buttonEnabled:Z

    .line 96
    iput-boolean v0, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->hasCommission:Z

    const-wide/16 v0, 0x0

    .line 310
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->amount:Ljava/lang/Double;

    return-void
.end method

.method static synthetic access$000(Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;Lru/rocketbank/core/model/facade/Account;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->onSelectAccount(Lru/rocketbank/core/model/facade/Account;)V

    return-void
.end method

.method static synthetic access$100(Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;)Ljava/lang/Double;
    .locals 0

    .line 56
    iget-object p0, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->amount:Ljava/lang/Double;

    return-object p0
.end method

.method static synthetic access$1000(Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;I)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->setComissionText(I)V

    return-void
.end method

.method static synthetic access$102(Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;Ljava/lang/Double;)Ljava/lang/Double;
    .locals 0

    .line 56
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->amount:Ljava/lang/Double;

    return-object p1
.end method

.method static synthetic access$1100(Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;)Landroid/widget/ProgressBar;
    .locals 0

    .line 56
    iget-object p0, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->progressBar:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$1200(Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;)Landroid/widget/TextView;
    .locals 0

    .line 56
    iget-object p0, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->commission:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1300(Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;)Z
    .locals 0

    .line 56
    iget-boolean p0, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->hasCommission:Z

    return p0
.end method

.method static synthetic access$1302(Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;Z)Z
    .locals 0

    .line 56
    iput-boolean p1, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->hasCommission:Z

    return p1
.end method

.method static synthetic access$1400(Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;Z)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->updateButton(Z)V

    return-void
.end method

.method static synthetic access$1500(Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;)Lru/rocketbank/core/model/UserModel;
    .locals 0

    .line 56
    iget-object p0, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->userModel:Lru/rocketbank/core/model/UserModel;

    return-object p0
.end method

.method static synthetic access$1600(Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;Ljava/lang/String;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->setComissionText(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1700(Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;)Z
    .locals 0

    .line 56
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->enoughMoney()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1800(Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;Landroid/view/View;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->createPopUpMenu(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1900(Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->onConfirm(Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;)V

    return-void
.end method

.method static synthetic access$200(Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;)Landroid/view/View;
    .locals 0

    .line 56
    iget-object p0, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->bespView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$300(Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;)Landroid/support/v7/widget/SwitchCompat;
    .locals 0

    .line 56
    iget-object p0, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->bespSwitch:Landroid/support/v7/widget/SwitchCompat;

    return-object p0
.end method

.method static synthetic access$400(Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;)Landroid/widget/TextView;
    .locals 0

    .line 56
    iget-object p0, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->bespTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$500(Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;)Landroid/widget/ImageButton;
    .locals 0

    .line 56
    iget-object p0, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->bespInfo:Landroid/widget/ImageButton;

    return-object p0
.end method

.method static synthetic access$600(Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;)Ljava/lang/String;
    .locals 0

    .line 56
    iget-object p0, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->bespPopupText:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$602(Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 56
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->bespPopupText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;Ljava/lang/String;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->showPopup(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->hidePopup()V

    return-void
.end method

.method static synthetic access$900(Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->checkAmount()V

    return-void
.end method

.method private checkAmount()V
    .locals 5

    .line 155
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->commissionSubscription:Lrx/Subscription;

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->unsubscribe(Lrx/Subscription;)V

    const/4 v0, 0x0

    .line 156
    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->commissionSubscription:Lrx/Subscription;

    .line 157
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->hidePopup()V

    .line 158
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->amount:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-nez v4, :cond_0

    .line 159
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->emptyAmount()V

    return-void

    .line 163
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->accountWidget:Lru/rocketbank/r2d2/widget/AccountWidget;

    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->enoughMoney()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f060228

    goto :goto_0

    :cond_1
    const v1, 0x7f06006e

    :goto_0
    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/widget/AccountWidget;->highlightAmount(I)V

    .line 164
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->enoughMoney()Z

    move-result v0

    if-nez v0, :cond_2

    .line 165
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->progressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 166
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->commission:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 167
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->commission:Landroid/widget/TextView;

    const v2, 0x7f110323

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 168
    invoke-direct {p0, v1}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->updateButton(Z)V

    return-void

    .line 172
    :cond_2
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->requestComission()V

    return-void
.end method

.method private createAmountSubscriber()Lrx/Subscriber;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Subscriber<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 313
    new-instance v0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment$8;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment$8;-><init>(Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;)V

    return-object v0
.end method

.method private createPopUpMenu(Landroid/view/View;)V
    .locals 3

    .line 438
    new-instance v0, Landroid/support/v7/widget/PopupMenu;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/v7/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    const p1, 0x800035

    .line 440
    invoke-virtual {v0, p1}, Landroid/support/v7/widget/PopupMenu;->setGravity(I)V

    .line 442
    invoke-virtual {v0}, Landroid/support/v7/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p1

    const-string v1, "\u0420\u0435\u0434\u0430\u043a\u0442\u0438\u0440\u043e\u0432\u0430\u0442\u044c"

    const/4 v2, 0x0

    .line 443
    invoke-interface {p1, v2, v2, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 445
    new-instance p1, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment$11;

    invoke-direct {p1, p0}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment$11;-><init>(Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;)V

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/support/v7/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 458
    invoke-virtual {v0}, Landroid/support/v7/widget/PopupMenu;->show()V

    return-void
.end method

.method private emptyAmount()V
    .locals 2

    .line 396
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->progressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 397
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->commission:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 398
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->commission:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    .line 399
    invoke-direct {p0, v0}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->updateButton(Z)V

    return-void
.end method

.method private enoughMoney()Z
    .locals 5

    .line 388
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->amount:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-lez v4, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->accountFrom:Lru/rocketbank/core/model/facade/Account;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->amount:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iget-object v2, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->accountFrom:Lru/rocketbank/core/model/facade/Account;

    invoke-virtual {v2}, Lru/rocketbank/core/model/facade/Account;->getBalance()D

    move-result-wide v2

    cmpg-double v4, v0, v2

    if-gtz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private getIsBesp()Z
    .locals 1

    .line 392
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->bespSwitch:Landroid/support/v7/widget/SwitchCompat;

    invoke-virtual {v0}, Landroid/support/v7/widget/SwitchCompat;->isChecked()Z

    move-result v0

    return v0
.end method

.method private hidePopup()V
    .locals 3

    .line 290
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->bespInfo:Landroid/widget/ImageButton;

    if-nez v0, :cond_0

    return-void

    .line 293
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->bespInfo:Landroid/widget/ImageButton;

    const v1, 0x3e75c28f    # 0.24f

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 294
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->bespInfo:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f060228

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setColorFilter(I)V

    .line 295
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->popup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1

    .line 296
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->popup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 298
    :cond_1
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->bespInfo:Landroid/widget/ImageButton;

    new-instance v1, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment$7;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment$7;-><init>(Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private moveToTheConfirmScreen(Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;)V
    .locals 4

    .line 468
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->accountFrom:Lru/rocketbank/core/model/facade/Account;

    invoke-virtual {v0}, Lru/rocketbank/core/model/facade/Account;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;->setCardAccount(Ljava/lang/String;)V

    .line 469
    iget-boolean v0, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->hasCommission:Z

    if-eqz v0, :cond_0

    .line 470
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->commission:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f110314

    new-instance v3, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment$12;

    invoke-direct {v3, p0, p1}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment$12;-><init>(Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;)V

    const/4 p1, 0x0

    invoke-static {v0, v1, v2, v3, p1}, Lru/rocketbank/r2d2/helpers/UIHelper;->showAlertDialog(Landroid/content/Context;Ljava/lang/String;ILjava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void

    .line 477
    :cond_0
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->onConfirm(Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;)V

    return-void
.end method

.method public static newInstance(Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;)Landroid/support/v4/app/Fragment;
    .locals 3

    .line 99
    new-instance v0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;

    invoke-direct {v0}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;-><init>()V

    .line 101
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "data"

    .line 102
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 103
    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private onConfirm(Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;)V
    .locals 1

    .line 482
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/fragments/transfers/BankAmountActivity;

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/fragments/transfers/BankAmountActivity;->callConfirmFragment(Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;)V

    return-void
.end method

.method private onSelectAccount(Lru/rocketbank/core/model/facade/Account;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->accountFrom:Lru/rocketbank/core/model/facade/Account;

    .line 151
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->checkAmount()V

    return-void
.end method

.method private requestComission()V
    .locals 11

    .line 334
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->data:Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;

    invoke-virtual {v0}, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;->getRemittance_kind()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;->valueOf(Ljava/lang/String;)Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;

    move-result-object v0

    sget-object v1, Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;->budget:Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;

    if-ne v0, v1, :cond_0

    .line 335
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->enoughMoney()Z

    move-result v0

    invoke-direct {p0, v0}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->updateButton(Z)V

    return-void

    .line 339
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->commissionSubscription:Lrx/Subscription;

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->unsubscribe(Lrx/Subscription;)V

    const/4 v0, 0x0

    .line 340
    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->commissionSubscription:Lrx/Subscription;

    .line 342
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->progressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 343
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->commission:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 344
    iget-object v2, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->rocketAPI:Lru/rocketbank/core/network/api/RocketAPI;

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->amount:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->data:Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;

    .line 345
    invoke-virtual {v0}, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;->getBik()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->data:Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;

    .line 346
    invoke-virtual {v0}, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;->isVat()Ljava/lang/Boolean;

    move-result-object v6

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->data:Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;

    .line 347
    invoke-virtual {v0}, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;->getCorr_bank()Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->data:Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;

    .line 348
    invoke-virtual {v0}, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;->getRecipient_name()Ljava/lang/String;

    move-result-object v8

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->data:Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;

    .line 349
    invoke-virtual {v0}, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;->getPurpose()Ljava/lang/String;

    move-result-object v9

    .line 350
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->getIsBesp()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    .line 344
    invoke-interface/range {v2 .. v10}, Lru/rocketbank/core/network/api/RocketAPI;->remittancesCommission(DLjava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Lrx/Observable;

    move-result-object v0

    .line 351
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment$9;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment$9;-><init>(Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;)V

    .line 352
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->commissionSubscription:Lrx/Subscription;

    return-void
.end method

.method private setComissionText(I)V
    .locals 0

    .line 412
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->setComissionText(Ljava/lang/String;)V

    return-void
.end method

.method private setComissionText(Ljava/lang/String;)V
    .locals 2

    .line 403
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->commission:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 404
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->progressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 405
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->commission:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz p1, :cond_0

    .line 406
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 407
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->scrollView:Landroid/widget/ScrollView;

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->commission:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getBottom()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    :cond_0
    return-void
.end method

.method private setRemittanceInfo()V
    .locals 2

    .line 421
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->data:Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;

    invoke-virtual {v0}, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;->getLogo()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 422
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    const v1, 0x7f080175

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->logo:Lde/hdodenhof/circleimageview/CircleImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableTypeRequest;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    goto :goto_0

    .line 424
    :cond_0
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->data:Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;

    invoke-virtual {v1}, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;->getLogo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->logo:Lde/hdodenhof/circleimageview/CircleImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableTypeRequest;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 427
    :goto_0
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->name:Landroid/widget/TextView;

    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->data:Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;

    invoke-virtual {v1}, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;->getRecipient_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 428
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->number_card:Landroid/widget/TextView;

    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->data:Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;

    invoke-virtual {v1}, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;->getCorr_number()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 429
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->btn_more:Landroid/widget/ImageView;

    new-instance v1, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment$10;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment$10;-><init>(Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private showPopup(Ljava/lang/String;)V
    .locals 6

    .line 259
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->hidePopup()V

    if-eqz p1, :cond_1

    .line 260
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 263
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->bespInfo:Landroid/widget/ImageButton;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 264
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->bespInfo:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f060200

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setColorFilter(I)V

    .line 265
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->bespInfo:Landroid/widget/ImageButton;

    new-instance v1, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment$5;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment$5;-><init>(Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 271
    new-instance v0, Landroid/widget/PopupWindow;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/PopupWindow;-><init>(II)V

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->popup:Landroid/widget/PopupWindow;

    .line 272
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0c0077

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 273
    new-instance v2, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment$6;

    invoke-direct {v2, p0}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment$6;-><init>(Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v2, 0x7f09038f

    .line 280
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 281
    invoke-virtual {v0, v1, v1}, Landroid/view/View;->measure(II)V

    .line 282
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->popup:Landroid/widget/PopupWindow;

    invoke-virtual {p1, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    const/4 p1, 0x2

    .line 284
    new-array p1, p1, [I

    .line 285
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->bespInfo:Landroid/widget/ImageButton;

    invoke-virtual {v1, p1}, Landroid/widget/ImageButton;->getLocationOnScreen([I)V

    .line 286
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->popup:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->bespInfo:Landroid/widget/ImageButton;

    const/16 v3, 0x30

    const/4 v4, 0x0

    aget v4, p1, v4

    const/4 v5, 0x1

    aget p1, p1, v5

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {v1, v2, v3, v4, p1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method private updateButton(Z)V
    .locals 0

    .line 416
    iput-boolean p1, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->buttonEnabled:Z

    .line 417
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object p1

    if-nez p1, :cond_0

    move-object p1, p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->updateNextButton(Landroid/support/v4/app/Fragment;)V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c0104

    const/4 v0, 0x0

    .line 120
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 122
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object p2

    invoke-interface {p2}, Lru/rocketbank/core/dagger/component/RocketComponent;->getRocketApi()Lru/rocketbank/core/network/api/RocketAPI;

    move-result-object p2

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->rocketAPI:Lru/rocketbank/core/network/api/RocketAPI;

    .line 123
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object p2

    invoke-interface {p2}, Lru/rocketbank/core/dagger/component/RocketComponent;->getCurrencyManager()Lru/rocketbank/core/manager/CurrencyManager;

    move-result-object p2

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->currencyManager:Lru/rocketbank/core/manager/CurrencyManager;

    .line 124
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object p2

    invoke-interface {p2}, Lru/rocketbank/core/dagger/component/RocketComponent;->getMoneyFormatter()Lru/rocketbank/core/utils/MoneyFormatter;

    move-result-object p2

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->moneyFormatter:Lru/rocketbank/core/utils/MoneyFormatter;

    const p2, 0x7f0903e8

    .line 126
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->commission:Landroid/widget/TextView;

    const p2, 0x7f0902ba

    .line 127
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ProgressBar;

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->progressBar:Landroid/widget/ProgressBar;

    const p2, 0x7f090308

    .line 128
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ScrollView;

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->scrollView:Landroid/widget/ScrollView;

    const p2, 0x7f09015e

    .line 129
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->edittextAmount:Landroid/widget/EditText;

    const p2, 0x7f090226

    .line 130
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lde/hdodenhof/circleimageview/CircleImageView;

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->logo:Lde/hdodenhof/circleimageview/CircleImageView;

    const p2, 0x7f0903f2

    .line 131
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->name:Landroid/widget/TextView;

    const p2, 0x7f0903f3

    .line 132
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->number_card:Landroid/widget/TextView;

    const p2, 0x7f090202

    .line 133
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->btn_more:Landroid/widget/ImageView;

    const p2, 0x7f09007a

    .line 134
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->bespView:Landroid/view/View;

    const p2, 0x7f09007d

    .line 135
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->bespTextView:Landroid/widget/TextView;

    const p2, 0x7f09007c

    .line 136
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/support/v7/widget/SwitchCompat;

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->bespSwitch:Landroid/support/v7/widget/SwitchCompat;

    const p2, 0x7f09007b

    .line 137
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->bespInfo:Landroid/widget/ImageButton;

    const p2, 0x7f09000f

    .line 138
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lru/rocketbank/r2d2/widget/AccountWidget;

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->accountWidget:Lru/rocketbank/r2d2/widget/AccountWidget;

    const p2, 0x7f090316

    .line 140
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 141
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    const-string p3, "data"

    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->data:Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;

    .line 143
    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->accountWidget:Lru/rocketbank/r2d2/widget/AccountWidget;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p3

    sget-object v0, Lru/rocketbank/r2d2/widget/AccountWidget;->ROCKET_FILTER:Lkotlin/jvm/functions/Function1;

    invoke-virtual {p2, p3, v0}, Lru/rocketbank/r2d2/widget/AccountWidget;->setup(Landroid/support/v4/app/FragmentManager;Lkotlin/jvm/functions/Function1;)V

    .line 145
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->setRemittanceInfo()V

    return-object p1
.end method

.method public onNextButtonClick()V
    .locals 5

    .line 487
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 489
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    .line 488
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 493
    :try_start_0
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->amount:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_0

    .line 494
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->data:Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;

    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->amount:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;->setAmount(Ljava/lang/String;)V

    .line 495
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->data:Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;

    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->getIsBesp()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;->setBesp(Ljava/lang/Boolean;)V

    .line 496
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->data:Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;

    invoke-direct {p0, v0}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->moveToTheConfirmScreen(Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;)V

    return-void

    :cond_0
    const-string v0, "\u041f\u043e\u0436\u0430\u043b\u0443\u0439\u0441\u0442\u0430, \u0432\u0432\u0435\u0434\u0438\u0442\u0435 \u043a\u043e\u0440\u0440\u0435\u043a\u0442\u043d\u0443\u044e \u0441\u0443\u043c\u043c\u0443."

    .line 498
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->showAlert(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string v0, "\u041f\u043e\u0436\u0430\u043b\u0443\u0439\u0441\u0442\u0430, \u0432\u0432\u0435\u0434\u0438\u0442\u0435 \u043a\u043e\u0440\u0440\u0435\u043a\u0442\u043d\u0443\u044e \u0441\u0443\u043c\u043c\u0443."

    .line 501
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->showAlert(Ljava/lang/String;)V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 110
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->commissionSubscription:Lrx/Subscription;

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->unsubscribe(Lrx/Subscription;)V

    .line 111
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->textSubscriptionAmount:Lrx/Subscription;

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->unsubscribe(Lrx/Subscription;)V

    .line 112
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->bikSubscription:Lrx/Subscription;

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->unsubscribe(Lrx/Subscription;)V

    .line 113
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->selectAccountSubscription:Lrx/Subscription;

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->unsubscribe(Lrx/Subscription;)V

    .line 114
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->hidePopup()V

    .line 115
    invoke-super {p0}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 177
    invoke-super {p0}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onResume()V

    .line 178
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->accountWidget:Lru/rocketbank/r2d2/widget/AccountWidget;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/widget/AccountWidget;->init()V

    .line 179
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->accountWidget:Lru/rocketbank/r2d2/widget/AccountWidget;

    .line 180
    invoke-virtual {v0}, Lru/rocketbank/r2d2/widget/AccountWidget;->getOnAccountSelected()Lrx/subjects/BehaviorSubject;

    move-result-object v0

    .line 181
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/subjects/BehaviorSubject;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment$1;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment$1;-><init>(Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;)V

    .line 182
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->selectAccountSubscription:Lrx/Subscription;

    .line 189
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->updateNextButton(Landroid/support/v4/app/Fragment;)V

    .line 190
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->edittextAmount:Landroid/widget/EditText;

    new-instance v1, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment$2;

    iget-object v2, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->edittextAmount:Landroid/widget/EditText;

    invoke-direct {v1, p0, v2}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment$2;-><init>(Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;Landroid/widget/EditText;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 197
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->createAmountSubscriber()Lrx/Subscriber;

    move-result-object v0

    .line 199
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->edittextAmount:Landroid/widget/EditText;

    invoke-static {v1}, Lcom/jakewharton/rxbinding/widget/RxTextView;->afterTextChangeEvents(Landroid/widget/TextView;)Lrx/Observable;

    move-result-object v1

    new-instance v2, Lru/rocketbank/core/utils/rx/TextObserverToDouble;

    invoke-direct {v2}, Lru/rocketbank/core/utils/rx/TextObserverToDouble;-><init>()V

    .line 200
    invoke-virtual {v1, v2}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v1

    .line 201
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v1

    .line 202
    invoke-virtual {v1, v0}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object v1

    iput-object v1, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->textSubscriptionAmount:Lrx/Subscription;

    .line 204
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->data:Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;

    invoke-virtual {v1}, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;->getRemittance_kind()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;->valueOf(Ljava/lang/String;)Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;

    move-result-object v1

    sget-object v2, Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;->budget:Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;

    if-eq v1, v2, :cond_1

    .line 205
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->bespSwitch:Landroid/support/v7/widget/SwitchCompat;

    new-instance v2, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment$3;

    invoke-direct {v2, p0, v0}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment$3;-><init>(Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;Lrx/Subscriber;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 212
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->rocketAPI:Lru/rocketbank/core/network/api/RocketAPI;

    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->data:Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;

    invoke-virtual {v1}, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;->getBik()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lru/rocketbank/core/network/api/RocketAPI;->getBiks(Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    .line 213
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 214
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment$4;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment$4;-><init>(Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;)V

    .line 215
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->bikSubscription:Lrx/Subscription;

    goto :goto_1

    .line 249
    :cond_1
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->bespView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 250
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->bespSwitch:Landroid/support/v7/widget/SwitchCompat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    .line 252
    :goto_1
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->edittextAmount:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 253
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->edittextAmount:Landroid/widget/EditText;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 254
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->edittextAmount:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    :cond_2
    return-void
.end method

.method public onUserModel(Lru/rocketbank/core/model/UserModel;)V
    .locals 0

    .line 462
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onUserModel(Lru/rocketbank/core/model/UserModel;)V

    .line 464
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->setUserModel(Lru/rocketbank/core/model/UserModel;)V

    return-void
.end method

.method public setUserModel(Lru/rocketbank/core/model/UserModel;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->userModel:Lru/rocketbank/core/model/UserModel;

    return-void
.end method

.method public updateNextButton(Landroid/support/v4/app/Fragment;)V
    .locals 5

    .line 307
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lru/rocketbank/core/events/NextButtonEvent;

    iget-boolean v2, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->buttonEnabled:Z

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const v4, 0x7f110314

    invoke-virtual {p0, v4}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceTransferAmountFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, p1, v2, v3, v4}, Lru/rocketbank/core/events/NextButtonEvent;-><init>(Landroid/support/v4/app/Fragment;ZLjava/lang/Integer;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method
