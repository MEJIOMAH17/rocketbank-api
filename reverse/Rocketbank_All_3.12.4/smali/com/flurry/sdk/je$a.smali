.class final enum Lcom/flurry/sdk/je$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/je;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/flurry/sdk/je$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/flurry/sdk/je$a;

.field public static final enum b:Lcom/flurry/sdk/je$a;

.field public static final enum c:Lcom/flurry/sdk/je$a;

.field public static final enum d:Lcom/flurry/sdk/je$a;

.field public static final enum e:Lcom/flurry/sdk/je$a;

.field private static final synthetic f:[Lcom/flurry/sdk/je$a;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 51
    new-instance v0, Lcom/flurry/sdk/je$a;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/flurry/sdk/je$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/sdk/je$a;->a:Lcom/flurry/sdk/je$a;

    new-instance v0, Lcom/flurry/sdk/je$a;

    const-string v1, "ADVERTISING"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/flurry/sdk/je$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/sdk/je$a;->b:Lcom/flurry/sdk/je$a;

    new-instance v0, Lcom/flurry/sdk/je$a;

    const-string v1, "DEVICE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/flurry/sdk/je$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/sdk/je$a;->c:Lcom/flurry/sdk/je$a;

    new-instance v0, Lcom/flurry/sdk/je$a;

    const-string v1, "REPORTED_IDS"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/flurry/sdk/je$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/sdk/je$a;->d:Lcom/flurry/sdk/je$a;

    new-instance v0, Lcom/flurry/sdk/je$a;

    const-string v1, "FINISHED"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/flurry/sdk/je$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/sdk/je$a;->e:Lcom/flurry/sdk/je$a;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/flurry/sdk/je$a;

    sget-object v1, Lcom/flurry/sdk/je$a;->a:Lcom/flurry/sdk/je$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/flurry/sdk/je$a;->b:Lcom/flurry/sdk/je$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/flurry/sdk/je$a;->c:Lcom/flurry/sdk/je$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/flurry/sdk/je$a;->d:Lcom/flurry/sdk/je$a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/flurry/sdk/je$a;->e:Lcom/flurry/sdk/je$a;

    aput-object v1, v0, v6

    sput-object v0, Lcom/flurry/sdk/je$a;->f:[Lcom/flurry/sdk/je$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/flurry/sdk/je$a;
    .locals 1

    .line 51
    const-class v0, Lcom/flurry/sdk/je$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/flurry/sdk/je$a;

    return-object p0
.end method

.method public static values()[Lcom/flurry/sdk/je$a;
    .locals 1

    .line 51
    sget-object v0, Lcom/flurry/sdk/je$a;->f:[Lcom/flurry/sdk/je$a;

    invoke-virtual {v0}, [Lcom/flurry/sdk/je$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/flurry/sdk/je$a;

    return-object v0
.end method
