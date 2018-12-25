.class public final Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$uploadCover$1$onNext$1;
.super Lrx/Subscriber;
.source "ProfileFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$uploadCover$1;->onNext(Lru/rocketbank/core/network/model/UploadImageResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber<",
        "Lru/rocketbank/core/network/model/PatchProfileAResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$uploadCover$1;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$uploadCover$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1033
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$uploadCover$1$onNext$1;->this$0:Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$uploadCover$1;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted()V
    .locals 0

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1039
    invoke-static {}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed to upload avatar"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1040
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$uploadCover$1$onNext$1;->this$0:Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$uploadCover$1;

    iget-object v0, v0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$uploadCover$1;->this$0:Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;

    invoke-static {v0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->access$hideProgressDialog(Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;)V

    .line 1041
    invoke-static {p1}, Lru/rocketbank/core/manager/AnalyticsManager;->logException(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 1033
    check-cast p1, Lru/rocketbank/core/network/model/PatchProfileAResponse;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$uploadCover$1$onNext$1;->onNext(Lru/rocketbank/core/network/model/PatchProfileAResponse;)V

    return-void
.end method

.method public final onNext(Lru/rocketbank/core/network/model/PatchProfileAResponse;)V
    .locals 1

    const-string v0, "emptyResponse"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1045
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$uploadCover$1$onNext$1;->this$0:Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$uploadCover$1;

    iget-object p1, p1, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$uploadCover$1;->this$0:Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->access$hideProgressDialog(Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;)V

    .line 1046
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$uploadCover$1$onNext$1;->this$0:Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$uploadCover$1;

    iget-object p1, p1, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$uploadCover$1;->this$0:Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->access$getAuthorization$p(Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;)Lru/rocketbank/core/user/Authorization;

    move-result-object p1

    invoke-virtual {p1}, Lru/rocketbank/core/user/Authorization;->refreshBackgroundProfile()V

    return-void
.end method
