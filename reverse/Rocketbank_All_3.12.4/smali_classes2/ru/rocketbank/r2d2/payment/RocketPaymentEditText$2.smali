.class Lru/rocketbank/r2d2/payment/RocketPaymentEditText$2;
.super Ljava/lang/Object;
.source "RocketPaymentEditText.java"

# interfaces
.implements Lrx/functions/Func1;


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
        "Lrx/functions/Func1<",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/payment/RocketPaymentEditText;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/payment/RocketPaymentEditText;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lru/rocketbank/r2d2/payment/RocketPaymentEditText$2;->this$0:Lru/rocketbank/r2d2/payment/RocketPaymentEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 0

    .line 99
    iget-object p1, p0, Lru/rocketbank/r2d2/payment/RocketPaymentEditText$2;->this$0:Lru/rocketbank/r2d2/payment/RocketPaymentEditText;

    invoke-static {p1}, Lru/rocketbank/r2d2/payment/RocketPaymentEditText;->access$000(Lru/rocketbank/r2d2/payment/RocketPaymentEditText;)Lru/rocketbank/r2d2/payment/RocketPaymentEditText$OnPickContactListener;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 96
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/payment/RocketPaymentEditText$2;->call(Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
