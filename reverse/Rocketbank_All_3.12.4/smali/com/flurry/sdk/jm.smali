.class public final enum Lcom/flurry/sdk/jm;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/flurry/sdk/jm;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/flurry/sdk/jm;

.field public static final enum b:Lcom/flurry/sdk/jm;

.field private static final synthetic e:[Lcom/flurry/sdk/jm;


# instance fields
.field public final c:I

.field public final d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 4
    new-instance v0, Lcom/flurry/sdk/jm;

    const-string v1, "DeviceId"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/flurry/sdk/jm;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/sdk/jm;->a:Lcom/flurry/sdk/jm;

    .line 5
    new-instance v0, Lcom/flurry/sdk/jm;

    const-string v1, "AndroidAdvertisingId"

    const/4 v3, 0x1

    const/16 v4, 0xd

    invoke-direct {v0, v1, v3, v4}, Lcom/flurry/sdk/jm;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/sdk/jm;->b:Lcom/flurry/sdk/jm;

    const/4 v0, 0x2

    .line 3
    new-array v0, v0, [Lcom/flurry/sdk/jm;

    sget-object v1, Lcom/flurry/sdk/jm;->a:Lcom/flurry/sdk/jm;

    aput-object v1, v0, v2

    sget-object v1, Lcom/flurry/sdk/jm;->b:Lcom/flurry/sdk/jm;

    aput-object v1, v0, v3

    sput-object v0, Lcom/flurry/sdk/jm;->e:[Lcom/flurry/sdk/jm;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)V"
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 10
    iput p3, p0, Lcom/flurry/sdk/jm;->c:I

    const/4 p1, 0x1

    .line 11
    iput-boolean p1, p0, Lcom/flurry/sdk/jm;->d:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/flurry/sdk/jm;
    .locals 1

    .line 3
    const-class v0, Lcom/flurry/sdk/jm;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/flurry/sdk/jm;

    return-object p0
.end method

.method public static values()[Lcom/flurry/sdk/jm;
    .locals 1

    .line 3
    sget-object v0, Lcom/flurry/sdk/jm;->e:[Lcom/flurry/sdk/jm;

    invoke-virtual {v0}, [Lcom/flurry/sdk/jm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/flurry/sdk/jm;

    return-object v0
.end method
