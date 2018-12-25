.class final Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepPresenter$uploadImage$$inlined$run$lambda$2;
.super Ljava/lang/Object;
.source "NewPassportStepPresenter.kt"

# interfaces
.implements Lrx/functions/Func1;


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
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/functions/Func1<",
        "TT;",
        "Lrx/Observable<",
        "+TR;>;>;"
    }
.end annotation


# instance fields
.field final synthetic $path$inlined:Ljava/lang/String;

.field final synthetic $step$inlined:I

.field final synthetic this$0:Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepPresenter;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepPresenter;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepPresenter$uploadImage$$inlined$run$lambda$2;->this$0:Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepPresenter;

    iput-object p2, p0, Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepPresenter$uploadImage$$inlined$run$lambda$2;->$path$inlined:Ljava/lang/String;

    iput p3, p0, Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepPresenter$uploadImage$$inlined$run$lambda$2;->$step$inlined:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 17
    check-cast p1, Lokhttp3/MultipartBody$Part;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepPresenter$uploadImage$$inlined$run$lambda$2;->call(Lokhttp3/MultipartBody$Part;)Lrx/Observable;

    move-result-object p1

    return-object p1
.end method

.method public final call(Lokhttp3/MultipartBody$Part;)Lrx/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/MultipartBody$Part;",
            ")",
            "Lrx/Observable<",
            "Lru/rocketbank/core/network/model/UploadImageResponse;",
            ">;"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepPresenter$uploadImage$$inlined$run$lambda$2;->this$0:Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepPresenter;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepPresenter;->getApi()Lru/rocketbank/core/network/api/RegistrationApi;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lru/rocketbank/core/network/api/RegistrationApi;->uploadImage(Lokhttp3/MultipartBody$Part;Z)Lrx/Observable;

    move-result-object p1

    return-object p1
.end method
