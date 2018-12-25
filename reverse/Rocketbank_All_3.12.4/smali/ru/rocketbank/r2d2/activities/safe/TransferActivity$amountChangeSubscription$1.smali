.class final Lru/rocketbank/r2d2/activities/safe/TransferActivity$amountChangeSubscription$1;
.super Ljava/lang/Object;
.source "TransferActivity.kt"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/activities/safe/TransferActivity;-><init>()V
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
.field final synthetic this$0:Lru/rocketbank/r2d2/activities/safe/TransferActivity;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/activities/safe/TransferActivity;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity$amountChangeSubscription$1;->this$0:Lru/rocketbank/r2d2/activities/safe/TransferActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 61
    check-cast p1, Ljava/math/BigDecimal;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/activities/safe/TransferActivity$amountChangeSubscription$1;->call(Ljava/math/BigDecimal;)V

    return-void
.end method

.method public final call(Ljava/math/BigDecimal;)V
    .locals 2

    .line 391
    sget-object v0, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    .line 393
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity$amountChangeSubscription$1;->this$0:Lru/rocketbank/r2d2/activities/safe/TransferActivity;

    invoke-static {v0, p1}, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->access$setCurrentAmount$p(Lru/rocketbank/r2d2/activities/safe/TransferActivity;Ljava/math/BigDecimal;)V

    .line 395
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity$amountChangeSubscription$1;->this$0:Lru/rocketbank/r2d2/activities/safe/TransferActivity;

    const-string v1, "bigDecimal"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->access$validateAmount(Lru/rocketbank/r2d2/activities/safe/TransferActivity;Ljava/math/BigDecimal;)V

    return-void
.end method
