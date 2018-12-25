.class public final Lru/rocketbank/r2d2/root/chat/RatingDialogFragment$onViewCreated$3;
.super Lrx/Subscriber;
.source "RatingDialogFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/root/chat/RatingDialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber<",
        "Lru/rocketbank/core/network/model/AgentResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/root/chat/RatingDialogFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/root/chat/RatingDialogFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 119
    iput-object p1, p0, Lru/rocketbank/r2d2/root/chat/RatingDialogFragment$onViewCreated$3;->this$0:Lru/rocketbank/r2d2/root/chat/RatingDialogFragment;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted()V
    .locals 0

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 119
    check-cast p1, Lru/rocketbank/core/network/model/AgentResponse;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/root/chat/RatingDialogFragment$onViewCreated$3;->onNext(Lru/rocketbank/core/network/model/AgentResponse;)V

    return-void
.end method

.method public final onNext(Lru/rocketbank/core/network/model/AgentResponse;)V
    .locals 3

    const-string v0, "agentResponse"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/RatingDialogFragment$onViewCreated$3;->this$0:Lru/rocketbank/r2d2/root/chat/RatingDialogFragment;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/chat/RatingDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700ce

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 131
    invoke-virtual {p1}, Lru/rocketbank/core/network/model/AgentResponse;->getAgent()Lru/rocketbank/core/model/Agent;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {p1}, Lru/rocketbank/core/model/Agent;->getAvatarUrl()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 133
    iget-object v1, p0, Lru/rocketbank/r2d2/root/chat/RatingDialogFragment$onViewCreated$3;->this$0:Lru/rocketbank/r2d2/root/chat/RatingDialogFragment;

    check-cast v1, Landroid/support/v4/app/Fragment;

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/Fragment;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    .line 134
    invoke-virtual {v1, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object p1

    .line 135
    invoke-virtual {p1, v0, v0}, Lcom/bumptech/glide/DrawableTypeRequest;->override(II)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object p1

    .line 136
    invoke-virtual {p1}, Lcom/bumptech/glide/DrawableRequestBuilder;->centerCrop()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object p1

    .line 137
    invoke-virtual {p1}, Lcom/bumptech/glide/DrawableRequestBuilder;->crossFade()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/bumptech/glide/load/Transformation;

    const/4 v1, 0x0

    .line 138
    iget-object v2, p0, Lru/rocketbank/r2d2/root/chat/RatingDialogFragment$onViewCreated$3;->this$0:Lru/rocketbank/r2d2/root/chat/RatingDialogFragment;

    invoke-static {v2}, Lru/rocketbank/r2d2/root/chat/RatingDialogFragment;->access$getCropCircleTransformation$p(Lru/rocketbank/r2d2/root/chat/RatingDialogFragment;)Ljp/wasabeef/glide/transformations/CropCircleTransformation;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/load/Transformation;

    aput-object v2, v0, v1

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/DrawableRequestBuilder;->bitmapTransform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object p1

    .line 139
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/RatingDialogFragment$onViewCreated$3;->this$0:Lru/rocketbank/r2d2/root/chat/RatingDialogFragment;

    invoke-static {v0}, Lru/rocketbank/r2d2/root/chat/RatingDialogFragment;->access$getImageView$p(Lru/rocketbank/r2d2/root/chat/RatingDialogFragment;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    :cond_1
    return-void
.end method
