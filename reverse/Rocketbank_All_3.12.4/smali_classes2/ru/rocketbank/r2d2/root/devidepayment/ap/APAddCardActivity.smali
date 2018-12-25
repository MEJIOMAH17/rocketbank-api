.class public final Lru/rocketbank/r2d2/root/devidepayment/ap/APAddCardActivity;
.super Lru/rocketbank/r2d2/root/devidepayment/ap/APBaseActivity;
.source "APAddCardActivity.kt"

# interfaces
.implements Lru/rocketbank/r2d2/data/binding/ap/AddCardListener;
.implements Lru/rocketbank/r2d2/root/devidepayment/ap/APAddCardView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/root/devidepayment/ap/APAddCardActivity$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lru/rocketbank/r2d2/root/devidepayment/ap/APBaseActivity<",
        "Lru/rocketbank/r2d2/root/devidepayment/ap/APAddCardPresenter;",
        "Lru/rocketbank/r2d2/databinding/ActivityApAddCardBinding;",
        ">;",
        "Lru/rocketbank/r2d2/data/binding/ap/AddCardListener;",
        "Lru/rocketbank/r2d2/root/devidepayment/ap/APAddCardView;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAPAddCardActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 APAddCardActivity.kt\nru/rocketbank/r2d2/root/devidepayment/ap/APAddCardActivity\n*L\n1#1,135:1\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lru/rocketbank/r2d2/root/devidepayment/ap/APAddCardActivity$Companion;

.field private static final KEY_CARD_TOKEN:Ljava/lang/String; = "KEY_CARD_TOKEN"

.field private static final KEY_PAN:Ljava/lang/String; = "PAN"

.field private static final KEY_TITLE:Ljava/lang/String; = "TITLE"

.field private static final REQUEST_ADD_CARD:I = 0x27ff


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private addCardSubscription:Lrx/Subscription;

.field private cardTitle:Ljava/lang/String;

.field private final data:Lru/rocketbank/r2d2/data/binding/ap/AddCardData;

.field private phone:Ljava/lang/String;

.field private final rxTapAndPay:Lru/rocketbank/core/pay/google/RxTapAndPay;

.field private final uiTapAndPay:Lru/rocketbank/core/pay/google/UiTapAndPay;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/r2d2/root/devidepayment/ap/APAddCardActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/root/devidepayment/ap/APAddCardActivity$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/r2d2/root/devidepayment/ap/APAddCardActivity;->Companion:Lru/rocketbank/r2d2/root/devidepayment/ap/APAddCardActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Lru/rocketbank/r2d2/root/devidepayment/ap/APBaseActivity;-><init>()V

    .line 22
    new-instance v0, Lru/rocketbank/r2d2/data/binding/ap/AddCardData;

    invoke-direct {v0}, Lru/rocketbank/r2d2/data/binding/ap/AddCardData;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/root/devidepayment/ap/APAddCardActivity;->data:Lru/rocketbank/r2d2/data/binding/ap/AddCardData;

    .line 23
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/devidepayment/ap/APAddCardActivity;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object v0

    invoke-interface {v0}, Lru/rocketbank/core/dagger/component/RocketComponent;->getUiTapAndPay()Lru/rocketbank/core/pay/google/UiTapAndPay;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/root/devidepayment/ap/APAddCardActivity;->uiTapAndPay:Lru/rocketbank/core/pay/google/UiTapAndPay;

    .line 24
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/devidepayment/ap/APAddCardActivity;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object v0

    invoke-interface {v0}, Lru/rocketbank/core/dagger/component/RocketComponent;->getRxTapAndPay()Lru/rocketbank/core/pay/google/RxTapAndPay;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/root/devidepayment/ap/APAddCardActivity;->rxTapAndPay:Lru/rocketbank/core/pay/google/RxTapAndPay;

    .line 28
    invoke-static {}, Lrx/subscriptions/Subscriptions;->empty()Lrx/Subscription;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/root/devidepayment/ap/APAddCardActivity;->addCardSubscription:Lrx/Subscription;

    return-void
.end method

