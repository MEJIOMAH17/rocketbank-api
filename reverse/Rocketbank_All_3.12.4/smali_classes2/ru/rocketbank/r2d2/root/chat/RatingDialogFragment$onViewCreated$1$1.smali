.class public final Lru/rocketbank/r2d2/root/chat/RatingDialogFragment$onViewCreated$1$1;
.super Lrx/Subscriber;
.source "RatingDialogFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/root/chat/RatingDialogFragment$onViewCreated$1;->call(Ljava/lang/Void;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber<",
        "Lru/rocketbank/core/model/dto/ResponseData;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRatingDialogFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RatingDialogFragment.kt\nru/rocketbank/r2d2/root/chat/RatingDialogFragment$onViewCreated$1$1\n*L\n1#1,195:1\n*E\n"
.end annotation


# instance fields
.field final synthetic $comment:Ljava/lang/String;

.field final synthetic $ratingNumber:I

.field final synthetic this$0:Lru/rocketbank/r2d2/root/chat/RatingDialogFragment$onViewCreated$1;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/root/chat/RatingDialogFragment$onViewCreated$1;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 96
    iput-object p1, p0, Lru/rocketbank/r2d2/root/chat/RatingDialogFragment$onViewCreated$1$1;->this$0:Lru/rocketbank/r2d2/root/chat/RatingDialogFragment$onViewCreated$1;

    iput p2, p0, Lru/rocketbank/r2d2/root/chat/RatingDialogFragment$onViewCreated$1$1;->$ratingNumber:I

    iput-object p3, p0, Lru/rocketbank/r2d2/root/chat/RatingDialogFragment$onViewCreated$1$1;->$comment:Ljava/lang/String;

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

    .line 101
    iget-object p1, p0, Lru/rocketbank/r2d2/root/chat/RatingDialogFragment$onViewCreated$1$1;->this$0:Lru/rocketbank/r2d2/root/chat/RatingDialogFragment$onViewCreated$1;

    iget-object p1, p1, Lru/rocketbank/r2d2/root/chat/RatingDialogFragment$onViewCreated$1;->this$0:Lru/rocketbank/r2d2/root/chat/RatingDialogFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/root/chat/RatingDialogFragment;->access$hideProgress(Lru/rocketbank/r2d2/root/chat/RatingDialogFragment;)V

    .line 102
    iget-object p1, p0, Lru/rocketbank/r2d2/root/chat/RatingDialogFragment$onViewCreated$1$1;->this$0:Lru/rocketbank/r2d2/root/chat/RatingDialogFragment$onViewCreated$1;

    iget-object p1, p1, Lru/rocketbank/r2d2/root/chat/RatingDialogFragment$onViewCreated$1;->this$0:Lru/rocketbank/r2d2/root/chat/RatingDialogFragment;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/chat/RatingDialogFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f110321

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public final bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 96
    check-cast p1, Lru/rocketbank/core/model/dto/ResponseData;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/root/chat/RatingDialogFragment$onViewCreated$1$1;->onNext(Lru/rocketbank/core/model/dto/ResponseData;)V

    return-void
.end method

.method public final onNext(Lru/rocketbank/core/model/dto/ResponseData;)V
    .locals 2

    const-string v0, "responseData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    iget-object p1, p0, Lru/rocketbank/r2d2/root/chat/RatingDialogFragment$onViewCreated$1$1;->this$0:Lru/rocketbank/r2d2/root/chat/RatingDialogFragment$onViewCreated$1;

    iget-object p1, p1, Lru/rocketbank/r2d2/root/chat/RatingDialogFragment$onViewCreated$1;->this$0:Lru/rocketbank/r2d2/root/chat/RatingDialogFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/root/chat/RatingDialogFragment;->access$hideProgress(Lru/rocketbank/r2d2/root/chat/RatingDialogFragment;)V

    .line 107
    iget-object p1, p0, Lru/rocketbank/r2d2/root/chat/RatingDialogFragment$onViewCreated$1$1;->this$0:Lru/rocketbank/r2d2/root/chat/RatingDialogFragment$onViewCreated$1;

    iget-object p1, p1, Lru/rocketbank/r2d2/root/chat/RatingDialogFragment$onViewCreated$1;->this$0:Lru/rocketbank/r2d2/root/chat/RatingDialogFragment;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/chat/RatingDialogFragment;->dismiss()V

    .line 109
    iget-object p1, p0, Lru/rocketbank/r2d2/root/chat/RatingDialogFragment$onViewCreated$1$1;->this$0:Lru/rocketbank/r2d2/root/chat/RatingDialogFragment$onViewCreated$1;

    iget-object p1, p1, Lru/rocketbank/r2d2/root/chat/RatingDialogFragment$onViewCreated$1;->this$0:Lru/rocketbank/r2d2/root/chat/RatingDialogFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/root/chat/RatingDialogFragment;->access$getRefreshListener$p(Lru/rocketbank/r2d2/root/chat/RatingDialogFragment;)Lru/rocketbank/r2d2/root/chat/RatingDialogFragment$RefreshListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 110
    iget v0, p0, Lru/rocketbank/r2d2/root/chat/RatingDialogFragment$onViewCreated$1$1;->$ratingNumber:I

    iget-object v1, p0, Lru/rocketbank/r2d2/root/chat/RatingDialogFragment$onViewCreated$1$1;->$comment:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lru/rocketbank/r2d2/root/chat/RatingDialogFragment$RefreshListener;->refresh(ILjava/lang/String;)V

    return-void

    :cond_0
    return-void
.end method
