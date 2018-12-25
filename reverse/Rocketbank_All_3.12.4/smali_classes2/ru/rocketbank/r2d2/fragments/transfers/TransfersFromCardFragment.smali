.class public final Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment;
.super Lru/rocketbank/r2d2/fragments/NfcRocketFragment;
.source "TransfersFromCardFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lru/rocketbank/r2d2/adapters/card/CardChangeListener;
.implements Lru/rocketbank/r2d2/data/binding/card/CardAbilityHandler;
.implements Lru/rocketbank/r2d2/fragments/TabFragmentListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment$MiniCardListener;,
        Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment$Companion;
    }
.end annotation


# static fields
.field private static final CARD_DATA:Ljava/lang/String; = "CARD_DATA"

.field private static final CARD_IS_VALID:Ljava/lang/String; = "CARD_IS_VALID"

.field public static final Companion:Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment$Companion;


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private abilityData:Lru/rocketbank/r2d2/data/binding/card/CardAbilityData;

.field public accountApi:Lru/rocketbank/core/network/api/AccountApi;

.field public authorization:Lru/rocketbank/core/user/Authorization;

.field private btnNext:Landroid/widget/Button;

.field private cardData:Lru/rocketbank/core/model/CardData;

.field private cardIsValid:Z

.field private listAdapter:Lru/rocketbank/r2d2/adapters/card/CardsListAdapter;

.field public recyclerView:Landroid/support/v7/widget/RecyclerView;

.field public templateManager:Lru/rocketbank/core/manager/TemplateManager;

.field private userModel:Lru/rocketbank/core/model/UserModel;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment;->Companion:Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 46
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/NfcRocketFragment;-><init>()V

    .line 71
    new-instance v0, Lru/rocketbank/core/model/CardData;

    const-string v1, ""

    const-string v2, ""

    const-string v3, ""

    invoke-direct {v0, v1, v2, v3}, Lru/rocketbank/core/model/CardData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment;->cardData:Lru/rocketbank/core/model/CardData;

    return-void
.end method

