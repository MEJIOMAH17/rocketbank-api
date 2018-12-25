.class public final Lru/rocketbank/r2d2/root/devidepayment/ap/APManageCardActivity;
.super Lru/rocketbank/r2d2/root/devidepayment/ap/APBaseActivity;
.source "APManageCardActivity.kt"

# interfaces
.implements Lru/rocketbank/r2d2/data/binding/ap/APManageCardListener;
.implements Lru/rocketbank/r2d2/root/devidepayment/ap/APManageCardView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/root/devidepayment/ap/APManageCardActivity$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lru/rocketbank/r2d2/root/devidepayment/ap/APBaseActivity<",
        "Lru/rocketbank/r2d2/root/devidepayment/ap/APManageCardPresenter;",
        "Lru/rocketbank/r2d2/databinding/ActivityApManageCardBinding;",
        ">;",
        "Lru/rocketbank/r2d2/data/binding/ap/APManageCardListener;",
        "Lru/rocketbank/r2d2/root/devidepayment/ap/APManageCardView;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAPManageCardActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 APManageCardActivity.kt\nru/rocketbank/r2d2/root/devidepayment/ap/APManageCardActivity\n*L\n1#1,135:1\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lru/rocketbank/r2d2/root/devidepayment/ap/APManageCardActivity$Companion;

.field public static final KEY_ANDROID_PAY_TOKEN:Ljava/lang/String; = "KEY_CARD"

.field public static final KEY_IS_DEFAULT:Ljava/lang/String; = "IS_DEFAULT"

.field public static final KEY_IS_DELETE:Ljava/lang/String; = "KEY_DELETE"

.field public static final REQUEST_DEFAULT:I = 0x7155

.field public static final REQUEST_DELETE:I = 0x7156

.field private static final TAG:Ljava/lang/String; = "APManageCardActivity"


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private final dataB:Lru/rocketbank/r2d2/data/binding/ap/APManageCardData;

.field private deleteSubscription:Lrx/Subscription;

.field private makeDefaultSubscription:Lrx/Subscription;

.field private final resultIntent:Landroid/content/Intent;

.field private final uiTapAndPay:Lru/rocketbank/core/pay/google/UiTapAndPay;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/r2d2/root/devidepayment/ap/APManageCardActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/root/devidepayment/ap/APManageCardActivity$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/r2d2/root/devidepayment/ap/APManageCardActivity;->Companion:Lru/rocketbank/r2d2/root/devidepayment/ap/APManageCardActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Lru/rocketbank/r2d2/root/devidepayment/ap/APBaseActivity;-><init>()V

    .line 19
    new-instance v0, Lru/rocketbank/r2d2/data/binding/ap/APManageCardData;

    invoke-direct {v0}, Lru/rocketbank/r2d2/data/binding/ap/APManageCardData;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/root/devidepayment/ap/APManageCardActivity;->dataB:Lru/rocketbank/r2d2/data/binding/ap/APManageCardData;

    .line 20
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/devidepayment/ap/APManageCardActivity;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object v0

    invoke-interface {v0}, Lru/rocketbank/core/dagger/component/RocketComponent;->getUiTapAndPay()Lru/rocketbank/core/pay/google/UiTapAndPay;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/root/devidepayment/ap/APManageCardActivity;->uiTapAndPay:Lru/rocketbank/core/pay/google/UiTapAndPay;

    .line 21
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/root/devidepayment/ap/APManageCardActivity;->resultIntent:Landroid/content/Intent;

    .line 23
    invoke-static {}, Lrx/subscriptions/Subscriptions;->empty()Lrx/Subscription;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/root/devidepayment/ap/APManageCardActivity;->deleteSubscription:Lrx/Subscription;

    .line 24
    invoke-static {}, Lrx/subscriptions/Subscriptions;->empty()Lrx/Subscription;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/root/devidepayment/ap/APManageCardActivity;->makeDefaultSubscription:Lrx/Subscription;

    return-void
