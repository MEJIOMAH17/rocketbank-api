.class public final Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;
.super Lru/rocketbank/r2d2/fragments/RocketFragment;
.source "OpenReplenishableDepositFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOpenReplenishableDepositFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OpenReplenishableDepositFragment.kt\nru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment\n*L\n1#1,181:1\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment$Companion;

.field private static final DEPOSITS:Ljava/lang/String; = "DEPOSITS"


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private capitalization:Lru/rocketbank/r2d2/widgets/SwitchCard;

.field private capitalizationContainer:Landroid/view/View;

.field private capitalizationText:Landroid/widget/TextView;

.field private cardsViewPager:Landroid/support/v4/view/ViewPager;

.field private currentDeposit:Lru/rocketbank/core/network/model/Deposit;

.field private deposit:Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment$Deposits;

.field private info:Landroid/widget/TextView;

.field private moneyEditText:Landroid/widget/EditText;

.field private moneyFormatter:Lru/rocketbank/core/utils/MoneyFormatter;

.field private nextButton:Landroid/view/View;

.field private rateTextView:Landroid/widget/TextView;

.field private refillContainer:Landroid/view/View;

.field private refillableInfo:Landroid/widget/TextView;

.field private refillableType:Lru/rocketbank/r2d2/widgets/SwitchCard;

.field private shakeAnimation:Landroid/view/animation/Animation;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;->Companion:Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/RocketFragment;-><init>()V

    return-void
.end method

.method public static final synthetic access$getCapitalization$p(Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;)Lru/rocketbank/r2d2/widgets/SwitchCard;
    .locals 1

    .line 29
    iget-object p0, p0, Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;->capitalization:Lru/rocketbank/r2d2/widgets/SwitchCard;

    if-nez p0, :cond_0

    const-string v0, "capitalization"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$getCardsViewPager$p(Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;)Landroid/support/v4/view/ViewPager;
    .locals 1

    .line 29
    iget-object p0, p0, Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;->cardsViewPager:Landroid/support/v4/view/ViewPager;

    if-nez p0, :cond_0

    const-string v0, "cardsViewPager"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$getCurrentDeposit$p(Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;)Lru/rocketbank/core/network/model/Deposit;
    .locals 0

    .line 29
    iget-object p0, p0, Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;->currentDeposit:Lru/rocketbank/core/network/model/Deposit;

    return-object p0
.end method

.method public static final synthetic access$getDeposit$p(Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;)Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment$Deposits;
    .locals 1

    .line 29
    iget-object p0, p0, Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;->deposit:Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment$Deposits;

    if-nez p0, :cond_0

    const-string v0, "deposit"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$getMoneyEditText$p(Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;)Landroid/widget/EditText;
    .locals 1

    .line 29
    iget-object p0, p0, Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;->moneyEditText:Landroid/widget/EditText;

    if-nez p0, :cond_0

    const-string v0, "moneyEditText"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$getNextButton$p(Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;)Landroid/view/View;
    .locals 0

    .line 29
    iget-object p0, p0, Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;->nextButton:Landroid/view/View;

    return-object p0
.end method

