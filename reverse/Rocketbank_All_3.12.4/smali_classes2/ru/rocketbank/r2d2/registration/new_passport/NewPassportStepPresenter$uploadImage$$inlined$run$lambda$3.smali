.class final Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepPresenter$uploadImage$$inlined$run$lambda$3;
.super Ljava/lang/Object;
.source "NewPassportStepPresenter.kt"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepPresenter;->uploadImage(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/functions/Action1<",
        "Lru/rocketbank/core/network/model/UploadImageResponse;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNewPassportStepPresenter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NewPassportStepPresenter.kt\nru/rocketbank/r2d2/registration/new_passport/NewPassportStepPresenter$uploadImage$1$3\n*L\n1#1,87:1\n*E\n"
.end annotation


# instance fields
.field final synthetic $path$inlined:Ljava/lang/String;

.field final synthetic $step$inlined:I

.field final synthetic receiver$0:Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepView;

.field final synthetic this$0:Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepPresenter;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepView;Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepPresenter;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepPresenter$uploadImage$$inlined$run$lambda$3;->receiver$0:Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepView;

    iput-object p2, p0, Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepPresenter$uploadImage$$inlined$run$lambda$3;->this$0:Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepPresenter;

    iput-object p3, p0, Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepPresenter$uploadImage$$inlined$run$lambda$3;->$path$inlined:Ljava/lang/String;

    iput p4, p0, Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepPresenter$uploadImage$$inlined$run$lambda$3;->$step$inlined:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 17
    check-cast p1, Lru/rocketbank/core/network/model/UploadImageResponse;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepPresenter$uploadImage$$inlined$run$lambda$3;->call(Lru/rocketbank/core/network/model/UploadImageResponse;)V

    return-void
.end method

.method public final call(Lru/rocketbank/core/network/model/UploadImageResponse;)V
    .locals 2

    .line 45
    invoke-virtual {p1}, Lru/rocketbank/core/network/model/UploadImageResponse;->getImage()Lru/rocketbank/core/model/ImageModel;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 46
    iget-object v0, p0, Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepPresenter$uploadImage$$inlined$run$lambda$3;->this$0:Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepPresenter;

    iget v1, p0, Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepPresenter$uploadImage$$inlined$run$lambda$3;->$step$inlined:I

    invoke-static {v0, v1}, Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepPresenter;->access$imageFieldForStep(Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepPresenter;I)Ljava/lang/String;

    move-result-object v0

    .line 47
    sget-object v1, Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepPresenter;->Companion:Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepPresenter$Companion;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepPresenter$Companion;->getImages()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1}, Lru/rocketbank/core/model/ImageModel;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    :cond_0
    iget-object p1, p0, Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepPresenter$uploadImage$$inlined$run$lambda$3;->receiver$0:Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepView;

    invoke-interface {p1}, Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepView;->hideProgress()V

    .line 50
    iget-object p1, p0, Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepPresenter$uploadImage$$inlined$run$lambda$3;->receiver$0:Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepView;

    iget v0, p0, Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepPresenter$uploadImage$$inlined$run$lambda$3;->$step$inlined:I

    add-int/lit8 v0, v0, 0x1

    invoke-interface {p1, v0}, Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepView;->nextStep(I)V

    return-void
.end method