.method public static final synthetic access$createPopUpMenu(Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment;Lru/rocketbank/core/model/CardModel;Landroid/view/View;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment;->createPopUpMenu(Lru/rocketbank/core/model/CardModel;Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic access$getListAdapter$p(Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment;)Lru/rocketbank/r2d2/adapters/card/CardsListAdapter;
    .locals 0

    .line 46
    iget-object p0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment;->listAdapter:Lru/rocketbank/r2d2/adapters/card/CardsListAdapter;

    return-object p0
.end method

.method public static final synthetic access$getUserModel$p(Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment;)Lru/rocketbank/core/model/UserModel;
    .locals 0

    .line 46
    iget-object p0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment;->userModel:Lru/rocketbank/core/model/UserModel;

    return-object p0
.end method

.method public static final synthetic access$hideCard(Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment;Lru/rocketbank/core/model/CardModel;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment;->hideCard(Lru/rocketbank/core/model/CardModel;)V

    return-void
.end method

.method public static final synthetic access$hideSpinner(Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment;)V
    .locals 0

    .line 46
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment;->hideSpinner()V

    return-void
.end method

.method public static final synthetic access$setListAdapter$p(Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment;Lru/rocketbank/r2d2/adapters/card/CardsListAdapter;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment;->listAdapter:Lru/rocketbank/r2d2/adapters/card/CardsListAdapter;

    return-void
.end method

.method public static final synthetic access$setUserModel$p(Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment;Lru/rocketbank/core/model/UserModel;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment;->userModel:Lru/rocketbank/core/model/UserModel;

    return-void
.end method

.method private final continueWithNewCard()V
    .locals 4

    .line 267
    sget-object v0, Lru/rocketbank/r2d2/activities/c2c/CardTransferAmountActivity;->Companion:Lru/rocketbank/r2d2/activities/c2c/CardTransferAmountActivity$Companion;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    const-string v2, "activity!!"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/content/Context;

    const/4 v2, 0x0

    iget-object v3, p0, Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment;->cardData:Lru/rocketbank/core/model/CardData;

    invoke-virtual {v0, v1, v2, v3}, Lru/rocketbank/r2d2/activities/c2c/CardTransferAmountActivity$Companion;->newInstance(Landroid/content/Context;Lru/rocketbank/core/model/CardModel;Lru/rocketbank/core/model/CardData;)V

    return-void
.end method

.method private final createPopUpMenu(Lru/rocketbank/core/model/CardModel;Landroid/view/View;)V
    .locals 6

    .line 150
    new-instance v0, Landroid/support/v7/widget/PopupMenu;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Landroid/support/v7/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    const v1, 0x800035

    .line 152
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/PopupMenu;->setGravity(I)V

    const v1, 0x7f0d0007

    .line 154
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/PopupMenu;->inflate(I)V

    .line 156
    invoke-virtual {v0}, Landroid/support/v7/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    const v2, 0x7f090201

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 157
    new-instance v2, Landroid/text/SpannableString;

    const-string v3, "menuItem"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 159
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f060221

    invoke-static {v3, v4}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    .line 160
    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v4, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v3

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5, v3, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 161
    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 166
    new-instance v1, Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment$createPopUpMenu$1;

    invoke-direct {v1, p0, p2, p1}, Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment$createPopUpMenu$1;-><init>(Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment;Landroid/view/View;Lru/rocketbank/core/model/CardModel;)V

    check-cast v1, Landroid/support/v7/widget/PopupMenu$OnMenuItemClickListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/support/v7/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 194
    invoke-virtual {v0}, Landroid/support/v7/widget/PopupMenu;->show()V

    return-void
.end method

.method private final hideCard(Lru/rocketbank/core/model/CardModel;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 229
    invoke-static {p0, v0, v1, v2}, Lru/rocketbank/r2d2/fragments/RocketFragment;->showSpinner$default(Lru/rocketbank/r2d2/fragments/RocketFragment;IILjava/lang/Object;)V

    .line 231
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment;->accountApi:Lru/rocketbank/core/network/api/AccountApi;

    if-nez v0, :cond_0

    const-string v1, "accountApi"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Lru/rocketbank/core/model/CardModel;->getToken()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lru/rocketbank/core/network/api/AccountApi;->removeLinkedTransfersCard(Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment$hideCard$1;

    invoke-direct {v1, p0, p1}, Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment$hideCard$1;-><init>(Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment;Lru/rocketbank/core/model/CardModel;)V

    check-cast v1, Lrx/Subscriber;

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    return-void
.end method

.method public static final newInstance()Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment;
    .locals 1

    sget-object v0, Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment;->Companion:Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment$Companion;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment$Companion;->newInstance()Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment;

    move-result-object v0

    return-object v0
.end method

.method private final setBtnNext()V
    .locals 6

    .line 275
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lru/rocketbank/core/events/NextButtonEvent;

    move-object v2, p0

    check-cast v2, Landroid/support/v4/app/Fragment;

    iget-boolean v3, p0, Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment;->cardIsValid:Z

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const v5, 0x7f110315

    invoke-virtual {p0, v5}, Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lru/rocketbank/core/events/NextButtonEvent;-><init>(Landroid/support/v4/app/Fragment;ZLjava/lang/Integer;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method private final setNextButtonEnabled(Z)V
    .locals 1

    .line 124
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type ru.rocketbank.r2d2.fragments.transfers.TransferTabFragment"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    check-cast v0, Lru/rocketbank/r2d2/fragments/transfers/TransferTabFragment;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/fragments/transfers/TransferTabFragment;->getCurrentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment;

    if-eqz v0, :cond_1

    .line 125
    iput-boolean p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment;->cardIsValid:Z

    .line 126
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment;->btnNext:Landroid/widget/Button;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void

    :cond_1
    return-void
.end method


# virtual methods
.method public final _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public final _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment;->_$_findViewCache:Ljava/util/HashMap;

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

    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final cardChanged(Lru/rocketbank/core/model/CardData;)V
    .locals 1

    const-string v0, "cardData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment;->cardData:Lru/rocketbank/core/model/CardData;

    return-void
.end method

.method public final cardInvalid()V
    .locals 1

    const/4 v0, 0x0

    .line 120
    invoke-direct {p0, v0}, Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment;->setNextButtonEnabled(Z)V

    return-void
.end method

.method public final cardValid()V
    .locals 1

    const/4 v0, 0x1

    .line 116
    invoke-direct {p0, v0}, Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment;->setNextButtonEnabled(Z)V

    return-void
.end method

.method public final getAccountApi()Lru/rocketbank/core/network/api/AccountApi;
    .locals 2

    .line 55
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment;->accountApi:Lru/rocketbank/core/network/api/AccountApi;

    if-nez v0, :cond_0

    const-string v1, "accountApi"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getAuthorization()Lru/rocketbank/core/user/Authorization;
    .locals 2

    .line 56
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment;->authorization:Lru/rocketbank/core/user/Authorization;

    if-nez v0, :cond_0

    const-string v1, "authorization"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getRecyclerView()Landroid/support/v7/widget/RecyclerView;
    .locals 2

    .line 69
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_0

    const-string v1, "recyclerView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getTemplateManager()Lru/rocketbank/core/manager/TemplateManager;
    .locals 2

    .line 68
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment;->templateManager:Lru/rocketbank/core/manager/TemplateManager;

    if-nez v0, :cond_0

    const-string v1, "templateManager"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 1

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0c0195

    const/4 v0, 0x0

    .line 74
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lru/rocketbank/r2d2/fragments/NfcRocketFragment;->onDestroyView()V

    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public final onNextButtonClick()V
    .locals 0

    .line 279
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment;->continueWithNewCard()V

    return-void
.end method

.method public final onPressedPhoto(Landroid/view/View;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lru/rocketbank/r2d2/activities/SecuredActivity;

    if-eqz p1, :cond_1

    .line 50
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_0

    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type ru.rocketbank.r2d2.activities.SecuredActivity"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    check-cast p1, Lru/rocketbank/r2d2/activities/SecuredActivity;

    .line 51
    invoke-virtual {p1}, Lru/rocketbank/r2d2/activities/SecuredActivity;->takeAShot()V

    :cond_1
    return-void
.end method

.method public final onResume()V
    .locals 4

    .line 198
    invoke-super {p0}, Lru/rocketbank/r2d2/fragments/NfcRocketFragment;->onResume()V

    .line 200
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    const-string v1, "activity!!"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 201
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment;->abilityData:Lru/rocketbank/r2d2/data/binding/card/CardAbilityData;

    if-nez v1, :cond_1

    const-string v2, "abilityData"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    const-string v2, "android.hardware.nfc"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "android.hardware.camera"

    .line 202
    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    .line 201
    invoke-virtual {v1, v2, v0}, Lru/rocketbank/r2d2/data/binding/card/CardAbilityData;->updateAbility(ZZ)V

    .line 205
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type ru.rocketbank.r2d2.fragments.transfers.TransferTabFragment"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    check-cast v0, Lru/rocketbank/r2d2/fragments/transfers/TransferTabFragment;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/fragments/transfers/TransferTabFragment;->getCurrentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment;

    if-eqz v0, :cond_3

    .line 206
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment;->setBtnNext()V

    .line 208
    :cond_3
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment;->templateManager:Lru/rocketbank/core/manager/TemplateManager;

    if-nez v0, :cond_4

    const-string v1, "templateManager"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v0}, Lru/rocketbank/core/manager/TemplateManager;->getTemplates()Lrx/Observable;

    move-result-object v0

    new-instance v1, Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment$onResume$1;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment$onResume$1;-><init>(Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment;)V

    check-cast v1, Lrx/Subscriber;

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "outState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "CARD_DATA"

    .line 260
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment;->cardData:Lru/rocketbank/core/model/CardData;

    check-cast v1, Landroid/os/Parcelable;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "CARD_IS_VALID"

    .line 261
    iget-boolean v1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment;->cardIsValid:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 262
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/fragments/NfcRocketFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public final onSelected()V
    .locals 0

    .line 271
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment;->setBtnNext()V

    return-void
.end method

.method public final onUserModel(Lru/rocketbank/core/model/UserModel;)V
    .locals 1

    const-string v0, "userModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/fragments/NfcRocketFragment;->onUserModel(Lru/rocketbank/core/model/UserModel;)V

    .line 146
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment;->userModel:Lru/rocketbank/core/model/UserModel;

    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    invoke-super {p0, p1, p2}, Lru/rocketbank/r2d2/fragments/NfcRocketFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 80
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object v0

    invoke-interface {v0}, Lru/rocketbank/core/dagger/component/RocketComponent;->getAccountApi()Lru/rocketbank/core/network/api/AccountApi;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment;->accountApi:Lru/rocketbank/core/network/api/AccountApi;

    .line 81
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object v0

    invoke-interface {v0}, Lru/rocketbank/core/dagger/component/RocketComponent;->getAuthorization()Lru/rocketbank/core/user/Authorization;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment;->authorization:Lru/rocketbank/core/user/Authorization;

    .line 82
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object v0

    invoke-interface {v0}, Lru/rocketbank/core/dagger/component/RocketComponent;->getTemplateManager()Lru/rocketbank/core/manager/TemplateManager;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment;->templateManager:Lru/rocketbank/core/manager/TemplateManager;

    const v0, 0x7f0900c3

    .line 84
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.support.v7.widget.RecyclerView"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    check-cast p1, Landroid/support/v7/widget/RecyclerView;

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz p2, :cond_1

    const-string p1, "CARD_DATA"

    .line 87
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    const-string v0, "savedInstanceState.getParcelable(CARD_DATA)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lru/rocketbank/core/model/CardData;

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment;->cardData:Lru/rocketbank/core/model/CardData;

    const-string p1, "CARD_IS_VALID"

    .line 88
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment;->cardIsValid:Z

    .line 91
    :cond_1
    new-instance p1, Lru/rocketbank/r2d2/data/binding/card/CardAbilityData;

    invoke-direct {p1}, Lru/rocketbank/r2d2/data/binding/card/CardAbilityData;-><init>()V

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment;->abilityData:Lru/rocketbank/r2d2/data/binding/card/CardAbilityData;

    .line 92
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    const p2, 0x7f090277

    invoke-virtual {p1, p2}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_3

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.widget.Button"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment;->btnNext:Landroid/widget/Button;

    .line 95
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez p1, :cond_4

    const-string p2, "recyclerView"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    new-instance p2, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-direct {p2, v0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;-><init>(II)V

    check-cast p2, Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 98
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment;->listAdapter:Lru/rocketbank/r2d2/adapters/card/CardsListAdapter;

    if-nez p1, :cond_6

    .line 99
    new-instance p1, Lru/rocketbank/r2d2/adapters/card/CardsListAdapter;

    new-instance p2, Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment$MiniCardListener;

    invoke-direct {p2, p0}, Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment$MiniCardListener;-><init>(Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment;)V

    move-object v1, p2

    check-cast v1, Lru/rocketbank/core/widgets/CardViewMini$CardActionsListener;

    .line 100
    move-object v2, p0

    check-cast v2, Lru/rocketbank/r2d2/adapters/card/CardChangeListener;

    .line 101
    move-object v3, p0

    check-cast v3, Landroid/view/View$OnClickListener;

    const/4 v4, 0x0

    .line 103
    iget-object v5, p0, Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment;->abilityData:Lru/rocketbank/r2d2/data/binding/card/CardAbilityData;

    if-nez v5, :cond_5

    const-string p2, "abilityData"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 104
    :cond_5
    move-object v6, p0

    check-cast v6, Lru/rocketbank/r2d2/data/binding/card/CardAbilityHandler;

    move-object v0, p1

    .line 99
    invoke-direct/range {v0 .. v6}, Lru/rocketbank/r2d2/adapters/card/CardsListAdapter;-><init>(Lru/rocketbank/core/widgets/CardViewMini$CardActionsListener;Lru/rocketbank/r2d2/adapters/card/CardChangeListener;Landroid/view/View$OnClickListener;ZLru/rocketbank/r2d2/data/binding/card/CardAbilityData;Lru/rocketbank/r2d2/data/binding/card/CardAbilityHandler;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment;->listAdapter:Lru/rocketbank/r2d2/adapters/card/CardsListAdapter;

    .line 107
    :cond_6
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment;->listAdapter:Lru/rocketbank/r2d2/adapters/card/CardsListAdapter;

    if-nez p1, :cond_7

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_7
    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment;->cardData:Lru/rocketbank/core/model/CardData;

    invoke-virtual {p1, p2}, Lru/rocketbank/r2d2/adapters/card/CardsListAdapter;->initializeCardData(Lru/rocketbank/core/model/CardData;)V

    .line 108
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez p1, :cond_8

    const-string p2, "recyclerView"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_8
    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment;->listAdapter:Lru/rocketbank/r2d2/adapters/card/CardsListAdapter;

    check-cast p2, Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public final setAccountApi(Lru/rocketbank/core/network/api/AccountApi;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment;->accountApi:Lru/rocketbank/core/network/api/AccountApi;

    return-void
.end method

.method public final setAuthorization(Lru/rocketbank/core/user/Authorization;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment;->authorization:Lru/rocketbank/core/user/Authorization;

    return-void
.end method

.method public final setRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    return-void
.end method

.method public final setTemplateManager(Lru/rocketbank/core/manager/TemplateManager;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment;->templateManager:Lru/rocketbank/core/manager/TemplateManager;

    return-void
.end method

.method public final smallCardPressed(Lru/rocketbank/core/model/CardModel;)V
    .locals 3

    const-string v0, "cardModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    sget-object v0, Lru/rocketbank/r2d2/activities/c2c/CardTransferAmountActivity;->Companion:Lru/rocketbank/r2d2/activities/c2c/CardTransferAmountActivity$Companion;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    const-string v2, "activity!!"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lru/rocketbank/r2d2/activities/c2c/CardTransferAmountActivity$Companion;->newInstance(Landroid/content/Context;Lru/rocketbank/core/model/CardModel;Lru/rocketbank/core/model/CardData;)V

    return-void
.end method

.method public final updateNextButton(Landroid/support/v4/app/Fragment;)V
    .locals 0

    return-void
.end method
