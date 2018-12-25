.class public final Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$switchRefill$1;
.super Lrx/Subscriber;
.source "ProfileFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->switchRefill(ZLru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericSwitchViewHolder;)V
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

.field final synthetic $switch:Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericSwitchViewHolder;

.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericSwitchViewHolder;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericSwitchViewHolder;",
            "Z)V"
        }
    .end annotation

    .line 363
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$switchRefill$1;->this$0:Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$switchRefill$1;->$switch:Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericSwitchViewHolder;

    iput-boolean p3, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$switchRefill$1;->$isChecked:Z

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

    .line 369
    invoke-static {}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Profile patch failed"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 371
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$switchRefill$1;->this$0:Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->access$hideProgressDialog(Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;)V

    .line 372
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$switchRefill$1;->$switch:Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericSwitchViewHolder;

    iget-boolean v0, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$switchRefill$1;->$isChecked:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericSwitchViewHolder;->setEnabled(Z)V

    return-void
.end method

.method public final bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 363
    check-cast p1, Lru/rocketbank/core/network/model/PatchProfileAResponse;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$switchRefill$1;->onNext(Lru/rocketbank/core/network/model/PatchProfileAResponse;)V

    return-void
.end method

.method public final onNext(Lru/rocketbank/core/network/model/PatchProfileAResponse;)V
    .locals 1

    const-string v0, "userResponse"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 376
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$switchRefill$1;->this$0:Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->access$hideProgressDialog(Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;)V

    .line 378
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$switchRefill$1;->this$0:Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->access$getUserModel$p(Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;)Lru/rocketbank/core/model/UserModel;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {p1}, Lru/rocketbank/core/model/UserModel;->getUsername()Lru/rocketbank/core/model/UsernameModel;

    move-result-object p1

    const-string v0, "userModel!!.username"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$switchRefill$1;->$isChecked:Z

    invoke-virtual {p1, v0}, Lru/rocketbank/core/model/UsernameModel;->setWorks(Z)V

    .line 379
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$switchRefill$1;->this$0:Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->access$getAuthorization$p(Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;)Lru/rocketbank/core/user/Authorization;

    move-result-object p1

    invoke-virtual {p1}, Lru/rocketbank/core/user/Authorization;->reloadProfile()V

    .line 380
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$switchRefill$1;->this$0:Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->access$getAuthorization$p(Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;)Lru/rocketbank/core/user/Authorization;

    move-result-object p1

    invoke-virtual {p1}, Lru/rocketbank/core/user/Authorization;->refreshBackgroundProfile()V

    return-void
.end method
