.class public final Lru/rocketbank/r2d2/fragments/refill/card/RefillFromCardFragment;
.super Lru/rocketbank/r2d2/fragments/NfcRocketFragment;
.source "RefillFromCardFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lru/rocketbank/r2d2/ActionBarTitleInstaller;
.implements Lru/rocketbank/r2d2/adapters/card/CardChangeListener;
.implements Lru/rocketbank/r2d2/data/binding/card/CardAbilityHandler;
.implements Lru/rocketbank/r2d2/fragments/TabFragmentListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/fragments/refill/card/RefillFromCardFragment$MiniCardListener;,
        Lru/rocketbank/r2d2/fragments/refill/card/RefillFromCardFragment$Companion;
    }
.end annotation


# static fields
.field private static final CARD_DATA:Ljava/lang/String; = "CARD_DATA"

.field public static final Companion:Lru/rocketbank/r2d2/fragments/refill/card/RefillFromCardFragment$Companion;

.field private static final TAG:Ljava/lang/String; = "RefillCard"


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private abilityData:Lru/rocketbank/r2d2/data/binding/card/CardAbilityData;

.field public accountApi:Lru/rocketbank/core/network/api/AccountApi;

.field public authorization:Lru/rocketbank/core/user/Authorization;

.field private btnNext:Landroid/widget/Button;

.field private cardData:Lru/rocketbank/core/model/CardData;

.field private listAdapter:Lru/rocketbank/r2d2/adapters/card/CardsListAdapter;

.field private recyclerView:Landroid/support/v7/widget/RecyclerView;

.field private staggeredGridLayoutManager:Landroid/support/v7/widget/StaggeredGridLayoutManager;

.field public templateManager:Lru/rocketbank/core/manager/TemplateManager;

.field private userModel:Lru/rocketbank/core/model/UserModel;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/r2d2/fragments/refill/card/RefillFromCardFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/fragments/refill/card/RefillFromCardFragment$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/r2d2/fragments/refill/card/RefillFromCardFragment;->Companion:Lru/rocketbank/r2d2/fragments/refill/card/RefillFromCardFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 43
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/NfcRocketFragment;-><init>()V

    .line 71
    new-instance v0, Lru/rocketbank/core/model/CardData;

    const-string v1, ""

    const-string v2, ""

    const-string v3, ""

    invoke-direct {v0, v1, v2, v3}, Lru/rocketbank/core/model/CardData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/refill/card/RefillFromCardFragment;->cardData:Lru/rocketbank/core/model/CardData;

    return-void
.end method