.end method

.method public static final synthetic access$getDeleteSubscription$p(Lru/rocketbank/r2d2/root/devidepayment/ap/APManageCardActivity;)Lrx/Subscription;
    .locals 0

    .line 17
    iget-object p0, p0, Lru/rocketbank/r2d2/root/devidepayment/ap/APManageCardActivity;->deleteSubscription:Lrx/Subscription;

    return-object p0
.end method

.method public static final synthetic access$getMakeDefaultSubscription$p(Lru/rocketbank/r2d2/root/devidepayment/ap/APManageCardActivity;)Lrx/Subscription;
    .locals 0

    .line 17
    iget-object p0, p0, Lru/rocketbank/r2d2/root/devidepayment/ap/APManageCardActivity;->makeDefaultSubscription:Lrx/Subscription;

    return-object p0
.end method

.method public static final synthetic access$setDeleteSubscription$p(Lru/rocketbank/r2d2/root/devidepayment/ap/APManageCardActivity;Lrx/Subscription;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lru/rocketbank/r2d2/root/devidepayment/ap/APManageCardActivity;->deleteSubscription:Lrx/Subscription;

    return-void
.end method

.method public static final synthetic access$setMakeDefaultSubscription$p(Lru/rocketbank/r2d2/root/devidepayment/ap/APManageCardActivity;Lrx/Subscription;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lru/rocketbank/r2d2/root/devidepayment/ap/APManageCardActivity;->makeDefaultSubscription:Lrx/Subscription;

    return-void
.end method

.method public static final startForResult(Landroid/app/Activity;Ljava/lang/String;ZI)V
    .locals 1

    sget-object v0, Lru/rocketbank/r2d2/root/devidepayment/ap/APManageCardActivity;->Companion:Lru/rocketbank/r2d2/root/devidepayment/ap/APManageCardActivity$Companion;

    invoke-virtual {v0, p0, p1, p2, p3}, Lru/rocketbank/r2d2/root/devidepayment/ap/APManageCardActivity$Companion;->startForResult(Landroid/app/Activity;Ljava/lang/String;ZI)V

    return-void
.end method


# virtual methods
.method public final _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/root/devidepayment/ap/APManageCardActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/root/devidepayment/ap/APManageCardActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public final _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lru/rocketbank/r2d2/root/devidepayment/ap/APManageCardActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/root/devidepayment/ap/APManageCardActivity;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/root/devidepayment/ap/APManageCardActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/r2d2/root/devidepayment/ap/APManageCardActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final bridge synthetic createPresenter()Lru/rocketbank/core/utils/presenter/Presenter;
    .locals 1

    .line 17
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/devidepayment/ap/APManageCardActivity;->createPresenter()Lru/rocketbank/r2d2/root/devidepayment/ap/APManageCardPresenter;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/utils/presenter/Presenter;

    return-object v0
.end method

.method public final createPresenter()Lru/rocketbank/r2d2/root/devidepayment/ap/APManageCardPresenter;
    .locals 2

    .line 26
    sget-object v0, Lru/rocketbank/core/manager/PresenterManager;->INSTANCE:Lru/rocketbank/core/manager/PresenterManager;

    const-string v0, "df70c5a4-2074-462a-92ec-7fe1663bf185"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    const-string v1, "UUID.fromString(\"df70c5a\u2026-462a-92ec-7fe1663bf185\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v1, Lru/rocketbank/r2d2/root/devidepayment/ap/APManageCardPresenter;

    invoke-static {v0, v1}, Lru/rocketbank/core/manager/PresenterManager;->getOrCreatePresenter(Ljava/util/UUID;Ljava/lang/Class;)Lru/rocketbank/core/utils/presenter/Presenter;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/root/devidepayment/ap/APManageCardPresenter;

    return-object v0
.end method

.method public final deleteCardClicked(Ljava/lang/String;)V
    .locals 2

    const-string v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lru/rocketbank/r2d2/root/devidepayment/ap/APManageCardActivity;->uiTapAndPay:Lru/rocketbank/core/pay/google/UiTapAndPay;

    move-object v1, p0

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v0, v1, p1}, Lru/rocketbank/core/pay/google/UiTapAndPay;->deleteCard$2e873f09(Landroid/app/Activity;Ljava/lang/String;)Lrx/Observable;

    move-result-object p1

    .line 105
    new-instance v0, Lru/rocketbank/r2d2/root/devidepayment/ap/APManageCardActivity$deleteCardClicked$1;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/root/devidepayment/ap/APManageCardActivity$deleteCardClicked$1;-><init>(Lru/rocketbank/r2d2/root/devidepayment/ap/APManageCardActivity;)V

    check-cast v0, Lrx/functions/Action1;

    .line 107
    new-instance v1, Lru/rocketbank/r2d2/root/devidepayment/ap/APManageCardActivity$deleteCardClicked$2;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/root/devidepayment/ap/APManageCardActivity$deleteCardClicked$2;-><init>(Lru/rocketbank/r2d2/root/devidepayment/ap/APManageCardActivity;)V

    check-cast v1, Lrx/functions/Action1;

    .line 105
    invoke-virtual {p1, v0, v1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;Lrx/functions/Action1;)Lrx/Subscription;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/root/devidepayment/ap/APManageCardActivity;->deleteSubscription:Lrx/Subscription;

    return-void
.end method

.method public final makeDefaultClicked(Ljava/lang/String;)V
    .locals 2

    const-string v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lru/rocketbank/r2d2/root/devidepayment/ap/APManageCardActivity;->uiTapAndPay:Lru/rocketbank/core/pay/google/UiTapAndPay;

    move-object v1, p0

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v0, v1, p1}, Lru/rocketbank/core/pay/google/UiTapAndPay;->selectDefault$2e873f09(Landroid/app/Activity;Ljava/lang/String;)Lrx/Observable;

    move-result-object p1

    .line 95
    new-instance v0, Lru/rocketbank/r2d2/root/devidepayment/ap/APManageCardActivity$makeDefaultClicked$1;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/root/devidepayment/ap/APManageCardActivity$makeDefaultClicked$1;-><init>(Lru/rocketbank/r2d2/root/devidepayment/ap/APManageCardActivity;)V

    check-cast v0, Lrx/functions/Action1;

    .line 97
    new-instance v1, Lru/rocketbank/r2d2/root/devidepayment/ap/APManageCardActivity$makeDefaultClicked$2;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/root/devidepayment/ap/APManageCardActivity$makeDefaultClicked$2;-><init>(Lru/rocketbank/r2d2/root/devidepayment/ap/APManageCardActivity;)V

    check-cast v1, Lrx/functions/Action1;

    .line 95
    invoke-virtual {p1, v0, v1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;Lrx/functions/Action1;)Lrx/Subscription;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/root/devidepayment/ap/APManageCardActivity;->makeDefaultSubscription:Lrx/Subscription;

    return-void
