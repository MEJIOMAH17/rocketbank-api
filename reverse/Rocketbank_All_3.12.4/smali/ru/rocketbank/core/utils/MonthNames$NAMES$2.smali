.class final Lru/rocketbank/core/utils/MonthNames$NAMES$2;
.super Lkotlin/jvm/internal/Lambda;
.source "MonthNames.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/core/utils/MonthNames;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "[",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lru/rocketbank/core/utils/MonthNames$NAMES$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lru/rocketbank/core/utils/MonthNames$NAMES$2;

    invoke-direct {v0}, Lru/rocketbank/core/utils/MonthNames$NAMES$2;-><init>()V

    sput-object v0, Lru/rocketbank/core/utils/MonthNames$NAMES$2;->INSTANCE:Lru/rocketbank/core/utils/MonthNames$NAMES$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lru/rocketbank/core/utils/MonthNames$NAMES$2;->invoke()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()[Ljava/lang/String;
    .locals 3

    const/16 v0, 0xc

    .line 4
    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "\u042f\u043d\u0432\u0430\u0440\u044c"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "\u0424\u0435\u0432\u0440\u0430\u043b\u044c"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "\u041c\u0430\u0440\u0442"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "\u0410\u043f\u0440\u0435\u043b\u044c"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "\u041c\u0430\u0439"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "\u0418\u044e\u043d\u044c"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "\u0418\u044e\u043b\u044c"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "\u0410\u0432\u0433\u0443\u0441\u0442"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "\u0421\u0435\u043d\u0442\u044f\u0431\u0440\u044c"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "\u041e\u043a\u0442\u044f\u0431\u0440\u044c"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "\u041d\u043e\u044f\u0431\u0440\u044c"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string/jumbo v1, "\u0414\u0435\u043a\u0430\u0431\u0440\u044c"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    return-object v0
.end method
