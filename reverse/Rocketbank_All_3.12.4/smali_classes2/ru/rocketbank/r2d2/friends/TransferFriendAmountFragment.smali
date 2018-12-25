.class public final Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment;
.super Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;
.source "TransferFriendAmountFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTransferFriendAmountFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TransferFriendAmountFragment.kt\nru/rocketbank/r2d2/friends/TransferFriendAmountFragment\n+ 2 Strings.kt\nkotlin/text/StringsKt__StringsKt\n*L\n1#1,185:1\n60#2:186\n31#2,23:187\n*E\n*S KotlinDebug\n*F\n+ 1 TransferFriendAmountFragment.kt\nru/rocketbank/r2d2/friends/TransferFriendAmountFragment\n*L\n103#1:186\n103#1,23:187\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment$Companion;

.field private static final STATE_COMMISSION_LOADED:I = 0x0

.field private static final STATE_COMMISSION_LOADING:I = 0x1


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private accountChangedSubscription:Lrx/Subscription;

.field private card2CardApi:Lru/rocketbank/core/network/api/Card2CardApi;

.field private commission:Landroid/widget/TextView;

.field private commissionSubscription:Lrx/Subscription;

.field private commissionSwitcher:Landroid/widget/ViewSwitcher;

.field private moneyFormatter:Lru/rocketbank/core/utils/MoneyFormatter;

.field private token:Ljava/lang/String;

.field private userModel:Lru/rocketbank/core/model/UserModel;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment;->Companion:Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;-><init>()V

    .line 33
    invoke-static {}, Lrx/subscriptions/Subscriptions;->empty()Lrx/Subscription;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment;->accountChangedSubscription:Lrx/Subscription;

    return-void
.end method

.method public static final synthetic access$getCommission$p(Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment;)Landroid/widget/TextView;
    .locals 0

    .line 22
    iget-object p0, p0, Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment;->commission:Landroid/widget/TextView;

    return-object p0
.end method

.method public static final synthetic access$getCommissionSubscription$p(Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment;)Lrx/Subscription;
    .locals 0

    .line 22
    iget-object p0, p0, Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment;->commissionSubscription:Lrx/Subscription;

    return-object p0
.end method

.method public static final synthetic access$getCommissionSwitcher$p(Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment;)Landroid/widget/ViewSwitcher;
    .locals 0

    .line 22
    iget-object p0, p0, Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment;->commissionSwitcher:Landroid/widget/ViewSwitcher;

    return-object p0
.end method

.method public static final synthetic access$getMoneyFormatter$p(Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment;)Lru/rocketbank/core/utils/MoneyFormatter;
    .locals 0

    .line 22
    iget-object p0, p0, Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment;->moneyFormatter:Lru/rocketbank/core/utils/MoneyFormatter;

    return-object p0
.end method

.method public static final synthetic access$getToken$p(Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment;)Ljava/lang/String;
    .locals 1

    .line 22
    iget-object p0, p0, Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment;->token:Ljava/lang/String;

    if-nez p0, :cond_0

    const-string v0, "token"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$getUserModel$p(Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment;)Lru/rocketbank/core/model/UserModel;
    .locals 0

    .line 22
    iget-object p0, p0, Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment;->userModel:Lru/rocketbank/core/model/UserModel;

    return-object p0
.end method