.end method

.method protected final onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 64
    invoke-super {p0, p1, p2, p3}, Lru/rocketbank/r2d2/root/devidepayment/ap/APBaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p3, -0x1

    if-ne p2, p3, :cond_0

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 75
    :pswitch_0
    iget-object p1, p0, Lru/rocketbank/r2d2/root/devidepayment/ap/APManageCardActivity;->resultIntent:Landroid/content/Intent;

    const-string p3, "KEY_DELETE"

    const/4 v0, 0x1

    invoke-virtual {p1, p3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 76
    invoke-static {}, Lru/rocketbank/core/manager/AnalyticsManager;->cardDeletedFromGooglePay()V

    .line 77
    iget-object p1, p0, Lru/rocketbank/r2d2/root/devidepayment/ap/APManageCardActivity;->dataB:Lru/rocketbank/r2d2/data/binding/ap/APManageCardData;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/data/binding/ap/APManageCardData;->getDefaultEnabled()Landroid/databinding/ObservableBoolean;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/databinding/ObservableBoolean;->set(Z)V

    .line 78
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/devidepayment/ap/APManageCardActivity;->getPresenter()Lru/rocketbank/core/utils/presenter/Presenter;

    move-result-object p1

    check-cast p1, Lru/rocketbank/r2d2/root/devidepayment/ap/APManageCardPresenter;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/devidepayment/ap/APManageCardPresenter;->deleteTur()V

    goto :goto_0

    .line 68
    :pswitch_1
    iget-object p1, p0, Lru/rocketbank/r2d2/root/devidepayment/ap/APManageCardActivity;->resultIntent:Landroid/content/Intent;

    const-string v0, "KEY_DELETE"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 69
    invoke-static {}, Lru/rocketbank/core/manager/AnalyticsManager;->cardDefaultGooglePay()V

    .line 70
    iget-object p1, p0, Lru/rocketbank/r2d2/root/devidepayment/ap/APManageCardActivity;->resultIntent:Landroid/content/Intent;

    invoke-virtual {p0, p3, p1}, Lru/rocketbank/r2d2/root/devidepayment/ap/APManageCardActivity;->setResult(ILandroid/content/Intent;)V

    .line 71
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/devidepayment/ap/APManageCardActivity;->finish()V

    return-void

    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7155
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 29
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/root/devidepayment/ap/APBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    move-object p1, p0

    check-cast p1, Landroid/app/Activity;

    const v0, 0x7f0c0023

    invoke-static {p1, v0}, Landroid/databinding/DataBindingUtil;->setContentView(Landroid/app/Activity;I)Landroid/databinding/ViewDataBinding;

    move-result-object p1

    const-string v0, "DataBindingUtil.setConte\u2026.activity_ap_manage_card)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/root/devidepayment/ap/APManageCardActivity;->setBinding(Landroid/databinding/ViewDataBinding;)V

    .line 31
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/devidepayment/ap/APManageCardActivity;->getBinding()Landroid/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lru/rocketbank/r2d2/databinding/ActivityApManageCardBinding;

    iget-object v0, p0, Lru/rocketbank/r2d2/root/devidepayment/ap/APManageCardActivity;->dataB:Lru/rocketbank/r2d2/data/binding/ap/APManageCardData;

    invoke-virtual {p1, v0}, Lru/rocketbank/r2d2/databinding/ActivityApManageCardBinding;->setData(Lru/rocketbank/r2d2/data/binding/ap/APManageCardData;)V

    .line 32
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/devidepayment/ap/APManageCardActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "KEY_CARD"

    .line 33
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 34
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/devidepayment/ap/APManageCardActivity;->getPresenter()Lru/rocketbank/core/utils/presenter/Presenter;

    move-result-object v1

    check-cast v1, Lru/rocketbank/r2d2/root/devidepayment/ap/APManageCardPresenter;

    const-string v2, "tur"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lru/rocketbank/r2d2/root/devidepayment/ap/APManageCardPresenter;->onCreate(Ljava/lang/String;)V

    .line 35
    iget-object v1, p0, Lru/rocketbank/r2d2/root/devidepayment/ap/APManageCardActivity;->dataB:Lru/rocketbank/r2d2/data/binding/ap/APManageCardData;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/data/binding/ap/APManageCardData;->getAndroidPayToken()Landroid/databinding/ObservableField;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 36
    iget-object v0, p0, Lru/rocketbank/r2d2/root/devidepayment/ap/APManageCardActivity;->dataB:Lru/rocketbank/r2d2/data/binding/ap/APManageCardData;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/data/binding/ap/APManageCardData;->getDefaultEnabled()Landroid/databinding/ObservableBoolean;

    move-result-object v0

    const-string v1, "IS_DEFAULT"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    invoke-virtual {v0, p1}, Landroid/databinding/ObservableBoolean;->set(Z)V

    .line 38
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/devidepayment/ap/APManageCardActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "it"

    .line 39
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f110093

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/root/devidepayment/ap/APManageCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    .line 40
    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 42
    :cond_0
    invoke-virtual {p0, v2}, Lru/rocketbank/r2d2/root/devidepayment/ap/APManageCardActivity;->setResult(I)V

    return-void
.end method

.method public final onDeleteError()V
    .locals 3

    .line 90
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    const-string v1, "\u0427\u0442\u043e-\u0442\u043e \u043f\u043e\u0448\u043b\u043e \u043d\u0435 \u0442\u0430\u043a"

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method protected final onDestroy()V
    .locals 1

    .line 58
    iget-object v0, p0, Lru/rocketbank/r2d2/root/devidepayment/ap/APManageCardActivity;->makeDefaultSubscription:Lrx/Subscription;

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/root/devidepayment/ap/APManageCardActivity;->unsubscribe(Lrx/Subscription;)V

    .line 59
    iget-object v0, p0, Lru/rocketbank/r2d2/root/devidepayment/ap/APManageCardActivity;->deleteSubscription:Lrx/Subscription;

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/root/devidepayment/ap/APManageCardActivity;->unsubscribe(Lrx/Subscription;)V

    .line 60
    invoke-super {p0}, Lru/rocketbank/r2d2/root/devidepayment/ap/APBaseActivity;->onDestroy()V

    return-void
.end method

.method protected final onStart()V
    .locals 2

    .line 46
    invoke-super {p0}, Lru/rocketbank/r2d2/root/devidepayment/ap/APBaseActivity;->onStart()V

    .line 47
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/devidepayment/ap/APManageCardActivity;->getBinding()Landroid/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/databinding/ActivityApManageCardBinding;

    move-object v1, p0

    check-cast v1, Lru/rocketbank/r2d2/data/binding/ap/APManageCardListener;

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/databinding/ActivityApManageCardBinding;->setListener(Lru/rocketbank/r2d2/data/binding/ap/APManageCardListener;)V

    .line 48
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/devidepayment/ap/APManageCardActivity;->getPresenter()Lru/rocketbank/core/utils/presenter/Presenter;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/root/devidepayment/ap/APManageCardPresenter;

    move-object v1, p0

    check-cast v1, Lru/rocketbank/r2d2/root/devidepayment/ap/APManageCardView;

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/root/devidepayment/ap/APManageCardPresenter;->onAttach(Lru/rocketbank/r2d2/root/devidepayment/ap/APManageCardView;)V

    return-void
.end method

.method protected final onStop()V
    .locals 2

    .line 52
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/devidepayment/ap/APManageCardActivity;->getBinding()Landroid/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/databinding/ActivityApManageCardBinding;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/databinding/ActivityApManageCardBinding;->setListener(Lru/rocketbank/r2d2/data/binding/ap/APManageCardListener;)V

    .line 53
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/devidepayment/ap/APManageCardActivity;->getPresenter()Lru/rocketbank/core/utils/presenter/Presenter;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/root/devidepayment/ap/APManageCardPresenter;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/devidepayment/ap/APManageCardPresenter;->onDetach()V

    .line 54
    invoke-super {p0}, Lru/rocketbank/r2d2/root/devidepayment/ap/APBaseActivity;->onStop()V

    return-void
.end method

.method public final onTurDeleted()V
    .locals 2

    .line 85
    iget-object v0, p0, Lru/rocketbank/r2d2/root/devidepayment/ap/APManageCardActivity;->resultIntent:Landroid/content/Intent;

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lru/rocketbank/r2d2/root/devidepayment/ap/APManageCardActivity;->setResult(ILandroid/content/Intent;)V

    .line 86
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/devidepayment/ap/APManageCardActivity;->finish()V

    return-void
.end method
