.class public final enum Lcom/flurry/sdk/ig;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/flurry/sdk/ig;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/flurry/sdk/ig;

.field public static final enum b:Lcom/flurry/sdk/ig;

.field public static final enum c:Lcom/flurry/sdk/ig;

.field public static final enum d:Lcom/flurry/sdk/ig;

.field public static final enum e:Lcom/flurry/sdk/ig;

.field public static final enum f:Lcom/flurry/sdk/ig;

.field public static final enum g:Lcom/flurry/sdk/ig;

.field private static final synthetic i:[Lcom/flurry/sdk/ig;


# instance fields
.field final h:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 10
    new-instance v0, Lcom/flurry/sdk/ig;

    const-string v1, "HW_MACHINE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/flurry/sdk/ig;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/sdk/ig;->a:Lcom/flurry/sdk/ig;

    .line 11
    new-instance v0, Lcom/flurry/sdk/ig;

    const-string v1, "MODEL"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/flurry/sdk/ig;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/sdk/ig;->b:Lcom/flurry/sdk/ig;

    .line 12
    new-instance v0, Lcom/flurry/sdk/ig;

    const-string v1, "BRAND"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/flurry/sdk/ig;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/sdk/ig;->c:Lcom/flurry/sdk/ig;

    .line 13
    new-instance v0, Lcom/flurry/sdk/ig;

    const-string v1, "ID"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/flurry/sdk/ig;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/sdk/ig;->d:Lcom/flurry/sdk/ig;

    .line 14
    new-instance v0, Lcom/flurry/sdk/ig;

    const-string v1, "DEVICE"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lcom/flurry/sdk/ig;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/sdk/ig;->e:Lcom/flurry/sdk/ig;

    .line 15
    new-instance v0, Lcom/flurry/sdk/ig;

    const-string v1, "PRODUCT"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v7}, Lcom/flurry/sdk/ig;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/sdk/ig;->f:Lcom/flurry/sdk/ig;

    .line 16
    new-instance v0, Lcom/flurry/sdk/ig;

    const-string v1, "VERSION_RELEASE"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8, v8}, Lcom/flurry/sdk/ig;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/sdk/ig;->g:Lcom/flurry/sdk/ig;

    const/4 v0, 0x7

    .line 9
    new-array v0, v0, [Lcom/flurry/sdk/ig;

    sget-object v1, Lcom/flurry/sdk/ig;->a:Lcom/flurry/sdk/ig;

    aput-object v1, v0, v2

    sget-object v1, Lcom/flurry/sdk/ig;->b:Lcom/flurry/sdk/ig;

    aput-object v1, v0, v3

    sget-object v1, Lcom/flurry/sdk/ig;->c:Lcom/flurry/sdk/ig;

    aput-object v1, v0, v4

    sget-object v1, Lcom/flurry/sdk/ig;->d:Lcom/flurry/sdk/ig;

    aput-object v1, v0, v5

    sget-object v1, Lcom/flurry/sdk/ig;->e:Lcom/flurry/sdk/ig;

    aput-object v1, v0, v6

    sget-object v1, Lcom/flurry/sdk/ig;->f:Lcom/flurry/sdk/ig;

    aput-object v1, v0, v7

    sget-object v1, Lcom/flurry/sdk/ig;->g:Lcom/flurry/sdk/ig;

    aput-object v1, v0, v8

    sput-object v0, Lcom/flurry/sdk/ig;->i:[Lcom/flurry/sdk/ig;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 22
    iput p3, p0, Lcom/flurry/sdk/ig;->h:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/flurry/sdk/ig;
    .locals 1

    .line 9
    const-class v0, Lcom/flurry/sdk/ig;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/flurry/sdk/ig;

    return-object p0
.end method

.method public static values()[Lcom/flurry/sdk/ig;
    .locals 1

    .line 9
    sget-object v0, Lcom/flurry/sdk/ig;->i:[Lcom/flurry/sdk/ig;

    invoke-virtual {v0}, [Lcom/flurry/sdk/ig;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/flurry/sdk/ig;

    return-object v0
.end method
