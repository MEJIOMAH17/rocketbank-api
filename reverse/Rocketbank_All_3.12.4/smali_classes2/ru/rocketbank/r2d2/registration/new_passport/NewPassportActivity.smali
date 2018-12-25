.class public final Lru/rocketbank/r2d2/registration/new_passport/NewPassportActivity;
.super Lru/rocketbank/r2d2/PresenterSecuredActivity;
.source "NewPassportActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/registration/new_passport/NewPassportActivity$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lru/rocketbank/r2d2/PresenterSecuredActivity<",
        "Lru/rocketbank/r2d2/registration/new_passport/NewPassportPresenter;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNewPassportActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NewPassportActivity.kt\nru/rocketbank/r2d2/registration/new_passport/NewPassportActivity\n*L\n1#1,90:1\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lru/rocketbank/r2d2/registration/new_passport/NewPassportActivity$Companion;

.field public static final KEY_OPERATION:Ljava/lang/String; = "OPERATION"


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private binding:Lru/rocketbank/r2d2/databinding/ActivityNewPassportBinding;

.field private currentStep:I

.field private final data:Lru/rocketbank/r2d2/registration/new_passport/NewPassportData;

.field private operation:Lru/rocketbank/core/NewPassportOperation;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/r2d2/registration/new_passport/NewPassportActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/registration/new_passport/NewPassportActivity$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/r2d2/registration/new_passport/NewPassportActivity;->Companion:Lru/rocketbank/r2d2/registration/new_passport/NewPassportActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Lru/rocketbank/r2d2/PresenterSecuredActivity;-><init>()V

    .line 23
    new-instance v0, Lru/rocketbank/r2d2/registration/new_passport/NewPassportData;

    invoke-direct {v0}, Lru/rocketbank/r2d2/registration/new_passport/NewPassportData;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/registration/new_passport/NewPassportActivity;->data:Lru/rocketbank/r2d2/registration/new_passport/NewPassportData;

    return-void
.end method

.method public static final startForResult(Landroid/app/Activity;Lru/rocketbank/core/NewPassportOperation;I)V
    .locals 1

    sget-object v0, Lru/rocketbank/r2d2/registration/new_passport/NewPassportActivity;->Companion:Lru/rocketbank/r2d2/registration/new_passport/NewPassportActivity$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lru/rocketbank/r2d2/registration/new_passport/NewPassportActivity$Companion;->startForResult(Landroid/app/Activity;Lru/rocketbank/core/NewPassportOperation;I)V

    return-void
.end method


# virtual methods
.method public final _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/registration/new_passport/NewPassportActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/registration/new_passport/NewPassportActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public final _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lru/rocketbank/r2d2/registration/new_passport/NewPassportActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/registration/new_passport/NewPassportActivity;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/registration/new_passport/NewPassportActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/r2d2/registration/new_passport/NewPassportActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final bridge synthetic createPresenter()Lru/rocketbank/core/utils/presenter/Presenter;
    .locals 1

    .line 17
    invoke-virtual {p0}, Lru/rocketbank/r2d2/registration/new_passport/NewPassportActivity;->createPresenter()Lru/rocketbank/r2d2/registration/new_passport/NewPassportPresenter;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/utils/presenter/Presenter;

    return-object v0
.end method

.method public final createPresenter()Lru/rocketbank/r2d2/registration/new_passport/NewPassportPresenter;
    .locals 2

    .line 19
    sget-object v0, Lru/rocketbank/core/manager/PresenterManager;->INSTANCE:Lru/rocketbank/core/manager/PresenterManager;

    const-string v0, "6e74114d-d970-41bc-8eab-055e33accfba"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    const-string v1, "UUID.fromString(\"6e74114\u2026-41bc-8eab-055e33accfba\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    const-class v1, Lru/rocketbank/r2d2/registration/new_passport/NewPassportPresenter;

    .line 19
    invoke-static {v0, v1}, Lru/rocketbank/core/manager/PresenterManager;->getOrCreatePresenter(Ljava/util/UUID;Ljava/lang/Class;)Lru/rocketbank/core/utils/presenter/Presenter;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/registration/new_passport/NewPassportPresenter;

    return-object v0