.method public static final synthetic access$onRequestDataFilled$s-181303887(Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment;Lru/rocketbank/core/model/contact/Contact;DLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 22
    invoke-super/range {p0 .. p5}, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;->onRequestDataFilled(Lru/rocketbank/core/model/contact/Contact;DLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$setCommission$p(Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment;Landroid/widget/TextView;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment;->commission:Landroid/widget/TextView;

    return-void
.end method

.method public static final synthetic access$setCommissionSubscription$p(Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment;Lrx/Subscription;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment;->commissionSubscription:Lrx/Subscription;

    return-void
.end method

.method public static final synthetic access$setCommissionSwitcher$p(Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment;Landroid/widget/ViewSwitcher;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment;->commissionSwitcher:Landroid/widget/ViewSwitcher;

    return-void
.end method

.method public static final synthetic access$setMoneyFormatter$p(Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment;Lru/rocketbank/core/utils/MoneyFormatter;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment;->moneyFormatter:Lru/rocketbank/core/utils/MoneyFormatter;

    return-void
.end method

.method public static final synthetic access$setToken$p(Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment;Ljava/lang/String;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment;->token:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setUserModel$p(Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment;Lru/rocketbank/core/model/UserModel;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment;->userModel:Lru/rocketbank/core/model/UserModel;

    return-void
.end method

.method private final emptyAmount()V
    .locals 2

    .line 159
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment;->commissionSwitcher:Landroid/widget/ViewSwitcher;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->setDisplayedChild(I)V

    .line 160
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment;->commissionSwitcher:Landroid/widget/ViewSwitcher;

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->setVisibility(I)V

    .line 161
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment;->commission:Landroid/widget/TextView;

    if-nez v0, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    const-string v1, ""

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    invoke-virtual {p0}, Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment;->disableNextButton()V

    return-void
.end method

.method private final setupAccountsView(Lru/rocketbank/core/model/contact/Contact;Lru/rocketbank/r2d2/widget/AccountWidget;)V
    .locals 2

    .line 144
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast v0, Ljava/util/Set;

    if-nez p1, :cond_0

    .line 145
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {p1}, Lru/rocketbank/core/model/contact/Contact;->getUsd()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 146
    sget-object v1, Lru/rocketbank/core/model/enums/Currency;->DOLLAR:Lru/rocketbank/core/model/enums/Currency;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 147
    :cond_1
    invoke-virtual {p1}, Lru/rocketbank/core/model/contact/Contact;->getEur()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 148
    sget-object p1, Lru/rocketbank/core/model/enums/Currency;->EURO:Lru/rocketbank/core/model/enums/Currency;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 150
    :cond_2
    invoke-virtual {p0}, Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p2, p1, v0}, Lru/rocketbank/r2d2/widget/AccountWidget;->setup(Landroid/support/v4/app/FragmentManager;Ljava/util/Set;)V

    return-void
.end method


# virtual methods
.method public final _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public final _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final accountsVisible()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final getNextButtonText()I
    .locals 1

    const v0, 0x7f1101f5

    return v0
.end method

.method protected final isTransfer()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final onDestroyView()V
    .locals 1

    .line 70
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment;->accountChangedSubscription:Lrx/Subscription;

    invoke-interface {v0}, Lrx/Subscription;->unsubscribe()V

    .line 71
    invoke-super {p0}, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;->onDestroyView()V

    .line 72
    invoke-virtual {p0}, Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public final onPause()V
    .locals 1

    .line 166
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment;->commissionSubscription:Lrx/Subscription;

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment;->unsubscribe(Lrx/Subscription;)V

    .line 167
    invoke-super {p0}, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;->onPause()V

    return-void
.end method

.method protected final onRequestDataFilled(Lru/rocketbank/core/model/contact/Contact;DLjava/lang/String;Ljava/lang/String;)V
    .locals 8

    const-string p5, "contact"

    invoke-static {p1, p5}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "comment"

    invoke-static {p4, p5}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    invoke-virtual {p0}, Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p5

    check-cast p5, Landroid/content/Context;

    const v0, 0x7f110484

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v7, Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment$onRequestDataFilled$1;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment$onRequestDataFilled$1;-><init>(Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment;Lru/rocketbank/core/model/contact/Contact;DLjava/lang/String;)V

    check-cast v7, Ljava/lang/Runnable;

    new-instance p1, Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment$onRequestDataFilled$2;

    invoke-direct {p1, p0}, Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment$onRequestDataFilled$2;-><init>(Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment;)V

    check-cast p1, Ljava/lang/Runnable;

    const p2, 0x7f11032e

    invoke-static {p5, v0, p2, v7, p1}, Lru/rocketbank/r2d2/helpers/UIHelper;->showAlertDialog(Landroid/content/Context;Ljava/lang/String;ILjava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onTextChanged()V
    .locals 8

    .line 81
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment;->userModel:Lru/rocketbank/core/model/UserModel;

    if-nez v0, :cond_0

    return-void

    .line 84
    :cond_0
    invoke-virtual {p0}, Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment;->getContact()Lru/rocketbank/core/model/contact/Contact;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {v0}, Lru/rocketbank/core/model/contact/Contact;->isRocket()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    .line 85
    invoke-virtual {p0}, Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment;->getAmountString()Ljava/lang/String;

    move-result-object v0

    .line 86
    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_2

    move v1, v2

    :cond_2
    if-eqz v1, :cond_3

    .line 87
    invoke-virtual {p0}, Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment;->disableNextButton()V

    return-void

    .line 90
    :cond_3
    invoke-virtual {p0}, Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment;->getAmount()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment;->isZero(D)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 91
    invoke-virtual {p0}, Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment;->disableNextButton()V

    return-void

    .line 93
    :cond_4
    invoke-virtual {p0}, Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment;->enableNextButton()V

    return-void

    .line 96
    :cond_5
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment;->commissionSubscription:Lrx/Subscription;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment;->commissionSubscription:Lrx/Subscription;

    if-nez v0, :cond_6

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_6
    invoke-interface {v0}, Lrx/Subscription;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_8

    .line 97
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment;->commissionSubscription:Lrx/Subscription;

    if-nez v0, :cond_7

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_7
    invoke-interface {v0}, Lrx/Subscription;->unsubscribe()V

    const/4 v0, 0x0

    .line 98
    iput-object v0, p0, Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment;->commissionSubscription:Lrx/Subscription;

    .line 101
    :cond_8
    invoke-virtual {p0}, Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment;->getAmountString()Ljava/lang/String;

    move-result-object v0

    .line 103
    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_9

    move v3, v2

    goto :goto_0

    :cond_9
    move v3, v1

    :goto_0
    if-nez v3, :cond_14

    .line 188
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    sub-int/2addr v3, v2

    move v5, v1

    move v4, v3

    move v3, v5

    :goto_1
    if-gt v3, v4, :cond_e

    if-nez v5, :cond_a

    move v6, v3

    goto :goto_2

    :cond_a
    move v6, v4

    .line 193
    :goto_2
    invoke-interface {v0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    const/16 v7, 0x20

    if-gt v6, v7, :cond_b

    move v6, v2

    goto :goto_3

    :cond_b
    move v6, v1

    :goto_3
    if-nez v5, :cond_d

    if-nez v6, :cond_c

    move v5, v2

    goto :goto_1

    :cond_c
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_d
    if-eqz v6, :cond_e

    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_e
    add-int/2addr v4, v2

    .line 209
    invoke-interface {v0, v3, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 186
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 103
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_f

    move v0, v2

    goto :goto_4

    :cond_f
    move v0, v1

    :goto_4
    if-eqz v0, :cond_10

    goto :goto_5

    .line 108
    :cond_10
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment;->commissionSwitcher:Landroid/widget/ViewSwitcher;

    if-nez v0, :cond_11

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_11
    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->setVisibility(I)V

    .line 110
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment;->commissionSwitcher:Landroid/widget/ViewSwitcher;

    if-nez v0, :cond_12

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_12
    invoke-virtual {v0, v2}, Landroid/widget/ViewSwitcher;->setDisplayedChild(I)V

    .line 111
    invoke-virtual {p0}, Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment;->disableNextButton()V

    .line 113
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment;->card2CardApi:Lru/rocketbank/core/network/api/Card2CardApi;

    if-nez v0, :cond_13

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_13
    invoke-virtual {p0}, Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment;->getAmount()D

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lru/rocketbank/core/network/api/Card2CardApi;->commission(D)Lrx/Observable;

    move-result-object v0

    .line 114
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 115
    new-instance v1, Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment$onTextChanged$2;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment$onTextChanged$2;-><init>(Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment;)V

    check-cast v1, Lrx/Subscriber;

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment;->commissionSubscription:Lrx/Subscription;

    return-void

    .line 104
    :cond_14
    :goto_5
    invoke-direct {p0}, Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment;->emptyAmount()V

    return-void
.end method

.method public final onUserModel(Lru/rocketbank/core/model/UserModel;)V
    .locals 1

    const-string v0, "userModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;->onUserModel(Lru/rocketbank/core/model/UserModel;)V

    .line 76
    iput-object p1, p0, Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment;->userModel:Lru/rocketbank/core/model/UserModel;

    .line 77
    invoke-virtual {p0}, Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment;->onTextChanged()V

    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-super {p0, p1, p2}, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 50
    invoke-virtual {p0}, Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment;->getContact()Lru/rocketbank/core/model/contact/Contact;

    move-result-object p2

    invoke-virtual {p0}, Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment;->getAccountsView()Lru/rocketbank/r2d2/widget/AccountWidget;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment;->setupAccountsView(Lru/rocketbank/core/model/contact/Contact;Lru/rocketbank/r2d2/widget/AccountWidget;)V

    .line 52
    invoke-virtual {p0}, Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment;->getAccountsView()Lru/rocketbank/r2d2/widget/AccountWidget;

    move-result-object p2

    invoke-virtual {p2}, Lru/rocketbank/r2d2/widget/AccountWidget;->getOnAccountSelected()Lrx/subjects/BehaviorSubject;

    move-result-object p2

    .line 53
    new-instance v0, Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment$onViewCreated$1;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment$onViewCreated$1;-><init>(Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment;)V

    check-cast v0, Lrx/functions/Action1;

    invoke-virtual {p2, v0}, Lrx/subjects/BehaviorSubject;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    move-result-object p2

    iput-object p2, p0, Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment;->accountChangedSubscription:Lrx/Subscription;

    .line 62
    invoke-virtual {p0}, Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object p2

    invoke-interface {p2}, Lru/rocketbank/core/dagger/component/RocketComponent;->getCard2CardApi()Lru/rocketbank/core/network/api/Card2CardApi;

    move-result-object p2

    iput-object p2, p0, Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment;->card2CardApi:Lru/rocketbank/core/network/api/Card2CardApi;

    .line 63
    invoke-virtual {p0}, Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object p2

    invoke-interface {p2}, Lru/rocketbank/core/dagger/component/RocketComponent;->getMoneyFormatter()Lru/rocketbank/core/utils/MoneyFormatter;

    move-result-object p2

    iput-object p2, p0, Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment;->moneyFormatter:Lru/rocketbank/core/utils/MoneyFormatter;

    const p2, 0x7f0900fb

    .line 65
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_0

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.widget.ViewSwitcher"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    check-cast p2, Landroid/widget/ViewSwitcher;

    iput-object p2, p0, Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment;->commissionSwitcher:Landroid/widget/ViewSwitcher;

    const p2, 0x7f0900f7

    .line 66
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_1

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.widget.TextView"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment;->commission:Landroid/widget/TextView;

    return-void
.end method
