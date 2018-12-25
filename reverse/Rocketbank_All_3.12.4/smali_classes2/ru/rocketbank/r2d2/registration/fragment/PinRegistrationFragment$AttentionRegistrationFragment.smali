.class public Lru/rocketbank/r2d2/registration/fragment/PinRegistrationFragment$AttentionRegistrationFragment;
.super Lru/rocketbank/r2d2/registration/fragment/GenericRegistrationFragment;
.source "PinRegistrationFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/registration/fragment/PinRegistrationFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AttentionRegistrationFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 157
    invoke-direct {p0}, Lru/rocketbank/r2d2/registration/fragment/GenericRegistrationFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getFormContent()Lru/rocketbank/r2d2/registration/GenericFormFragment$FormContent;
    .locals 2

    .line 160
    new-instance v0, Lru/rocketbank/r2d2/registration/GenericFormFragment$FormContent;

    invoke-direct {v0}, Lru/rocketbank/r2d2/registration/GenericFormFragment$FormContent;-><init>()V

    const v1, 0x7f1103c2

    .line 161
    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/registration/GenericFormFragment$FormContent;->setTopHintTextRes(I)Lru/rocketbank/r2d2/registration/GenericFormFragment$FormContent;

    move-result-object v0

    const v1, 0x7f0802a9

    .line 162
    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/registration/GenericFormFragment$FormContent;->setImageRes(I)Lru/rocketbank/r2d2/registration/GenericFormFragment$FormContent;

    move-result-object v0

    const v1, 0x7f1103c1

    .line 163
    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/registration/GenericFormFragment$FormContent;->setBottomHintTextRes(I)Lru/rocketbank/r2d2/registration/GenericFormFragment$FormContent;

    move-result-object v0

    const v1, 0x7f1102d6

    .line 164
    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/registration/GenericFormFragment$FormContent;->setButtonTextRes(I)Lru/rocketbank/r2d2/registration/GenericFormFragment$FormContent;

    move-result-object v0

    const/4 v1, 0x0

    .line 165
    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/registration/GenericFormFragment$FormContent;->setBottomButtonVisible(Z)Lru/rocketbank/r2d2/registration/GenericFormFragment$FormContent;

    move-result-object v0

    return-object v0
.end method

.method protected onButtonClicked()V
    .locals 0

    .line 170
    invoke-virtual {p0}, Lru/rocketbank/r2d2/registration/fragment/PinRegistrationFragment$AttentionRegistrationFragment;->onStartButtonClick()V

    return-void
.end method

.method public onStartButtonClick()V
    .locals 3

    .line 175
    invoke-virtual {p0}, Lru/rocketbank/r2d2/registration/fragment/PinRegistrationFragment$AttentionRegistrationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/activities/AbstractActivity;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/activities/AbstractActivity;->showProgressDialog()V

    .line 176
    invoke-virtual {p0}, Lru/rocketbank/r2d2/registration/fragment/PinRegistrationFragment$AttentionRegistrationFragment;->getApi()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/network/api/RegistrationApi;

    invoke-interface {v0}, Lru/rocketbank/core/network/api/RegistrationApi;->openPrivacy()Lrx/Observable;

    move-result-object v0

    .line 177
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 178
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lru/rocketbank/r2d2/registration/fragment/PinRegistrationFragment$AttentionRegistrationFragment$1;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/registration/fragment/PinRegistrationFragment$AttentionRegistrationFragment$1;-><init>(Lru/rocketbank/r2d2/registration/fragment/PinRegistrationFragment$AttentionRegistrationFragment;)V

    new-instance v2, Lru/rocketbank/r2d2/registration/fragment/PinRegistrationFragment$AttentionRegistrationFragment$2;

    invoke-direct {v2, p0}, Lru/rocketbank/r2d2/registration/fragment/PinRegistrationFragment$AttentionRegistrationFragment$2;-><init>(Lru/rocketbank/r2d2/registration/fragment/PinRegistrationFragment$AttentionRegistrationFragment;)V

    .line 179
    invoke-virtual {v0, v1, v2}, Lrx/Observable;->subscribe(Lrx/functions/Action1;Lrx/functions/Action1;)Lrx/Subscription;

    return-void
.end method
