.class public final Lru/rocketbank/r2d2/root/delivery/DeliveryActivity;
.super Lru/rocketbank/r2d2/PresenterSecuredActivity;
.source "DeliveryActivity.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonHandler;
.implements Lru/rocketbank/r2d2/root/delivery/DeliveryActivityView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/root/delivery/DeliveryActivity$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lru/rocketbank/r2d2/PresenterSecuredActivity<",
        "Lru/rocketbank/r2d2/root/delivery/DeliveryActivityPresenter;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonHandler;",
        "Lru/rocketbank/r2d2/root/delivery/DeliveryActivityView;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDeliveryActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DeliveryActivity.kt\nru/rocketbank/r2d2/root/delivery/DeliveryActivity\n*L\n1#1,201:1\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lru/rocketbank/r2d2/root/delivery/DeliveryActivity$Companion;

.field private static final KEY_COMPLETED:Ljava/lang/String; = "completed"

.field private static final KEY_IS_LEAD:Ljava/lang/String; = "is_lead"

.field private static final KEY_TOKEN:Ljava/lang/String; = "token"

.field private static final STEP_SCHEDULED:I = 0x3

.field private static final STEP_SELECT_ADDRESS:I = 0x1

.field private static final STEP_SELECT_DATE:I = 0x2


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private binding:Lru/rocketbank/r2d2/databinding/ActivityDeliveryBinding;

.field private currentStep:I

.field private final data:Lru/rocketbank/r2d2/data/binding/delivery/DeliveryActivityData;

.field private isCompleted:Z

.field private isUserLead:Z

.field private lasrFragment:Lru/rocketbank/r2d2/fragments/delivery/AbstractDeliveryFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lru/rocketbank/r2d2/fragments/delivery/AbstractDeliveryFragment<",
            "*>;"
        }
    .end annotation
.end field

.field private repeatButton:Lru/rocketbank/core/widgets/RocketButton;

.field private token:Ljava/lang/String;

.field private final toolbarData:Lru/rocketbank/r2d2/data/binding/delivery/DeliveryToolbarData;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/r2d2/root/delivery/DeliveryActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/root/delivery/DeliveryActivity$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/r2d2/root/delivery/DeliveryActivity;->Companion:Lru/rocketbank/r2d2/root/delivery/DeliveryActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Lru/rocketbank/r2d2/PresenterSecuredActivity;-><init>()V

    .line 37
    new-instance v0, Lru/rocketbank/r2d2/data/binding/delivery/DeliveryToolbarData;

    invoke-direct {v0}, Lru/rocketbank/r2d2/data/binding/delivery/DeliveryToolbarData;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/root/delivery/DeliveryActivity;->toolbarData:Lru/rocketbank/r2d2/data/binding/delivery/DeliveryToolbarData;

    .line 38
    new-instance v0, Lru/rocketbank/r2d2/data/binding/delivery/DeliveryActivityData;

    invoke-direct {v0}, Lru/rocketbank/r2d2/data/binding/delivery/DeliveryActivityData;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/root/delivery/DeliveryActivity;->data:Lru/rocketbank/r2d2/data/binding/delivery/DeliveryActivityData;

    .line 46
    sget v0, Lru/rocketbank/r2d2/root/delivery/DeliveryActivity;->STEP_SELECT_ADDRESS:I

    iput v0, p0, Lru/rocketbank/r2d2/root/delivery/DeliveryActivity;->currentStep:I

    return-void
.end method

.method public static final synthetic access$getKEY_COMPLETED$cp()Ljava/lang/String;
    .locals 1

    .line 30
    sget-object v0, Lru/rocketbank/r2d2/root/delivery/DeliveryActivity;->KEY_COMPLETED:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getKEY_IS_LEAD$cp()Ljava/lang/String;
    .locals 1

    .line 30
    sget-object v0, Lru/rocketbank/r2d2/root/delivery/DeliveryActivity;->KEY_IS_LEAD:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getKEY_TOKEN$cp()Ljava/lang/String;
    .locals 1

    .line 30
    sget-object v0, Lru/rocketbank/r2d2/root/delivery/DeliveryActivity;->KEY_TOKEN:Ljava/lang/String;

    return-object v0
