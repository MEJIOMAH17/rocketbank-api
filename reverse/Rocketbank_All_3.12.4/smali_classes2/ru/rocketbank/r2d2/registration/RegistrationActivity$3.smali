.class Lru/rocketbank/r2d2/registration/RegistrationActivity$3;
.super Ljava/lang/Object;
.source "RegistrationActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/registration/RegistrationActivity;->setNextButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/registration/RegistrationActivity;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/registration/RegistrationActivity;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lru/rocketbank/r2d2/registration/RegistrationActivity$3;->this$0:Lru/rocketbank/r2d2/registration/RegistrationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 163
    iget-object p1, p0, Lru/rocketbank/r2d2/registration/RegistrationActivity$3;->this$0:Lru/rocketbank/r2d2/registration/RegistrationActivity;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/registration/RegistrationActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    const v0, 0x7f090105

    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object p1

    .line 164
    instance-of v0, p1, Lru/rocketbank/r2d2/fragments/NextButtonListener;

    if-eqz v0, :cond_0

    .line 165
    check-cast p1, Lru/rocketbank/r2d2/fragments/NextButtonListener;

    invoke-interface {p1}, Lru/rocketbank/r2d2/fragments/NextButtonListener;->onNextButtonClick()V

    :cond_0
    return-void
.end method
