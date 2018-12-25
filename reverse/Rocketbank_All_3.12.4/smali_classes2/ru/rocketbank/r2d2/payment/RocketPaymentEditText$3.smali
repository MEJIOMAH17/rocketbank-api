.class Lru/rocketbank/r2d2/payment/RocketPaymentEditText$3;
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

.field final synthetic val$field:Lru/rocketbank/core/model/provider/ProviderField;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/payment/RocketPaymentEditText;Lru/rocketbank/core/model/provider/ProviderField;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lru/rocketbank/r2d2/payment/RocketPaymentEditText$3;->this$0:Lru/rocketbank/r2d2/payment/RocketPaymentEditText;

    iput-object p2, p0, Lru/rocketbank/r2d2/payment/RocketPaymentEditText$3;->val$field:Lru/rocketbank/core/model/provider/ProviderField;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 206
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/payment/RocketPaymentEditText$3;->call(Ljava/lang/String;)Lru/rocketbank/r2d2/utils/PatternFormatter$FormattedString;

    move-result-object p1

    return-object p1
.end method

.method public call(Ljava/lang/String;)Lru/rocketbank/r2d2/utils/PatternFormatter$FormattedString;
    .locals 1

    .line 209
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/RocketPaymentEditText$3;->val$field:Lru/rocketbank/core/model/provider/ProviderField;

    invoke-virtual {v0}, Lru/rocketbank/core/model/provider/ProviderField;->getPattern()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lru/rocketbank/r2d2/utils/PatternFormatter;->format(Ljava/lang/String;Ljava/lang/String;)Lru/rocketbank/r2d2/utils/PatternFormatter$FormattedString;

    move-result-object p1

    return-object p1
.end method
