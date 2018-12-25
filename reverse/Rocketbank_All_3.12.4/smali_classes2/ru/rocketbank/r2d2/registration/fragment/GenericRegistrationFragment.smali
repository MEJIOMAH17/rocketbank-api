.class public abstract Lru/rocketbank/r2d2/registration/fragment/GenericRegistrationFragment;
.super Lru/rocketbank/r2d2/registration/GenericFormFragment;
.source "GenericRegistrationFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lru/rocketbank/r2d2/registration/GenericFormFragment<",
        "Lru/rocketbank/r2d2/registration/RegistrationStep;",
        "Lru/rocketbank/core/network/api/RegistrationApi;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lru/rocketbank/r2d2/registration/GenericFormFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected initView()V
    .locals 3

    .line 31
    invoke-super {p0}, Lru/rocketbank/r2d2/registration/GenericFormFragment;->initView()V

    .line 33
    iget-object v0, p0, Lru/rocketbank/r2d2/registration/fragment/GenericRegistrationFragment;->image:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/registration/fragment/GenericRegistrationFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f060200

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 34
    iget-object v0, p0, Lru/rocketbank/r2d2/registration/fragment/GenericRegistrationFragment;->button:Landroid/widget/Button;

    const v1, 0x7f0801e2

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 35
    iget-object v0, p0, Lru/rocketbank/r2d2/registration/fragment/GenericRegistrationFragment;->buttonBottom:Landroid/widget/Button;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/registration/fragment/GenericRegistrationFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f060225

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 37
    iget-object v0, p0, Lru/rocketbank/r2d2/registration/fragment/GenericRegistrationFragment;->button:Landroid/widget/Button;

    new-instance v1, Lru/rocketbank/r2d2/registration/fragment/GenericRegistrationFragment$1;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/registration/fragment/GenericRegistrationFragment$1;-><init>(Lru/rocketbank/r2d2/registration/fragment/GenericRegistrationFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    iget-object v0, p0, Lru/rocketbank/r2d2/registration/fragment/GenericRegistrationFragment;->buttonBottom:Landroid/widget/Button;

    new-instance v1, Lru/rocketbank/r2d2/registration/fragment/GenericRegistrationFragment$2;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/registration/fragment/GenericRegistrationFragment$2;-><init>(Lru/rocketbank/r2d2/registration/fragment/GenericRegistrationFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onBottomButtonClicked()V
    .locals 0

    return-void
.end method

.method protected onButtonClicked()V
    .locals 0

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 24
    invoke-virtual {p0}, Lru/rocketbank/r2d2/registration/fragment/GenericRegistrationFragment;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object v0

    invoke-interface {v0}, Lru/rocketbank/core/dagger/component/RocketComponent;->getRegistrationApi()Lru/rocketbank/core/network/api/RegistrationApi;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/registration/fragment/GenericRegistrationFragment;->api:Ljava/lang/Object;

    .line 26
    invoke-super {p0, p1, p2, p3}, Lru/rocketbank/r2d2/registration/GenericFormFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onRequestCompleted(Landroid/os/Parcelable;)V
    .locals 0

    .line 20
    check-cast p1, Lru/rocketbank/r2d2/registration/RegistrationStep;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/registration/fragment/GenericRegistrationFragment;->onRequestCompleted(Lru/rocketbank/r2d2/registration/RegistrationStep;)V

    return-void
.end method

.method protected onRequestCompleted(Lru/rocketbank/r2d2/registration/RegistrationStep;)V
    .locals 0

    .line 58
    invoke-virtual {p0}, Lru/rocketbank/r2d2/registration/fragment/GenericRegistrationFragment;->hideSpinner()V

    if-nez p1, :cond_0

    const p1, 0x7f11012b

    .line 61
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/registration/fragment/GenericRegistrationFragment;->showSnack(I)V

    return-void

    .line 65
    :cond_0
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/registration/fragment/GenericRegistrationFragment;->finishStep(Landroid/os/Parcelable;)V

    .line 66
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/registration/fragment/GenericRegistrationFragment;->updateModel(Lru/rocketbank/r2d2/registration/RegistrationStep;)V

    return-void
.end method

.method protected bridge synthetic updateModel(Landroid/os/Parcelable;)V
    .locals 0

    .line 20
    check-cast p1, Lru/rocketbank/r2d2/registration/RegistrationStep;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/registration/fragment/GenericRegistrationFragment;->updateModel(Lru/rocketbank/r2d2/registration/RegistrationStep;)V

    return-void
.end method

.method protected updateModel(Lru/rocketbank/r2d2/registration/RegistrationStep;)V
    .locals 0

    return-void
.end method
