.class Lru/rocketbank/r2d2/payment/RocketPaymentEditText$1;
.super Ljava/lang/Object;
.source "RocketPaymentEditText.java"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/payment/RocketPaymentEditText;->findWidgets()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Action1<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/payment/RocketPaymentEditText;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/payment/RocketPaymentEditText;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lru/rocketbank/r2d2/payment/RocketPaymentEditText$1;->this$0:Lru/rocketbank/r2d2/payment/RocketPaymentEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 102
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/payment/RocketPaymentEditText$1;->call(Ljava/lang/Void;)V

    return-void
.end method

.method public call(Ljava/lang/Void;)V
    .locals 0

    .line 105
    iget-object p1, p0, Lru/rocketbank/r2d2/payment/RocketPaymentEditText$1;->this$0:Lru/rocketbank/r2d2/payment/RocketPaymentEditText;

    invoke-static {p1}, Lru/rocketbank/r2d2/payment/RocketPaymentEditText;->access$000(Lru/rocketbank/r2d2/payment/RocketPaymentEditText;)Lru/rocketbank/r2d2/payment/RocketPaymentEditText$OnPickContactListener;

    move-result-object p1

    invoke-interface {p1}, Lru/rocketbank/r2d2/payment/RocketPaymentEditText$OnPickContactListener;->onPickContactRequested()V

    return-void
.end method
