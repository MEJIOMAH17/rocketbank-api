.class final Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity$changeAmountSubscriber$1;
.super Ljava/lang/Object;
.source "BaseAmountActivity.kt"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity;-><init>()V
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
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity$changeAmountSubscriber$1;->this$0:Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Double;)V
    .locals 3

    .line 175
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity$changeAmountSubscriber$1;->this$0:Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity;

    const-string v1, "doubleAmount"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity;->setAmount(D)V

    .line 176
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity$changeAmountSubscriber$1;->this$0:Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity;

    invoke-static {p1}, Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity;->access$checkAmount(Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity;)V

    return-void
.end method

.method public final bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 34
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity$changeAmountSubscriber$1;->call(Ljava/lang/Double;)V

    return-void
.end method
