.class final Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable$6;
.super Lkotlin/jvm/internal/Lambda;
.source "TransferBankFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;-><init>(Lru/rocketbank/r2d2/fragments/transfers/CodeNameOption;Lru/rocketbank/r2d2/fragments/transfers/CodeNameOption;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/String;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTransferBankFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TransferBankFragment.kt\nru/rocketbank/r2d2/fragments/transfers/BudgetObservable$6\n*L\n1#1,1301:1\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable$6;->this$0:Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 975
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable$6;->invoke(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Ljava/lang/String;)Z
    .locals 4

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 983
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    const-string v0, "0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v3, 0x14

    if-eq v0, v3, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v3, 0x19

    if-ne v0, v3, :cond_2

    :cond_1
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable$6;->this$0:Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;

    iget-object v3, p0, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable$6;->this$0:Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;

    invoke-virtual {v3}, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;->getInn_from()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    move-result-object v3

    invoke-virtual {v3}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, p1, v3}, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;->checkUinAndInn(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v2

    :cond_2
    return v1
.end method
