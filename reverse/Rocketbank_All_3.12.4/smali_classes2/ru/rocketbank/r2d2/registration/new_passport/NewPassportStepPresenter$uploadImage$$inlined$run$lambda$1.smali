.class final Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepPresenter$uploadImage$$inlined$run$lambda$1;
.super Ljava/lang/Object;
.source "NewPassportStepPresenter.kt"

# interfaces
.implements Lrx/Observable$OnSubscribe;


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
        "Lrx/Observable$OnSubscribe<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic $path$inlined:Ljava/lang/String;

.field final synthetic $step$inlined:I

.field final synthetic this$0:Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepPresenter;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepPresenter;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepPresenter$uploadImage$$inlined$run$lambda$1;->this$0:Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepPresenter;

    iput-object p2, p0, Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepPresenter$uploadImage$$inlined$run$lambda$1;->$path$inlined:Ljava/lang/String;

    iput p3, p0, Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepPresenter$uploadImage$$inlined$run$lambda$1;->$step$inlined:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 35
    check-cast p1, Lrx/Subscriber;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepPresenter$uploadImage$$inlined$run$lambda$1;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public final call(Lrx/Subscriber;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber<",
            "-",
            "Lokhttp3/MultipartBody$Part;",
            ">;)V"
        }
    .end annotation

    .line 36
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepPresenter$uploadImage$$inlined$run$lambda$1;->$path$inlined:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v1, "image"

    .line 37
    invoke-static {v1}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v1

    invoke-static {v1, v0}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/io/File;)Lokhttp3/RequestBody;

    move-result-object v1

    const-string v2, "image"

    .line 38
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v1}, Lokhttp3/MultipartBody$Part;->createFormData(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Part;

    move-result-object v0

    .line 39
    invoke-virtual {p1, v0}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    return-void
.end method
