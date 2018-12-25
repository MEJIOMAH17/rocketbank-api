.class public abstract Lru/rocketbank/r2d2/root/devidepayment/ap/APBaseActivity;
.super Lru/rocketbank/r2d2/PresenterSecuredActivity;
.source "APBaseActivity.kt"

# interfaces
.implements Lru/rocketbank/r2d2/root/devidepayment/BaseDevicePaymentView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<PR:",
        "Lru/rocketbank/core/utils/presenter/Presenter;",
        "T:",
        "Landroid/databinding/ViewDataBinding;",
        ">",
        "Lru/rocketbank/r2d2/PresenterSecuredActivity<",
        "TPR;>;",
        "Lru/rocketbank/r2d2/root/devidepayment/BaseDevicePaymentView;"
    }
.end annotation


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field protected binding:Landroid/databinding/ViewDataBinding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lru/rocketbank/r2d2/PresenterSecuredActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/root/devidepayment/ap/APBaseActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/root/devidepayment/ap/APBaseActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lru/rocketbank/r2d2/root/devidepayment/ap/APBaseActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/root/devidepayment/ap/APBaseActivity;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/root/devidepayment/ap/APBaseActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/r2d2/root/devidepayment/ap/APBaseActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method protected final getBinding()Landroid/databinding/ViewDataBinding;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 13
    iget-object v0, p0, Lru/rocketbank/r2d2/root/devidepayment/ap/APBaseActivity;->binding:Landroid/databinding/ViewDataBinding;

    if-nez v0, :cond_0

    const-string v1, "binding"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public hideProgress()V
    .locals 0

    .line 25
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/devidepayment/ap/APBaseActivity;->hideProgressDialog()V

    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 16
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/devidepayment/ap/APBaseActivity;->hideProgressDialog()V

    .line 17
    invoke-super {p0}, Lru/rocketbank/r2d2/PresenterSecuredActivity;->onStop()V

    return-void
.end method

.method protected final setBinding(Landroid/databinding/ViewDataBinding;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iput-object p1, p0, Lru/rocketbank/r2d2/root/devidepayment/ap/APBaseActivity;->binding:Landroid/databinding/ViewDataBinding;

    return-void
.end method

.method public showProgress()V
    .locals 0

    .line 21
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/devidepayment/ap/APBaseActivity;->showProgressDialog()V

    return-void
.end method
