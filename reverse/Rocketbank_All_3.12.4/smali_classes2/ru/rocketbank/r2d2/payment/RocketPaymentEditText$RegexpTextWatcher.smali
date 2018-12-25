.class Lru/rocketbank/r2d2/payment/RocketPaymentEditText$RegexpTextWatcher;
.super Lru/rocketbank/r2d2/utils/TextWatcherAbstract;
.source "RocketPaymentEditText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/payment/RocketPaymentEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RegexpTextWatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/payment/RocketPaymentEditText;


# direct methods
.method private constructor <init>(Lru/rocketbank/r2d2/payment/RocketPaymentEditText;)V
    .locals 0

    .line 246
    iput-object p1, p0, Lru/rocketbank/r2d2/payment/RocketPaymentEditText$RegexpTextWatcher;->this$0:Lru/rocketbank/r2d2/payment/RocketPaymentEditText;

    invoke-direct {p0}, Lru/rocketbank/r2d2/utils/TextWatcherAbstract;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lru/rocketbank/r2d2/payment/RocketPaymentEditText;Lru/rocketbank/r2d2/payment/RocketPaymentEditText$1;)V
    .locals 0

    .line 246
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/payment/RocketPaymentEditText$RegexpTextWatcher;-><init>(Lru/rocketbank/r2d2/payment/RocketPaymentEditText;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .line 249
    iget-object p1, p0, Lru/rocketbank/r2d2/payment/RocketPaymentEditText$RegexpTextWatcher;->this$0:Lru/rocketbank/r2d2/payment/RocketPaymentEditText;

    invoke-static {p1}, Lru/rocketbank/r2d2/payment/RocketPaymentEditText;->access$500(Lru/rocketbank/r2d2/payment/RocketPaymentEditText;)Ljava/util/regex/Pattern;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lru/rocketbank/r2d2/payment/RocketPaymentEditText$RegexpTextWatcher;->this$0:Lru/rocketbank/r2d2/payment/RocketPaymentEditText;

    invoke-static {p1}, Lru/rocketbank/r2d2/payment/RocketPaymentEditText;->access$200(Lru/rocketbank/r2d2/payment/RocketPaymentEditText;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 250
    iget-object p1, p0, Lru/rocketbank/r2d2/payment/RocketPaymentEditText$RegexpTextWatcher;->this$0:Lru/rocketbank/r2d2/payment/RocketPaymentEditText;

    invoke-static {p1}, Lru/rocketbank/r2d2/payment/RocketPaymentEditText;->access$500(Lru/rocketbank/r2d2/payment/RocketPaymentEditText;)Ljava/util/regex/Pattern;

    move-result-object p1

    iget-object v0, p0, Lru/rocketbank/r2d2/payment/RocketPaymentEditText$RegexpTextWatcher;->this$0:Lru/rocketbank/r2d2/payment/RocketPaymentEditText;

    invoke-static {v0}, Lru/rocketbank/r2d2/payment/RocketPaymentEditText;->access$200(Lru/rocketbank/r2d2/payment/RocketPaymentEditText;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 251
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 252
    iget-object p1, p0, Lru/rocketbank/r2d2/payment/RocketPaymentEditText$RegexpTextWatcher;->this$0:Lru/rocketbank/r2d2/payment/RocketPaymentEditText;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lru/rocketbank/r2d2/payment/RocketPaymentEditText;->access$600(Lru/rocketbank/r2d2/payment/RocketPaymentEditText;I)V

    goto :goto_0

    .line 254
    :cond_0
    iget-object p1, p0, Lru/rocketbank/r2d2/payment/RocketPaymentEditText$RegexpTextWatcher;->this$0:Lru/rocketbank/r2d2/payment/RocketPaymentEditText;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lru/rocketbank/r2d2/payment/RocketPaymentEditText;->access$600(Lru/rocketbank/r2d2/payment/RocketPaymentEditText;I)V

    .line 258
    :cond_1
    :goto_0
    iget-object p1, p0, Lru/rocketbank/r2d2/payment/RocketPaymentEditText$RegexpTextWatcher;->this$0:Lru/rocketbank/r2d2/payment/RocketPaymentEditText;

    invoke-static {p1}, Lru/rocketbank/r2d2/payment/RocketPaymentEditText;->access$700(Lru/rocketbank/r2d2/payment/RocketPaymentEditText;)V

    .line 260
    iget-object p1, p0, Lru/rocketbank/r2d2/payment/RocketPaymentEditText$RegexpTextWatcher;->this$0:Lru/rocketbank/r2d2/payment/RocketPaymentEditText;

    invoke-static {p1}, Lru/rocketbank/r2d2/payment/RocketPaymentEditText;->access$800(Lru/rocketbank/r2d2/payment/RocketPaymentEditText;)Lru/rocketbank/r2d2/payment/IPaymentFieldWidget$OnPaymentFieldChangedListener;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 261
    iget-object p1, p0, Lru/rocketbank/r2d2/payment/RocketPaymentEditText$RegexpTextWatcher;->this$0:Lru/rocketbank/r2d2/payment/RocketPaymentEditText;

    invoke-static {p1}, Lru/rocketbank/r2d2/payment/RocketPaymentEditText;->access$800(Lru/rocketbank/r2d2/payment/RocketPaymentEditText;)Lru/rocketbank/r2d2/payment/IPaymentFieldWidget$OnPaymentFieldChangedListener;

    move-result-object p1

    iget-object v0, p0, Lru/rocketbank/r2d2/payment/RocketPaymentEditText$RegexpTextWatcher;->this$0:Lru/rocketbank/r2d2/payment/RocketPaymentEditText;

    invoke-static {v0}, Lru/rocketbank/r2d2/payment/RocketPaymentEditText;->access$900(Lru/rocketbank/r2d2/payment/RocketPaymentEditText;)Lru/rocketbank/core/model/provider/ProviderField;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/r2d2/payment/RocketPaymentEditText$RegexpTextWatcher;->this$0:Lru/rocketbank/r2d2/payment/RocketPaymentEditText;

    invoke-interface {p1, v0, v1}, Lru/rocketbank/r2d2/payment/IPaymentFieldWidget$OnPaymentFieldChangedListener;->onPaymentFieldChanged(Lru/rocketbank/core/model/provider/ProviderField;Lru/rocketbank/r2d2/payment/IPaymentFieldWidget;)V

    :cond_2
    return-void
.end method
