.class public final Lru/rocketbank/r2d2/root/analytics/AnalyticsGroupFragment$Companion;
.super Ljava/lang/Object;
.source "AnalyticsGroupFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/root/analytics/AnalyticsGroupFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref;)V
    .locals 0

    .line 152
    invoke-direct {p0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsGroupFragment$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$createArguments(Lru/rocketbank/r2d2/root/analytics/AnalyticsGroupFragment$Companion;Ljava/lang/String;ILjava/lang/String;Ljava/util/Calendar;IJ)Landroid/os/Bundle;
    .locals 0

    .line 152
    invoke-direct/range {p0 .. p7}, Lru/rocketbank/r2d2/root/analytics/AnalyticsGroupFragment$Companion;->createArguments(Ljava/lang/String;ILjava/lang/String;Ljava/util/Calendar;IJ)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method private final createArguments(Ljava/lang/String;ILjava/lang/String;Ljava/util/Calendar;IJ)Landroid/os/Bundle;
    .locals 7

    .line 173
    move-object v0, p0

    check-cast v0, Lru/rocketbank/r2d2/root/analytics/AnalyticsGroupFragment$Companion;

    sget-object v1, Lru/rocketbank/core/utils/CategoryMappingUtil;->INSTANCE:Lru/rocketbank/core/utils/CategoryMappingUtil;

    invoke-virtual {v1, p6, p7}, Lru/rocketbank/core/utils/CategoryMappingUtil;->getCategory(J)Lkotlin/Pair;

    move-result-object v1

    invoke-virtual {v1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Character;

    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lru/rocketbank/r2d2/root/analytics/AnalyticsGroupFragment$Companion;->createArguments(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/Calendar;I)Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "KEY_CATEGORY_ID"

    .line 174
    invoke-virtual {p1, p2, p6, p7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-object p1
.end method


# virtual methods
.method public final createArguments(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/Calendar;I)Landroid/os/Bundle;
    .locals 2

    const-string v0, "name"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "icon"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "currentDateTime"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "KEY_GROUP_ID"

    .line 163
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "KEY_INDEX"

    .line 164
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "KEY_ICON"

    .line 165
    invoke-virtual {v0, p1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "KEY_NAME"

    .line 166
    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "KEY_CURRENT_DATE"

    .line 167
    check-cast p5, Ljava/io/Serializable;

    invoke-virtual {v0, p1, p5}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string p1, "KEY_COLOR"

    .line 168
    invoke-virtual {v0, p1, p6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public final getDATE_FORMAT()Ljava/text/SimpleDateFormat;
    .locals 1

    .line 153
    invoke-static {}, Lru/rocketbank/r2d2/root/analytics/AnalyticsGroupFragment;->access$getDATE_FORMAT$cp()Ljava/text/SimpleDateFormat;

    move-result-object v0

    return-object v0
.end method
