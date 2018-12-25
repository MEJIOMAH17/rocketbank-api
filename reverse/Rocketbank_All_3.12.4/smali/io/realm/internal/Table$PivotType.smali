.class final enum Lio/realm/internal/Table$PivotType;
.super Ljava/lang/Enum;
.source "Table.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/internal/Table;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "PivotType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/realm/internal/Table$PivotType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/realm/internal/Table$PivotType;

.field public static final enum AVG:Lio/realm/internal/Table$PivotType;

.field public static final enum COUNT:Lio/realm/internal/Table$PivotType;

.field public static final enum MAX:Lio/realm/internal/Table$PivotType;

.field public static final enum MIN:Lio/realm/internal/Table$PivotType;

.field public static final enum SUM:Lio/realm/internal/Table$PivotType;


# instance fields
.field final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 34
    new-instance v0, Lio/realm/internal/Table$PivotType;

    const-string v1, "COUNT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lio/realm/internal/Table$PivotType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/internal/Table$PivotType;->COUNT:Lio/realm/internal/Table$PivotType;

    .line 35
    new-instance v0, Lio/realm/internal/Table$PivotType;

    const-string v1, "SUM"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lio/realm/internal/Table$PivotType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/internal/Table$PivotType;->SUM:Lio/realm/internal/Table$PivotType;

    .line 36
    new-instance v0, Lio/realm/internal/Table$PivotType;

    const-string v1, "AVG"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lio/realm/internal/Table$PivotType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/internal/Table$PivotType;->AVG:Lio/realm/internal/Table$PivotType;

    .line 37
    new-instance v0, Lio/realm/internal/Table$PivotType;

    const-string v1, "MIN"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lio/realm/internal/Table$PivotType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/internal/Table$PivotType;->MIN:Lio/realm/internal/Table$PivotType;

    .line 38
    new-instance v0, Lio/realm/internal/Table$PivotType;

    const-string v1, "MAX"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lio/realm/internal/Table$PivotType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/internal/Table$PivotType;->MAX:Lio/realm/internal/Table$PivotType;

    const/4 v0, 0x5

    .line 33
    new-array v0, v0, [Lio/realm/internal/Table$PivotType;

    sget-object v1, Lio/realm/internal/Table$PivotType;->COUNT:Lio/realm/internal/Table$PivotType;

    aput-object v1, v0, v2

    sget-object v1, Lio/realm/internal/Table$PivotType;->SUM:Lio/realm/internal/Table$PivotType;

    aput-object v1, v0, v3

    sget-object v1, Lio/realm/internal/Table$PivotType;->AVG:Lio/realm/internal/Table$PivotType;

    aput-object v1, v0, v4

    sget-object v1, Lio/realm/internal/Table$PivotType;->MIN:Lio/realm/internal/Table$PivotType;

    aput-object v1, v0, v5

    sget-object v1, Lio/realm/internal/Table$PivotType;->MAX:Lio/realm/internal/Table$PivotType;

    aput-object v1, v0, v6

    sput-object v0, Lio/realm/internal/Table$PivotType;->$VALUES:[Lio/realm/internal/Table$PivotType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 43
    iput p3, p0, Lio/realm/internal/Table$PivotType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/realm/internal/Table$PivotType;
    .locals 1

    .line 33
    const-class v0, Lio/realm/internal/Table$PivotType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/realm/internal/Table$PivotType;

    return-object p0
.end method

.method public static values()[Lio/realm/internal/Table$PivotType;
    .locals 1

    .line 33
    sget-object v0, Lio/realm/internal/Table$PivotType;->$VALUES:[Lio/realm/internal/Table$PivotType;

    invoke-virtual {v0}, [Lio/realm/internal/Table$PivotType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/realm/internal/Table$PivotType;

    return-object v0
.end method
