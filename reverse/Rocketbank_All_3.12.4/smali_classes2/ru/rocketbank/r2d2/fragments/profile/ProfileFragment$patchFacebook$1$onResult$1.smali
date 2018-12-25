.class public final Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$patchFacebook$1$onResult$1;
.super Lrx/Subscriber;
.source "ProfileFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$patchFacebook$1;->onResult(Lru/rocketbank/core/manager/social/SocialUserModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nProfileFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ProfileFragment.kt\nru/rocketbank/r2d2/fragments/profile/ProfileFragment$patchFacebook$1$onResult$1\n*L\n1#1,1654:1\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$patchFacebook$1;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$patchFacebook$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1358
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$patchFacebook$1$onResult$1;->this$0:Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$patchFacebook$1;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted()V
    .locals 0

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 3

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1370
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$patchFacebook$1$onResult$1;->this$0:Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$patchFacebook$1;

    iget-object v0, v0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$patchFacebook$1;->this$0:Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;

    invoke-static {v0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->access$hideProgressDialog(Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;)V

    .line 1371
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$patchFacebook$1$onResult$1;->unsubscribe()V

    .line 1373
    :try_start_0
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$patchFacebook$1$onResult$1;->this$0:Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$patchFacebook$1;

    iget-object v0, v0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$patchFacebook$1;->this$0:Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1374
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$patchFacebook$1$onResult$1;->this$0:Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$patchFacebook$1;

    iget-object v0, v0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$patchFacebook$1;->this$0:Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const v1, 0x7f110318

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    .line 1377
    :catch_0
    invoke-static {}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed with exception"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 0

    .line 1360
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$patchFacebook$1$onResult$1;->this$0:Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$patchFacebook$1;

    iget-object p1, p1, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$patchFacebook$1;->this$0:Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->access$getAuthorization$p(Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;)Lru/rocketbank/core/user/Authorization;

    move-result-object p1

    invoke-virtual {p1}, Lru/rocketbank/core/user/Authorization;->refreshBackgroundProfile()V

    .line 1361
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$patchFacebook$1$onResult$1;->this$0:Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$patchFacebook$1;

    iget-object p1, p1, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$patchFacebook$1;->this$0:Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->access$hideProgressDialog(Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;)V

    .line 1362
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$patchFacebook$1$onResult$1;->unsubscribe()V

    return-void
.end method
