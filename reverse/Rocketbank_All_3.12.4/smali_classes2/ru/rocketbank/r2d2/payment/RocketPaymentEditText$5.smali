.class Lru/rocketbank/r2d2/payment/RocketPaymentEditText$5;
.super Lru/rocketbank/r2d2/utils/TextWatcherAbstract;
.source "RocketPaymentEditText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/payment/RocketPaymentEditText;->setField(Lru/rocketbank/core/model/provider/ProviderField;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/payment/RocketPaymentEditText;

.field final synthetic val$stringFilter:Lrx/functions/Func1;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/payment/RocketPaymentEditText;Lrx/functions/Func1;)V
    .locals 0

    .line 220
    iput-object p1, p0, Lru/rocketbank/r2d2/payment/RocketPaymentEditText$5;->this$0:Lru/rocketbank/r2d2/payment/RocketPaymentEditText;

    iput-object p2, p0, Lru/rocketbank/r2d2/payment/RocketPaymentEditText$5;->val$stringFilter:Lrx/functions/Func1;

    invoke-direct {p0}, Lru/rocketbank/r2d2/utils/TextWatcherAbstract;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    .line 223
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/RocketPaymentEditText$5;->this$0:Lru/rocketbank/r2d2/payment/RocketPaymentEditText;

    invoke-static {v0}, Lru/rocketbank/r2d2/payment/RocketPaymentEditText;->access$100(Lru/rocketbank/r2d2/payment/RocketPaymentEditText;)Lru/rocketbank/core/widgets/RocketEditText;

    move-result-object v0

    invoke-virtual {v0, p0}, Lru/rocketbank/core/widgets/RocketEditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 224
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/RocketPaymentEditText$5;->val$stringFilter:Lrx/functions/Func1;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/utils/PatternFormatter$FormattedString;

    .line 225
    iget-object v1, p0, Lru/rocketbank/r2d2/payment/RocketPaymentEditText$5;->this$0:Lru/rocketbank/r2d2/payment/RocketPaymentEditText;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/utils/PatternFormatter$FormattedString;->getClean()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lru/rocketbank/r2d2/payment/RocketPaymentEditText;->access$202(Lru/rocketbank/r2d2/payment/RocketPaymentEditText;Ljava/lang/String;)Ljava/lang/String;

    .line 226
    iget-object v1, p0, Lru/rocketbank/r2d2/payment/RocketPaymentEditText$5;->this$0:Lru/rocketbank/r2d2/payment/RocketPaymentEditText;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/utils/PatternFormatter$FormattedString;->getFormatted()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lru/rocketbank/r2d2/payment/RocketPaymentEditText;->access$302(Lru/rocketbank/r2d2/payment/RocketPaymentEditText;Ljava/lang/String;)Ljava/lang/String;

    .line 227
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    iget-object v1, p0, Lru/rocketbank/r2d2/payment/RocketPaymentEditText$5;->this$0:Lru/rocketbank/r2d2/payment/RocketPaymentEditText;

    invoke-static {v1}, Lru/rocketbank/r2d2/payment/RocketPaymentEditText;->access$300(Lru/rocketbank/r2d2/payment/RocketPaymentEditText;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p1, v2, v0, v1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 228
    iget-object p1, p0, Lru/rocketbank/r2d2/payment/RocketPaymentEditText$5;->this$0:Lru/rocketbank/r2d2/payment/RocketPaymentEditText;

    invoke-static {p1}, Lru/rocketbank/r2d2/payment/RocketPaymentEditText;->access$100(Lru/rocketbank/r2d2/payment/RocketPaymentEditText;)Lru/rocketbank/core/widgets/RocketEditText;

    move-result-object p1

    invoke-virtual {p1, p0}, Lru/rocketbank/core/widgets/RocketEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method
