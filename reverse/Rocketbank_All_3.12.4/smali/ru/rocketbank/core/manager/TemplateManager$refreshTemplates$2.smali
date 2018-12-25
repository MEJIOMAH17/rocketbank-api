.class public final Lru/rocketbank/core/manager/TemplateManager$refreshTemplates$2;
.super Lrx/Subscriber;
.source "TemplateManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/core/manager/TemplateManager;->refreshTemplates()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber<",
        "Lru/rocketbank/core/model/TransferTemplates;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/core/manager/TemplateManager;


# direct methods
.method constructor <init>(Lru/rocketbank/core/manager/TemplateManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 73
    iput-object p1, p0, Lru/rocketbank/core/manager/TemplateManager$refreshTemplates$2;->this$0:Lru/rocketbank/core/manager/TemplateManager;

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

    .line 79
    invoke-static {}, Lru/rocketbank/core/manager/TemplateManager;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed to refresh templates"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 80
    iget-object v0, p0, Lru/rocketbank/core/manager/TemplateManager$refreshTemplates$2;->this$0:Lru/rocketbank/core/manager/TemplateManager;

    invoke-static {v0}, Lru/rocketbank/core/manager/TemplateManager;->access$getTransferTemplateSubject$p(Lru/rocketbank/core/manager/TemplateManager;)Lrx/subjects/Subject;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrx/subjects/Subject;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 1

    .line 73
    check-cast p1, Lru/rocketbank/core/model/TransferTemplates;

    const-string v0, "transferTemplates"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1084
    iget-object v0, p0, Lru/rocketbank/core/manager/TemplateManager$refreshTemplates$2;->this$0:Lru/rocketbank/core/manager/TemplateManager;

    invoke-static {v0, p1}, Lru/rocketbank/core/manager/TemplateManager;->access$setTemplates(Lru/rocketbank/core/manager/TemplateManager;Lru/rocketbank/core/model/TransferTemplates;)V

    return-void
.end method
