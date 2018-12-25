.class public final Lru/rocketbank/r2d2/payment/PaymentDetailsActivity;
.super Lru/rocketbank/r2d2/activities/SecuredActivity;
.source "PaymentDetailsActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/payment/PaymentDetailsActivity$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lru/rocketbank/r2d2/payment/PaymentDetailsActivity$Companion;

.field private static final PAYMENT_EXTRA:Ljava/lang/String; = "payment"

.field private static final PROVIDER_EXTRA:Ljava/lang/String; = "provider"


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private fragment:Landroid/support/v4/app/Fragment;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/r2d2/payment/PaymentDetailsActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/payment/PaymentDetailsActivity$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/r2d2/payment/PaymentDetailsActivity;->Companion:Lru/rocketbank/r2d2/payment/PaymentDetailsActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lru/rocketbank/r2d2/activities/SecuredActivity;-><init>()V

    return-void
.end method

.method public static final synthetic access$getPAYMENT_EXTRA$cp()Ljava/lang/String;
    .locals 1

    .line 23
    sget-object v0, Lru/rocketbank/r2d2/payment/PaymentDetailsActivity;->PAYMENT_EXTRA:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getPROVIDER_EXTRA$cp()Ljava/lang/String;
    .locals 1

    .line 23
    sget-object v0, Lru/rocketbank/r2d2/payment/PaymentDetailsActivity;->PROVIDER_EXTRA:Ljava/lang/String;

    return-object v0
.end method

.method public static bridge synthetic replaceDetailsFragment$default(Lru/rocketbank/r2d2/payment/PaymentDetailsActivity;Lru/rocketbank/core/model/provider/Provider;Lru/rocketbank/core/model/transfers/Template;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 69
    :cond_0
    invoke-virtual {p0, p1, p2}, Lru/rocketbank/r2d2/payment/PaymentDetailsActivity;->replaceDetailsFragment(Lru/rocketbank/core/model/provider/Provider;Lru/rocketbank/core/model/transfers/Template;)V

    return-void
.end method

.method private final scheduleStartPostponedTransition(Landroid/view/View;)V
    .locals 2

    .line 75
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 76
    new-instance v1, Lru/rocketbank/r2d2/payment/PaymentDetailsActivity$scheduleStartPostponedTransition$1;

    invoke-direct {v1, p0, p1}, Lru/rocketbank/r2d2/payment/PaymentDetailsActivity$scheduleStartPostponedTransition$1;-><init>(Lru/rocketbank/r2d2/payment/PaymentDetailsActivity;Landroid/view/View;)V

    check-cast v1, Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 75
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method


# virtual methods
.method public final _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentDetailsActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentDetailsActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public final _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentDetailsActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentDetailsActivity;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentDetailsActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/r2d2/payment/PaymentDetailsActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 100
    invoke-super {p0, p1, p2, p3}, Lru/rocketbank/r2d2/activities/SecuredActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 101
    invoke-virtual {p0}, Lru/rocketbank/r2d2/payment/PaymentDetailsActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f090188

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void

    :cond_0
    return-void
.end method

.method public final onBackPressed()V
    .locals 2

    .line 93
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentDetailsActivity;->fragment:Landroid/support/v4/app/Fragment;

    instance-of v0, v0, Lru/rocketbank/r2d2/fragments/RocketFragment;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentDetailsActivity;->fragment:Landroid/support/v4/app/Fragment;

    if-nez v0, :cond_0

    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type ru.rocketbank.r2d2.fragments.RocketFragment"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast v0, Lru/rocketbank/r2d2/fragments/RocketFragment;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 96
    :cond_1
    invoke-super {p0}, Lru/rocketbank/r2d2/activities/SecuredActivity;->onBackPressed()V

    return-void
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 28
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/activities/SecuredActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0c004a

    .line 29
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/payment/PaymentDetailsActivity;->setContentView(I)V

    .line 31
    invoke-virtual {p0}, Lru/rocketbank/r2d2/payment/PaymentDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lru/rocketbank/r2d2/payment/PaymentDetailsActivity;->PROVIDER_EXTRA:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/model/provider/Provider;

    .line 32
    invoke-virtual {p0}, Lru/rocketbank/r2d2/payment/PaymentDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    sget-object v2, Lru/rocketbank/r2d2/payment/PaymentDetailsActivity;->PAYMENT_EXTRA:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lru/rocketbank/core/model/transfers/Template;

    if-nez p1, :cond_1

    if-eqz v1, :cond_0

    const-string p1, "provider"

    .line 40
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lru/rocketbank/r2d2/payment/PaymentDetailsActivity;->replaceAmountFragment(Lru/rocketbank/core/model/provider/Provider;Lru/rocketbank/core/model/transfers/Template;)V

    return-void

    :cond_0
    const-string p1, "provider"

    .line 42
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x2

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p1, v1}, Lru/rocketbank/r2d2/payment/PaymentDetailsActivity;->replaceDetailsFragment$default(Lru/rocketbank/r2d2/payment/PaymentDetailsActivity;Lru/rocketbank/core/model/provider/Provider;Lru/rocketbank/core/model/transfers/Template;ILjava/lang/Object;)V

    return-void

    .line 45
    :cond_1
    invoke-virtual {p0}, Lru/rocketbank/r2d2/payment/PaymentDetailsActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    const v0, 0x7f090188

    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/payment/PaymentDetailsActivity;->fragment:Landroid/support/v4/app/Fragment;

    return-void
