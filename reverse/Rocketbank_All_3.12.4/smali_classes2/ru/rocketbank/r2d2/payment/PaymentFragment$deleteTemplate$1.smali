.class public final Lru/rocketbank/r2d2/payment/PaymentFragment$deleteTemplate$1;
.super Lrx/Subscriber;
.source "PaymentFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/payment/PaymentFragment;->deleteTemplate(Lru/rocketbank/core/model/transfers/Template;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber<",
        "Lru/rocketbank/core/model/dto/GenericRequestResponseData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $template:Lru/rocketbank/core/model/transfers/Template;

.field final synthetic this$0:Lru/rocketbank/r2d2/payment/PaymentFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/payment/PaymentFragment;Lru/rocketbank/core/model/transfers/Template;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lru/rocketbank/core/model/transfers/Template;",
            ")V"
        }
    .end annotation

    .line 328
    iput-object p1, p0, Lru/rocketbank/r2d2/payment/PaymentFragment$deleteTemplate$1;->this$0:Lru/rocketbank/r2d2/payment/PaymentFragment;

    iput-object p2, p0, Lru/rocketbank/r2d2/payment/PaymentFragment$deleteTemplate$1;->$template:Lru/rocketbank/core/model/transfers/Template;

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

    .line 334
    invoke-static {}, Lru/rocketbank/r2d2/payment/PaymentFragment;->access$getTAG$cp()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to send delete template "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lru/rocketbank/r2d2/payment/PaymentFragment$deleteTemplate$1;->$template:Lru/rocketbank/core/model/transfers/Template;

    iget v1, v1, Lru/rocketbank/core/model/transfers/Template;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    iget-object p1, p0, Lru/rocketbank/r2d2/payment/PaymentFragment$deleteTemplate$1;->this$0:Lru/rocketbank/r2d2/payment/PaymentFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/payment/PaymentFragment;->access$hideSpinner(Lru/rocketbank/r2d2/payment/PaymentFragment;)V

    return-void
.end method

.method public final bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 328
    check-cast p1, Lru/rocketbank/core/model/dto/GenericRequestResponseData;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/payment/PaymentFragment$deleteTemplate$1;->onNext(Lru/rocketbank/core/model/dto/GenericRequestResponseData;)V

    return-void
.end method

.method public final onNext(Lru/rocketbank/core/model/dto/GenericRequestResponseData;)V
    .locals 1

    const-string v0, "genericRequestResponseData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 340
    iget-object p1, p0, Lru/rocketbank/r2d2/payment/PaymentFragment$deleteTemplate$1;->this$0:Lru/rocketbank/r2d2/payment/PaymentFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/payment/PaymentFragment;->access$getTemplateAdapter$p(Lru/rocketbank/r2d2/payment/PaymentFragment;)Lru/rocketbank/r2d2/payment/PaymentFragment$TemplateAdapter;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentFragment$deleteTemplate$1;->$template:Lru/rocketbank/core/model/transfers/Template;

    invoke-virtual {p1, v0}, Lru/rocketbank/r2d2/payment/PaymentFragment$TemplateAdapter;->remove(Lru/rocketbank/core/model/transfers/Template;)V

    .line 341
    iget-object p1, p0, Lru/rocketbank/r2d2/payment/PaymentFragment$deleteTemplate$1;->this$0:Lru/rocketbank/r2d2/payment/PaymentFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/payment/PaymentFragment;->access$hideSpinner(Lru/rocketbank/r2d2/payment/PaymentFragment;)V

    return-void
.end method
