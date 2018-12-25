.class public final Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$switch3MinInterval$1;
.super Lrx/Subscriber;
.source "ProfileFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->switch3MinInterval(Z)V
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
.field final synthetic $isChecked:Z

.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .line 329
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$switch3MinInterval$1;->this$0:Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;

    iput-boolean p2, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$switch3MinInterval$1;->$isChecked:Z

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

    .line 335
    invoke-static {}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Profile patch failed"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 337
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$switch3MinInterval$1;->this$0:Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->access$hideProgressDialog(Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;)V

    return-void
.end method

.method public final bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 329
    check-cast p1, Lru/rocketbank/core/network/model/PatchProfileAResponse;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$switch3MinInterval$1;->onNext(Lru/rocketbank/core/network/model/PatchProfileAResponse;)V

    return-void
.end method

.method public final onNext(Lru/rocketbank/core/network/model/PatchProfileAResponse;)V
    .locals 1

    const-string v0, "userResponse"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 342
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$switch3MinInterval$1;->this$0:Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->access$hideProgressDialog(Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;)V

    .line 344
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$switch3MinInterval$1;->this$0:Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->access$getUserModel$p(Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;)Lru/rocketbank/core/model/UserModel;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    iget-boolean v0, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$switch3MinInterval$1;->$isChecked:Z

    invoke-virtual {p1, v0}, Lru/rocketbank/core/model/UserModel;->setShortTermLogin(Z)V

    .line 345
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$switch3MinInterval$1;->this$0:Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->access$getAuthorization$p(Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;)Lru/rocketbank/core/user/Authorization;

    move-result-object p1

    invoke-virtual {p1}, Lru/rocketbank/core/user/Authorization;->reloadProfile()V

    .line 346
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$switch3MinInterval$1;->this$0:Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->access$getAuthorization$p(Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;)Lru/rocketbank/core/user/Authorization;

    move-result-object p1

    invoke-virtual {p1}, Lru/rocketbank/core/user/Authorization;->refreshBackgroundProfile()V

    return-void
.end method
