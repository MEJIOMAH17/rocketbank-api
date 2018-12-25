.class public final Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepPresenter;
.super Lru/rocketbank/core/utils/presenter/Presenter;
.source "NewPassportStepPresenter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepPresenter$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNewPassportStepPresenter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NewPassportStepPresenter.kt\nru/rocketbank/r2d2/registration/new_passport/NewPassportStepPresenter\n*L\n1#1,87:1\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepPresenter$Companion;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final images:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final api:Lru/rocketbank/core/network/api/RegistrationApi;

.field private subscription:Lrx/Subscription;

.field private view:Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepPresenter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepPresenter$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepPresenter;->Companion:Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepPresenter$Companion;

    .line 84
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    sput-object v0, Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepPresenter;->images:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Lru/rocketbank/core/utils/presenter/Presenter;-><init>()V

    .line 19
    sget-object v0, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object v0

    invoke-interface {v0}, Lru/rocketbank/core/dagger/component/RocketComponent;->getRegistrationApi()Lru/rocketbank/core/network/api/RegistrationApi;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepPresenter;->api:Lru/rocketbank/core/network/api/RegistrationApi;

    .line 22
    invoke-static {}, Lrx/subscriptions/Subscriptions;->empty()Lrx/Subscription;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepPresenter;->subscription:Lrx/Subscription;

    return-void
.end method

.method public static final synthetic access$getImages$cp()Ljava/util/Map;
    .locals 1

    .line 17
    sget-object v0, Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepPresenter;->images:Ljava/util/Map;

    return-object v0
.end method

.method public static final synthetic access$imageFieldForStep(Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepPresenter;I)Ljava/lang/String;
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepPresenter;->imageFieldForStep(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final imageFieldForStep(I)Ljava/lang/String;
    .locals 0

    packed-switch p1, :pswitch_data_0

    const-string p1, "previous_passport"

    return-object p1

    :pswitch_0
    const-string p1, "passport_registration"

    return-object p1

    :pswitch_1
    const-string p1, "passport_main"

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final getApi()Lru/rocketbank/core/network/api/RegistrationApi;
    .locals 1

    .line 19
    iget-object v0, p0, Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepPresenter;->api:Lru/rocketbank/core/network/api/RegistrationApi;

    return-object v0
.end method

.method public final onAttach(Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepView;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    iput-object p1, p0, Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepPresenter;->view:Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepView;

    return-void
.end method

.method public final onDetach()V
    .locals 1

    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepPresenter;->view:Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepView;

    return-void
.end method

.method public final onReadyClicked(Ljava/lang/Long;)V
    .locals 3

    .line 60
    iget-object v0, p0, Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepPresenter;->view:Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepView;

    if-eqz v0, :cond_0

    .line 61
    invoke-interface {v0}, Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepView;->showProgress()V

    .line 62
    new-instance v1, Lru/rocketbank/core/network/model/new_passport/NewPassportBody;

    sget-object v2, Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepPresenter;->images:Ljava/util/Map;

    invoke-direct {v1, v2, p1}, Lru/rocketbank/core/network/model/new_passport/NewPassportBody;-><init>(Ljava/util/Map;Ljava/lang/Long;)V

    .line 63
    iget-object p1, p0, Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepPresenter;->api:Lru/rocketbank/core/network/api/RegistrationApi;

    invoke-interface {p1, v1}, Lru/rocketbank/core/network/api/RegistrationApi;->uploadNewPassportImages(Lru/rocketbank/core/network/model/new_passport/NewPassportBody;)Lrx/Observable;

    move-result-object p1

    .line 64
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object p1

    .line 65
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object p1

    .line 66
    new-instance v1, Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepPresenter$onReadyClicked$1$1;

    invoke-direct {v1, v0}, Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepPresenter$onReadyClicked$1$1;-><init>(Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepView;)V

    check-cast v1, Lrx/functions/Action1;

    .line 69
    new-instance v2, Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepPresenter$onReadyClicked$1$2;

    invoke-direct {v2, v0}, Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepPresenter$onReadyClicked$1$2;-><init>(Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepView;)V

    check-cast v2, Lrx/functions/Action1;

    .line 66
    invoke-virtual {p1, v1, v2}, Lrx/Observable;->subscribe(Lrx/functions/Action1;Lrx/functions/Action1;)Lrx/Subscription;

    return-void

    :cond_0
    return-void
.end method

.method public final uploadImage(ILjava/lang/String;)V
    .locals 3

    const-string v0, "path"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepPresenter;->view:Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepView;

    if-eqz v0, :cond_0

    .line 34
    invoke-interface {v0}, Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepView;->showProgress()V

    .line 35
    new-instance v1, Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepPresenter$uploadImage$$inlined$run$lambda$1;

    invoke-direct {v1, p0, p2, p1}, Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepPresenter$uploadImage$$inlined$run$lambda$1;-><init>(Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepPresenter;Ljava/lang/String;I)V

    check-cast v1, Lrx/Observable$OnSubscribe;

    invoke-static {v1}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v1

    .line 40
    new-instance v2, Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepPresenter$uploadImage$$inlined$run$lambda$2;

    invoke-direct {v2, p0, p2, p1}, Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepPresenter$uploadImage$$inlined$run$lambda$2;-><init>(Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepPresenter;Ljava/lang/String;I)V

    check-cast v2, Lrx/functions/Func1;

    invoke-virtual {v1, v2}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v1

    .line 42
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v1

    .line 43
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v1

    .line 44
    new-instance v2, Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepPresenter$uploadImage$$inlined$run$lambda$3;

    invoke-direct {v2, v0, p0, p2, p1}, Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepPresenter$uploadImage$$inlined$run$lambda$3;-><init>(Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepView;Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepPresenter;Ljava/lang/String;I)V

    check-cast v2, Lrx/functions/Action1;

    .line 51
    new-instance p1, Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepPresenter$uploadImage$1$4;

    invoke-direct {p1, v0}, Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepPresenter$uploadImage$1$4;-><init>(Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepView;)V

    check-cast p1, Lrx/functions/Action1;

    .line 44
    invoke-virtual {v1, v2, p1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;Lrx/functions/Action1;)Lrx/Subscription;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepPresenter;->subscription:Lrx/Subscription;

    return-void

    :cond_0
    return-void
.end method
