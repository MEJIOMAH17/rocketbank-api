.class Lru/rocketbank/r2d2/registration/fragment/PassportRegRegistrationFragment$2;
.super Ljava/lang/Object;
.source "PassportRegRegistrationFragment.java"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/registration/fragment/PassportRegRegistrationFragment;->sendPhoto(Lokhttp3/MultipartBody$Part;)Lrx/Observable;
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
.field final synthetic this$0:Lru/rocketbank/r2d2/registration/fragment/PassportRegRegistrationFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/registration/fragment/PassportRegRegistrationFragment;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lru/rocketbank/r2d2/registration/fragment/PassportRegRegistrationFragment$2;->this$0:Lru/rocketbank/r2d2/registration/fragment/PassportRegRegistrationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 34
    check-cast p1, Lru/rocketbank/core/network/model/UploadImageResponse;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/registration/fragment/PassportRegRegistrationFragment$2;->call(Lru/rocketbank/core/network/model/UploadImageResponse;)V

    return-void
.end method

.method public call(Lru/rocketbank/core/network/model/UploadImageResponse;)V
    .locals 0

    .line 37
    sget-object p1, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object p1

    invoke-interface {p1}, Lru/rocketbank/core/dagger/component/RocketComponent;->getAnalyticsManager()Lru/rocketbank/core/manager/AnalyticsManager;

    move-result-object p1

    .line 38
    invoke-virtual {p1}, Lru/rocketbank/core/manager/AnalyticsManager;->leadPassportSecond()V

    return-void
.end method
