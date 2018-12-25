.class public final enum Lru/rocketbank/core/model/enums/Cobrand;
.super Ljava/lang/Enum;
.source "Cobrand.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/core/model/enums/Cobrand$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lru/rocketbank/core/model/enums/Cobrand;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lru/rocketbank/core/model/enums/Cobrand;

.field public static final Companion:Lru/rocketbank/core/model/enums/Cobrand$Companion;

.field public static final enum METROPOLIS:Lru/rocketbank/core/model/enums/Cobrand;

.field public static final enum ONETWOTRIP:Lru/rocketbank/core/model/enums/Cobrand;

.field public static final enum ROCKETBANK:Lru/rocketbank/core/model/enums/Cobrand;


# instance fields
.field private final cobrandName:Ljava/lang/String;

.field private final drawableResId:I

.field private final many:I

.field private final menu:I

.field private final money:I

.field private final statisticsTitle:I


# direct methods
.method static constructor <clinit>()V
    .locals 20

    const/4 v0, 0x3

    new-array v0, v0, [Lru/rocketbank/core/model/enums/Cobrand;

    new-instance v10, Lru/rocketbank/core/model/enums/Cobrand;

    const-string v2, "ROCKETBANK"

    const-string v4, "open"

    const/4 v3, 0x0

    const v5, 0x7f0f0007

    const v6, 0x7f11029f

    const v7, 0x7f1102ea

    const v8, 0x7f110340

    const v9, 0x7f0800d0

    move-object v1, v10

    .line 14
    invoke-direct/range {v1 .. v9}, Lru/rocketbank/core/model/enums/Cobrand;-><init>(Ljava/lang/String;ILjava/lang/String;IIIII)V

    sput-object v10, Lru/rocketbank/core/model/enums/Cobrand;->ROCKETBANK:Lru/rocketbank/core/model/enums/Cobrand;

    const/4 v1, 0x0

    aput-object v10, v0, v1

    new-instance v1, Lru/rocketbank/core/model/enums/Cobrand;

    const-string v12, "METROPOLIS"

    const-string v14, "metropolis"

    const/4 v13, 0x1

    const v15, 0x7f0f0004

    const v16, 0x7f110299

    const v17, 0x7f1102e9

    const v18, 0x7f110341

    const/high16 v19, 0x7f0e0000

    move-object v11, v1

    .line 22
    invoke-direct/range {v11 .. v19}, Lru/rocketbank/core/model/enums/Cobrand;-><init>(Ljava/lang/String;ILjava/lang/String;IIIII)V

    sput-object v1, Lru/rocketbank/core/model/enums/Cobrand;->METROPOLIS:Lru/rocketbank/core/model/enums/Cobrand;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lru/rocketbank/core/model/enums/Cobrand;

    const-string v4, "ONETWOTRIP"

    const-string v6, "onetwotrip"

    .line 41
    sget-object v2, Lru/rocketbank/core/model/enums/Cobrand;->ROCKETBANK:Lru/rocketbank/core/model/enums/Cobrand;

    iget v7, v2, Lru/rocketbank/core/model/enums/Cobrand;->money:I

    .line 42
    sget-object v2, Lru/rocketbank/core/model/enums/Cobrand;->ROCKETBANK:Lru/rocketbank/core/model/enums/Cobrand;

    iget v8, v2, Lru/rocketbank/core/model/enums/Cobrand;->menu:I

    .line 43
    sget-object v2, Lru/rocketbank/core/model/enums/Cobrand;->ROCKETBANK:Lru/rocketbank/core/model/enums/Cobrand;

    iget v9, v2, Lru/rocketbank/core/model/enums/Cobrand;->many:I

    .line 44
    sget-object v2, Lru/rocketbank/core/model/enums/Cobrand;->ROCKETBANK:Lru/rocketbank/core/model/enums/Cobrand;

    iget v10, v2, Lru/rocketbank/core/model/enums/Cobrand;->statisticsTitle:I

    const/4 v5, 0x2

    const v11, 0x7f060228

    move-object v3, v1

    .line 39
    invoke-direct/range {v3 .. v11}, Lru/rocketbank/core/model/enums/Cobrand;-><init>(Ljava/lang/String;ILjava/lang/String;IIIII)V

    sput-object v1, Lru/rocketbank/core/model/enums/Cobrand;->ONETWOTRIP:Lru/rocketbank/core/model/enums/Cobrand;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lru/rocketbank/core/model/enums/Cobrand;->$VALUES:[Lru/rocketbank/core/model/enums/Cobrand;

    new-instance v0, Lru/rocketbank/core/model/enums/Cobrand$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/core/model/enums/Cobrand$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/core/model/enums/Cobrand;->Companion:Lru/rocketbank/core/model/enums/Cobrand$Companion;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;ILjava/lang/String;IIIII)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIIII)V"
        }
    .end annotation

    const-string v0, "cobrandName"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lru/rocketbank/core/model/enums/Cobrand;->cobrandName:Ljava/lang/String;

    iput p4, p0, Lru/rocketbank/core/model/enums/Cobrand;->money:I

    iput p5, p0, Lru/rocketbank/core/model/enums/Cobrand;->menu:I

    iput p6, p0, Lru/rocketbank/core/model/enums/Cobrand;->many:I

    iput p7, p0, Lru/rocketbank/core/model/enums/Cobrand;->statisticsTitle:I

    iput p8, p0, Lru/rocketbank/core/model/enums/Cobrand;->drawableResId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lru/rocketbank/core/model/enums/Cobrand;
    .locals 1

    const-class v0, Lru/rocketbank/core/model/enums/Cobrand;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lru/rocketbank/core/model/enums/Cobrand;

    return-object p0
.end method

.method public static values()[Lru/rocketbank/core/model/enums/Cobrand;
    .locals 1

    sget-object v0, Lru/rocketbank/core/model/enums/Cobrand;->$VALUES:[Lru/rocketbank/core/model/enums/Cobrand;

    invoke-virtual {v0}, [Lru/rocketbank/core/model/enums/Cobrand;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lru/rocketbank/core/model/enums/Cobrand;

    return-object v0
.end method


# virtual methods
.method public final getCobrandName()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lru/rocketbank/core/model/enums/Cobrand;->cobrandName:Ljava/lang/String;

    return-object v0
.end method

.method public final getDrawableResId()I
    .locals 1

    .line 13
    iget v0, p0, Lru/rocketbank/core/model/enums/Cobrand;->drawableResId:I

    return v0
.end method

.method public final getMany()I
    .locals 1

    .line 11
    iget v0, p0, Lru/rocketbank/core/model/enums/Cobrand;->many:I

    return v0
.end method

.method public final getMenu()I
    .locals 1

    .line 10
    iget v0, p0, Lru/rocketbank/core/model/enums/Cobrand;->menu:I

    return v0
.end method

.method public final getMoney()I
    .locals 1

    .line 9
    iget v0, p0, Lru/rocketbank/core/model/enums/Cobrand;->money:I

    return v0
.end method

.method public final getStatisticsTitle()I
    .locals 1

    .line 12
    iget v0, p0, Lru/rocketbank/core/model/enums/Cobrand;->statisticsTitle:I

    return v0
.end method
