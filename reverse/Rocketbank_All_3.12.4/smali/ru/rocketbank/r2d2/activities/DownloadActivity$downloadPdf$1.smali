.class public final Lru/rocketbank/r2d2/activities/DownloadActivity$downloadPdf$1;
.super Lrx/Subscriber;
.source "DownloadActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/activities/DownloadActivity;->downloadPdf(Ljava/lang/String;)V
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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 178
    iput-object p1, p0, Lru/rocketbank/r2d2/activities/DownloadActivity$downloadPdf$1;->this$0:Lru/rocketbank/r2d2/activities/DownloadActivity;

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

    .line 180
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/DownloadActivity$downloadPdf$1;->this$0:Lru/rocketbank/r2d2/activities/DownloadActivity;

    iget-object v0, p0, Lru/rocketbank/r2d2/activities/DownloadActivity$downloadPdf$1;->this$0:Lru/rocketbank/r2d2/activities/DownloadActivity;

    const v1, 0x7f11018d

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/activities/DownloadActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(R.string.error_occur)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lru/rocketbank/r2d2/activities/DownloadActivity;->access$setErrorText$p(Lru/rocketbank/r2d2/activities/DownloadActivity;Ljava/lang/String;)V

    .line 181
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/DownloadActivity$downloadPdf$1;->this$0:Lru/rocketbank/r2d2/activities/DownloadActivity;

    invoke-static {p1}, Lru/rocketbank/r2d2/activities/DownloadActivity;->access$getLoader$p(Lru/rocketbank/r2d2/activities/DownloadActivity;)Lru/rocketbank/core/widgets/RocketLoader;

    move-result-object p1

    invoke-virtual {p1}, Lru/rocketbank/core/widgets/RocketLoader;->setError()V

    return-void
.end method

.method public final bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 178
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/activities/DownloadActivity$downloadPdf$1;->onNext(Ljava/lang/String;)V

    return-void
.end method

.method public final onNext(Ljava/lang/String;)V
    .locals 3

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/DownloadActivity$downloadPdf$1;->this$0:Lru/rocketbank/r2d2/activities/DownloadActivity;

    invoke-static {v0}, Lru/rocketbank/r2d2/activities/DownloadActivity;->access$getData$p(Lru/rocketbank/r2d2/activities/DownloadActivity;)Lru/rocketbank/r2d2/data/binding/reference/ReferencePdfData;

    move-result-object v0

    invoke-virtual {v0}, Lru/rocketbank/r2d2/data/binding/reference/ReferencePdfData;->getStatusText()Landroid/databinding/ObservableField;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/r2d2/activities/DownloadActivity$downloadPdf$1;->this$0:Lru/rocketbank/r2d2/activities/DownloadActivity;

    const v2, 0x7f1103aa

    invoke-virtual {v1, v2}, Lru/rocketbank/r2d2/activities/DownloadActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 186
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/DownloadActivity$downloadPdf$1;->this$0:Lru/rocketbank/r2d2/activities/DownloadActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lru/rocketbank/r2d2/activities/DownloadActivity;->access$setCanShow$p(Lru/rocketbank/r2d2/activities/DownloadActivity;Z)V

    .line 187
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/DownloadActivity$downloadPdf$1;->this$0:Lru/rocketbank/r2d2/activities/DownloadActivity;

    invoke-static {v0, p1}, Lru/rocketbank/r2d2/activities/DownloadActivity;->access$setDocumentPath$p(Lru/rocketbank/r2d2/activities/DownloadActivity;Ljava/lang/String;)V

    .line 188
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/DownloadActivity$downloadPdf$1;->this$0:Lru/rocketbank/r2d2/activities/DownloadActivity;

    invoke-static {p1}, Lru/rocketbank/r2d2/activities/DownloadActivity;->access$getLoader$p(Lru/rocketbank/r2d2/activities/DownloadActivity;)Lru/rocketbank/core/widgets/RocketLoader;

    move-result-object p1

    invoke-virtual {p1}, Lru/rocketbank/core/widgets/RocketLoader;->setSuccess()V

    return-void
.end method
