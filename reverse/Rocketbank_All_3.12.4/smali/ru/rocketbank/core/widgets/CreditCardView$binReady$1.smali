.class public final Lru/rocketbank/core/widgets/CreditCardView$binReady$1;
.super Lrx/Subscriber;
.source "CreditCardView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/core/widgets/CreditCardView;->binReady(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber<",
        "Lru/rocketbank/core/model/dto/BinResponseData;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCreditCardView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CreditCardView.kt\nru/rocketbank/core/widgets/CreditCardView$binReady$1\n*L\n1#1,511:1\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/core/widgets/CreditCardView;


# direct methods
.method constructor <init>(Lru/rocketbank/core/widgets/CreditCardView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 313
    iput-object p1, p0, Lru/rocketbank/core/widgets/CreditCardView$binReady$1;->this$0:Lru/rocketbank/core/widgets/CreditCardView;

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

    .line 319
    sget-object p1, Lru/rocketbank/core/widgets/CreditCardView;->Companion:Lru/rocketbank/core/widgets/CreditCardView$Companion;

    .line 1504
    invoke-static {}, Lru/rocketbank/core/widgets/CreditCardView;->access$getTAG$cp()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Bin reqest has failed"

    .line 319
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 6

    .line 313
    check-cast p1, Lru/rocketbank/core/model/dto/BinResponseData;

    const-string v0, "responseData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2323
    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/BinResponseData;->getCardImageUrl()Ljava/lang/String;

    move-result-object v0

    .line 2324
    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/BinResponseData;->getColor()Ljava/lang/String;

    move-result-object v1

    .line 2325
    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/BinResponseData;->getLogoImageUrl()Ljava/lang/String;

    move-result-object v2

    .line 2326
    iget-object v3, p1, Lru/rocketbank/core/model/dto/BinResponseData;->iconUrl:Ljava/lang/String;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 2328
    iget-object v5, p0, Lru/rocketbank/core/widgets/CreditCardView$binReady$1;->this$0:Lru/rocketbank/core/widgets/CreditCardView;

    invoke-static {v5}, Lru/rocketbank/core/widgets/CreditCardView;->access$getIgnorePanImage$p(Lru/rocketbank/core/widgets/CreditCardView;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2329
    iget-object v0, p0, Lru/rocketbank/core/widgets/CreditCardView$binReady$1;->this$0:Lru/rocketbank/core/widgets/CreditCardView;

    const/4 v1, 0x0

    invoke-static {v0, v1, v3}, Lru/rocketbank/core/widgets/CreditCardView;->access$setBackground(Lru/rocketbank/core/widgets/CreditCardView;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2330
    :cond_0
    iget-object v3, p0, Lru/rocketbank/core/widgets/CreditCardView$binReady$1;->this$0:Lru/rocketbank/core/widgets/CreditCardView;

    invoke-static {v3}, Lru/rocketbank/core/widgets/CreditCardView;->access$getIgnorePanImage$p(Lru/rocketbank/core/widgets/CreditCardView;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 2331
    iget-object v3, p0, Lru/rocketbank/core/widgets/CreditCardView$binReady$1;->this$0:Lru/rocketbank/core/widgets/CreditCardView;

    invoke-static {v3, v1, v0}, Lru/rocketbank/core/widgets/CreditCardView;->access$setBackground(Lru/rocketbank/core/widgets/CreditCardView;Ljava/lang/String;Ljava/lang/String;)V

    .line 2333
    iget-object v0, p0, Lru/rocketbank/core/widgets/CreditCardView$binReady$1;->this$0:Lru/rocketbank/core/widgets/CreditCardView;

    invoke-static {v0, v2}, Lru/rocketbank/core/widgets/CreditCardView;->access$setLogoUrl$p(Lru/rocketbank/core/widgets/CreditCardView;Ljava/lang/String;)V

    if-eqz v2, :cond_2

    .line 2335
    move-object v0, v2

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v4

    :goto_0
    if-nez v0, :cond_2

    .line 2336
    iget-object v0, p0, Lru/rocketbank/core/widgets/CreditCardView$binReady$1;->this$0:Lru/rocketbank/core/widgets/CreditCardView;

    invoke-virtual {v0}, Lru/rocketbank/core/widgets/CreditCardView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    .line 2337
    invoke-virtual {v0, v2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    .line 2338
    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->ALL:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableTypeRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    .line 2339
    iget-object v1, p0, Lru/rocketbank/core/widgets/CreditCardView$binReady$1;->this$0:Lru/rocketbank/core/widgets/CreditCardView;

    invoke-static {v1}, Lru/rocketbank/core/widgets/CreditCardView;->access$getLogo$p(Lru/rocketbank/core/widgets/CreditCardView;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 2343
    :cond_2
    :goto_1
    iget-object v0, p0, Lru/rocketbank/core/widgets/CreditCardView$binReady$1;->this$0:Lru/rocketbank/core/widgets/CreditCardView;

    invoke-static {v0}, Lru/rocketbank/core/widgets/CreditCardView;->access$isRefillMode$p(Lru/rocketbank/core/widgets/CreditCardView;)Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_4

    .line 2344
    iget-object v0, p0, Lru/rocketbank/core/widgets/CreditCardView$binReady$1;->this$0:Lru/rocketbank/core/widgets/CreditCardView;

    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/BinResponseData;->isRefillWorks()Z

    move-result v2

    invoke-static {v0, v2}, Lru/rocketbank/core/widgets/CreditCardView;->access$setCardWorks$p(Lru/rocketbank/core/widgets/CreditCardView;Z)V

    .line 2345
    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/BinResponseData;->isRefillWorks()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2346
    iget-object v0, p0, Lru/rocketbank/core/widgets/CreditCardView$binReady$1;->this$0:Lru/rocketbank/core/widgets/CreditCardView;

    invoke-static {v0}, Lru/rocketbank/core/widgets/CreditCardView;->access$getErrorMessage$p(Lru/rocketbank/core/widgets/CreditCardView;)Lru/rocketbank/core/widgets/RocketTextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Lru/rocketbank/core/widgets/RocketTextView;->setVisibility(I)V

    .line 2347
    iget-object v0, p0, Lru/rocketbank/core/widgets/CreditCardView$binReady$1;->this$0:Lru/rocketbank/core/widgets/CreditCardView;

    invoke-static {v0}, Lru/rocketbank/core/widgets/CreditCardView;->access$getErrorMessage$p(Lru/rocketbank/core/widgets/CreditCardView;)Lru/rocketbank/core/widgets/RocketTextView;

    move-result-object v0

    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/BinResponseData;->getRefillAdvice()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Lru/rocketbank/core/widgets/RocketTextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 2349
    :cond_3
    iget-object p1, p0, Lru/rocketbank/core/widgets/CreditCardView$binReady$1;->this$0:Lru/rocketbank/core/widgets/CreditCardView;

    invoke-static {p1}, Lru/rocketbank/core/widgets/CreditCardView;->access$getErrorMessage$p(Lru/rocketbank/core/widgets/CreditCardView;)Lru/rocketbank/core/widgets/RocketTextView;

    move-result-object p1

    invoke-virtual {p1, v1}, Lru/rocketbank/core/widgets/RocketTextView;->setVisibility(I)V

    return-void

    .line 2351
    :cond_4
    iget-object v0, p0, Lru/rocketbank/core/widgets/CreditCardView$binReady$1;->this$0:Lru/rocketbank/core/widgets/CreditCardView;

    invoke-static {v0}, Lru/rocketbank/core/widgets/CreditCardView;->access$isTransferMode$p(Lru/rocketbank/core/widgets/CreditCardView;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2352
    iget-object v0, p0, Lru/rocketbank/core/widgets/CreditCardView$binReady$1;->this$0:Lru/rocketbank/core/widgets/CreditCardView;

    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/BinResponseData;->isTransferWorks()Z

    move-result v2

    invoke-static {v0, v2}, Lru/rocketbank/core/widgets/CreditCardView;->access$setCardWorks$p(Lru/rocketbank/core/widgets/CreditCardView;Z)V

    .line 2353
    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/BinResponseData;->isRefillWorks()Z

    move-result v0

    if-nez v0, :cond_5

    .line 2354
    iget-object v0, p0, Lru/rocketbank/core/widgets/CreditCardView$binReady$1;->this$0:Lru/rocketbank/core/widgets/CreditCardView;

    invoke-static {v0}, Lru/rocketbank/core/widgets/CreditCardView;->access$getErrorMessage$p(Lru/rocketbank/core/widgets/CreditCardView;)Lru/rocketbank/core/widgets/RocketTextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Lru/rocketbank/core/widgets/RocketTextView;->setVisibility(I)V

    .line 2355
    iget-object v0, p0, Lru/rocketbank/core/widgets/CreditCardView$binReady$1;->this$0:Lru/rocketbank/core/widgets/CreditCardView;

    invoke-static {v0}, Lru/rocketbank/core/widgets/CreditCardView;->access$getErrorMessage$p(Lru/rocketbank/core/widgets/CreditCardView;)Lru/rocketbank/core/widgets/RocketTextView;

    move-result-object v0

    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/BinResponseData;->getTransferAdvice()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Lru/rocketbank/core/widgets/RocketTextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 2357
    :cond_5
    iget-object p1, p0, Lru/rocketbank/core/widgets/CreditCardView$binReady$1;->this$0:Lru/rocketbank/core/widgets/CreditCardView;

    invoke-static {p1}, Lru/rocketbank/core/widgets/CreditCardView;->access$getErrorMessage$p(Lru/rocketbank/core/widgets/CreditCardView;)Lru/rocketbank/core/widgets/RocketTextView;

    move-result-object p1

    invoke-virtual {p1, v1}, Lru/rocketbank/core/widgets/RocketTextView;->setVisibility(I)V

    :cond_6
    return-void
.end method
