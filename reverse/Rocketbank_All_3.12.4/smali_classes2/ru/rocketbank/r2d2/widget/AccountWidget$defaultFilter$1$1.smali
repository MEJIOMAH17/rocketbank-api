.class final Lru/rocketbank/r2d2/widget/AccountWidget$defaultFilter$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "AccountWidget.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/widget/AccountWidget$defaultFilter$1;->invoke(Lru/rocketbank/core/model/UserModel;)Lkotlin/jvm/functions/Function1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lru/rocketbank/core/model/facade/Account;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/widget/AccountWidget$defaultFilter$1;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/widget/AccountWidget$defaultFilter$1;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/widget/AccountWidget$defaultFilter$1$1;->this$0:Lru/rocketbank/r2d2/widget/AccountWidget$defaultFilter$1;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 34
    check-cast p1, Lru/rocketbank/core/model/facade/Account;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/widget/AccountWidget$defaultFilter$1$1;->invoke(Lru/rocketbank/core/model/facade/Account;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lru/rocketbank/core/model/facade/Account;)Z
    .locals 2

    const-string v0, "account"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-virtual {p1}, Lru/rocketbank/core/model/facade/Account;->getCurrency()Lru/rocketbank/core/model/enums/Currency;

    move-result-object v0

    sget-object v1, Lru/rocketbank/core/model/enums/Currency;->ROUBLE:Lru/rocketbank/core/model/enums/Currency;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lru/rocketbank/r2d2/widget/AccountWidget$defaultFilter$1$1;->this$0:Lru/rocketbank/r2d2/widget/AccountWidget$defaultFilter$1;

    iget-object v0, v0, Lru/rocketbank/r2d2/widget/AccountWidget$defaultFilter$1;->this$0:Lru/rocketbank/r2d2/widget/AccountWidget;

    invoke-static {v0}, Lru/rocketbank/r2d2/widget/AccountWidget;->access$getCurrencies$p(Lru/rocketbank/r2d2/widget/AccountWidget;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1}, Lru/rocketbank/core/model/facade/Account;->getCurrency()Lru/rocketbank/core/model/enums/Currency;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
