.class public final Lru/rocketbank/r2d2/root/chat/ChatFragment$sendRating$1;
.super Lrx/Subscriber;
.source "ChatFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/root/chat/ChatFragment;->sendRating(Ljava/lang/String;I)V
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


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/root/chat/ChatFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/root/chat/ChatFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 568
    iput-object p1, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment$sendRating$1;->this$0:Lru/rocketbank/r2d2/root/chat/ChatFragment;

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

    .line 573
    iget-object p1, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment$sendRating$1;->this$0:Lru/rocketbank/r2d2/root/chat/ChatFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/root/chat/ChatFragment;->access$hideProgress(Lru/rocketbank/r2d2/root/chat/ChatFragment;)V

    .line 574
    iget-object p1, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment$sendRating$1;->this$0:Lru/rocketbank/r2d2/root/chat/ChatFragment;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/chat/ChatFragment;->getContext()Landroid/content/Context;

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

    .line 568
    check-cast p1, Lru/rocketbank/core/model/dto/ResponseData;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/root/chat/ChatFragment$sendRating$1;->onNext(Lru/rocketbank/core/model/dto/ResponseData;)V

    return-void
.end method

.method public final onNext(Lru/rocketbank/core/model/dto/ResponseData;)V
    .locals 1

    const-string v0, "responseData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 578
    iget-object p1, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment$sendRating$1;->this$0:Lru/rocketbank/r2d2/root/chat/ChatFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/root/chat/ChatFragment;->access$hideProgress(Lru/rocketbank/r2d2/root/chat/ChatFragment;)V

    .line 579
    iget-object p1, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment$sendRating$1;->this$0:Lru/rocketbank/r2d2/root/chat/ChatFragment;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/chat/ChatFragment;->getMessageManager()Lru/rocketbank/r2d2/root/chat/MessageManager;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/chat/MessageManager;->refresh()V

    return-void

    :cond_0
    return-void
.end method