.end method

.method public final nextStep$App_prodRelease(I)V
    .locals 4

    packed-switch p1, :pswitch_data_0

    .line 49
    new-instance v0, Lru/rocketbank/r2d2/registration/new_passport/MainPassportFragment;

    invoke-direct {v0}, Lru/rocketbank/r2d2/registration/new_passport/MainPassportFragment;-><init>()V

    check-cast v0, Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepFragment;

    goto :goto_1

    .line 48
    :pswitch_0
    sget-object v0, Lru/rocketbank/r2d2/registration/new_passport/NewPassportReadyFragment;->Companion:Lru/rocketbank/r2d2/registration/new_passport/NewPassportReadyFragment$Companion;

    iget-object v1, p0, Lru/rocketbank/r2d2/registration/new_passport/NewPassportActivity;->operation:Lru/rocketbank/core/NewPassportOperation;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lru/rocketbank/core/NewPassportOperation;->getId()J

    move-result-wide v1

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1, v2}, Lru/rocketbank/r2d2/registration/new_passport/NewPassportReadyFragment$Companion;->newInstance(J)Lru/rocketbank/r2d2/registration/new_passport/NewPassportReadyFragment;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepFragment;

    goto :goto_1

    .line 47
    :pswitch_1
    new-instance v0, Lru/rocketbank/r2d2/registration/new_passport/NewPage18PassportFragment;

    invoke-direct {v0}, Lru/rocketbank/r2d2/registration/new_passport/NewPage18PassportFragment;-><init>()V

    check-cast v0, Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepFragment;

    goto :goto_1

    .line 46
    :pswitch_2
    new-instance v0, Lru/rocketbank/r2d2/registration/new_passport/NewRegistrationPassportFragment;

    invoke-direct {v0}, Lru/rocketbank/r2d2/registration/new_passport/NewRegistrationPassportFragment;-><init>()V

    check-cast v0, Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepFragment;

    goto :goto_1

    .line 45
    :pswitch_3
    new-instance v0, Lru/rocketbank/r2d2/registration/new_passport/MainPassportFragment;

    invoke-direct {v0}, Lru/rocketbank/r2d2/registration/new_passport/MainPassportFragment;-><init>()V

    check-cast v0, Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepFragment;

    .line 52
    :goto_1
    invoke-virtual {p0}, Lru/rocketbank/r2d2/registration/new_passport/NewPassportActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f010012

    const v3, 0x7f010013

    .line 53
    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(II)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f090103

    .line 54
    check-cast v0, Landroid/support/v4/app/Fragment;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 55
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 56
    iput p1, p0, Lru/rocketbank/r2d2/registration/new_passport/NewPassportActivity;->currentStep:I

    .line 57
    iget-object v0, p0, Lru/rocketbank/r2d2/registration/new_passport/NewPassportActivity;->data:Lru/rocketbank/r2d2/registration/new_passport/NewPassportData;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/registration/new_passport/NewPassportData;->getStep()Landroid/databinding/ObservableInt;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/databinding/ObservableInt;->set(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 29
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/PresenterSecuredActivity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    move-object p1, p0

    check-cast p1, Landroid/app/Activity;

    const v0, 0x7f0c0046

    invoke-static {p1, v0}, Landroid/databinding/DataBindingUtil;->setContentView(Landroid/app/Activity;I)Landroid/databinding/ViewDataBinding;

    move-result-object p1

    const-string v0, "DataBindingUtil.setConte\u2026ut.activity_new_passport)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lru/rocketbank/r2d2/databinding/ActivityNewPassportBinding;

    iput-object p1, p0, Lru/rocketbank/r2d2/registration/new_passport/NewPassportActivity;->binding:Lru/rocketbank/r2d2/databinding/ActivityNewPassportBinding;

    .line 31
    iget-object p1, p0, Lru/rocketbank/r2d2/registration/new_passport/NewPassportActivity;->binding:Lru/rocketbank/r2d2/databinding/ActivityNewPassportBinding;

    if-nez p1, :cond_0

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/registration/new_passport/NewPassportActivity;->data:Lru/rocketbank/r2d2/registration/new_passport/NewPassportData;

    invoke-virtual {p1, v0}, Lru/rocketbank/r2d2/databinding/ActivityNewPassportBinding;->setData(Lru/rocketbank/r2d2/registration/new_passport/NewPassportData;)V

    .line 32
    iget-object p1, p0, Lru/rocketbank/r2d2/registration/new_passport/NewPassportActivity;->binding:Lru/rocketbank/r2d2/databinding/ActivityNewPassportBinding;

    if-nez p1, :cond_1

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    iget-object p1, p1, Lru/rocketbank/r2d2/databinding/ActivityNewPassportBinding;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/registration/new_passport/NewPassportActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 33
    invoke-virtual {p0}, Lru/rocketbank/r2d2/registration/new_passport/NewPassportActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    .line 34
    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const-string v1, "\u041f\u0430\u0441\u043f\u043e\u0440\u0442"

    .line 35
    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 37
    :cond_2
    invoke-virtual {p0}, Lru/rocketbank/r2d2/registration/new_passport/NewPassportActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "OPERATION"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/NewPassportOperation;

    iput-object p1, p0, Lru/rocketbank/r2d2/registration/new_passport/NewPassportActivity;->operation:Lru/rocketbank/core/NewPassportOperation;

    .line 39
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/registration/new_passport/NewPassportActivity;->nextStep$App_prodRelease(I)V

    const/4 p1, 0x0

    .line 40
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/registration/new_passport/NewPassportActivity;->setResult(I)V

    return-void
.end method

.method public final setResultAndClose$App_prodRelease()V
    .locals 3

    .line 69
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 70
    iget-object v1, p0, Lru/rocketbank/r2d2/registration/new_passport/NewPassportActivity;->operation:Lru/rocketbank/core/NewPassportOperation;

    if-eqz v1, :cond_0

    const-string v2, "OPERATION"

    .line 71
    check-cast v1, Landroid/os/Parcelable;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_0
    const/4 v1, -0x1

    .line 73
    invoke-virtual {p0, v1, v0}, Lru/rocketbank/r2d2/registration/new_passport/NewPassportActivity;->setResult(ILandroid/content/Intent;)V

    .line 74
    invoke-virtual {p0}, Lru/rocketbank/r2d2/registration/new_passport/NewPassportActivity;->finish()V

    return-void
.end method

.method public final showResult$App_prodRelease(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Lru/rocketbank/r2d2/registration/new_passport/NewPassportActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f010012

    const v2, 0x7f010013

    .line 62
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(II)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 63
    sget-object v1, Lru/rocketbank/r2d2/registration/new_passport/ImageResultFragment;->Companion:Lru/rocketbank/r2d2/registration/new_passport/ImageResultFragment$Companion;

    iget v2, p0, Lru/rocketbank/r2d2/registration/new_passport/NewPassportActivity;->currentStep:I

    invoke-virtual {v1, v2, p1, p2}, Lru/rocketbank/r2d2/registration/new_passport/ImageResultFragment$Companion;->newInstance(ILjava/lang/String;Ljava/lang/String;)Lru/rocketbank/r2d2/registration/new_passport/ImageResultFragment;

    move-result-object p1

    check-cast p1, Landroid/support/v4/app/Fragment;

    const p2, 0x7f090103

    invoke-virtual {v0, p2, p1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    const-string p2, "result"

    .line 64
    invoke-virtual {p1, p2}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 65
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method
