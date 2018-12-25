.class public final enum Lkotlin/internal/contracts/InvocationKind;
.super Ljava/lang/Enum;
.source "ContractBuilder.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lkotlin/internal/contracts/InvocationKind;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lkotlin/internal/contracts/InvocationKind;

.field public static final enum AT_LEAST_ONCE:Lkotlin/internal/contracts/InvocationKind;

.field public static final enum AT_MOST_ONCE:Lkotlin/internal/contracts/InvocationKind;

.field public static final enum EXACTLY_ONCE:Lkotlin/internal/contracts/InvocationKind;

.field public static final enum UNKNOWN:Lkotlin/internal/contracts/InvocationKind;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [Lkotlin/internal/contracts/InvocationKind;

    new-instance v1, Lkotlin/internal/contracts/InvocationKind;

    const-string v2, "AT_MOST_ONCE"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lkotlin/internal/contracts/InvocationKind;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lkotlin/internal/contracts/InvocationKind;->AT_MOST_ONCE:Lkotlin/internal/contracts/InvocationKind;

    aput-object v1, v0, v3

    new-instance v1, Lkotlin/internal/contracts/InvocationKind;

    const-string v2, "AT_LEAST_ONCE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lkotlin/internal/contracts/InvocationKind;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lkotlin/internal/contracts/InvocationKind;->AT_LEAST_ONCE:Lkotlin/internal/contracts/InvocationKind;

    aput-object v1, v0, v3

    new-instance v1, Lkotlin/internal/contracts/InvocationKind;

    const-string v2, "EXACTLY_ONCE"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lkotlin/internal/contracts/InvocationKind;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lkotlin/internal/contracts/InvocationKind;->EXACTLY_ONCE:Lkotlin/internal/contracts/InvocationKind;

    aput-object v1, v0, v3

    new-instance v1, Lkotlin/internal/contracts/InvocationKind;

    const-string v2, "UNKNOWN"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lkotlin/internal/contracts/InvocationKind;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lkotlin/internal/contracts/InvocationKind;->UNKNOWN:Lkotlin/internal/contracts/InvocationKind;

    aput-object v1, v0, v3

    sput-object v0, Lkotlin/internal/contracts/InvocationKind;->$VALUES:[Lkotlin/internal/contracts/InvocationKind;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lkotlin/internal/contracts/InvocationKind;
    .locals 1

    const-class v0, Lkotlin/internal/contracts/InvocationKind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lkotlin/internal/contracts/InvocationKind;

    return-object p0
.end method

.method public static values()[Lkotlin/internal/contracts/InvocationKind;
    .locals 1

    sget-object v0, Lkotlin/internal/contracts/InvocationKind;->$VALUES:[Lkotlin/internal/contracts/InvocationKind;

    invoke-virtual {v0}, [Lkotlin/internal/contracts/InvocationKind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkotlin/internal/contracts/InvocationKind;

    return-object v0
.end method
