.class synthetic Lru/rocketbank/core/network/model/TransfersModelUrFiz$2;
.super Ljava/lang/Object;
.source "TransfersModelUrFiz.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/core/network/model/TransfersModelUrFiz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$ru$rocketbank$core$model$transfers$bank$RecipientType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 238
    invoke-static {}, Lru/rocketbank/core/model/transfers/bank/RecipientType;->values()[Lru/rocketbank/core/model/transfers/bank/RecipientType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lru/rocketbank/core/network/model/TransfersModelUrFiz$2;->$SwitchMap$ru$rocketbank$core$model$transfers$bank$RecipientType:[I

    :try_start_0
    sget-object v0, Lru/rocketbank/core/network/model/TransfersModelUrFiz$2;->$SwitchMap$ru$rocketbank$core$model$transfers$bank$RecipientType:[I

    sget-object v1, Lru/rocketbank/core/model/transfers/bank/RecipientType;->PERSON:Lru/rocketbank/core/model/transfers/bank/RecipientType;

    invoke-virtual {v1}, Lru/rocketbank/core/model/transfers/bank/RecipientType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lru/rocketbank/core/network/model/TransfersModelUrFiz$2;->$SwitchMap$ru$rocketbank$core$model$transfers$bank$RecipientType:[I

    sget-object v1, Lru/rocketbank/core/model/transfers/bank/RecipientType;->BUSINESS:Lru/rocketbank/core/model/transfers/bank/RecipientType;

    invoke-virtual {v1}, Lru/rocketbank/core/model/transfers/bank/RecipientType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lru/rocketbank/core/network/model/TransfersModelUrFiz$2;->$SwitchMap$ru$rocketbank$core$model$transfers$bank$RecipientType:[I

    sget-object v1, Lru/rocketbank/core/model/transfers/bank/RecipientType;->BUDGET:Lru/rocketbank/core/model/transfers/bank/RecipientType;

    invoke-virtual {v1}, Lru/rocketbank/core/model/transfers/bank/RecipientType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
