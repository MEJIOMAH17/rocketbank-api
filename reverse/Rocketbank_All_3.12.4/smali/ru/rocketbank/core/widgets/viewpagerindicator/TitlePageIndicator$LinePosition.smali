.class public final enum Lru/rocketbank/core/widgets/viewpagerindicator/TitlePageIndicator$LinePosition;
.super Ljava/lang/Enum;
.source "TitlePageIndicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/core/widgets/viewpagerindicator/TitlePageIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LinePosition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lru/rocketbank/core/widgets/viewpagerindicator/TitlePageIndicator$LinePosition;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lru/rocketbank/core/widgets/viewpagerindicator/TitlePageIndicator$LinePosition;

.field public static final enum Bottom:Lru/rocketbank/core/widgets/viewpagerindicator/TitlePageIndicator$LinePosition;

.field public static final enum Top:Lru/rocketbank/core/widgets/viewpagerindicator/TitlePageIndicator$LinePosition;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 803
    new-instance v0, Lru/rocketbank/core/widgets/viewpagerindicator/TitlePageIndicator$LinePosition;

    const-string v1, "Bottom"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lru/rocketbank/core/widgets/viewpagerindicator/TitlePageIndicator$LinePosition;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lru/rocketbank/core/widgets/viewpagerindicator/TitlePageIndicator$LinePosition;->Bottom:Lru/rocketbank/core/widgets/viewpagerindicator/TitlePageIndicator$LinePosition;

    new-instance v0, Lru/rocketbank/core/widgets/viewpagerindicator/TitlePageIndicator$LinePosition;

    const-string v1, "Top"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lru/rocketbank/core/widgets/viewpagerindicator/TitlePageIndicator$LinePosition;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lru/rocketbank/core/widgets/viewpagerindicator/TitlePageIndicator$LinePosition;->Top:Lru/rocketbank/core/widgets/viewpagerindicator/TitlePageIndicator$LinePosition;

    const/4 v0, 0x2

    .line 802
    new-array v0, v0, [Lru/rocketbank/core/widgets/viewpagerindicator/TitlePageIndicator$LinePosition;

    sget-object v1, Lru/rocketbank/core/widgets/viewpagerindicator/TitlePageIndicator$LinePosition;->Bottom:Lru/rocketbank/core/widgets/viewpagerindicator/TitlePageIndicator$LinePosition;

    aput-object v1, v0, v2

    sget-object v1, Lru/rocketbank/core/widgets/viewpagerindicator/TitlePageIndicator$LinePosition;->Top:Lru/rocketbank/core/widgets/viewpagerindicator/TitlePageIndicator$LinePosition;

    aput-object v1, v0, v3

    sput-object v0, Lru/rocketbank/core/widgets/viewpagerindicator/TitlePageIndicator$LinePosition;->$VALUES:[Lru/rocketbank/core/widgets/viewpagerindicator/TitlePageIndicator$LinePosition;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 807
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 808
    iput p3, p0, Lru/rocketbank/core/widgets/viewpagerindicator/TitlePageIndicator$LinePosition;->value:I

    return-void
.end method

.method public static fromValue(I)Lru/rocketbank/core/widgets/viewpagerindicator/TitlePageIndicator$LinePosition;
    .locals 5

    .line 812
    invoke-static {}, Lru/rocketbank/core/widgets/viewpagerindicator/TitlePageIndicator$LinePosition;->values()[Lru/rocketbank/core/widgets/viewpagerindicator/TitlePageIndicator$LinePosition;

    move-result-object v0

    const/4 v1, 0x0

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 813
    iget v4, v3, Lru/rocketbank/core/widgets/viewpagerindicator/TitlePageIndicator$LinePosition;->value:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lru/rocketbank/core/widgets/viewpagerindicator/TitlePageIndicator$LinePosition;
    .locals 1

    .line 802
    const-class v0, Lru/rocketbank/core/widgets/viewpagerindicator/TitlePageIndicator$LinePosition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lru/rocketbank/core/widgets/viewpagerindicator/TitlePageIndicator$LinePosition;

    return-object p0
.end method

.method public static values()[Lru/rocketbank/core/widgets/viewpagerindicator/TitlePageIndicator$LinePosition;
    .locals 1

    .line 802
    sget-object v0, Lru/rocketbank/core/widgets/viewpagerindicator/TitlePageIndicator$LinePosition;->$VALUES:[Lru/rocketbank/core/widgets/viewpagerindicator/TitlePageIndicator$LinePosition;

    invoke-virtual {v0}, [Lru/rocketbank/core/widgets/viewpagerindicator/TitlePageIndicator$LinePosition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lru/rocketbank/core/widgets/viewpagerindicator/TitlePageIndicator$LinePosition;

    return-object v0
.end method
