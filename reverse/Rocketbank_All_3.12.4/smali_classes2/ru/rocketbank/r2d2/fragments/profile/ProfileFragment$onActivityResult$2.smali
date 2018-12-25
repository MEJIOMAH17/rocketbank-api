.class public final Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$onActivityResult$2;
.super Lrx/Subscriber;
.source "ProfileFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber<",
        "Landroid/graphics/Bitmap;",
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

    .line 933
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$onActivityResult$2;->this$0:Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;

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

    .line 939
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$onActivityResult$2;->this$0:Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;

    invoke-static {v0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->access$hideProgressDialog(Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;)V

    .line 940
    invoke-static {}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Can not open image"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 941
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$onActivityResult$2;->this$0:Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const v1, 0x7f110318

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 942
    invoke-static {p1}, Lru/rocketbank/core/manager/AnalyticsManager;->logException(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNext(Landroid/graphics/Bitmap;)V
    .locals 1

    const-string v0, "bitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 946
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$onActivityResult$2;->this$0:Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;

    invoke-static {v0, p1}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->access$uploadCover(Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public final bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 933
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$onActivityResult$2;->onNext(Landroid/graphics/Bitmap;)V

    return-void
.end method
