.class public final Lru/rocketbank/core/utils/MoneyFormatter$FormattedAmount;
.super Ljava/lang/Object;
.source "MoneyFormatter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/core/utils/MoneyFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FormattedAmount"
.end annotation


# instance fields
.field private final amountString:Ljava/lang/String;

.field private final suffix:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "amountString"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "suffix"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/rocketbank/core/utils/MoneyFormatter$FormattedAmount;->amountString:Ljava/lang/String;

    iput-object p2, p0, Lru/rocketbank/core/utils/MoneyFormatter$FormattedAmount;->suffix:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getAmountString()Ljava/lang/String;
    .locals 1

    .line 108
    iget-object v0, p0, Lru/rocketbank/core/utils/MoneyFormatter$FormattedAmount;->amountString:Ljava/lang/String;

    return-object v0
.end method

.method public final getSuffix()Ljava/lang/String;
    .locals 1

    .line 108
    iget-object v0, p0, Lru/rocketbank/core/utils/MoneyFormatter$FormattedAmount;->suffix:Ljava/lang/String;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lru/rocketbank/core/utils/MoneyFormatter$FormattedAmount;->amountString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lru/rocketbank/core/utils/MoneyFormatter$FormattedAmount;->suffix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
