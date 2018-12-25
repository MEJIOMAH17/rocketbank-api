.class public Lru/rocketbank/r2d2/registration/fragment/CheckingRegistrationFragment;
.super Lru/rocketbank/r2d2/registration/fragment/GenericRegistrationFragment;
.source "CheckingRegistrationFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lru/rocketbank/r2d2/registration/fragment/GenericRegistrationFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getFormContent()Lru/rocketbank/r2d2/registration/GenericFormFragment$FormContent;
    .locals 2

    .line 13
    new-instance v0, Lru/rocketbank/r2d2/registration/GenericFormFragment$FormContent;

    invoke-direct {v0}, Lru/rocketbank/r2d2/registration/GenericFormFragment$FormContent;-><init>()V

    const v1, 0x7f1102bc

    .line 14
    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/registration/GenericFormFragment$FormContent;->setTopHintTextRes(I)Lru/rocketbank/r2d2/registration/GenericFormFragment$FormContent;

    move-result-object v0

    const v1, 0x7f0800c3

    .line 15
    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/registration/GenericFormFragment$FormContent;->setImageRes(I)Lru/rocketbank/r2d2/registration/GenericFormFragment$FormContent;

    move-result-object v0

    const v1, 0x7f1102bb

    .line 16
    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/registration/GenericFormFragment$FormContent;->setBottomHintTextRes(I)Lru/rocketbank/r2d2/registration/GenericFormFragment$FormContent;

    move-result-object v0

    const/4 v1, 0x0

    .line 17
    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/registration/GenericFormFragment$FormContent;->setButtonVisible(Z)Lru/rocketbank/r2d2/registration/GenericFormFragment$FormContent;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 4

    .line 22
    invoke-static {}, Lru/rocketbank/r2d2/RocketApplication;->getContext()Lru/rocketbank/core/BaseRocketApplication;

    move-result-object v0

    invoke-virtual {v0}, Lru/rocketbank/core/BaseRocketApplication;->getResources()Landroid/content/res/Resources;

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
