.class public abstract Lru/rocketbank/r2d2/fragments/PresenterFragment;
.super Lru/rocketbank/r2d2/fragments/RocketFragment;
.source "PresenterFragment.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<PR:",
        "Lru/rocketbank/core/utils/presenter/Presenter;",
        ">",
        "Lru/rocketbank/r2d2/fragments/RocketFragment;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPresenterFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PresenterFragment.kt\nru/rocketbank/r2d2/fragments/PresenterFragment\n*L\n1#1,45:1\n*E\n"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private final presenter$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lru/rocketbank/r2d2/fragments/PresenterFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass$4641416c(Ljava/lang/Class;)Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    move-result-object v2

    const-string v3, "presenter"

    const-string v4, "getPresenter()Lru/rocketbank/core/utils/presenter/Presenter;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lru/rocketbank/r2d2/fragments/PresenterFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/RocketFragment;-><init>()V

    .line 8
    new-instance v0, Lru/rocketbank/r2d2/fragments/PresenterFragment$presenter$2;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/fragments/PresenterFragment$presenter$2;-><init>(Lru/rocketbank/r2d2/fragments/PresenterFragment;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/ExceptionsKt__ExceptionsKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/PresenterFragment;->presenter$delegate:Lkotlin/Lazy;

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/PresenterFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/PresenterFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/PresenterFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/PresenterFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/PresenterFragment;->_$_findViewCache:Ljava/util/HashMap;

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

    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/PresenterFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public abstract createPresenter()Lru/rocketbank/core/utils/presenter/Presenter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TPR;"
        }
    .end annotation
.end method

.method protected final getPresenter()Lru/rocketbank/core/utils/presenter/Presenter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TPR;"
        }
    .end annotation

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/PresenterFragment;->presenter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/utils/presenter/Presenter;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 16
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onCreate(Landroid/os/Bundle;)V

    .line 17
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/PresenterFragment;->getPresenter()Lru/rocketbank/core/utils/presenter/Presenter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lru/rocketbank/core/utils/presenter/Presenter;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 41
    invoke-super {p0}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onDestroy()V

    .line 43
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/PresenterFragment;->getPresenter()Lru/rocketbank/core/utils/presenter/Presenter;

    move-result-object v0

    invoke-virtual {v0}, Lru/rocketbank/core/utils/presenter/Presenter;->onDestroy()V

    return-void
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onDestroyView()V

    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/PresenterFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 22
    invoke-super {p0}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onPause()V

    .line 23
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/PresenterFragment;->getPresenter()Lru/rocketbank/core/utils/presenter/Presenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lru/rocketbank/core/utils/presenter/Presenter;->onDetached(Ljava/lang/Object;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 28
    invoke-super {p0}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onResume()V

    .line 29
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/PresenterFragment;->getPresenter()Lru/rocketbank/core/utils/presenter/Presenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lru/rocketbank/core/utils/presenter/Presenter;->onAttached(Ljava/lang/Object;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "outState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/PresenterFragment;->getPresenter()Lru/rocketbank/core/utils/presenter/Presenter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lru/rocketbank/core/utils/presenter/Presenter;->onSavedInstanceState(Landroid/os/Bundle;)V

    .line 36
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
