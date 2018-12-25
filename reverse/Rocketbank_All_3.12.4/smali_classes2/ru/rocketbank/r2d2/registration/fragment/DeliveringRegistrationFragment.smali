.class public final Lru/rocketbank/r2d2/registration/fragment/DeliveringRegistrationFragment;
.super Lru/rocketbank/r2d2/registration/fragment/GenericRegistrationFragment;
.source "DeliveringRegistrationFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/registration/fragment/DeliveringRegistrationFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDeliveringRegistrationFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DeliveringRegistrationFragment.kt\nru/rocketbank/r2d2/registration/fragment/DeliveringRegistrationFragment\n*L\n1#1,47:1\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lru/rocketbank/r2d2/registration/fragment/DeliveringRegistrationFragment$Companion;

.field private static final KEY_TOKEN:Ljava/lang/String; = "KEY_TOKEN"


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private token:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/r2d2/registration/fragment/DeliveringRegistrationFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/registration/fragment/DeliveringRegistrationFragment$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/r2d2/registration/fragment/DeliveringRegistrationFragment;->Companion:Lru/rocketbank/r2d2/registration/fragment/DeliveringRegistrationFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lru/rocketbank/r2d2/registration/fragment/GenericRegistrationFragment;-><init>()V

    return-void
.end method

.method public static final synthetic access$getKEY_TOKEN$cp()Ljava/lang/String;
    .locals 1

    .line 11
    sget-object v0, Lru/rocketbank/r2d2/registration/fragment/DeliveringRegistrationFragment;->KEY_TOKEN:Ljava/lang/String;

    return-object v0
.end method

.method public static final getKEY_TOKEN()Ljava/lang/String;
    .locals 1

    sget-object v0, Lru/rocketbank/r2d2/registration/fragment/DeliveringRegistrationFragment;->KEY_TOKEN:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/registration/fragment/DeliveringRegistrationFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/registration/fragment/DeliveringRegistrationFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public final _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lru/rocketbank/r2d2/registration/fragment/DeliveringRegistrationFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/registration/fragment/DeliveringRegistrationFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/registration/fragment/DeliveringRegistrationFragment;->_$_findViewCache:Ljava/util/HashMap;

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

    iget-object v1, p0, Lru/rocketbank/r2d2/registration/fragment/DeliveringRegistrationFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method protected final getFormContent()Lru/rocketbank/r2d2/registration/GenericFormFragment$FormContent;
    .locals 2

    .line 16
    invoke-virtual {p0}, Lru/rocketbank/r2d2/registration/fragment/DeliveringRegistrationFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lru/rocketbank/r2d2/registration/fragment/DeliveringRegistrationFragment;->KEY_TOKEN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lru/rocketbank/r2d2/registration/fragment/DeliveringRegistrationFragment;->token:Ljava/lang/String;

    .line 17
    new-instance v0, Lru/rocketbank/r2d2/registration/GenericFormFragment$FormContent;

    invoke-direct {v0}, Lru/rocketbank/r2d2/registration/GenericFormFragment$FormContent;-><init>()V

    const v1, 0x7f11017e

    .line 18
    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/registration/GenericFormFragment$FormContent;->setTopHintTextRes(I)Lru/rocketbank/r2d2/registration/GenericFormFragment$FormContent;

    move-result-object v0

    const v1, 0x7f08022a

    .line 19
    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/registration/GenericFormFragment$FormContent;->setImageRes(I)Lru/rocketbank/r2d2/registration/GenericFormFragment$FormContent;

    move-result-object v0

    .line 20
    iget-object v1, p0, Lru/rocketbank/r2d2/registration/fragment/DeliveringRegistrationFragment;->token:Ljava/lang/String;

    if-nez v1, :cond_1

    const v1, 0x7f1102c5

    goto :goto_1

    :cond_1
    const v1, 0x7f1102c4

    :goto_1
    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/registration/GenericFormFragment$FormContent;->setBottomHintTextRes(I)Lru/rocketbank/r2d2/registration/GenericFormFragment$FormContent;

    move-result-object v0

    const v1, 0x7f1103fa

    .line 22
    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/registration/GenericFormFragment$FormContent;->setButtonTextRes(I)Lru/rocketbank/r2d2/registration/GenericFormFragment$FormContent;

    move-result-object v0

    .line 23
    iget-object v1, p0, Lru/rocketbank/r2d2/registration/fragment/DeliveringRegistrationFragment;->token:Ljava/lang/String;

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/registration/GenericFormFragment$FormContent;->setButtonVisible(Z)Lru/rocketbank/r2d2/registration/GenericFormFragment$FormContent;

    move-result-object v0

    const-string v1, "GenericFormFragment.Form\u2026tonVisible(token != null)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    const-string v0, "\u0428\u0430\u0433 3"

    return-object v0
.end method

.method protected final onButtonClicked()V
    .locals 4

    .line 33
    iget-object v0, p0, Lru/rocketbank/r2d2/registration/fragment/DeliveringRegistrationFragment;->token:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 34
    sget-object v1, Lru/rocketbank/r2d2/root/delivery/DeliveryActivity;->Companion:Lru/rocketbank/r2d2/root/delivery/DeliveryActivity$Companion;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/registration/fragment/DeliveringRegistrationFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    const-string v3, "context!!"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Lru/rocketbank/r2d2/root/delivery/DeliveryActivity$Companion;->startPending(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 35
    invoke-virtual {p0}, Lru/rocketbank/r2d2/registration/fragment/DeliveringRegistrationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    return-void

    :cond_1
    return-void

    :cond_2
    return-void
.end method

.method public final synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lru/rocketbank/r2d2/registration/fragment/GenericRegistrationFragment;->onDestroyView()V

    invoke-virtual {p0}, Lru/rocketbank/r2d2/registration/fragment/DeliveringRegistrationFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method
