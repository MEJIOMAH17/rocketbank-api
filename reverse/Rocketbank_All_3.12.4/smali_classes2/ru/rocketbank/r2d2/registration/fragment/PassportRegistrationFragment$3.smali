.class Lru/rocketbank/r2d2/registration/fragment/PassportRegistrationFragment$3;
.super Ljava/lang/Object;
.source "PassportRegistrationFragment.java"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/registration/fragment/PassportRegistrationFragment;->sendPhoto(Lokhttp3/MultipartBody$Part;)Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Action1<",
        "Lru/rocketbank/core/network/model/UploadImageResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/registration/fragment/PassportRegistrationFragment;

.field final synthetic val$nextStep:Lru/rocketbank/r2d2/registration/RegistrationStep;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/registration/fragment/PassportRegistrationFragment;Lru/rocketbank/r2d2/registration/RegistrationStep;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lru/rocketbank/r2d2/registration/fragment/PassportRegistrationFragment$3;->this$0:Lru/rocketbank/r2d2/registration/fragment/PassportRegistrationFragment;

    iput-object p2, p0, Lru/rocketbank/r2d2/registration/fragment/PassportRegistrationFragment$3;->val$nextStep:Lru/rocketbank/r2d2/registration/RegistrationStep;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 29
    check-cast p1, Lru/rocketbank/core/network/model/UploadImageResponse;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/registration/fragment/PassportRegistrationFragment$3;->call(Lru/rocketbank/core/network/model/UploadImageResponse;)V

    return-void
.end method

.method public call(Lru/rocketbank/core/network/model/UploadImageResponse;)V
    .locals 1

    .line 32
    iget-object v0, p0, Lru/rocketbank/r2d2/registration/fragment/PassportRegistrationFragment$3;->val$nextStep:Lru/rocketbank/r2d2/registration/RegistrationStep;

    invoke-virtual {p1}, Lru/rocketbank/core/network/model/UploadImageResponse;->getImage()Lru/rocketbank/core/model/ImageModel;

    move-result-object p1

    invoke-virtual {p1}, Lru/rocketbank/core/model/ImageModel;->getId()I

    move-result p1

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/registration/RegistrationStep;->setPassportPageId(I)V

    return-void
.end method
