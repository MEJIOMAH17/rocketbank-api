.class final Lru/rocketbank/r2d2/root/chat/RatingDialogFragment$onViewCreated$1;
.super Ljava/lang/Object;
.source "RatingDialogFragment.kt"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/root/chat/RatingDialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/functions/Action1<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/root/chat/RatingDialogFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/root/chat/RatingDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/root/chat/RatingDialogFragment$onViewCreated$1;->this$0:Lru/rocketbank/r2d2/root/chat/RatingDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 37
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/root/chat/RatingDialogFragment$onViewCreated$1;->call(Ljava/lang/Void;)V

    return-void
.end method

.method public final call(Ljava/lang/Void;)V
    .locals 4

    .line 88
    iget-object p1, p0, Lru/rocketbank/r2d2/root/chat/RatingDialogFragment$onViewCreated$1;->this$0:Lru/rocketbank/r2d2/root/chat/RatingDialogFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/root/chat/RatingDialogFragment;->access$getCommentView$p(Lru/rocketbank/r2d2/root/chat/RatingDialogFragment;)Lru/rocketbank/core/widgets/RocketEditText;

    move-result-object p1

    invoke-virtual {p1}, Lru/rocketbank/core/widgets/RocketEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 89
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/RatingDialogFragment$onViewCreated$1;->this$0:Lru/rocketbank/r2d2/root/chat/RatingDialogFragment;

    invoke-static {v0}, Lru/rocketbank/r2d2/root/chat/RatingDialogFragment;->access$getRatingBar$p(Lru/rocketbank/r2d2/root/chat/RatingDialogFragment;)Landroid/widget/RatingBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RatingBar;->getNumStars()I

    move-result v0

    if-lez v0, :cond_1

    .line 91
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/RatingDialogFragment$onViewCreated$1;->this$0:Lru/rocketbank/r2d2/root/chat/RatingDialogFragment;

    invoke-static {v0}, Lru/rocketbank/r2d2/root/chat/RatingDialogFragment;->access$showProgressExecution(Lru/rocketbank/r2d2/root/chat/RatingDialogFragment;)V

    .line 93
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/RatingDialogFragment$onViewCreated$1;->this$0:Lru/rocketbank/r2d2/root/chat/RatingDialogFragment;

    invoke-static {v0}, Lru/rocketbank/r2d2/root/chat/RatingDialogFragment;->access$getRatingBar$p(Lru/rocketbank/r2d2/root/chat/RatingDialogFragment;)Landroid/widget/RatingBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RatingBar;->getNumStars()I

    move-result v0

    .line 96
    iget-object v1, p0, Lru/rocketbank/r2d2/root/chat/RatingDialogFragment$onViewCreated$1;->this$0:Lru/rocketbank/r2d2/root/chat/RatingDialogFragment;

    .line 94
    iget-object v2, p0, Lru/rocketbank/r2d2/root/chat/RatingDialogFragment$onViewCreated$1;->this$0:Lru/rocketbank/r2d2/root/chat/RatingDialogFragment;

    invoke-virtual {v2}, Lru/rocketbank/r2d2/root/chat/RatingDialogFragment;->getAgentApi()Lru/rocketbank/core/network/api/AgentsApi;

    move-result-object v2

    iget-object v3, p0, Lru/rocketbank/r2d2/root/chat/RatingDialogFragment$onViewCreated$1;->this$0:Lru/rocketbank/r2d2/root/chat/RatingDialogFragment;

    invoke-static {v3}, Lru/rocketbank/r2d2/root/chat/RatingDialogFragment;->access$getRating$p(Lru/rocketbank/r2d2/root/chat/RatingDialogFragment;)Lru/rocketbank/core/network/model/Rating;

    move-result-object v3

    if-nez v3, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v3}, Lru/rocketbank/core/network/model/Rating;->getPermalink()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0, p1}, Lru/rocketbank/core/network/api/AgentsApi;->rate(Ljava/lang/String;ILjava/lang/String;)Lrx/Observable;

    move-result-object v2

    .line 95
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v2

    .line 96
    new-instance v3, Lru/rocketbank/r2d2/root/chat/RatingDialogFragment$onViewCreated$1$1;

    invoke-direct {v3, p0, v0, p1}, Lru/rocketbank/r2d2/root/chat/RatingDialogFragment$onViewCreated$1$1;-><init>(Lru/rocketbank/r2d2/root/chat/RatingDialogFragment$onViewCreated$1;ILjava/lang/String;)V

    check-cast v3, Lrx/Subscriber;

    invoke-virtual {v2, v3}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object p1

    invoke-static {v1, p1}, Lru/rocketbank/r2d2/root/chat/RatingDialogFragment;->access$setRatingSubscription$p(Lru/rocketbank/r2d2/root/chat/RatingDialogFragment;Lrx/Subscription;)V

    :cond_1
    return-void
.end method
