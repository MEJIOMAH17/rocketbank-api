.class final Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$subscribeRecipientName$1;
.super Ljava/lang/Object;
.source "TransferBankFragment.kt"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->subscribeRecipientName()V
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
        "Lcom/jakewharton/rxbinding/widget/TextViewTextChangeEvent;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTransferBankFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TransferBankFragment.kt\nru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$subscribeRecipientName$1\n*L\n1#1,1301:1\n*E\n"
.end annotation


# instance fields
.field final synthetic $recipientName:Lru/rocketbank/core/widgets/RocketEditText;

.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;Lru/rocketbank/core/widgets/RocketEditText;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$subscribeRecipientName$1;->this$0:Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$subscribeRecipientName$1;->$recipientName:Lru/rocketbank/core/widgets/RocketEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Lcom/jakewharton/rxbinding/widget/TextViewTextChangeEvent;)V
    .locals 8

    .line 443
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$subscribeRecipientName$1;->this$0:Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;

    invoke-static {v0}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->access$getName$p(Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 446
    :cond_0
    invoke-virtual {p1}, Lcom/jakewharton/rxbinding/widget/TextViewTextChangeEvent;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 447
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$subscribeRecipientName$1;->$recipientName:Lru/rocketbank/core/widgets/RocketEditText;

    const-string v2, "recipientName"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lru/rocketbank/core/widgets/RocketEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 448
    iget-object v2, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$subscribeRecipientName$1;->this$0:Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;

    invoke-static {v2}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->access$getName$p(Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    .line 449
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    .line 450
    iget-object v4, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$subscribeRecipientName$1;->this$0:Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;

    invoke-static {v4}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->access$getName$p(Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v1, v4, v5}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    .line 451
    invoke-virtual {p1}, Lcom/jakewharton/rxbinding/widget/TextViewTextChangeEvent;->before()I

    move-result v6

    invoke-virtual {p1}, Lcom/jakewharton/rxbinding/widget/TextViewTextChangeEvent;->count()I

    move-result p1

    if-ge v6, p1, :cond_7

    if-lez v0, :cond_7

    const/4 p1, 0x3

    if-lt v3, p1, :cond_7

    if-le v2, v3, :cond_7

    if-nez v1, :cond_2

    .line 452
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    const-string v0, "(this as java.lang.String).toUpperCase()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$subscribeRecipientName$1;->this$0:Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;

    invoke-static {v0}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->access$getName$p(Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    if-nez v0, :cond_4

    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v6, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v0, :cond_5

    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v6, "(this as java.lang.String).toUpperCase()"

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static {p1, v0, v1, v6, v7}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 454
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$subscribeRecipientName$1;->$recipientName:Lru/rocketbank/core/widgets/RocketEditText;

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$subscribeRecipientName$1;->this$0:Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;

    invoke-static {v0}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->access$getName$p(Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lru/rocketbank/core/widgets/RocketEditText;->setText(Ljava/lang/CharSequence;)V

    if-ge v3, v2, :cond_6

    .line 456
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$subscribeRecipientName$1;->$recipientName:Lru/rocketbank/core/widgets/RocketEditText;

    invoke-virtual {p1, v3, v2}, Lru/rocketbank/core/widgets/RocketEditText;->setSelection(II)V

    :cond_6
    move v4, v5

    :cond_7
    if-eqz v4, :cond_8

    .line 459
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$subscribeRecipientName$1;->this$0:Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$subscribeRecipientName$1;->this$0:Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;

    invoke-static {v0}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->access$getIndividualViewModel$p(Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;)Lru/rocketbank/r2d2/fragments/transfers/IndividualObservable;

    move-result-object v0

    invoke-virtual {v0}, Lru/rocketbank/r2d2/fragments/transfers/IndividualObservable;->getPurpose()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    move-result-object v0

    const v1, 0x7f110497

    invoke-static {p1, v0, v1}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->access$setPurpose(Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;I)V

    :cond_8
    return-void
.end method

.method public final bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 73
    check-cast p1, Lcom/jakewharton/rxbinding/widget/TextViewTextChangeEvent;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$subscribeRecipientName$1;->call(Lcom/jakewharton/rxbinding/widget/TextViewTextChangeEvent;)V

    return-void
.end method
