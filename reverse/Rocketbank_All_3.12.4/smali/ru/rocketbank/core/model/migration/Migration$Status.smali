.class public final enum Lru/rocketbank/core/model/migration/Migration$Status;
.super Ljava/lang/Enum;
.source "Migration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/core/model/migration/Migration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lru/rocketbank/core/model/migration/Migration$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lru/rocketbank/core/model/migration/Migration$Status;

.field public static final enum activated:Lru/rocketbank/core/model/migration/Migration$Status;

.field public static final enum card_ready:Lru/rocketbank/core/model/migration/Migration$Status;

.field public static final enum checking:Lru/rocketbank/core/model/migration/Migration$Status;

.field public static final enum completed:Lru/rocketbank/core/model/migration/Migration$Status;

.field public static final enum delivering:Lru/rocketbank/core/model/migration/Migration$Status;

.field public static final enum dhl_delivering:Lru/rocketbank/core/model/migration/Migration$Status;

.field public static final enum filled:Lru/rocketbank/core/model/migration/Migration$Status;

.field public static final enum issuing:Lru/rocketbank/core/model/migration/Migration$Status;

.field public static final enum needs_passport:Lru/rocketbank/core/model/migration/Migration$Status;

.field public static final enum needs_registration:Lru/rocketbank/core/model/migration/Migration$Status;

.field public static final enum needs_selfie:Lru/rocketbank/core/model/migration/Migration$Status;

.field public static final enum pending:Lru/rocketbank/core/model/migration/Migration$Status;

