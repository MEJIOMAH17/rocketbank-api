.class public final Lru/rocketbank/r2d2/registration/fragment/DeliveryScheduledRegistrationFragment;
.super Lru/rocketbank/r2d2/registration/fragment/GenericRegistrationFragment;
.source "DeliveryScheduledRegistrationFragment.kt"


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lru/rocketbank/r2d2/registration/fragment/GenericRegistrationFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/registration/fragment/DeliveryScheduledRegistrationFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/registration/fragment/DeliveryScheduledRegistrationFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public final _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lru/rocketbank/r2d2/registration/fragment/DeliveryScheduledRegistrationFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/registration/fragment/DeliveryScheduledRegistrationFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/registration/fragment/DeliveryScheduledRegistrationFragment;->_$_findViewCache:Ljava/util/HashMap;

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

    iget-object v1, p0, Lru/rocketbank/r2d2/registration/fragment/DeliveryScheduledRegistrationFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method protected final getFormContent()Lru/rocketbank/r2d2/registration/GenericFormFragment$FormContent;
    .locals 2

    .line 11
    new-instance v0, Lru/rocketbank/r2d2/registration/GenericFormFragment$FormContent;

    invoke-direct {v0}, Lru/rocketbank/r2d2/registration/GenericFormFragment$FormContent;-><init>()V

    const v1, 0x7f1102c3

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/registration/GenericFormFragment$FormContent;->setTopHintTextRes(I)Lru/rocketbank/r2d2/registration/GenericFormFragment$FormContent;

    move-result-object v0

    const v1, 0x7f08022a

    .line 12
    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/registration/GenericFormFragment$FormContent;->setImageRes(I)Lru/rocketbank/r2d2/registration/GenericFormFragment$FormContent;

    move-result-object v0

    const v1, 0x7f1102c5

    .line 13
    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/registration/GenericFormFragment$FormContent;->setBottomHintTextRes(I)Lru/rocketbank/r2d2/registration/GenericFormFragment$FormContent;

    move-result-object v0

    const/4 v1, 0x0

    .line 14
    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/registration/GenericFormFragment$FormContent;->setButtonVisible(Z)Lru/rocketbank/r2d2/registration/GenericFormFragment$FormContent;

    move-result-object v0

    .line 15
    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/registration/GenericFormFragment$FormContent;->setBottomButtonVisible(Z)Lru/rocketbank/r2d2/registration/GenericFormFragment$FormContent;

    move-result-object v0

    const-string v1, "FormContent().setTopHint\u2026ottomButtonVisible(false)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 4

    .line 19
    sget-object v0, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f11043b

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lru/rocketbank/r2d2/registration/fragment/GenericRegistrationFragment;->onDestroyView()V

    invoke-virtual {p0}, Lru/rocketbank/r2d2/registration/fragment/DeliveryScheduledRegistrationFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method
