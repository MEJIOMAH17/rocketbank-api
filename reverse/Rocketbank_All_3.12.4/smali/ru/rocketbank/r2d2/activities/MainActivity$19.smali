.class synthetic Lru/rocketbank/r2d2/activities/MainActivity$19;
.super Ljava/lang/Object;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/activities/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$ru$rocketbank$core$model$enums$Cobrand:[I

.field static final synthetic $SwitchMap$ru$rocketbank$core$model$enums$Currency:[I

.field static final synthetic $SwitchMap$ru$rocketbank$core$model$enums$StatusIssue:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1211
    invoke-static {}, Lru/rocketbank/core/model/enums/StatusIssue;->values()[Lru/rocketbank/core/model/enums/StatusIssue;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lru/rocketbank/r2d2/activities/MainActivity$19;->$SwitchMap$ru$rocketbank$core$model$enums$StatusIssue:[I

    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Lru/rocketbank/r2d2/activities/MainActivity$19;->$SwitchMap$ru$rocketbank$core$model$enums$StatusIssue:[I

    sget-object v2, Lru/rocketbank/core/model/enums/StatusIssue;->DELIVERY:Lru/rocketbank/core/model/enums/StatusIssue;

    invoke-virtual {v2}, Lru/rocketbank/core/model/enums/StatusIssue;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v1, 0x2

    :try_start_1
    sget-object v2, Lru/rocketbank/r2d2/activities/MainActivity$19;->$SwitchMap$ru$rocketbank$core$model$enums$StatusIssue:[I

    sget-object v3, Lru/rocketbank/core/model/enums/StatusIssue;->DELIVERY_SCHEDULED:Lru/rocketbank/core/model/enums/StatusIssue;

    invoke-virtual {v3}, Lru/rocketbank/core/model/enums/StatusIssue;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v2, Lru/rocketbank/r2d2/activities/MainActivity$19;->$SwitchMap$ru$rocketbank$core$model$enums$StatusIssue:[I

    sget-object v3, Lru/rocketbank/core/model/enums/StatusIssue;->ISSUING:Lru/rocketbank/core/model/enums/StatusIssue;

    invoke-virtual {v3}, Lru/rocketbank/core/model/enums/StatusIssue;->ordinal()I

    move-result v3

    const/4 v4, 0x3

    aput v4, v2, v3
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v2, Lru/rocketbank/r2d2/activities/MainActivity$19;->$SwitchMap$ru$rocketbank$core$model$enums$StatusIssue:[I

    sget-object v3, Lru/rocketbank/core/model/enums/StatusIssue;->PIN:Lru/rocketbank/core/model/enums/StatusIssue;

    invoke-virtual {v3}, Lru/rocketbank/core/model/enums/StatusIssue;->ordinal()I

    move-result v3

    const/4 v4, 0x4

    aput v4, v2, v3
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    .line 658
    :catch_3
    invoke-static {}, Lru/rocketbank/core/model/enums/Cobrand;->values()[Lru/rocketbank/core/model/enums/Cobrand;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lru/rocketbank/r2d2/activities/MainActivity$19;->$SwitchMap$ru$rocketbank$core$model$enums$Cobrand:[I

    :try_start_4
    sget-object v2, Lru/rocketbank/r2d2/activities/MainActivity$19;->$SwitchMap$ru$rocketbank$core$model$enums$Cobrand:[I

    sget-object v3, Lru/rocketbank/core/model/enums/Cobrand;->ONETWOTRIP:Lru/rocketbank/core/model/enums/Cobrand;

    invoke-virtual {v3}, Lru/rocketbank/core/model/enums/Cobrand;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    .line 646
    :catch_4
    invoke-static {}, Lru/rocketbank/core/model/enums/Currency;->values()[Lru/rocketbank/core/model/enums/Currency;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lru/rocketbank/r2d2/activities/MainActivity$19;->$SwitchMap$ru$rocketbank$core$model$enums$Currency:[I

    :try_start_5
    sget-object v2, Lru/rocketbank/r2d2/activities/MainActivity$19;->$SwitchMap$ru$rocketbank$core$model$enums$Currency:[I

    sget-object v3, Lru/rocketbank/core/model/enums/Currency;->DOLLAR:Lru/rocketbank/core/model/enums/Currency;

    invoke-virtual {v3}, Lru/rocketbank/core/model/enums/Currency;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v0, Lru/rocketbank/r2d2/activities/MainActivity$19;->$SwitchMap$ru$rocketbank$core$model$enums$Currency:[I

    sget-object v2, Lru/rocketbank/core/model/enums/Currency;->EURO:Lru/rocketbank/core/model/enums/Currency;

    invoke-virtual {v2}, Lru/rocketbank/core/model/enums/Currency;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    return-void
.end method