.method public static final synthetic access$createPopUpMenu(Lru/rocketbank/r2d2/fragments/refill/card/RefillFromCardFragment;Lru/rocketbank/core/model/CardModel;Landroid/view/View;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Lru/rocketbank/r2d2/fragments/refill/card/RefillFromCardFragment;->createPopUpMenu(Lru/rocketbank/core/model/CardModel;Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic access$getListAdapter$p(Lru/rocketbank/r2d2/fragments/refill/card/RefillFromCardFragment;)Lru/rocketbank/r2d2/adapters/card/CardsListAdapter;
    .locals 0

    .line 43
    iget-object p0, p0, Lru/rocketbank/r2d2/fragments/refill/card/RefillFromCardFragment;->listAdapter:Lru/rocketbank/r2d2/adapters/card/CardsListAdapter;

    return-object p0
.end method

.method public static final synthetic access$getRecyclerView$p(Lru/rocketbank/r2d2/fragments/refill/card/RefillFromCardFragment;)Landroid/support/v7/widget/RecyclerView;
    .locals 0

    .line 43
    iget-object p0, p0, Lru/rocketbank/r2d2/fragments/refill/card/RefillFromCardFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object p0
.end method

.method public static final synthetic access$getUserModel$p(Lru/rocketbank/r2d2/fragments/refill/card/RefillFromCardFragment;)Lru/rocketbank/core/model/UserModel;
    .locals 0

    .line 43
    iget-object p0, p0, Lru/rocketbank/r2d2/fragments/refill/card/RefillFromCardFragment;->userModel:Lru/rocketbank/core/model/UserModel;

    return-object p0
.end method

.method public static final synthetic access$hideCard(Lru/rocketbank/r2d2/fragments/refill/card/RefillFromCardFragment;Lru/rocketbank/core/model/CardModel;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/fragments/refill/card/RefillFromCardFragment;->hideCard(Lru/rocketbank/core/model/CardModel;)V

    return-void
.end method

.method public static final synthetic access$hideSpinner(Lru/rocketbank/r2d2/fragments/refill/card/RefillFromCardFragment;)V
    .locals 0

    .line 43
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/refill/card/RefillFromCardFragment;->hideSpinner()V

    return-void
.end method

.method public static final synthetic access$setListAdapter$p(Lru/rocketbank/r2d2/fragments/refill/card/RefillFromCardFragment;Lru/rocketbank/r2d2/adapters/card/CardsListAdapter;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/refill/card/RefillFromCardFragment;->listAdapter:Lru/rocketbank/r2d2/adapters/card/CardsListAdapter;

    return-void
.end method

.method public static final synthetic access$setRecyclerView$p(Lru/rocketbank/r2d2/fragments/refill/card/RefillFromCardFragment;Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/refill/card/RefillFromCardFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    return-void
.end method

.method public static final synthetic access$setUserModel$p(Lru/rocketbank/r2d2/fragments/refill/card/RefillFromCardFragment;Lru/rocketbank/core/model/UserModel;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/refill/card/RefillFromCardFragment;->userModel:Lru/rocketbank/core/model/UserModel;

    return-void
.end method

.method private final clickNext()V
    .locals 4

    .line 263
    sget-object v0, Lru/rocketbank/r2d2/activities/c2c/CardRefillAmountActivity;->Companion:Lru/rocketbank/r2d2/activities/c2c/CardRefillAmountActivity$Companion;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/refill/card/RefillFromCardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    const-string v2, "activity!!"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lru/rocketbank/r2d2/fragments/refill/card/RefillFromCardFragment;->cardData:Lru/rocketbank/core/model/CardData;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lru/rocketbank/r2d2/activities/c2c/CardRefillAmountActivity$Companion;->newInstance(Landroid/content/Context;Lru/rocketbank/core/model/CardData;Lru/rocketbank/core/model/CardModel;)V

    return-void
.end method

.method private final createPopUpMenu(Lru/rocketbank/core/model/CardModel;Landroid/view/View;)V
    .locals 6

    .line 167
    new-instance v0, Landroid/support/v7/widget/PopupMenu;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/refill/card/RefillFromCardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1, p2}, Landroid/support/v7/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    const v1, 0x800035

    .line 168
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/PopupMenu;->setGravity(I)V

    const v1, 0x7f0d0007

    .line 169
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/PopupMenu;->inflate(I)V

    .line 171
    invoke-virtual {v0}, Landroid/support/v7/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    const v2, 0x7f090201

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 172
    new-instance v2, Landroid/text/SpannableString;

    const-string v3, "menuItem"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 173
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/refill/card/RefillFromCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060221

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 174
    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 176
    new-instance v1, Lru/rocketbank/r2d2/fragments/refill/card/RefillFromCardFragment$createPopUpMenu$1;

    invoke-direct {v1, p0, p2, p1}, Lru/rocketbank/r2d2/fragments/refill/card/RefillFromCardFragment$createPopUpMenu$1;-><init>(Lru/rocketbank/r2d2/fragments/refill/card/RefillFromCardFragment;Landroid/view/View;Lru/rocketbank/core/model/CardModel;)V

    check-cast v1, Landroid/support/v7/widget/PopupMenu$OnMenuItemClickListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/support/v7/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 202
    invoke-virtual {v0}, Landroid/support/v7/widget/PopupMenu;->show()V

    return-void
.end method

.method private final hideCard(Lru/rocketbank/core/model/CardModel;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 216
    invoke-static {p0, v0, v1, v2}, Lru/rocketbank/r2d2/fragments/RocketFragment;->showSpinner$default(Lru/rocketbank/r2d2/fragments/RocketFragment;IILjava/lang/Object;)V

    .line 218
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/refill/card/RefillFromCardFragment;->accountApi:Lru/rocketbank/core/network/api/AccountApi;

    if-nez v0, :cond_0

    const-string v1, "accountApi"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Lru/rocketbank/core/model/CardModel;->getToken()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lru/rocketbank/core/network/api/AccountApi;->hideCard(Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 219
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 220
    new-instance v1, Lru/rocketbank/r2d2/fragments/refill/card/RefillFromCardFragment$hideCard$1;

    invoke-direct {v1, p0, p1}, Lru/rocketbank/r2d2/fragments/refill/card/RefillFromCardFragment$hideCard$1;-><init>(Lru/rocketbank/r2d2/fragments/refill/card/RefillFromCardFragment;Lru/rocketbank/core/model/CardModel;)V

    check-cast v1, Lrx/Subscriber;

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    return-void
.end method

.method public static final newInstance()Lru/rocketbank/r2d2/fragments/refill/card/RefillFromCardFragment;
    .locals 1

    sget-object v0, Lru/rocketbank/r2d2/fragments/refill/card/RefillFromCardFragment;->Companion:Lru/rocketbank/r2d2/fragments/refill/card/RefillFromCardFragment$Companion;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/fragments/refill/card/RefillFromCardFragment$Companion;->newInstance()Lru/rocketbank/r2d2/fragments/refill/card/RefillFromCardFragment;

    move-result-object v0

    return-object v0
.end method

.method private final setUserDetails()V
    .locals 3

    .line 206
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/refill/card/RefillFromCardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 207
    sget-object v0, Lru/rocketbank/r2d2/fragments/refill/card/RefillFromCardFragment;->TAG:Ljava/lang/String;

    const-string v1, "No activity"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 211
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/refill/card/RefillFromCardFragment;->listAdapter:Lru/rocketbank/r2d2/adapters/card/CardsListAdapter;

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/refill/card/RefillFromCardFragment;->userModel:Lru/rocketbank/core/model/UserModel;

    if-nez v1, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    invoke-virtual {v1}, Lru/rocketbank/core/model/UserModel;->getLinkedCards()Ljava/util/List;

    move-result-object v1

    const-string v2, "userModel!!.linkedCards"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/adapters/card/CardsListAdapter;->setData(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/refill/card/RefillFromCardFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/refill/card/RefillFromCardFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public final _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/refill/card/RefillFromCardFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/refill/card/RefillFromCardFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/refill/card/RefillFromCardFragment;->_$_findViewCache:Ljava/util/HashMap;

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

    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/refill/card/RefillFromCardFragment;->_$_findViewCache:Ljava/util/HashMap;

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

    .line 119
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/refill/card/RefillFromCardFragment;->cardData:Lru/rocketbank/core/model/CardData;

    return-void
.end method

.method public final cardInvalid()V
    .locals 2

    .line 128
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/refill/card/RefillFromCardFragment;->btnNext:Landroid/widget/Button;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 129
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/refill/card/RefillFromCardFragment;->btnNext:Landroid/widget/Button;

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method public final cardValid()V
    .locals 2

    .line 123
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/refill/card/RefillFromCardFragment;->btnNext:Landroid/widget/Button;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 124
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/refill/card/RefillFromCardFragment;->btnNext:Landroid/widget/Button;

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method public final getAccountApi()Lru/rocketbank/core/network/api/AccountApi;
    .locals 2

    .line 66
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/refill/card/RefillFromCardFragment;->accountApi:Lru/rocketbank/core/network/api/AccountApi;

    if-nez v0, :cond_0

    const-string v1, "accountApi"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getActionBarTitle()Ljava/lang/String;
    .locals 2

    .line 272
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/refill/card/RefillFromCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1101d0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "resources.getString(R.st\u2026agment_refill_card_title)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getAuthorization()Lru/rocketbank/core/user/Authorization;
    .locals 2

    .line 67
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/refill/card/RefillFromCardFragment;->authorization:Lru/rocketbank/core/user/Authorization;

    if-nez v0, :cond_0

    const-string v1, "authorization"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getTemplateManager()Lru/rocketbank/core/manager/TemplateManager;
    .locals 2

    .line 65
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/refill/card/RefillFromCardFragment;->templateManager:Lru/rocketbank/core/manager/TemplateManager;

    if-nez v0, :cond_0

    const-string v1, "templateManager"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 3

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 248
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f09008a

    if-eq v0, v1, :cond_3

    .line 255
    instance-of v0, p1, Lru/rocketbank/core/widgets/CardViewMini;

    if-eqz v0, :cond_2

    .line 256
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/refill/card/RefillFromCardFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result v0

    .line 257
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/refill/card/RefillFromCardFragment;->listAdapter:Lru/rocketbank/r2d2/adapters/card/CardsListAdapter;

    if-nez v1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {v1, v0}, Lru/rocketbank/r2d2/adapters/card/CardsListAdapter;->getCardModel(I)Lru/rocketbank/core/model/CardModel;

    move-result-object v0

    .line 258
    sget-object v1, Lru/rocketbank/r2d2/activities/c2c/CvvEnterActivity;->Companion:Lru/rocketbank/r2d2/activities/c2c/CvvEnterActivity$Companion;

    check-cast p1, Lru/rocketbank/core/widgets/CardViewMini;

    invoke-virtual {p1}, Lru/rocketbank/core/widgets/CardViewMini;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v2, "v.context"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p1, v0}, Lru/rocketbank/r2d2/activities/c2c/CvvEnterActivity$Companion;->newInstance(Landroid/content/Context;Lru/rocketbank/core/model/CardModel;)V

    :cond_2
    return-void

    .line 250
    :cond_3
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/refill/card/RefillFromCardFragment;->clickNext()V

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

    const-string p2, "inflater.inflate(R.layou\u2026agment, container, false)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lru/rocketbank/r2d2/fragments/NfcRocketFragment;->onDestroyView()V

    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/refill/card/RefillFromCardFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public final onNextButtonClick()V
    .locals 0

    return-void
.end method

.method public final onPause()V
    .locals 4

    .line 160
    new-instance v0, Lru/rocketbank/core/model/CardData;

    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/refill/card/RefillFromCardFragment;->cardData:Lru/rocketbank/core/model/CardData;

    invoke-virtual {v1}, Lru/rocketbank/core/model/CardData;->getPan()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lru/rocketbank/r2d2/fragments/refill/card/RefillFromCardFragment;->cardData:Lru/rocketbank/core/model/CardData;

    invoke-virtual {v2}, Lru/rocketbank/core/model/CardData;->getExpirationDate()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-direct {v0, v1, v2, v3}, Lru/rocketbank/core/model/CardData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/refill/card/RefillFromCardFragment;->cardData:Lru/rocketbank/core/model/CardData;

    .line 161
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/refill/card/RefillFromCardFragment;->listAdapter:Lru/rocketbank/r2d2/adapters/card/CardsListAdapter;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/refill/card/RefillFromCardFragment;->cardData:Lru/rocketbank/core/model/CardData;

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/adapters/card/CardsListAdapter;->initializeCardData(Lru/rocketbank/core/model/CardData;)V

    .line 163
    invoke-super {p0}, Lru/rocketbank/r2d2/fragments/NfcRocketFragment;->onPause()V

    return-void
.end method

.method public final onPressedPhoto(Landroid/view/View;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/refill/card/RefillFromCardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lru/rocketbank/r2d2/activities/AbstractActivity;

    if-eqz p1, :cond_1

    .line 54
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/refill/card/RefillFromCardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_0

    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type ru.rocketbank.r2d2.activities.AbstractActivity"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    check-cast p1, Lru/rocketbank/r2d2/activities/AbstractActivity;

    .line 55
    invoke-virtual {p1}, Lru/rocketbank/r2d2/activities/AbstractActivity;->takeAShot()V

    :cond_1
    return-void
.end method

.method public final onResume()V
    .locals 4

    .line 150
    invoke-super {p0}, Lru/rocketbank/r2d2/fragments/NfcRocketFragment;->onResume()V

    .line 152
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/refill/card/RefillFromCardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    const-string v1, "activity!!"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 153
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/refill/card/RefillFromCardFragment;->abilityData:Lru/rocketbank/r2d2/data/binding/card/CardAbilityData;

    if-nez v1, :cond_1

    const-string v2, "abilityData"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    const-string v2, "android.hardware.nfc"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "android.hardware.camera"

    .line 154
    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    .line 153
    invoke-virtual {v1, v2, v0}, Lru/rocketbank/r2d2/data/binding/card/CardAbilityData;->updateAbility(ZZ)V

    .line 156
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/refill/card/RefillFromCardFragment;->btnNext:Landroid/widget/Button;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    return-void

    :cond_2
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "outState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 267
    sget-object v0, Lru/rocketbank/r2d2/fragments/refill/card/RefillFromCardFragment;->CARD_DATA:Ljava/lang/String;

    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/refill/card/RefillFromCardFragment;->cardData:Lru/rocketbank/core/model/CardData;

    check-cast v1, Landroid/os/Parcelable;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 268
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/fragments/NfcRocketFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public final onSelected()V
    .locals 2

    .line 276
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/refill/card/RefillFromCardFragment;->btnNext:Landroid/widget/Button;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 277
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/refill/card/RefillFromCardFragment;->listAdapter:Lru/rocketbank/r2d2/adapters/card/CardsListAdapter;

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {v0}, Lru/rocketbank/r2d2/adapters/card/CardsListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public final onUserModel(Lru/rocketbank/core/model/UserModel;)V
    .locals 1

    const-string v0, "userModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/fragments/NfcRocketFragment;->onUserModel(Lru/rocketbank/core/model/UserModel;)V

    .line 145
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/refill/card/RefillFromCardFragment;->userModel:Lru/rocketbank/core/model/UserModel;

    .line 146
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/refill/card/RefillFromCardFragment;->setUserDetails()V

    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    invoke-super {p0, p1, p2}, Lru/rocketbank/r2d2/fragments/NfcRocketFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    if-eqz p2, :cond_0

    .line 81
    sget-object v0, Lru/rocketbank/r2d2/fragments/refill/card/RefillFromCardFragment;->CARD_DATA:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    const-string v0, "savedInstanceState.getPa\u2026able<CardData>(CARD_DATA)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lru/rocketbank/core/model/CardData;

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/refill/card/RefillFromCardFragment;->cardData:Lru/rocketbank/core/model/CardData;

    .line 85
    :cond_0
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/refill/card/RefillFromCardFragment;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object p2

    invoke-interface {p2}, Lru/rocketbank/core/dagger/component/RocketComponent;->getTemplateManager()Lru/rocketbank/core/manager/TemplateManager;

    move-result-object p2

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/refill/card/RefillFromCardFragment;->templateManager:Lru/rocketbank/core/manager/TemplateManager;

    .line 86
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/refill/card/RefillFromCardFragment;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object p2

    invoke-interface {p2}, Lru/rocketbank/core/dagger/component/RocketComponent;->getAccountApi()Lru/rocketbank/core/network/api/AccountApi;

    move-result-object p2

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/refill/card/RefillFromCardFragment;->accountApi:Lru/rocketbank/core/network/api/AccountApi;

    .line 87
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/refill/card/RefillFromCardFragment;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object p2

    invoke-interface {p2}, Lru/rocketbank/core/dagger/component/RocketComponent;->getAuthorization()Lru/rocketbank/core/user/Authorization;

    move-result-object p2

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/refill/card/RefillFromCardFragment;->authorization:Lru/rocketbank/core/user/Authorization;

    .line 89
    new-instance p2, Lru/rocketbank/r2d2/data/binding/card/CardAbilityData;

    invoke-direct {p2}, Lru/rocketbank/r2d2/data/binding/card/CardAbilityData;-><init>()V

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/refill/card/RefillFromCardFragment;->abilityData:Lru/rocketbank/r2d2/data/binding/card/CardAbilityData;

    const p2, 0x7f0900c3

    .line 91
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_1

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.support.v7.widget.RecyclerView"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    check-cast p1, Landroid/support/v7/widget/RecyclerView;

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/refill/card/RefillFromCardFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 92
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/refill/card/RefillFromCardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    const p2, 0x7f09008a

    invoke-virtual {p1, p2}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_3

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.widget.Button"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/refill/card/RefillFromCardFragment;->btnNext:Landroid/widget/Button;

    .line 93
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/refill/card/RefillFromCardFragment;->btnNext:Landroid/widget/Button;

    if-nez p1, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setVisibility(I)V

    .line 97
    new-instance p1, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    const/4 p2, 0x1

    const/4 v0, 0x2

    invoke-direct {p1, v0, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;-><init>(II)V

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/refill/card/RefillFromCardFragment;->staggeredGridLayoutManager:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    .line 98
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/refill/card/RefillFromCardFragment;->staggeredGridLayoutManager:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    if-nez p1, :cond_5

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_5
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->setGapStrategy(I)V

    .line 100
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/refill/card/RefillFromCardFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez p1, :cond_6

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_6
    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/refill/card/RefillFromCardFragment;->staggeredGridLayoutManager:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    check-cast p2, Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 102
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/refill/card/RefillFromCardFragment;->listAdapter:Lru/rocketbank/r2d2/adapters/card/CardsListAdapter;

    if-nez p1, :cond_8

    .line 103
    new-instance p1, Lru/rocketbank/r2d2/adapters/card/CardsListAdapter;

    new-instance p2, Lru/rocketbank/r2d2/fragments/refill/card/RefillFromCardFragment$MiniCardListener;

    invoke-direct {p2, p0}, Lru/rocketbank/r2d2/fragments/refill/card/RefillFromCardFragment$MiniCardListener;-><init>(Lru/rocketbank/r2d2/fragments/refill/card/RefillFromCardFragment;)V

    move-object v1, p2

    check-cast v1, Lru/rocketbank/core/widgets/CardViewMini$CardActionsListener;

    .line 104
    move-object v2, p0

    check-cast v2, Lru/rocketbank/r2d2/adapters/card/CardChangeListener;

    .line 105
    move-object v3, p0

    check-cast v3, Landroid/view/View$OnClickListener;

    const/4 v4, 0x1

    .line 107
    iget-object v5, p0, Lru/rocketbank/r2d2/fragments/refill/card/RefillFromCardFragment;->abilityData:Lru/rocketbank/r2d2/data/binding/card/CardAbilityData;

    if-nez v5, :cond_7

    const-string p2, "abilityData"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 108
    :cond_7
    move-object v6, p0

    check-cast v6, Lru/rocketbank/r2d2/data/binding/card/CardAbilityHandler;

    move-object v0, p1

    .line 103
    invoke-direct/range {v0 .. v6}, Lru/rocketbank/r2d2/adapters/card/CardsListAdapter;-><init>(Lru/rocketbank/core/widgets/CardViewMini$CardActionsListener;Lru/rocketbank/r2d2/adapters/card/CardChangeListener;Landroid/view/View$OnClickListener;ZLru/rocketbank/r2d2/data/binding/card/CardAbilityData;Lru/rocketbank/r2d2/data/binding/card/CardAbilityHandler;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/refill/card/RefillFromCardFragment;->listAdapter:Lru/rocketbank/r2d2/adapters/card/CardsListAdapter;

    .line 111
    :cond_8
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/refill/card/RefillFromCardFragment;->listAdapter:Lru/rocketbank/r2d2/adapters/card/CardsListAdapter;

    if-nez p1, :cond_9

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_9
    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/refill/card/RefillFromCardFragment;->cardData:Lru/rocketbank/core/model/CardData;

    invoke-virtual {p1, p2}, Lru/rocketbank/r2d2/adapters/card/CardsListAdapter;->initializeCardData(Lru/rocketbank/core/model/CardData;)V

    .line 113
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/refill/card/RefillFromCardFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez p1, :cond_a

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_a
    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/refill/card/RefillFromCardFragment;->listAdapter:Lru/rocketbank/r2d2/adapters/card/CardsListAdapter;

    check-cast p2, Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 115
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/refill/card/RefillFromCardFragment;->btnNext:Landroid/widget/Button;

    if-nez p1, :cond_b

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_b
    move-object p2, p0

    check-cast p2, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final setAccountApi(Lru/rocketbank/core/network/api/AccountApi;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/refill/card/RefillFromCardFragment;->accountApi:Lru/rocketbank/core/network/api/AccountApi;

    return-void
.end method

.method public final setAuthorization(Lru/rocketbank/core/user/Authorization;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/refill/card/RefillFromCardFragment;->authorization:Lru/rocketbank/core/user/Authorization;

    return-void
.end method

.method public final setTemplateManager(Lru/rocketbank/core/manager/TemplateManager;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/refill/card/RefillFromCardFragment;->templateManager:Lru/rocketbank/core/manager/TemplateManager;

    return-void
.end method

.method public final smallCardPressed(Lru/rocketbank/core/model/CardModel;)V
    .locals 3

    const-string v0, "cardModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    sget-object v0, Lru/rocketbank/r2d2/activities/c2c/CvvEnterActivity;->Companion:Lru/rocketbank/r2d2/activities/c2c/CvvEnterActivity$Companion;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/refill/card/RefillFromCardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    const-string v2, "activity!!"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lru/rocketbank/r2d2/activities/c2c/CvvEnterActivity$Companion;->newInstance(Landroid/content/Context;Lru/rocketbank/core/model/CardModel;)V

    return-void
.end method

.method public final updateNextButton(Landroid/support/v4/app/Fragment;)V
    .locals 0

    return-void
.end method
