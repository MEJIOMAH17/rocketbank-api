.class Lru/rocketbank/r2d2/registration/fragment/FillFormRegistrationFragment$8;
.super Ljava/lang/Object;
.source "FillFormRegistrationFragment.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/registration/fragment/FillFormRegistrationFragment;->onNextButtonClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func1<",
        "Lru/rocketbank/core/model/dto/GenericRequestResponseData;",
        "Lru/rocketbank/r2d2/registration/RegistrationStep;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/registration/fragment/FillFormRegistrationFragment;

.field final synthetic val$nextStep:Lru/rocketbank/r2d2/registration/RegistrationStep;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/registration/fragment/FillFormRegistrationFragment;Lru/rocketbank/r2d2/registration/RegistrationStep;)V
    .locals 0

    .line 180
    iput-object p1, p0, Lru/rocketbank/r2d2/registration/fragment/FillFormRegistrationFragment$8;->this$0:Lru/rocketbank/r2d2/registration/fragment/FillFormRegistrationFragment;

    iput-object p2, p0, Lru/rocketbank/r2d2/registration/fragment/FillFormRegistrationFragment$8;->val$nextStep:Lru/rocketbank/r2d2/registration/RegistrationStep;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 180
    check-cast p1, Lru/rocketbank/core/model/dto/GenericRequestResponseData;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/registration/fragment/FillFormRegistrationFragment$8;->call(Lru/rocketbank/core/model/dto/GenericRequestResponseData;)Lru/rocketbank/r2d2/registration/RegistrationStep;

    move-result-object p1

    return-object p1
.end method

.method public call(Lru/rocketbank/core/model/dto/GenericRequestResponseData;)Lru/rocketbank/r2d2/registration/RegistrationStep;
    .locals 0

    .line 183
    iget-object p1, p0, Lru/rocketbank/r2d2/registration/fragment/FillFormRegistrationFragment$8;->val$nextStep:Lru/rocketbank/r2d2/registration/RegistrationStep;

    return-object p1
.end method
