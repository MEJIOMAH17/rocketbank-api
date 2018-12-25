.class final Lru/rocketbank/r2d2/activities/DownloadActivity$loadReference$$inlined$let$lambda$1;
.super Ljava/lang/Object;
.source "DownloadActivity.kt"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/activities/DownloadActivity;->loadReference()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/functions/Func1<",
        "TT;",
        "Lrx/Observable<",
        "+TR;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/activities/DownloadActivity;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/activities/DownloadActivity;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/activities/DownloadActivity$loadReference$$inlined$let$lambda$1;->this$0:Lru/rocketbank/r2d2/activities/DownloadActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 38
    check-cast p1, Lru/rocketbank/core/model/references/ReferenceResponse;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/activities/DownloadActivity$loadReference$$inlined$let$lambda$1;->call(Lru/rocketbank/core/model/references/ReferenceResponse;)Lrx/Observable;

    move-result-object p1

    return-object p1
.end method

.method public final call(Lru/rocketbank/core/model/references/ReferenceResponse;)Lrx/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lru/rocketbank/core/model/references/ReferenceResponse;",
            ")",
            "Lrx/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/DownloadActivity$loadReference$$inlined$let$lambda$1;->this$0:Lru/rocketbank/r2d2/activities/DownloadActivity;

    invoke-static {v0}, Lru/rocketbank/r2d2/activities/DownloadActivity;->access$getData$p(Lru/rocketbank/r2d2/activities/DownloadActivity;)Lru/rocketbank/r2d2/data/binding/reference/ReferencePdfData;

    move-result-object v0

    invoke-virtual {v0}, Lru/rocketbank/r2d2/data/binding/reference/ReferencePdfData;->getStatusText()Landroid/databinding/ObservableField;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/r2d2/activities/DownloadActivity$loadReference$$inlined$let$lambda$1;->this$0:Lru/rocketbank/r2d2/activities/DownloadActivity;

    const v2, 0x7f110284

    invoke-virtual {v1, v2}, Lru/rocketbank/r2d2/activities/DownloadActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 109
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/DownloadActivity$loadReference$$inlined$let$lambda$1;->this$0:Lru/rocketbank/r2d2/activities/DownloadActivity;

    invoke-virtual {p1}, Lru/rocketbank/core/model/references/ReferenceResponse;->getExtract()Lru/rocketbank/core/model/references/Extract;

    move-result-object p1

    invoke-virtual {p1}, Lru/rocketbank/core/model/references/Extract;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lru/rocketbank/r2d2/activities/DownloadActivity;->access$processDownloadPdf(Lru/rocketbank/r2d2/activities/DownloadActivity;Ljava/lang/String;)Lrx/Observable;

    move-result-object p1

    return-object p1
.end method