.end method

.method public static final startCompleted(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1

    sget-object v0, Lru/rocketbank/r2d2/root/delivery/DeliveryActivity;->Companion:Lru/rocketbank/r2d2/root/delivery/DeliveryActivity$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lru/rocketbank/r2d2/root/delivery/DeliveryActivity$Companion;->startCompleted(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public static final startPending(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1

    sget-object v0, Lru/rocketbank/r2d2/root/delivery/DeliveryActivity;->Companion:Lru/rocketbank/r2d2/root/delivery/DeliveryActivity$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lru/rocketbank/r2d2/root/delivery/DeliveryActivity$Companion;->startPending(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public final _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/root/delivery/DeliveryActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/root/delivery/DeliveryActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public final _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lru/rocketbank/r2d2/root/delivery/DeliveryActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/root/delivery/DeliveryActivity;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/root/delivery/DeliveryActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/r2d2/root/delivery/DeliveryActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final bridge synthetic createPresenter()Lru/rocketbank/core/utils/presenter/Presenter;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/delivery/DeliveryActivity;->createPresenter()Lru/rocketbank/r2d2/root/delivery/DeliveryActivityPresenter;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/utils/presenter/Presenter;

    return-object v0
.end method

.method public final createPresenter()Lru/rocketbank/r2d2/root/delivery/DeliveryActivityPresenter;
    .locals 2

    .line 50
    sget-object v0, Lru/rocketbank/core/manager/PresenterManager;->INSTANCE:Lru/rocketbank/core/manager/PresenterManager;

    const-string v0, "985c387f-9433-4fd2-b055-9cffc963929e"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    const-string v1, "UUID.fromString(\"985c387\u2026-4fd2-b055-9cffc963929e\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v1, Lru/rocketbank/r2d2/root/delivery/DeliveryActivityPresenter;

    invoke-static {v0, v1}, Lru/rocketbank/core/manager/PresenterManager;->getOrCreatePresenter(Ljava/util/UUID;Ljava/lang/Class;)Lru/rocketbank/core/utils/presenter/Presenter;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/root/delivery/DeliveryActivityPresenter;

    return-object v0
.end method

.method public final nextPressed(Landroid/view/View;)V
    .locals 2

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 114
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 115
    sget-object v0, Lru/rocketbank/r2d2/activities/SupportChatActivity;->Companion:Lru/rocketbank/r2d2/activities/SupportChatActivity$Companion;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/activities/SupportChatActivity$Companion;->start(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 116
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public final onBackPressed()V
    .locals 3

    .line 120
    iget v0, p0, Lru/rocketbank/r2d2/root/delivery/DeliveryActivity;->currentStep:I

    sget v1, Lru/rocketbank/r2d2/root/delivery/DeliveryActivity;->STEP_SELECT_DATE:I

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lru/rocketbank/r2d2/root/delivery/DeliveryActivity;->isCompleted:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 123
    :cond_0
    invoke-super {p0}, Lru/rocketbank/r2d2/PresenterSecuredActivity;->onBackPressed()V

    .line 124
    iget v0, p0, Lru/rocketbank/r2d2/root/delivery/DeliveryActivity;->currentStep:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lru/rocketbank/r2d2/root/delivery/DeliveryActivity;->currentStep:I

    .line 125
    iget-object v0, p0, Lru/rocketbank/r2d2/root/delivery/DeliveryActivity;->toolbarData:Lru/rocketbank/r2d2/data/binding/delivery/DeliveryToolbarData;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/data/binding/delivery/DeliveryToolbarData;->getTitle()Landroid/databinding/ObservableField;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/r2d2/root/delivery/DeliveryActivity;->lasrFragment:Lru/rocketbank/r2d2/fragments/delivery/AbstractDeliveryFragment;

    if-nez v1, :cond_1

    const-string v2, "lasrFragment"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v1}, Lru/rocketbank/r2d2/fragments/delivery/AbstractDeliveryFragment;->getTitleResID()I

    move-result v1

    invoke-virtual {p0, v1}, Lru/rocketbank/r2d2/root/delivery/DeliveryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/databinding/ObservableField;->set(Ljava/lang/Object;)V

    return-void

    .line 121
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/delivery/DeliveryActivity;->finish()V

    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 3

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 91
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 92
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0902de

    if-ne v0, v1, :cond_1

    .line 93
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/delivery/DeliveryActivity;->showProgressDialog()V

    .line 94
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/delivery/DeliveryActivity;->getPresenter()Lru/rocketbank/core/utils/presenter/Presenter;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/root/delivery/DeliveryActivityPresenter;

    iget-object v1, p0, Lru/rocketbank/r2d2/root/delivery/DeliveryActivity;->token:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v2, "token"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/root/delivery/DeliveryActivityPresenter;->loadCompletedDeliveryDetails(Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x1

    .line 96
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 53
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/PresenterSecuredActivity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    const v1, 0x7f0c0038

    invoke-static {v0, v1}, Landroid/databinding/DataBindingUtil;->setContentView(Landroid/app/Activity;I)Landroid/databinding/ViewDataBinding;

    move-result-object v0

    const-string v1, "DataBindingUtil.setConte\u2026layout.activity_delivery)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lru/rocketbank/r2d2/databinding/ActivityDeliveryBinding;

    iput-object v0, p0, Lru/rocketbank/r2d2/root/delivery/DeliveryActivity;->binding:Lru/rocketbank/r2d2/databinding/ActivityDeliveryBinding;

    .line 55
    iget-object v0, p0, Lru/rocketbank/r2d2/root/delivery/DeliveryActivity;->binding:Lru/rocketbank/r2d2/databinding/ActivityDeliveryBinding;

    if-nez v0, :cond_0

    const-string v1, "binding"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lru/rocketbank/r2d2/root/delivery/DeliveryActivity;->data:Lru/rocketbank/r2d2/data/binding/delivery/DeliveryActivityData;

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/databinding/ActivityDeliveryBinding;->setData(Lru/rocketbank/r2d2/data/binding/delivery/DeliveryActivityData;)V

    .line 57
    iget-object v0, p0, Lru/rocketbank/r2d2/root/delivery/DeliveryActivity;->binding:Lru/rocketbank/r2d2/databinding/ActivityDeliveryBinding;

    if-nez v0, :cond_1

    const-string v1, "binding"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    iget-object v0, v0, Lru/rocketbank/r2d2/databinding/ActivityDeliveryBinding;->repeatButton:Lru/rocketbank/core/widgets/RocketButton;

    const-string v1, "binding.repeatButton"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lru/rocketbank/r2d2/root/delivery/DeliveryActivity;->repeatButton:Lru/rocketbank/core/widgets/RocketButton;

    .line 58
    iget-object v0, p0, Lru/rocketbank/r2d2/root/delivery/DeliveryActivity;->repeatButton:Lru/rocketbank/core/widgets/RocketButton;

    if-nez v0, :cond_2

    const-string v1, "repeatButton"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    const v1, 0x7f0801e2

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketButton;->setBackgroundResource(I)V

    .line 60
    iget-object v0, p0, Lru/rocketbank/r2d2/root/delivery/DeliveryActivity;->binding:Lru/rocketbank/r2d2/databinding/ActivityDeliveryBinding;

    if-nez v0, :cond_3

    const-string v1, "binding"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    iget-object v0, v0, Lru/rocketbank/r2d2/databinding/ActivityDeliveryBinding;->include:Lru/rocketbank/r2d2/databinding/DeliveryToolbarBinding;

    if-nez v0, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4
    iget-object v0, v0, Lru/rocketbank/r2d2/databinding/DeliveryToolbarBinding;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/root/delivery/DeliveryActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 61
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/delivery/DeliveryActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_7

    .line 62
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 63
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, -0x1

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    check-cast v2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 64
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_7

    const-string v2, "it"

    .line 65
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->setElevation$133aeb()V

    .line 66
    iget-object v0, p0, Lru/rocketbank/r2d2/root/delivery/DeliveryActivity;->binding:Lru/rocketbank/r2d2/databinding/ActivityDeliveryBinding;

    if-nez v0, :cond_5

    const-string v2, "binding"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_5
    iget-object v0, v0, Lru/rocketbank/r2d2/databinding/ActivityDeliveryBinding;->include:Lru/rocketbank/r2d2/databinding/DeliveryToolbarBinding;

    if-nez v0, :cond_6

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_6
    iget-object v0, v0, Lru/rocketbank/r2d2/databinding/DeliveryToolbarBinding;->deliveryAppbar:Landroid/support/design/widget/AppBarLayout;

    const-string v2, "binding.include!!.deliveryAppbar"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/support/design/widget/AppBarLayout;->setElevation(F)V

    .line 69
    :cond_7
    iget-object v0, p0, Lru/rocketbank/r2d2/root/delivery/DeliveryActivity;->toolbarData:Lru/rocketbank/r2d2/data/binding/delivery/DeliveryToolbarData;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/data/binding/delivery/DeliveryToolbarData;->getTitle()Landroid/databinding/ObservableField;

    move-result-object v0

    const v2, 0x7f110138

    invoke-virtual {p0, v2}, Lru/rocketbank/r2d2/root/delivery/DeliveryActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 70
    iget-object v0, p0, Lru/rocketbank/r2d2/root/delivery/DeliveryActivity;->toolbarData:Lru/rocketbank/r2d2/data/binding/delivery/DeliveryToolbarData;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/data/binding/delivery/DeliveryToolbarData;->getButton()Landroid/databinding/ObservableField;

    move-result-object v0

    const v2, 0x7f11044a

    invoke-virtual {p0, v2}, Lru/rocketbank/r2d2/root/delivery/DeliveryActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 71
    iget-object v0, p0, Lru/rocketbank/r2d2/root/delivery/DeliveryActivity;->toolbarData:Lru/rocketbank/r2d2/data/binding/delivery/DeliveryToolbarData;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/data/binding/delivery/DeliveryToolbarData;->getButtonEnabled()Landroid/databinding/ObservableBoolean;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/databinding/ObservableBoolean;->set(Z)V

    .line 73
    iget-object v0, p0, Lru/rocketbank/r2d2/root/delivery/DeliveryActivity;->binding:Lru/rocketbank/r2d2/databinding/ActivityDeliveryBinding;

    if-nez v0, :cond_8

    const-string v2, "binding"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_8
    iget-object v2, p0, Lru/rocketbank/r2d2/root/delivery/DeliveryActivity;->toolbarData:Lru/rocketbank/r2d2/data/binding/delivery/DeliveryToolbarData;

    invoke-virtual {v0, v2}, Lru/rocketbank/r2d2/databinding/ActivityDeliveryBinding;->setToolbarData(Lru/rocketbank/r2d2/data/binding/delivery/DeliveryToolbarData;)V

    .line 74
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/delivery/DeliveryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v2, Lru/rocketbank/r2d2/root/delivery/DeliveryActivity;->KEY_TOKEN:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 75
    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v3, 0x0

    if-eqz v2, :cond_a

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_9

    goto :goto_0

    :cond_9
    move v1, v3

    :cond_a
    :goto_0
    if-eqz v1, :cond_b

    .line 76
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Delivery token is null!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    :cond_b
    const-string v1, "token"

    .line 77
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lru/rocketbank/r2d2/root/delivery/DeliveryActivity;->token:Ljava/lang/String;

    .line 78
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/delivery/DeliveryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    sget-object v2, Lru/rocketbank/r2d2/root/delivery/DeliveryActivity;->KEY_COMPLETED:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lru/rocketbank/r2d2/root/delivery/DeliveryActivity;->isCompleted:Z

    .line 79
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/delivery/DeliveryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    sget-object v2, Lru/rocketbank/r2d2/root/delivery/DeliveryActivity;->KEY_IS_LEAD:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lru/rocketbank/r2d2/root/delivery/DeliveryActivity;->isUserLead:Z

    .line 81
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/delivery/DeliveryActivity;->getPresenter()Lru/rocketbank/core/utils/presenter/Presenter;

    move-result-object v1

    check-cast v1, Lru/rocketbank/r2d2/root/delivery/DeliveryActivityPresenter;

    move-object v2, p0

    check-cast v2, Lru/rocketbank/r2d2/root/delivery/DeliveryActivityView;

    invoke-virtual {v1, p1, v2}, Lru/rocketbank/r2d2/root/delivery/DeliveryActivityPresenter;->onCreate(Landroid/os/Bundle;Lru/rocketbank/r2d2/root/delivery/DeliveryActivityView;)V

    .line 82
    iget-boolean p1, p0, Lru/rocketbank/r2d2/root/delivery/DeliveryActivity;->isCompleted:Z

    if-eqz p1, :cond_c

    .line 83
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/delivery/DeliveryActivity;->showProgressDialog()V

    .line 84
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/delivery/DeliveryActivity;->getPresenter()Lru/rocketbank/core/utils/presenter/Presenter;

    move-result-object p1

    check-cast p1, Lru/rocketbank/r2d2/root/delivery/DeliveryActivityPresenter;

    invoke-virtual {p1, v0}, Lru/rocketbank/r2d2/root/delivery/DeliveryActivityPresenter;->loadCompletedDeliveryDetails(Ljava/lang/String;)V

    return-void

    .line 87
    :cond_c
    iget p1, p0, Lru/rocketbank/r2d2/root/delivery/DeliveryActivity;->currentStep:I

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/root/delivery/DeliveryActivity;->selectFragment(I)V

    return-void
.end method

.method public final onDeliveryDetailsLoaded()V
    .locals 2

    .line 101
    iget-object v0, p0, Lru/rocketbank/r2d2/root/delivery/DeliveryActivity;->data:Lru/rocketbank/r2d2/data/binding/delivery/DeliveryActivityData;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/data/binding/delivery/DeliveryActivityData;->getRepeatButtonVisible()Landroid/databinding/ObservableBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/databinding/ObservableBoolean;->set(Z)V

    .line 102
    sget v0, Lru/rocketbank/r2d2/root/delivery/DeliveryActivity;->STEP_SCHEDULED:I

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/root/delivery/DeliveryActivity;->selectFragment(I)V

    .line 103
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/delivery/DeliveryActivity;->hideProgressDialog()V

    return-void
.end method

.method public final onLoadFail()V
    .locals 3

    .line 107
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    const v1, 0x7f11018d

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 108
    iget-object v0, p0, Lru/rocketbank/r2d2/root/delivery/DeliveryActivity;->data:Lru/rocketbank/r2d2/data/binding/delivery/DeliveryActivityData;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/data/binding/delivery/DeliveryActivityData;->getRepeatButtonVisible()Landroid/databinding/ObservableBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/databinding/ObservableBoolean;->set(Z)V

    .line 109
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/delivery/DeliveryActivity;->hideProgressDialog()V

    return-void
.end method

.method protected final onStart()V
    .locals 2

    .line 161
    invoke-super {p0}, Lru/rocketbank/r2d2/PresenterSecuredActivity;->onStart()V

    .line 162
    iget-object v0, p0, Lru/rocketbank/r2d2/root/delivery/DeliveryActivity;->binding:Lru/rocketbank/r2d2/databinding/ActivityDeliveryBinding;

    if-nez v0, :cond_0

    const-string v1, "binding"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    move-object v1, p0

    check-cast v1, Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonHandler;

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/databinding/ActivityDeliveryBinding;->setHandler(Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonHandler;)V

    .line 163
    iget-object v0, p0, Lru/rocketbank/r2d2/root/delivery/DeliveryActivity;->binding:Lru/rocketbank/r2d2/databinding/ActivityDeliveryBinding;

    if-nez v0, :cond_1

    const-string v1, "binding"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    move-object v1, p0

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/databinding/ActivityDeliveryBinding;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected final onStop()V
    .locals 3

    .line 167
    invoke-super {p0}, Lru/rocketbank/r2d2/PresenterSecuredActivity;->onStop()V

    .line 168
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/delivery/DeliveryActivity;->hideProgressDialog()V

    .line 169
    iget-object v0, p0, Lru/rocketbank/r2d2/root/delivery/DeliveryActivity;->binding:Lru/rocketbank/r2d2/databinding/ActivityDeliveryBinding;

    if-nez v0, :cond_0

    const-string v1, "binding"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/databinding/ActivityDeliveryBinding;->setHandler(Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonHandler;)V

    .line 170
    iget-object v0, p0, Lru/rocketbank/r2d2/root/delivery/DeliveryActivity;->binding:Lru/rocketbank/r2d2/databinding/ActivityDeliveryBinding;

    if-nez v0, :cond_1

    const-string v2, "binding"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/databinding/ActivityDeliveryBinding;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final selectFragment(I)V
    .locals 5

    .line 129
    iput p1, p0, Lru/rocketbank/r2d2/root/delivery/DeliveryActivity;->currentStep:I

    .line 131
    sget v0, Lru/rocketbank/r2d2/root/delivery/DeliveryActivity;->STEP_SELECT_ADDRESS:I

    if-ne p1, v0, :cond_1

    sget-object v0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment;->Companion:Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment$Companion;

    iget-object v1, p0, Lru/rocketbank/r2d2/root/delivery/DeliveryActivity;->token:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v2, "token"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment$Companion;->newInstance(Ljava/lang/String;)Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/fragments/delivery/AbstractDeliveryFragment;

    goto/16 :goto_1

    .line 132
    :cond_1
    sget v0, Lru/rocketbank/r2d2/root/delivery/DeliveryActivity;->STEP_SELECT_DATE:I

    if-ne p1, v0, :cond_3

    sget-object v0, Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDateFragment;->Companion:Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDateFragment$Companion;

    iget-object v1, p0, Lru/rocketbank/r2d2/root/delivery/DeliveryActivity;->token:Ljava/lang/String;

    if-nez v1, :cond_2

    const-string v2, "token"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDateFragment$Companion;->newInstance(Ljava/lang/String;)Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDateFragment;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/fragments/delivery/AbstractDeliveryFragment;

    goto/16 :goto_1

    .line 133
    :cond_3
    sget v0, Lru/rocketbank/r2d2/root/delivery/DeliveryActivity;->STEP_SCHEDULED:I

    if-ne p1, v0, :cond_e

    .line 134
    iget-boolean v0, p0, Lru/rocketbank/r2d2/root/delivery/DeliveryActivity;->isUserLead:Z

    if-eqz v0, :cond_8

    .line 135
    iget-object v0, p0, Lru/rocketbank/r2d2/root/delivery/DeliveryActivity;->binding:Lru/rocketbank/r2d2/databinding/ActivityDeliveryBinding;

    if-nez v0, :cond_4

    const-string v1, "binding"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    iget-object v0, v0, Lru/rocketbank/r2d2/databinding/ActivityDeliveryBinding;->include:Lru/rocketbank/r2d2/databinding/DeliveryToolbarBinding;

    if-nez v0, :cond_5

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_5
    iget-object v0, v0, Lru/rocketbank/r2d2/databinding/DeliveryToolbarBinding;->registrationProgressView:Lru/rocketbank/r2d2/registration/fragment/ProgressRegistrationView;

    const-string v1, "binding.include!!.registrationProgressView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/registration/fragment/ProgressRegistrationView;->setStep(I)V

    .line 136
    iget-object v0, p0, Lru/rocketbank/r2d2/root/delivery/DeliveryActivity;->toolbarData:Lru/rocketbank/r2d2/data/binding/delivery/DeliveryToolbarData;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/data/binding/delivery/DeliveryToolbarData;->isUserLead()Landroid/databinding/ObservableBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/databinding/ObservableBoolean;->set(Z)V

    .line 137
    iget-object v0, p0, Lru/rocketbank/r2d2/root/delivery/DeliveryActivity;->binding:Lru/rocketbank/r2d2/databinding/ActivityDeliveryBinding;

    if-nez v0, :cond_6

    const-string v2, "binding"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_6
    iget-object v0, v0, Lru/rocketbank/r2d2/databinding/ActivityDeliveryBinding;->include:Lru/rocketbank/r2d2/databinding/DeliveryToolbarBinding;

    if-nez v0, :cond_7

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_7
    iget-object v0, v0, Lru/rocketbank/r2d2/databinding/DeliveryToolbarBinding;->toolbar:Landroid/support/v7/widget/Toolbar;

    const-string v2, "binding.include!!.toolbar"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getHeight()I

    move-result v0

    shl-int/2addr v0, v1

    goto :goto_0

    .line 139
    :cond_8
    iget-object v0, p0, Lru/rocketbank/r2d2/root/delivery/DeliveryActivity;->binding:Lru/rocketbank/r2d2/databinding/ActivityDeliveryBinding;

    if-nez v0, :cond_9

    const-string v1, "binding"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_9
    iget-object v0, v0, Lru/rocketbank/r2d2/databinding/ActivityDeliveryBinding;->include:Lru/rocketbank/r2d2/databinding/DeliveryToolbarBinding;

    if-nez v0, :cond_a

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_a
    iget-object v0, v0, Lru/rocketbank/r2d2/databinding/DeliveryToolbarBinding;->toolbar:Landroid/support/v7/widget/Toolbar;

    const-string v1, "binding.include!!.toolbar"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getHeight()I

    move-result v0

    .line 142
    :goto_0
    sget-object v1, Lru/rocketbank/r2d2/fragments/delivery/DeliveryScheduledFragment;->Companion:Lru/rocketbank/r2d2/fragments/delivery/DeliveryScheduledFragment$Companion;

    iget-object v2, p0, Lru/rocketbank/r2d2/root/delivery/DeliveryActivity;->token:Ljava/lang/String;

    if-nez v2, :cond_b

    const-string v3, "token"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_b
    invoke-virtual {v1, v2, v0}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryScheduledFragment$Companion;->newInstance(Ljava/lang/String;I)Lru/rocketbank/r2d2/fragments/delivery/DeliveryScheduledFragment;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/fragments/delivery/AbstractDeliveryFragment;

    .line 147
    :goto_1
    iget-object v1, p0, Lru/rocketbank/r2d2/root/delivery/DeliveryActivity;->toolbarData:Lru/rocketbank/r2d2/data/binding/delivery/DeliveryToolbarData;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/data/binding/delivery/DeliveryToolbarData;->getTitle()Landroid/databinding/ObservableField;

    move-result-object v1

    invoke-virtual {v0}, Lru/rocketbank/r2d2/fragments/delivery/AbstractDeliveryFragment;->getTitleResID()I

    move-result v2

    invoke-virtual {p0, v2}, Lru/rocketbank/r2d2/root/delivery/DeliveryActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 148
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/delivery/DeliveryActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 150
    iget v2, p0, Lru/rocketbank/r2d2/root/delivery/DeliveryActivity;->currentStep:I

    sget v3, Lru/rocketbank/r2d2/root/delivery/DeliveryActivity;->STEP_SCHEDULED:I

    const v4, 0x7f090103

    if-eq v2, v3, :cond_c

    .line 151
    move-object v2, v0

    check-cast v2, Landroid/support/v4/app/Fragment;

    invoke-virtual {v1, v4, v2}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_2

    .line 152
    :cond_c
    move-object v2, v0

    check-cast v2, Landroid/support/v4/app/Fragment;

    invoke-virtual {v1, v4, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 154
    :goto_2
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 156
    sget v1, Lru/rocketbank/r2d2/root/delivery/DeliveryActivity;->STEP_SELECT_ADDRESS:I

    if-ne p1, v1, :cond_d

    .line 157
    iput-object v0, p0, Lru/rocketbank/r2d2/root/delivery/DeliveryActivity;->lasrFragment:Lru/rocketbank/r2d2/fragments/delivery/AbstractDeliveryFragment;

    :cond_d
    return-void

    .line 144
    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Incorrect Delivery step "

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method
