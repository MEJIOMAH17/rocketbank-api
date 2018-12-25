.class public final Lru/rocketbank/r2d2/activities/DownloadActivity$loadReference$$inlined$let$lambda$2;
.super Lrx/Subscriber;
.source "DownloadActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/activities/DownloadActivity;->loadReference()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/activities/DownloadActivity;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/activities/DownloadActivity;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/activities/DownloadActivity$loadReference$$inlined$let$lambda$2;->this$0:Lru/rocketbank/r2d2/activities/DownloadActivity;

    .line 112
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

    .line 118
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/DownloadActivity$loadReference$$inlined$let$lambda$2;->this$0:Lru/rocketbank/r2d2/activities/DownloadActivity;

    iget-object v1, p0, Lru/rocketbank/r2d2/activities/DownloadActivity$loadReference$$inlined$let$lambda$2;->this$0:Lru/rocketbank/r2d2/activities/DownloadActivity;

    const v2, 0x7f11018d

    invoke-virtual {v1, v2}, Lru/rocketbank/r2d2/activities/DownloadActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(R.string.error_occur)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lru/rocketbank/r2d2/activities/DownloadActivity;->access$setErrorText$p(Lru/rocketbank/r2d2/activities/DownloadActivity;Ljava/lang/String;)V

    .line 119
    invoke-static {p1}, Lru/rocketbank/core/manager/AnalyticsManager;->logException(Ljava/lang/Throwable;)V

    .line 120
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/DownloadActivity$loadReference$$inlined$let$lambda$2;->this$0:Lru/rocketbank/r2d2/activities/DownloadActivity;

    invoke-static {p1}, Lru/rocketbank/r2d2/activities/DownloadActivity;->access$getLoader$p(Lru/rocketbank/r2d2/activities/DownloadActivity;)Lru/rocketbank/core/widgets/RocketLoader;

    move-result-object p1

    invoke-virtual {p1}, Lru/rocketbank/core/widgets/RocketLoader;->setError()V

    return-void
.end method

.method public final bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 112
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/activities/DownloadActivity$loadReference$$inlined$let$lambda$2;->onNext(Ljava/lang/String;)V

    return-void
.end method

.method public final onNext(Ljava/lang/String;)V
    .locals 3

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/DownloadActivity$loadReference$$inlined$let$lambda$2;->this$0:Lru/rocketbank/r2d2/activities/DownloadActivity;

    invoke-static {v0}, Lru/rocketbank/r2d2/activities/DownloadActivity;->access$getData$p(Lru/rocketbank/r2d2/activities/DownloadActivity;)Lru/rocketbank/r2d2/data/binding/reference/ReferencePdfData;

    move-result-object v0

    invoke-virtual {v0}, Lru/rocketbank/r2d2/data/binding/reference/ReferencePdfData;->getStatusText()Landroid/databinding/ObservableField;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/r2d2/activities/DownloadActivity$loadReference$$inlined$let$lambda$2;->this$0:Lru/rocketbank/r2d2/activities/DownloadActivity;

    const v2, 0x7f1103aa

    invoke-virtual {v1, v2}, Lru/rocketbank/r2d2/activities/DownloadActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 125
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/DownloadActivity$loadReference$$inlined$let$lambda$2;->this$0:Lru/rocketbank/r2d2/activities/DownloadActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lru/rocketbank/r2d2/activities/DownloadActivity;->access$setCanShow$p(Lru/rocketbank/r2d2/activities/DownloadActivity;Z)V

    .line 126
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/DownloadActivity$loadReference$$inlined$let$lambda$2;->this$0:Lru/rocketbank/r2d2/activities/DownloadActivity;

    invoke-static {v0, p1}, Lru/rocketbank/r2d2/activities/DownloadActivity;->access$setDocumentPath$p(Lru/rocketbank/r2d2/activities/DownloadActivity;Ljava/lang/String;)V

    .line 127
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/DownloadActivity$loadReference$$inlined$let$lambda$2;->this$0:Lru/rocketbank/r2d2/activities/DownloadActivity;

    invoke-static {p1}, Lru/rocketbank/r2d2/activities/DownloadActivity;->access$getLoader$p(Lru/rocketbank/r2d2/activities/DownloadActivity;)Lru/rocketbank/core/widgets/RocketLoader;

    move-result-object p1

    invoke-virtual {p1}, Lru/rocketbank/core/widgets/RocketLoader;->setSuccess()V

    return-void
.end method