.method public static final synthetic access$getRefillableType$p(Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;)Lru/rocketbank/r2d2/widgets/SwitchCard;
    .locals 1

    .line 29
    iget-object p0, p0, Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;->refillableType:Lru/rocketbank/r2d2/widgets/SwitchCard;

    if-nez p0, :cond_0

    const-string v0, "refillableType"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$setCapitalization$p(Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;Lru/rocketbank/r2d2/widgets/SwitchCard;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;->capitalization:Lru/rocketbank/r2d2/widgets/SwitchCard;

    return-void
.end method

.method public static final synthetic access$setCardsViewPager$p(Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;Landroid/support/v4/view/ViewPager;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;->cardsViewPager:Landroid/support/v4/view/ViewPager;

    return-void
.end method

.method public static final synthetic access$setCurrentDeposit$p(Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;Lru/rocketbank/core/network/model/Deposit;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;->currentDeposit:Lru/rocketbank/core/network/model/Deposit;

    return-void
.end method

.method public static final synthetic access$setDeposit$p(Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment$Deposits;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;->deposit:Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment$Deposits;

    return-void
.end method

.method public static final synthetic access$setMoneyEditText$p(Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;Landroid/widget/EditText;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;->moneyEditText:Landroid/widget/EditText;

    return-void
.end method

.method public static final synthetic access$setNextButton$p(Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;Landroid/view/View;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;->nextButton:Landroid/view/View;

    return-void
.end method

.method public static final synthetic access$setRefillableType$p(Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;Lru/rocketbank/r2d2/widgets/SwitchCard;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;->refillableType:Lru/rocketbank/r2d2/widgets/SwitchCard;

    return-void
.end method

.method private final getCurrencyManager()Lru/rocketbank/core/manager/CurrencyManager;
    .locals 1

    .line 48
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object v0

    invoke-interface {v0}, Lru/rocketbank/core/dagger/component/RocketComponent;->getCurrencyManager()Lru/rocketbank/core/manager/CurrencyManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public final _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;->_$_findViewCache:Ljava/util/HashMap;

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

    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final format(DI)Ljava/lang/String;
    .locals 2

    .line 164
    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "%."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p3, 0x66

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v1, p2

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {p3, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "java.lang.String.format(format, *args)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x0

    const v0, 0x7f0c00e9

    .line 51
    invoke-virtual {p1, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 52
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    if-nez p2, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    const-string v0, "DEPOSITS"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    const-string v0, "arguments!!.getParcelable(DEPOSITS)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment$Deposits;

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;->deposit:Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment$Deposits;

    .line 53
    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;->deposit:Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment$Deposits;

    if-nez p2, :cond_1

    const-string v0, "deposit"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p2}, Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment$Deposits;->getDeposits()Ljava/util/List;

    move-result-object p2

    if-nez p2, :cond_2

    const/4 p1, 0x0

    return-object p1

    .line 56
    :cond_2
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    check-cast p2, Landroid/content/Context;

    const v0, 0x7f010010

    invoke-static {p2, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p2

    const-string v0, "AnimationUtils.loadAnima\u2026n(activity, R.anim.shake)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;->shakeAnimation:Landroid/view/animation/Animation;

    .line 57
    sget-object p2, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {p2}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object p2

    invoke-interface {p2}, Lru/rocketbank/core/dagger/component/RocketComponent;->getAuthorization()Lru/rocketbank/core/user/Authorization;

    move-result-object p2

    .line 59
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;->getCurrencyManager()Lru/rocketbank/core/manager/CurrencyManager;

    move-result-object v0

    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    const-string v2, "activity!!"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/content/Context;

    const-string v2, "context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "authorization"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1043
    new-instance v2, Lru/rocketbank/core/utils/MoneyFormatter;

    invoke-direct {v2, v1, p2, v0}, Lru/rocketbank/core/utils/MoneyFormatter;-><init>(Landroid/content/Context;Lru/rocketbank/core/user/Authorization;Lru/rocketbank/core/manager/CurrencyManager;)V

    const/4 p2, 0x1

    .line 1044
    invoke-virtual {v2, p2}, Lru/rocketbank/core/utils/MoneyFormatter;->setFloorAmount(Z)V

    .line 59
    iput-object v2, p0, Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;->moneyFormatter:Lru/rocketbank/core/utils/MoneyFormatter;

    const-string p2, "view"

    .line 61
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget p2, Lru/rocketbank/r2d2/R$id;->depositsCard:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/support/v4/view/ViewPager;

    const-string v0, "view.depositsCard"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;->cardsViewPager:Landroid/support/v4/view/ViewPager;

    .line 62
    sget p2, Lru/rocketbank/r2d2/R$id;->moneyEditText:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lru/rocketbank/core/widgets/RocketEditText;

    const-string v0, "view.moneyEditText"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;->moneyEditText:Landroid/widget/EditText;

    .line 63
    sget p2, Lru/rocketbank/r2d2/R$id;->percentTextView:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lru/rocketbank/core/widgets/RocketTextView;

    const-string v0, "view.percentTextView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;->rateTextView:Landroid/widget/TextView;

    .line 64
    sget p2, Lru/rocketbank/r2d2/R$id;->refillSwitch:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lru/rocketbank/r2d2/widgets/SwitchCard;

    const-string v0, "view.refillSwitch"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;->refillableType:Lru/rocketbank/r2d2/widgets/SwitchCard;

    .line 65
    sget p2, Lru/rocketbank/r2d2/R$id;->capitalizationSwitch:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lru/rocketbank/r2d2/widgets/SwitchCard;

    const-string v0, "view.capitalizationSwitch"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;->capitalization:Lru/rocketbank/r2d2/widgets/SwitchCard;

    .line 66
    sget p2, Lru/rocketbank/r2d2/R$id;->capitalizationContainer:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    const-string v0, "view.capitalizationContainer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/view/View;

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;->capitalizationContainer:Landroid/view/View;

    .line 67
    sget p2, Lru/rocketbank/r2d2/R$id;->capitalizationText:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lru/rocketbank/core/widgets/RocketTextView;

    const-string v0, "view.capitalizationText"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;->capitalizationText:Landroid/widget/TextView;

    .line 68
    sget p2, Lru/rocketbank/r2d2/R$id;->refillableDepositInfo:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lru/rocketbank/core/widgets/RocketTextView;

    const-string v0, "view.refillableDepositInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;->refillableInfo:Landroid/widget/TextView;

    .line 69
    sget p2, Lru/rocketbank/r2d2/R$id;->refillContainer:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    const-string v0, "view.refillContainer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/view/View;

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;->refillContainer:Landroid/view/View;

    .line 70
    sget p2, Lru/rocketbank/r2d2/R$id;->info:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lru/rocketbank/core/widgets/RocketTextView;

    const-string v0, "view.info"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;->info:Landroid/widget/TextView;

    .line 72
    sget p2, Lru/rocketbank/r2d2/R$id;->scroll:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ScrollView;

    .line 75
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;->cardsViewPager:Landroid/support/v4/view/ViewPager;

    if-nez v0, :cond_4

    const-string v1, "cardsViewPager"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700f1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setPageMargin(I)V

    .line 76
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;->cardsViewPager:Landroid/support/v4/view/ViewPager;

    if-nez v0, :cond_5

    const-string v1, "cardsViewPager"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_5
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 77
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;->cardsViewPager:Landroid/support/v4/view/ViewPager;

    if-nez v0, :cond_6

    const-string v1, "cardsViewPager"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_6
    new-instance v1, Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment$onCreateView$1;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    if-nez v2, :cond_7

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_7
    const-string v3, "activity!!"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment$onCreateView$1;-><init>(Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;Landroid/support/v4/app/FragmentManager;)V

    check-cast v1, Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 83
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;->cardsViewPager:Landroid/support/v4/view/ViewPager;

    if-nez v0, :cond_8

    const-string v1, "cardsViewPager"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_8
    new-instance v1, Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment$onCreateView$2;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment$onCreateView$2;-><init>(Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;)V

    check-cast v1, Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 94
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;->moneyEditText:Landroid/widget/EditText;

    if-nez v0, :cond_9

    const-string v1, "moneyEditText"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_9
    new-instance v1, Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment$onCreateView$3;

    iget-object v2, p0, Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;->moneyEditText:Landroid/widget/EditText;

    if-nez v2, :cond_a

    const-string v3, "moneyEditText"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_a
    invoke-direct {v1, p0, v2}, Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment$onCreateView$3;-><init>(Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;Landroid/widget/EditText;)V

    check-cast v1, Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 109
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;->capitalization:Lru/rocketbank/r2d2/widgets/SwitchCard;

    if-nez v0, :cond_b

    const-string v1, "capitalization"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_b
    invoke-virtual {v0}, Lru/rocketbank/r2d2/widgets/SwitchCard;->getCheckObserver()Lrx/subjects/PublishSubject;

    move-result-object v0

    new-instance v1, Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment$onCreateView$4;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment$onCreateView$4;-><init>(Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;)V

    check-cast v1, Lrx/functions/Action1;

    invoke-virtual {v0, v1}, Lrx/subjects/PublishSubject;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    .line 113
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;->refillableType:Lru/rocketbank/r2d2/widgets/SwitchCard;

    if-nez v0, :cond_c

    const-string v1, "refillableType"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_c
    invoke-virtual {v0}, Lru/rocketbank/r2d2/widgets/SwitchCard;->getCheckObserver()Lrx/subjects/PublishSubject;

    move-result-object v0

    new-instance v1, Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment$onCreateView$5;

    invoke-direct {v1, p0, p2}, Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment$onCreateView$5;-><init>(Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;Landroid/widget/ScrollView;)V

    check-cast v1, Lrx/functions/Action1;

    invoke-virtual {v0, v1}, Lrx/subjects/PublishSubject;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    .line 118
    invoke-virtual {p0, p3}, Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;->updateDepositInfo(I)V

    return-object p1
.end method

.method public final synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onDestroyView()V

    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    invoke-super {p0, p1, p2}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 124
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    const-string p2, "activity!!"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget p2, Lru/rocketbank/r2d2/R$id;->next_button:I

    invoke-virtual {p1, p2}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/widgets/RocketButton;

    check-cast p1, Landroid/view/View;

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;->nextButton:Landroid/view/View;

    .line 125
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;->nextButton:Landroid/view/View;

    if-eqz p1, :cond_1

    new-instance p2, Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment$onViewCreated$1;

    invoke-direct {p2, p0}, Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment$onViewCreated$1;-><init>(Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;)V

    check-cast p2, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_1
    return-void
.end method

.method public final updateDepositInfo(I)V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .line 138
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;->deposit:Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment$Deposits;

    if-nez v0, :cond_0

    const-string v1, "deposit"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment$Deposits;->getDeposits()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/network/model/Deposit;

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;->currentDeposit:Lru/rocketbank/core/network/model/Deposit;

    .line 139
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;->currentDeposit:Lru/rocketbank/core/network/model/Deposit;

    if-eqz p1, :cond_1e

    .line 140
    invoke-virtual {p1}, Lru/rocketbank/core/network/model/Deposit;->getRefillRate()Ljava/lang/Double;

    move-result-object v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;->refillContainer:Landroid/view/View;

    if-nez v0, :cond_1

    const-string v3, "refillContainer"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    const-string v3, "$receiver"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2006
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 140
    :cond_2
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;->refillContainer:Landroid/view/View;

    if-nez v0, :cond_3

    const-string v3, "refillContainer"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    const-string v3, "$receiver"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2014
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 141
    :goto_0
    invoke-virtual {p1}, Lru/rocketbank/core/network/model/Deposit;->getCapitalizationAvailable()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;->capitalizationContainer:Landroid/view/View;

    if-nez v0, :cond_4

    const-string v1, "capitalizationContainer"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    const-string v1, "$receiver"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3006
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 141
    :cond_5
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;->capitalizationContainer:Landroid/view/View;

    if-nez v0, :cond_6

    const-string v3, "capitalizationContainer"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_6
    const-string v3, "$receiver"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3014
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 142
    :goto_1
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;->moneyEditText:Landroid/widget/EditText;

    if-nez v0, :cond_7

    const-string v1, "moneyEditText"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_7
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    const-string v1, "moneyEditText.text"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_2

    :cond_8
    move v0, v2

    :goto_2
    const/4 v1, 0x0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;->moneyEditText:Landroid/widget/EditText;

    if-nez v0, :cond_9

    const-string v3, "moneyEditText"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_9
    invoke-virtual {p1}, Lru/rocketbank/core/network/model/Deposit;->getMinAmount()Ljava/lang/Double;

    move-result-object v3

    if-eqz v3, :cond_a

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-virtual {p0, v3, v4, v2}, Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;->format(DI)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_a
    move-object v3, v1

    :goto_3
    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 143
    :cond_b
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;->refillableType:Lru/rocketbank/r2d2/widgets/SwitchCard;

    if-nez v0, :cond_c

    const-string v3, "refillableType"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_c
    invoke-virtual {v0}, Lru/rocketbank/r2d2/widgets/SwitchCard;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p1}, Lru/rocketbank/core/network/model/Deposit;->getRefillRate()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {p1}, Lru/rocketbank/core/network/model/Deposit;->getRefillRate()Ljava/lang/Double;

    move-result-object v0

    goto :goto_4

    :cond_d
    invoke-virtual {p1}, Lru/rocketbank/core/network/model/Deposit;->getRate()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    :goto_4
    if-eqz v0, :cond_11

    .line 144
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    double-to-long v5, v3

    long-to-double v5, v5

    cmpg-double v0, v3, v5

    if-nez v0, :cond_f

    .line 146
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;->rateTextView:Landroid/widget/TextView;

    if-nez v0, :cond_e

    const-string v5, "rateTextView"

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3, v4, v2}, Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;->format(DI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " %"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 148
    :cond_f
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;->rateTextView:Landroid/widget/TextView;

    if-nez v0, :cond_10

    const-string v2, "rateTextView"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v3, " %"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    :cond_11
    :goto_5
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;->capitalizationText:Landroid/widget/TextView;

    if-nez v0, :cond_12

    const-string v2, "capitalizationText"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_12
    iget-object v2, p0, Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;->capitalization:Lru/rocketbank/r2d2/widgets/SwitchCard;

    if-nez v2, :cond_13

    const-string v3, "capitalization"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_13
    invoke-virtual {v2}, Lru/rocketbank/r2d2/widgets/SwitchCard;->isChecked()Z

    move-result v2

    if-nez v2, :cond_16

    .line 153
    iget-object v2, p0, Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;->refillableType:Lru/rocketbank/r2d2/widgets/SwitchCard;

    if-nez v2, :cond_14

    const-string v3, "refillableType"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_14
    invoke-virtual {v2}, Lru/rocketbank/r2d2/widgets/SwitchCard;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-virtual {p1}, Lru/rocketbank/core/network/model/Deposit;->getCapitalizationSwitchRefillRate()Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    :cond_15
    invoke-virtual {p1}, Lru/rocketbank/core/network/model/Deposit;->getCapitalizationSwitchStandardRate()Ljava/lang/String;

    move-result-object v2

    .line 154
    :goto_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lru/rocketbank/core/network/model/Deposit;->getCapitalizationText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    goto :goto_7

    .line 155
    :cond_16
    invoke-virtual {p1}, Lru/rocketbank/core/network/model/Deposit;->getCapitalizationSwitchTextCard()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    .line 152
    :goto_7
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;->rateTextView:Landroid/widget/TextView;

    if-nez v0, :cond_17

    const-string v2, "rateTextView"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_17
    iget-object v2, p0, Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;->shakeAnimation:Landroid/view/animation/Animation;

    if-nez v2, :cond_18

    const-string v3, "shakeAnimation"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_18
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 158
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;->refillableInfo:Landroid/widget/TextView;

    if-nez v0, :cond_19

    const-string v2, "refillableInfo"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_19
    iget-object v2, p0, Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;->refillableType:Lru/rocketbank/r2d2/widgets/SwitchCard;

    if-nez v2, :cond_1a

    const-string v3, "refillableType"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1a
    invoke-virtual {v2}, Lru/rocketbank/r2d2/widgets/SwitchCard;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-virtual {p1}, Lru/rocketbank/core/network/model/Deposit;->getRefillSwitchTextTrue()Ljava/lang/String;

    move-result-object p1

    :goto_8
    check-cast p1, Ljava/lang/CharSequence;

    goto :goto_9

    :cond_1b
    invoke-virtual {p1}, Lru/rocketbank/core/network/model/Deposit;->getRefillSwitchTextFalse()Ljava/lang/String;

    move-result-object p1

    goto :goto_8

    :goto_9
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;->info:Landroid/widget/TextView;

    if-nez p1, :cond_1c

    const-string v0, "info"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1c
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;->currentDeposit:Lru/rocketbank/core/network/model/Deposit;

    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Lru/rocketbank/core/network/model/Deposit;->getOtherCurrenciesText()Ljava/lang/String;

    move-result-object v1

    :cond_1d
    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_1e
    return-void
.end method
