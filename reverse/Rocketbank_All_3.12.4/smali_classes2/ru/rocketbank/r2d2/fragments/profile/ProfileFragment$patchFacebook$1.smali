.class public final Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$patchFacebook$1;
.super Ljava/lang/Object;
.source "ProfileFragment.kt"

# interfaces
.implements Lru/rocketbank/core/manager/social/SocialNetCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->patchFacebook(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lru/rocketbank/core/manager/social/SocialNetCallback<",
        "Lru/rocketbank/core/manager/social/SocialUserModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $id:Ljava/lang/String;

.field final synthetic $isAvatar:Z

.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;ZLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1349
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$patchFacebook$1;->this$0:Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;

    iput-boolean p2, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$patchFacebook$1;->$isAvatar:Z

    iput-object p3, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$patchFacebook$1;->$id:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "t"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1384
    invoke-static {p1}, Lru/rocketbank/core/manager/AnalyticsManager;->logException(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    .line 1349
    check-cast p1, Lru/rocketbank/core/manager/social/SocialUserModel;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$patchFacebook$1;->onResult(Lru/rocketbank/core/manager/social/SocialUserModel;)V

    return-void
.end method

.method public final onResult(Lru/rocketbank/core/manager/social/SocialUserModel;)V
    .locals 3

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1351
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$patchFacebook$1;->this$0:Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;

    invoke-static {v0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->access$showProgressDialog(Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;)V

    .line 1352
    new-instance v0, Lru/rocketbank/core/network/model/PatchProfileBody;

    invoke-virtual {p1}, Lru/rocketbank/core/manager/social/SocialUserModel;->getId()J

    move-result-wide v1

    invoke-virtual {p1}, Lru/rocketbank/core/manager/social/SocialUserModel;->getToken()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lru/rocketbank/core/network/model/PatchProfileBody;-><init>(JLjava/lang/String;)V

    .line 1353
    iget-boolean p1, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$patchFacebook$1;->$isAvatar:Z

    if-eqz p1, :cond_0

    .line 1354
    invoke-virtual {v0}, Lru/rocketbank/core/network/model/PatchProfileBody;->getUser()Lru/rocketbank/core/network/model/PatchProfileBody$User;

    move-result-object p1

    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$patchFacebook$1;->$id:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lru/rocketbank/core/network/model/PatchProfileBody$User;->setUserpicId(Ljava/lang/String;)V

    goto :goto_0

    .line 1355
    :cond_0
    invoke-virtual {v0}, Lru/rocketbank/core/network/model/PatchProfileBody;->getUser()Lru/rocketbank/core/network/model/PatchProfileBody$User;

    move-result-object p1

    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$patchFacebook$1;->$id:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lru/rocketbank/core/network/model/PatchProfileBody$User;->setCoverId(Ljava/lang/String;)V

    .line 1356
    :goto_0
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$patchFacebook$1;->this$0:Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->access$getUserApi$p(Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;)Lru/rocketbank/core/network/api/UserApi;

    move-result-object p1

    invoke-interface {p1, v0}, Lru/rocketbank/core/network/api/UserApi;->patchProfile(Lru/rocketbank/core/network/model/PatchProfileBody;)Lrx/Observable;

    move-result-object p1

    .line 1357
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object p1

    .line 1358
    new-instance v0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$patchFacebook$1$onResult$1;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$patchFacebook$1$onResult$1;-><init>(Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$patchFacebook$1;)V

    check-cast v0, Lrx/Subscriber;

    invoke-virtual {p1, v0}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    return-void
.end method
