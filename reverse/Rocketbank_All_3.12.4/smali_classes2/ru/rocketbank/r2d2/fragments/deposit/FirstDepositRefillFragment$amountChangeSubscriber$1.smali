.class final Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment$amountChangeSubscriber$1;
.super Ljava/lang/Object;
.source "FirstDepositRefillFragment.kt"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;-><init>()V
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
        "Ljava/math/BigDecimal;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment$amountChangeSubscriber$1;->this$0:Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 53
    check-cast p1, Ljava/math/BigDecimal;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment$amountChangeSubscriber$1;->call(Ljava/math/BigDecimal;)V

    return-void
.end method

.method public final call(Ljava/math/BigDecimal;)V
    .locals 2

    .line 108
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment$amountChangeSubscriber$1;->this$0:Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;

    const-string v1, "bigDecimal"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->access$refreshDepositStatus(Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;Ljava/math/BigDecimal;)V

    return-void
.end method
