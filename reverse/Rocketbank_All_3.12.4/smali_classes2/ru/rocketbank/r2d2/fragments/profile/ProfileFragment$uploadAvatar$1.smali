.class public final Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$uploadAvatar$1;
.super Lrx/Subscriber;
.source "ProfileFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->uploadAvatar(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber<",
        "Lru/rocketbank/core/network/model/UploadImageResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1080
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$uploadAvatar$1;->this$0:Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;

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

    .line 1086
    invoke-static {}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed to upload image"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1088
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$uploadAvatar$1;->this$0:Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;

    invoke-static {v0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->access$hideProgressDialog(Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;)V

    .line 1089
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$uploadAvatar$1;->this$0:Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const v1, 0x7f11031c

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1090
    invoke-static {p1}, Lru/rocketbank/core/manager/AnalyticsManager;->logException(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 1080
    check-cast p1, Lru/rocketbank/core/network/model/UploadImageResponse;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$uploadAvatar$1;->onNext(Lru/rocketbank/core/network/model/UploadImageResponse;)V

    return-void
.end method

.method public final onNext(Lru/rocketbank/core/network/model/UploadImageResponse;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 1095
    invoke-virtual {p1}, Lru/rocketbank/core/network/model/UploadImageResponse;->getImage()Lru/rocketbank/core/model/ImageModel;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1097
    new-instance v0, Lru/rocketbank/core/network/model/PatchProfileBody;

    invoke-direct {v0}, Lru/rocketbank/core/network/model/PatchProfileBody;-><init>()V

    .line 1098
    new-instance v1, Lru/rocketbank/core/network/model/PatchProfileBody$User;

    invoke-direct {v1}, Lru/rocketbank/core/network/model/PatchProfileBody$User;-><init>()V

    invoke-virtual {v0, v1}, Lru/rocketbank/core/network/model/PatchProfileBody;->setUser(Lru/rocketbank/core/network/model/PatchProfileBody$User;)V

    .line 1099
    invoke-virtual {v0}, Lru/rocketbank/core/network/model/PatchProfileBody;->getUser()Lru/rocketbank/core/network/model/PatchProfileBody$User;

    move-result-object v1

    invoke-virtual {p1}, Lru/rocketbank/core/model/ImageModel;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lru/rocketbank/core/network/model/PatchProfileBody$User;->setUserpicId(Ljava/lang/String;)V

    .line 1101
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$uploadAvatar$1;->this$0:Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->access$getUserApi$p(Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;)Lru/rocketbank/core/network/api/UserApi;

    move-result-object p1

    invoke-interface {p1, v0}, Lru/rocketbank/core/network/api/UserApi;->patchProfile(Lru/rocketbank/core/network/model/PatchProfileBody;)Lrx/Observable;

    move-result-object p1

    .line 1102
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object p1

    .line 1103
    new-instance v0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$uploadAvatar$1$onNext$1;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$uploadAvatar$1$onNext$1;-><init>(Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$uploadAvatar$1;)V

    check-cast v0, Lrx/Subscriber;

    invoke-virtual {p1, v0}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    return-void

    .line 1127
    :cond_0
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$uploadAvatar$1;->this$0:Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->access$hideProgressDialog(Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;)V

    return-void

    .line 1130
    :cond_1
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$uploadAvatar$1;->this$0:Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->access$hideProgressDialog(Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;)V

    return-void
.end method