.method public static final startForResult(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6

    sget-object v0, Lru/rocketbank/r2d2/root/devidepayment/ap/APAddCardActivity;->Companion:Lru/rocketbank/r2d2/root/devidepayment/ap/APAddCardActivity$Companion;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lru/rocketbank/r2d2/root/devidepayment/ap/APAddCardActivity$Companion;->startForResult(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/root/devidepayment/ap/APAddCardActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/root/devidepayment/ap/APAddCardActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public final _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lru/rocketbank/r2d2/root/devidepayment/ap/APAddCardActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/root/devidepayment/ap/APAddCardActivity;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/root/devidepayment/ap/APAddCardActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/r2d2/root/devidepayment/ap/APAddCardActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final bridge synthetic createPresenter()Lru/rocketbank/core/utils/presenter/Presenter;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/devidepayment/ap/APAddCardActivity;->createPresenter()Lru/rocketbank/r2d2/root/devidepayment/ap/APAddCardPresenter;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/utils/presenter/Presenter;

    return-object v0
.end method

.method public final createPresenter()Lru/rocketbank/r2d2/root/devidepayment/ap/APAddCardPresenter;
    .locals 2

    .line 30
    sget-object v0, Lru/rocketbank/core/manager/PresenterManager;->INSTANCE:Lru/rocketbank/core/manager/PresenterManager;

    const-string v0, "686c1f06-5ddd-4a67-bd77-55447a4ea81d"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    const-string v1, "UUID.fromString(\"686c1f0\u2026-4a67-bd77-55447a4ea81d\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v1, Lru/rocketbank/r2d2/root/devidepayment/ap/APAddCardPresenter;

    invoke-static {v0, v1}, Lru/rocketbank/core/manager/PresenterManager;->getOrCreatePresenter(Ljava/util/UUID;Ljava/lang/Class;)Lru/rocketbank/core/utils/presenter/Presenter;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/root/devidepayment/ap/APAddCardPresenter;

    return-object v0
.end method

.method protected final onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 106
    invoke-super {p0, p1, p2, p3}, Lru/rocketbank/r2d2/root/devidepayment/ap/APBaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 107
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/devidepayment/ap/APAddCardActivity;->hideProgress()V

    const/16 p3, 0x27ff

    if-ne p1, p3, :cond_0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 110
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/root/devidepayment/ap/APAddCardActivity;->setResult(I)V

    .line 111
    move-object p1, p0

    check-cast p1, Landroid/content/Context;

    const p2, 0x7f110093

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/root/devidepayment/ap/APAddCardActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 113
    :cond_0
    iget-object p1, p0, Lru/rocketbank/r2d2/root/devidepayment/ap/APAddCardActivity;->addCardSubscription:Lrx/Subscription;

    invoke-interface {p1}, Lrx/Subscription;->unsubscribe()V

    .line 114
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/devidepayment/ap/APAddCardActivity;->finish()V

    return-void
.end method

.method public final onCardAddClicked(Ljava/lang/String;)V
    .locals 2

    const-string v0, "cardToken"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/devidepayment/ap/APAddCardActivity;->showProgress()V

    .line 67
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/devidepayment/ap/APAddCardActivity;->keepUnlocked()V

    .line 68
    iget-object v0, p0, Lru/rocketbank/r2d2/root/devidepayment/ap/APAddCardActivity;->rxTapAndPay:Lru/rocketbank/core/pay/google/RxTapAndPay;

    invoke-virtual {v0}, Lru/rocketbank/core/pay/google/RxTapAndPay;->getEnvironment()Lrx/Observable;

    move-result-object v0

    .line 69
    new-instance v1, Lru/rocketbank/r2d2/root/devidepayment/ap/APAddCardActivity$onCardAddClicked$1;

    invoke-direct {v1, p0, p1}, Lru/rocketbank/r2d2/root/devidepayment/ap/APAddCardActivity$onCardAddClicked$1;-><init>(Lru/rocketbank/r2d2/root/devidepayment/ap/APAddCardActivity;Ljava/lang/String;)V

    check-cast v1, Lrx/functions/Func1;

    invoke-virtual {v0, v1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object p1

    .line 71
    sget-object v0, Lru/rocketbank/r2d2/root/devidepayment/ap/APAddCardActivity$onCardAddClicked$2;->INSTANCE:Lru/rocketbank/r2d2/root/devidepayment/ap/APAddCardActivity$onCardAddClicked$2;

    check-cast v0, Lrx/functions/Action1;

    .line 73
    sget-object v1, Lru/rocketbank/r2d2/root/devidepayment/ap/APAddCardActivity$onCardAddClicked$3;->INSTANCE:Lru/rocketbank/r2d2/root/devidepayment/ap/APAddCardActivity$onCardAddClicked$3;

    check-cast v1, Lrx/functions/Action1;

    .line 71
    invoke-virtual {p1, v0, v1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;Lrx/functions/Action1;)Lrx/Subscription;

    return-void
.end method

.method public final onCardDataReady(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const-string v0, "address"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "postIndex"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "opc"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lru/rocketbank/r2d2/root/devidepayment/ap/APAddCardActivity;->data:Lru/rocketbank/r2d2/data/binding/ap/AddCardData;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/data/binding/ap/AddCardData;->getPan()Landroid/databinding/ObservableField;

    move-result-object v0

    invoke-virtual {v0}, Landroid/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    check-cast v0, Ljava/lang/String;

    const-string v1, "pan"

    .line 87
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v0, :cond_1

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v0, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lru/rocketbank/r2d2/root/devidepayment/ap/APAddCardActivity;->uiTapAndPay:Lru/rocketbank/core/pay/google/UiTapAndPay;

    move-object v1, p0

    check-cast v1, Landroid/app/Activity;

    .line 89
    iget-object v2, p0, Lru/rocketbank/r2d2/root/devidepayment/ap/APAddCardActivity;->cardTitle:Ljava/lang/String;

    if-nez v2, :cond_2

    const-string v3, "cardTitle"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 92
    :cond_2
    iget-object v5, p0, Lru/rocketbank/r2d2/root/devidepayment/ap/APAddCardActivity;->phone:Ljava/lang/String;

    if-nez v5, :cond_3

    const-string v3, "phone"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    move-object v3, p3

    move-object v6, p1

    move-object v7, p2

    .line 88
    invoke-virtual/range {v0 .. v7}, Lru/rocketbank/core/pay/google/UiTapAndPay;->addCard$56205205(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;

    move-result-object p1

    .line 96
    invoke-virtual {p1}, Lrx/Observable;->subscribe()Lrx/Subscription;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/root/devidepayment/ap/APAddCardActivity;->addCardSubscription:Lrx/Subscription;

    return-void
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 33
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/root/devidepayment/ap/APBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    move-object p1, p0

    check-cast p1, Landroid/app/Activity;

    const v0, 0x7f0c0022

    invoke-static {p1, v0}, Landroid/databinding/DataBindingUtil;->setContentView(Landroid/app/Activity;I)Landroid/databinding/ViewDataBinding;

    move-result-object p1

    const-string v0, "DataBindingUtil.setConte\u2026out.activity_ap_add_card)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/root/devidepayment/ap/APAddCardActivity;->setBinding(Landroid/databinding/ViewDataBinding;)V

    .line 35
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/devidepayment/ap/APAddCardActivity;->getBinding()Landroid/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lru/rocketbank/r2d2/databinding/ActivityApAddCardBinding;

    iget-object v0, p0, Lru/rocketbank/r2d2/root/devidepayment/ap/APAddCardActivity;->data:Lru/rocketbank/r2d2/data/binding/ap/AddCardData;

    invoke-virtual {p1, v0}, Lru/rocketbank/r2d2/databinding/ActivityApAddCardBinding;->setData(Lru/rocketbank/r2d2/data/binding/ap/AddCardData;)V

    .line 37
    iget-object p1, p0, Lru/rocketbank/r2d2/root/devidepayment/ap/APAddCardActivity;->data:Lru/rocketbank/r2d2/data/binding/ap/AddCardData;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/data/binding/ap/AddCardData;->getCardToken()Landroid/databinding/ObservableField;

    move-result-object p1

    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/devidepayment/ap/APAddCardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "KEY_CARD_TOKEN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 38
    iget-object p1, p0, Lru/rocketbank/r2d2/root/devidepayment/ap/APAddCardActivity;->data:Lru/rocketbank/r2d2/data/binding/ap/AddCardData;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/data/binding/ap/AddCardData;->getPan()Landroid/databinding/ObservableField;

    move-result-object p1

    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/devidepayment/ap/APAddCardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "PAN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 39
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/devidepayment/ap/APAddCardActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "TITLE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "intent.getStringExtra(KEY_TITLE)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/root/devidepayment/ap/APAddCardActivity;->cardTitle:Ljava/lang/String;

    .line 41
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/devidepayment/ap/APAddCardActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 42
    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const-string v0, "it"

    .line 43
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f110050

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/root/devidepayment/ap/APAddCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 45
    :cond_0
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/devidepayment/ap/APAddCardActivity;->getPresenter()Lru/rocketbank/core/utils/presenter/Presenter;

    move-result-object p1

    check-cast p1, Lru/rocketbank/r2d2/root/devidepayment/ap/APAddCardPresenter;

    move-object v0, p0

    check-cast v0, Lru/rocketbank/r2d2/root/devidepayment/ap/APAddCardView;

    invoke-virtual {p1, v0}, Lru/rocketbank/r2d2/root/devidepayment/ap/APAddCardPresenter;->onAttach(Lru/rocketbank/r2d2/root/devidepayment/ap/APAddCardView;)V

    const/4 p1, 0x0

    .line 46
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/root/devidepayment/ap/APAddCardActivity;->setResult(I)V

    return-void
.end method

.method protected final onDestroy()V
    .locals 1

    .line 61
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/devidepayment/ap/APAddCardActivity;->getPresenter()Lru/rocketbank/core/utils/presenter/Presenter;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/root/devidepayment/ap/APAddCardPresenter;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/devidepayment/ap/APAddCardPresenter;->onDetach()V

    .line 62
    invoke-super {p0}, Lru/rocketbank/r2d2/root/devidepayment/ap/APBaseActivity;->onDestroy()V

    return-void
.end method

.method protected final onStart()V
    .locals 2

    .line 50
    invoke-super {p0}, Lru/rocketbank/r2d2/root/devidepayment/ap/APBaseActivity;->onStart()V

    .line 51
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/devidepayment/ap/APAddCardActivity;->getBinding()Landroid/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/databinding/ActivityApAddCardBinding;

    move-object v1, p0

    check-cast v1, Lru/rocketbank/r2d2/data/binding/ap/AddCardListener;

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/databinding/ActivityApAddCardBinding;->setListener(Lru/rocketbank/r2d2/data/binding/ap/AddCardListener;)V

    return-void
.end method

.method protected final onStop()V
    .locals 2

    .line 55
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/devidepayment/ap/APAddCardActivity;->hideProgress()V

    .line 56
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/devidepayment/ap/APAddCardActivity;->getBinding()Landroid/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/databinding/ActivityApAddCardBinding;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/databinding/ActivityApAddCardBinding;->setListener(Lru/rocketbank/r2d2/data/binding/ap/AddCardListener;)V

    .line 57
    invoke-super {p0}, Lru/rocketbank/r2d2/root/devidepayment/ap/APBaseActivity;->onStop()V

    return-void
.end method

.method public final onUserModel(Lru/rocketbank/core/model/UserModel;)V
    .locals 1

    .line 79
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/root/devidepayment/ap/APBaseActivity;->onUserModel(Lru/rocketbank/core/model/UserModel;)V

    if-eqz p1, :cond_0

    .line 81
    invoke-virtual {p1}, Lru/rocketbank/core/model/UserModel;->getPhone()Lru/rocketbank/core/model/PhoneModel;

    move-result-object p1

    const-string v0, "it.phone"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lru/rocketbank/core/model/PhoneModel;->getNumber()Ljava/lang/String;

    move-result-object p1

    const-string v0, "it.phone.number"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/root/devidepayment/ap/APAddCardActivity;->phone:Ljava/lang/String;

    return-void

    :cond_0
    return-void
.end method

.method public final showError(Ljava/lang/String;)V
    .locals 2

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/devidepayment/ap/APAddCardActivity;->getBinding()Landroid/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/databinding/ActivityApAddCardBinding;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/databinding/ActivityApAddCardBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    check-cast p1, Ljava/lang/CharSequence;

    const/4 v1, -0x1

    invoke-static {v0, p1, v1}, Lru/rocketbank/core/widgets/RocketSnackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lru/rocketbank/core/widgets/RocketSnackbar;

    move-result-object p1

    .line 101
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    const v1, 0x7f060228

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Lru/rocketbank/core/widgets/RocketSnackbar;->setTextColor(I)Lru/rocketbank/core/widgets/RocketSnackbar;

    move-result-object p1

    .line 102
    invoke-virtual {p1}, Lru/rocketbank/core/widgets/RocketSnackbar;->show()V

    return-void
.end method
