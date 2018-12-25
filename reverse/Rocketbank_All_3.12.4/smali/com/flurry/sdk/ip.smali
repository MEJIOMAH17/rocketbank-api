.class public final enum Lcom/flurry/sdk/ip;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/flurry/sdk/ip;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/flurry/sdk/ip;

.field public static final enum b:Lcom/flurry/sdk/ip;

.field public static final enum c:Lcom/flurry/sdk/ip;

.field private static final synthetic f:[Lcom/flurry/sdk/ip;


# instance fields
.field d:Ljava/lang/String;

.field e:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 4
    new-instance v0, Lcom/flurry/sdk/ip;

    const-string v1, "GET"

    const-string v2, "GET"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2, v3}, Lcom/flurry/sdk/ip;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/flurry/sdk/ip;->a:Lcom/flurry/sdk/ip;

    .line 5
    new-instance v0, Lcom/flurry/sdk/ip;

    const-string v1, "PUT"

    const-string v2, "PUT"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2, v4}, Lcom/flurry/sdk/ip;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/flurry/sdk/ip;->b:Lcom/flurry/sdk/ip;

    .line 6
    new-instance v0, Lcom/flurry/sdk/ip;

    const-string v1, "POST"

    const-string v2, "POST"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2, v5}, Lcom/flurry/sdk/ip;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/flurry/sdk/ip;->c:Lcom/flurry/sdk/ip;

    const/4 v0, 0x3

    .line 3
    new-array v0, v0, [Lcom/flurry/sdk/ip;

    sget-object v1, Lcom/flurry/sdk/ip;->a:Lcom/flurry/sdk/ip;

    aput-object v1, v0, v3

    sget-object v1, Lcom/flurry/sdk/ip;->b:Lcom/flurry/sdk/ip;

    aput-object v1, v0, v4

    sget-object v1, Lcom/flurry/sdk/ip;->c:Lcom/flurry/sdk/ip;

    aput-object v1, v0, v5

    sput-object v0, Lcom/flurry/sdk/ip;->f:[Lcom/flurry/sdk/ip;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 12
    iput-object p3, p0, Lcom/flurry/sdk/ip;->d:Ljava/lang/String;

    .line 13
    iput p4, p0, Lcom/flurry/sdk/ip;->e:I

    return-void
.end method

.method public static a(I)Lcom/flurry/sdk/ip;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 23
    :pswitch_0
    sget-object p0, Lcom/flurry/sdk/ip;->c:Lcom/flurry/sdk/ip;

    return-object p0

    .line 21
    :pswitch_1
    sget-object p0, Lcom/flurry/sdk/ip;->b:Lcom/flurry/sdk/ip;

    return-object p0

    .line 19
    :pswitch_2
    sget-object p0, Lcom/flurry/sdk/ip;->a:Lcom/flurry/sdk/ip;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/flurry/sdk/ip;
    .locals 1

    .line 3
    const-class v0, Lcom/flurry/sdk/ip;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/flurry/sdk/ip;

    return-object p0
.end method

.method public static values()[Lcom/flurry/sdk/ip;
    .locals 1

    .line 3
    sget-object v0, Lcom/flurry/sdk/ip;->f:[Lcom/flurry/sdk/ip;

    invoke-virtual {v0}, [Lcom/flurry/sdk/ip;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/flurry/sdk/ip;

    return-object v0
.end method
