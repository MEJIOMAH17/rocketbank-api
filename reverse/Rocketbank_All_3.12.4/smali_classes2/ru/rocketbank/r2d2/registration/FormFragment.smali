.class public abstract Lru/rocketbank/r2d2/registration/FormFragment;
.super Lru/rocketbank/r2d2/fragments/RocketFragment;
.source "FormFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/registration/FormFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Model::",
        "Landroid/os/Parcelable;",
        ":",
        "Lru/rocketbank/core/events/EventHelper$IEvent;",
        "API:",
        "Ljava/lang/Object;",
        ">",
        "Lru/rocketbank/r2d2/fragments/RocketFragment;"
    }
.end annotation


# static fields
.field public static final Companion:Lru/rocketbank/r2d2/registration/FormFragment$Companion;

.field public static final KEY_MODEL:Ljava/lang/String; = "KEY_MODEL"


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field protected api:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TAPI;"
        }
    .end annotation
.end field

.field public authorization:Lru/rocketbank/core/user/Authorization;

.field private model:Landroid/os/Parcelable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TModel;"
        }
    .end annotation
.end field

.field private userApi:Lru/rocketbank/core/network/api/UserApi;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/r2d2/registration/FormFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/registration/FormFragment$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/r2d2/registration/FormFragment;->Companion:Lru/rocketbank/r2d2/registration/FormFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/RocketFragment;-><init>()V

    return-void
.end method

.method private final setModel(Landroid/os/Parcelable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModel;)V"
        }
    .end annotation

    .line 37
    iput-object p1, p0, Lru/rocketbank/r2d2/registration/FormFragment;->model:Landroid/os/Parcelable;

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/registration/FormFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/registration/FormFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lru/rocketbank/r2d2/registration/FormFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/registration/FormFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/registration/FormFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/r2d2/registration/FormFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method protected final execute(Lrx/Observable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable<",
            "TModel;>;)V"
        }
    .end annotation

    const-string v0, "observable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 55
    invoke-static {p0, v0, v1, v2}, Lru/rocketbank/r2d2/fragments/RocketFragment;->showSpinner$default(Lru/rocketbank/r2d2/fragments/RocketFragment;IILjava/lang/Object;)V

    .line 56
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object p1

    .line 57
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object p1

    .line 58
    new-instance v0, Lru/rocketbank/r2d2/registration/FormFragment$execute$1;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/registration/FormFragment$execute$1;-><init>(Lru/rocketbank/r2d2/registration/FormFragment;)V

    check-cast v0, Lrx/functions/Action1;

    .line 59
    new-instance v1, Lru/rocketbank/r2d2/registration/FormFragment$execute$2;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/registration/FormFragment$execute$2;-><init>(Lru/rocketbank/r2d2/registration/FormFragment;)V

    check-cast v1, Lrx/functions/Action1;

    .line 58
    invoke-virtual {p1, v0, v1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;Lrx/functions/Action1;)Lrx/Subscription;

    return-void
.end method

.method protected finishStep(Landroid/os/Parcelable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModel;)V"
        }
    .end annotation

    const-string v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    sget-object v0, Lru/rocketbank/core/events/EventHelper;->INSTANCE:Lru/rocketbank/core/events/EventHelper;

    check-cast p1, Lru/rocketbank/core/events/EventHelper$IEvent;

    invoke-static {p1}, Lru/rocketbank/core/events/EventHelper;->send(Lru/rocketbank/core/events/EventHelper$IEvent;)V

    return-void
.end method

