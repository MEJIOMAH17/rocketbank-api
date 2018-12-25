.class public abstract Lru/rocketbank/r2d2/fragments/delivery/AbstractDeliveryFragment;
.super Lru/rocketbank/r2d2/fragments/PresenterFragment;
.source "AbstractDeliveryFragment.kt"

# interfaces
.implements Lru/rocketbank/r2d2/fragments/delivery/DeliveryView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/fragments/delivery/AbstractDeliveryFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<PR:",
        "Lru/rocketbank/core/utils/presenter/Presenter;",
        ">",
        "Lru/rocketbank/r2d2/fragments/PresenterFragment<",
        "TPR;>;",
        "Lru/rocketbank/r2d2/fragments/delivery/DeliveryView;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAbstractDeliveryFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AbstractDeliveryFragment.kt\nru/rocketbank/r2d2/fragments/delivery/AbstractDeliveryFragment\n*L\n1#1,53:1\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lru/rocketbank/r2d2/fragments/delivery/AbstractDeliveryFragment$Companion;

.field private static final TOKEN_KEY:Ljava/lang/String; = "TOKEN"


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field protected token:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/r2d2/fragments/delivery/AbstractDeliveryFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/fragments/delivery/AbstractDeliveryFragment$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/r2d2/fragments/delivery/AbstractDeliveryFragment;->Companion:Lru/rocketbank/r2d2/fragments/delivery/AbstractDeliveryFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/PresenterFragment;-><init>()V

    return-void
.end method

.method public static final synthetic access$getTOKEN_KEY$cp()Ljava/lang/String;
    .locals 1

    .line 12
    sget-object v0, Lru/rocketbank/r2d2/fragments/delivery/AbstractDeliveryFragment;->TOKEN_KEY:Ljava/lang/String;

    return-object v0
.end method

.method protected static final getTOKEN_KEY()Ljava/lang/String;
    .locals 1

    sget-object v0, Lru/rocketbank/r2d2/fragments/delivery/AbstractDeliveryFragment;->TOKEN_KEY:Ljava/lang/String;

    return-object v0
.end method

.method public static final setArguments(Lru/rocketbank/r2d2/fragments/delivery/AbstractDeliveryFragment;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lru/rocketbank/r2d2/fragments/delivery/AbstractDeliveryFragment<",
            "*>;>(TT;",
            "Ljava/lang/String;",
            ")",
            "Landroid/os/Bundle;"
        }
    .end annotation

    sget-object v0, Lru/rocketbank/r2d2/fragments/delivery/AbstractDeliveryFragment;->Companion:Lru/rocketbank/r2d2/fragments/delivery/AbstractDeliveryFragment$Companion;

    invoke-virtual {v0, p0, p1}, Lru/rocketbank/r2d2/fragments/delivery/AbstractDeliveryFragment$Companion;->setArguments(Lru/rocketbank/r2d2/fragments/delivery/AbstractDeliveryFragment;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/delivery/AbstractDeliveryFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/delivery/AbstractDeliveryFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/delivery/AbstractDeliveryFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/delivery/AbstractDeliveryFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/delivery/AbstractDeliveryFragment;->_$_findViewCache:Ljava/util/HashMap;

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

    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/delivery/AbstractDeliveryFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public abstract getTitleResID()I
.end method

.method protected final getToken()Ljava/lang/String;
    .locals 2

    .line 14
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/delivery/AbstractDeliveryFragment;->token:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v1, "token"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public hideProgressDialog()V
    .locals 0

    .line 38
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/delivery/AbstractDeliveryFragment;->hideSpinner()V

    return-void
.end method

.method protected final nextStep(I)V
    .locals 2

    .line 27
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/delivery/AbstractDeliveryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 28
    instance-of v1, v0, Lru/rocketbank/r2d2/root/delivery/DeliveryActivity;

    if-eqz v1, :cond_0

    .line 29
    check-cast v0, Lru/rocketbank/r2d2/root/delivery/DeliveryActivity;

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/root/delivery/DeliveryActivity;->selectFragment(I)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 19
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/fragments/PresenterFragment;->onCreate(Landroid/os/Bundle;)V

    .line 20
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/delivery/AbstractDeliveryFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    sget-object v0, Lru/rocketbank/r2d2/fragments/delivery/AbstractDeliveryFragment;->TOKEN_KEY:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 21
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_3

    .line 22
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Delivery token is null!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    :cond_3
    const-string v0, "token"

    .line 23
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/delivery/AbstractDeliveryFragment;->token:Ljava/lang/String;

    return-void
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lru/rocketbank/r2d2/fragments/PresenterFragment;->onDestroyView()V

    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/delivery/AbstractDeliveryFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method protected final setToken(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/delivery/AbstractDeliveryFragment;->token:Ljava/lang/String;

    return-void
.end method

.method public showProgressDialog()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 34
    invoke-static {p0, v0, v1, v2}, Lru/rocketbank/r2d2/fragments/RocketFragment;->showSpinner$default(Lru/rocketbank/r2d2/fragments/RocketFragment;IILjava/lang/Object;)V

    return-void
.end method