.field public static final enum ready:Lru/rocketbank/core/model/migration/Migration$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 27
    new-instance v0, Lru/rocketbank/core/model/migration/Migration$Status;

    const-string v1, "pending"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lru/rocketbank/core/model/migration/Migration$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lru/rocketbank/core/model/migration/Migration$Status;->pending:Lru/rocketbank/core/model/migration/Migration$Status;

    .line 28
    new-instance v0, Lru/rocketbank/core/model/migration/Migration$Status;

    const-string v1, "needs_passport"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lru/rocketbank/core/model/migration/Migration$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lru/rocketbank/core/model/migration/Migration$Status;->needs_passport:Lru/rocketbank/core/model/migration/Migration$Status;

    .line 29
    new-instance v0, Lru/rocketbank/core/model/migration/Migration$Status;

    const-string v1, "needs_registration"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lru/rocketbank/core/model/migration/Migration$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lru/rocketbank/core/model/migration/Migration$Status;->needs_registration:Lru/rocketbank/core/model/migration/Migration$Status;

    .line 30
    new-instance v0, Lru/rocketbank/core/model/migration/Migration$Status;

    const-string v1, "needs_selfie"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lru/rocketbank/core/model/migration/Migration$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lru/rocketbank/core/model/migration/Migration$Status;->needs_selfie:Lru/rocketbank/core/model/migration/Migration$Status;

    .line 31
    new-instance v0, Lru/rocketbank/core/model/migration/Migration$Status;

    const-string v1, "filled"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lru/rocketbank/core/model/migration/Migration$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lru/rocketbank/core/model/migration/Migration$Status;->filled:Lru/rocketbank/core/model/migration/Migration$Status;

    .line 32
    new-instance v0, Lru/rocketbank/core/model/migration/Migration$Status;

    const-string v1, "issuing"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lru/rocketbank/core/model/migration/Migration$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lru/rocketbank/core/model/migration/Migration$Status;->issuing:Lru/rocketbank/core/model/migration/Migration$Status;

    .line 33
    new-instance v0, Lru/rocketbank/core/model/migration/Migration$Status;

    const-string v1, "card_ready"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lru/rocketbank/core/model/migration/Migration$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lru/rocketbank/core/model/migration/Migration$Status;->card_ready:Lru/rocketbank/core/model/migration/Migration$Status;

    .line 34
    new-instance v0, Lru/rocketbank/core/model/migration/Migration$Status;

    const-string v1, "dhl_delivering"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lru/rocketbank/core/model/migration/Migration$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lru/rocketbank/core/model/migration/Migration$Status;->dhl_delivering:Lru/rocketbank/core/model/migration/Migration$Status;

    .line 35
    new-instance v0, Lru/rocketbank/core/model/migration/Migration$Status;

    const-string v1, "delivering"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lru/rocketbank/core/model/migration/Migration$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lru/rocketbank/core/model/migration/Migration$Status;->delivering:Lru/rocketbank/core/model/migration/Migration$Status;

    .line 36
    new-instance v0, Lru/rocketbank/core/model/migration/Migration$Status;

    const-string v1, "checking"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lru/rocketbank/core/model/migration/Migration$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lru/rocketbank/core/model/migration/Migration$Status;->checking:Lru/rocketbank/core/model/migration/Migration$Status;

    .line 37
    new-instance v0, Lru/rocketbank/core/model/migration/Migration$Status;

    const-string v1, "ready"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12}, Lru/rocketbank/core/model/migration/Migration$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lru/rocketbank/core/model/migration/Migration$Status;->ready:Lru/rocketbank/core/model/migration/Migration$Status;

    .line 38
    new-instance v0, Lru/rocketbank/core/model/migration/Migration$Status;

    const-string v1, "activated"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13}, Lru/rocketbank/core/model/migration/Migration$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lru/rocketbank/core/model/migration/Migration$Status;->activated:Lru/rocketbank/core/model/migration/Migration$Status;

    .line 39
    new-instance v0, Lru/rocketbank/core/model/migration/Migration$Status;

    const-string v1, "completed"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14}, Lru/rocketbank/core/model/migration/Migration$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lru/rocketbank/core/model/migration/Migration$Status;->completed:Lru/rocketbank/core/model/migration/Migration$Status;

    const/16 v0, 0xd

    .line 26
    new-array v0, v0, [Lru/rocketbank/core/model/migration/Migration$Status;

    sget-object v1, Lru/rocketbank/core/model/migration/Migration$Status;->pending:Lru/rocketbank/core/model/migration/Migration$Status;

    aput-object v1, v0, v2

    sget-object v1, Lru/rocketbank/core/model/migration/Migration$Status;->needs_passport:Lru/rocketbank/core/model/migration/Migration$Status;

    aput-object v1, v0, v3

    sget-object v1, Lru/rocketbank/core/model/migration/Migration$Status;->needs_registration:Lru/rocketbank/core/model/migration/Migration$Status;

    aput-object v1, v0, v4

    sget-object v1, Lru/rocketbank/core/model/migration/Migration$Status;->needs_selfie:Lru/rocketbank/core/model/migration/Migration$Status;

    aput-object v1, v0, v5

    sget-object v1, Lru/rocketbank/core/model/migration/Migration$Status;->filled:Lru/rocketbank/core/model/migration/Migration$Status;

    aput-object v1, v0, v6

    sget-object v1, Lru/rocketbank/core/model/migration/Migration$Status;->issuing:Lru/rocketbank/core/model/migration/Migration$Status;

    aput-object v1, v0, v7

    sget-object v1, Lru/rocketbank/core/model/migration/Migration$Status;->card_ready:Lru/rocketbank/core/model/migration/Migration$Status;

    aput-object v1, v0, v8

    sget-object v1, Lru/rocketbank/core/model/migration/Migration$Status;->dhl_delivering:Lru/rocketbank/core/model/migration/Migration$Status;

    aput-object v1, v0, v9

    sget-object v1, Lru/rocketbank/core/model/migration/Migration$Status;->delivering:Lru/rocketbank/core/model/migration/Migration$Status;

    aput-object v1, v0, v10

    sget-object v1, Lru/rocketbank/core/model/migration/Migration$Status;->checking:Lru/rocketbank/core/model/migration/Migration$Status;

    aput-object v1, v0, v11

    sget-object v1, Lru/rocketbank/core/model/migration/Migration$Status;->ready:Lru/rocketbank/core/model/migration/Migration$Status;

    aput-object v1, v0, v12

    sget-object v1, Lru/rocketbank/core/model/migration/Migration$Status;->activated:Lru/rocketbank/core/model/migration/Migration$Status;

    aput-object v1, v0, v13

    sget-object v1, Lru/rocketbank/core/model/migration/Migration$Status;->completed:Lru/rocketbank/core/model/migration/Migration$Status;

    aput-object v1, v0, v14

    sput-object v0, Lru/rocketbank/core/model/migration/Migration$Status;->$VALUES:[Lru/rocketbank/core/model/migration/Migration$Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lru/rocketbank/core/model/migration/Migration$Status;
    .locals 1

    .line 26
    const-class v0, Lru/rocketbank/core/model/migration/Migration$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lru/rocketbank/core/model/migration/Migration$Status;

    return-object p0
.end method

.method public static values()[Lru/rocketbank/core/model/migration/Migration$Status;
    .locals 1

    .line 26
    sget-object v0, Lru/rocketbank/core/model/migration/Migration$Status;->$VALUES:[Lru/rocketbank/core/model/migration/Migration$Status;

    invoke-virtual {v0}, [Lru/rocketbank/core/model/migration/Migration$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lru/rocketbank/core/model/migration/Migration$Status;

    return-object v0
.end method