.method protected final getApi()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TAPI;"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lru/rocketbank/r2d2/registration/FormFragment;->api:Ljava/lang/Object;

    if-nez v0, :cond_0

    const-string v1, "api"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getAuthorization()Lru/rocketbank/core/user/Authorization;
    .locals 2

    .line 31
    iget-object v0, p0, Lru/rocketbank/r2d2/registration/FormFragment;->authorization:Lru/rocketbank/core/user/Authorization;

    if-nez v0, :cond_0

    const-string v1, "authorization"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method protected final getModel()Landroid/os/Parcelable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TModel;"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lru/rocketbank/r2d2/registration/FormFragment;->model:Landroid/os/Parcelable;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 41
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onCreate(Landroid/os/Bundle;)V

    .line 43
    sget-object p1, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object p1

    invoke-interface {p1}, Lru/rocketbank/core/dagger/component/RocketComponent;->getUserApi()Lru/rocketbank/core/network/api/UserApi;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/registration/FormFragment;->userApi:Lru/rocketbank/core/network/api/UserApi;

    .line 44
    sget-object p1, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object p1

    invoke-interface {p1}, Lru/rocketbank/core/dagger/component/RocketComponent;->getAuthorization()Lru/rocketbank/core/user/Authorization;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/registration/FormFragment;->authorization:Lru/rocketbank/core/user/Authorization;

    .line 46
    invoke-virtual {p0}, Lru/rocketbank/r2d2/registration/FormFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    const-string v0, "KEY_MODEL"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/registration/FormFragment;->model:Landroid/os/Parcelable;

    return-void
.end method

.method public abstract onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onDestroyView()V

    invoke-virtual {p0}, Lru/rocketbank/r2d2/registration/FormFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0}, Lru/rocketbank/r2d2/registration/FormFragment;->hideSpinner()V

    .line 81
    instance-of v0, p1, Lru/rocketbank/core/network/exception/RocketResponseException;

    const v1, 0x7f11018d

    if-eqz v0, :cond_2

    .line 83
    check-cast p1, Lru/rocketbank/core/network/exception/RocketResponseException;

    invoke-virtual {p1}, Lru/rocketbank/core/network/exception/RocketResponseException;->isNetworkError()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {p0, v1}, Lru/rocketbank/r2d2/registration/FormFragment;->showSnack(I)V

    return-void

    .line 87
    :cond_0
    invoke-virtual {p1}, Lru/rocketbank/core/network/exception/RocketResponseException;->getGenericRequestResponseData()Lru/rocketbank/core/model/dto/GenericRequestResponseData;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 88
    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/GenericRequestResponseData;->getResponse()Lru/rocketbank/core/model/dto/ResponseData;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lru/rocketbank/core/model/dto/ResponseData;->getShowIt()Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 89
    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/GenericRequestResponseData;->getResponse()Lru/rocketbank/core/model/dto/ResponseData;

    move-result-object p1

    if-nez p1, :cond_1

    .line 90
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/ResponseData;->getDescription()Ljava/lang/String;

    move-result-object p1

    const-string v0, "response!!.description"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/registration/FormFragment;->showSnack(Ljava/lang/String;)V

    return-void

    .line 95
    :cond_2
    invoke-virtual {p0, v1}, Lru/rocketbank/r2d2/registration/FormFragment;->showSnack(I)V

    return-void
.end method

.method protected abstract onRequestCompleted(Landroid/os/Parcelable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModel;)V"
        }
    .end annotation
.end method

.method protected final setApi(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TAPI;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    iput-object p1, p0, Lru/rocketbank/r2d2/registration/FormFragment;->api:Ljava/lang/Object;

    return-void
.end method

.method public final setAuthorization(Lru/rocketbank/core/user/Authorization;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    iput-object p1, p0, Lru/rocketbank/r2d2/registration/FormFragment;->authorization:Lru/rocketbank/core/user/Authorization;

    return-void
.end method

.method protected final showSnack(I)V
    .locals 1

    .line 103
    invoke-virtual {p0}, Lru/rocketbank/r2d2/registration/FormFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p1}, Lru/rocketbank/r2d2/helpers/UIHelper;->showSnack(Landroid/view/View;I)V

    return-void
.end method

.method protected final showSnack(Ljava/lang/String;)V
    .locals 1

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Lru/rocketbank/r2d2/registration/FormFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p1}, Lru/rocketbank/r2d2/helpers/UIHelper;->showSnack(Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method

.method protected abstract updateModel(Landroid/os/Parcelable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModel;)V"
        }
    .end annotation
.end method
