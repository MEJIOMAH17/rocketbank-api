.class final Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$onViewCreated$3;
.super Ljava/lang/Object;
.source "TransferBankFragment.kt"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $oktmo:Lru/rocketbank/core/widgets/RocketEditText;

.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;Lru/rocketbank/core/widgets/RocketEditText;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$onViewCreated$3;->this$0:Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$onViewCreated$3;->$oktmo:Lru/rocketbank/core/widgets/RocketEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 6

    if-nez p2, :cond_0

    .line 235
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$onViewCreated$3;->$oktmo:Lru/rocketbank/core/widgets/RocketEditText;

    const-string p2, "oktmo"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lru/rocketbank/core/widgets/RocketEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    const-string v2, ""

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 p2, 0x8

    if-eq p1, p2, :cond_0

    .line 237
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$onViewCreated$3;->$oktmo:Lru/rocketbank/core/widgets/RocketEditText;

    new-instance p2, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$onViewCreated$3$1;

    invoke-direct {p2, p0}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$onViewCreated$3$1;-><init>(Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$onViewCreated$3;)V

    check-cast p2, Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Lru/rocketbank/core/widgets/RocketEditText;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