.end method

.method public final onEventMainThread(Lru/rocketbank/r2d2/friends/SharedElementsReadyEvent;)V
    .locals 4

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    return-void

    .line 53
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentDetailsActivity;->fragment:Landroid/support/v4/app/Fragment;

    instance-of v0, v0, Lru/rocketbank/r2d2/payment/SharedTransitionListener;

    if-eqz v0, :cond_2

    .line 54
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentDetailsActivity;->fragment:Landroid/support/v4/app/Fragment;

    if-nez v0, :cond_1

    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type ru.rocketbank.r2d2.payment.SharedTransitionListener"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    check-cast v0, Lru/rocketbank/r2d2/payment/SharedTransitionListener;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/payment/PaymentDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "a"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "intent.getStringExtra(\"a\")"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lru/rocketbank/r2d2/payment/PaymentDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "n"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "intent.getStringExtra(\"n\")"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Lru/rocketbank/r2d2/payment/SharedTransitionListener;->onSetTransitionNames(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-virtual {p1}, Lru/rocketbank/r2d2/friends/SharedElementsReadyEvent;->getAvatar()Landroid/view/View;

    move-result-object p1

    const-string v0, "event.avatar"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/payment/PaymentDetailsActivity;->scheduleStartPostponedTransition(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method protected final onPause()V
    .locals 1

    .line 88
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/mikepenz/materialdrawer/util/KeyboardUtil;->hideKeyboard(Landroid/app/Activity;)V

    .line 89
    invoke-super {p0}, Lru/rocketbank/r2d2/activities/SecuredActivity;->onPause()V

    return-void
.end method

.method public final replaceAmountFragment(Lru/rocketbank/core/model/provider/Provider;Lru/rocketbank/core/model/transfers/Template;)V
    .locals 2

    const-string v0, "provider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "template"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "payment_provider"

    .line 61
    check-cast p1, Landroid/os/Parcelable;

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p1, "template"

    .line 62
    check-cast p2, Ljava/io/Serializable;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 64
    new-instance p1, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;

    invoke-direct {p1}, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;-><init>()V

    check-cast p1, Landroid/support/v4/app/Fragment;

    iput-object p1, p0, Lru/rocketbank/r2d2/payment/PaymentDetailsActivity;->fragment:Landroid/support/v4/app/Fragment;

    .line 65
    iget-object p1, p0, Lru/rocketbank/r2d2/payment/PaymentDetailsActivity;->fragment:Landroid/support/v4/app/Fragment;

    if-nez p1, :cond_0

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type ru.rocketbank.r2d2.payment.PaymentAmountFragment"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    check-cast p1, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;

    invoke-virtual {p1, v0}, Lru/rocketbank/r2d2/payment/PaymentAmountFragment;->setArguments(Landroid/os/Bundle;)V

    .line 66
    invoke-virtual {p0}, Lru/rocketbank/r2d2/payment/PaymentDetailsActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    const p2, 0x7f090188

    iget-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentDetailsActivity;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {p1, p2, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public final replaceDetailsFragment(Lru/rocketbank/core/model/provider/Provider;Lru/rocketbank/core/model/transfers/Template;)V
    .locals 3

    const-string v0, "provider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    sget-object v0, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;->Companion:Lru/rocketbank/r2d2/payment/PaymentDetailsFragment$Companion;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/payment/PaymentDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "intent"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment$Companion;->newInstance(Lru/rocketbank/core/model/provider/Provider;Lru/rocketbank/core/model/transfers/Template;Landroid/os/Bundle;)Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;

    move-result-object p1

    check-cast p1, Landroid/support/v4/app/Fragment;

    iput-object p1, p0, Lru/rocketbank/r2d2/payment/PaymentDetailsActivity;->fragment:Landroid/support/v4/app/Fragment;

    .line 71
    invoke-virtual {p0}, Lru/rocketbank/r2d2/payment/PaymentDetailsActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    iget-object p2, p0, Lru/rocketbank/r2d2/payment/PaymentDetailsActivity;->fragment:Landroid/support/v4/app/Fragment;

    const v0, 0x7f090188

    invoke-virtual {p1, v0, p2}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    return-void
.end method
