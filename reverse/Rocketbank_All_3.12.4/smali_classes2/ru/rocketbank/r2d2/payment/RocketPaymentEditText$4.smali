.class Lru/rocketbank/r2d2/payment/RocketPaymentEditText$4;
.super Ljava/lang/Object;
.source "RocketPaymentEditText.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/payment/RocketPaymentEditText;->setField(Lru/rocketbank/core/model/provider/ProviderField;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func1<",
        "Ljava/lang/String;",
        "Lru/rocketbank/r2d2/utils/PatternFormatter$FormattedString;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/payment/RocketPaymentEditText;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/payment/RocketPaymentEditText;)V
    .locals 0

    .line 213
    iput-object p1, p0, Lru/rocketbank/r2d2/payment/RocketPaymentEditText$4;->this$0:Lru/rocketbank/r2d2/payment/RocketPaymentEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 213
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/payment/RocketPaymentEditText$4;->call(Ljava/lang/String;)Lru/rocketbank/r2d2/utils/PatternFormatter$FormattedString;

    move-result-object p1

    return-object p1
.end method

.method public call(Ljava/lang/String;)Lru/rocketbank/r2d2/utils/PatternFormatter$FormattedString;
    .locals 1

    .line 216
    new-instance v0, Lru/rocketbank/r2d2/utils/PatternFormatter$FormattedString;

    invoke-direct {v0, p1, p1}, Lru/rocketbank/r2d2/utils/PatternFormatter$FormattedString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
