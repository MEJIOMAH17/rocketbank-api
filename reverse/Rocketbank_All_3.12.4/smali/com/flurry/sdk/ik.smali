.class public final enum Lcom/flurry/sdk/ik;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/flurry/sdk/ik;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/flurry/sdk/ik;

.field public static final enum b:Lcom/flurry/sdk/ik;

.field public static final enum c:Lcom/flurry/sdk/ik;

.field public static final enum d:Lcom/flurry/sdk/ik;

.field private static final synthetic f:[Lcom/flurry/sdk/ik;


# instance fields
.field e:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 7
    new-instance v0, Lcom/flurry/sdk/ik;

    const-string v1, "COMPLETE"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/flurry/sdk/ik;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/sdk/ik;->a:Lcom/flurry/sdk/ik;

    .line 8
    new-instance v0, Lcom/flurry/sdk/ik;

    const-string v1, "TIMEOUT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v4}, Lcom/flurry/sdk/ik;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/sdk/ik;->b:Lcom/flurry/sdk/ik;

    .line 9
    new-instance v0, Lcom/flurry/sdk/ik;

    const-string v1, "INVALID_RESPONSE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v4, v5}, Lcom/flurry/sdk/ik;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/sdk/ik;->c:Lcom/flurry/sdk/ik;

    .line 10
    new-instance v0, Lcom/flurry/sdk/ik;

    const-string v1, "PENDING_COMPLETION"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v5, v6}, Lcom/flurry/sdk/ik;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/sdk/ik;->d:Lcom/flurry/sdk/ik;

    .line 6
    new-array v0, v6, [Lcom/flurry/sdk/ik;

    sget-object v1, Lcom/flurry/sdk/ik;->a:Lcom/flurry/sdk/ik;

    aput-object v1, v0, v2

    sget-object v1, Lcom/flurry/sdk/ik;->b:Lcom/flurry/sdk/ik;

    aput-object v1, v0, v3

    sget-object v1, Lcom/flurry/sdk/ik;->c:Lcom/flurry/sdk/ik;

    aput-object v1, v0, v4

    sget-object v1, Lcom/flurry/sdk/ik;->d:Lcom/flurry/sdk/ik;

    aput-object v1, v0, v5

    sput-object v0, Lcom/flurry/sdk/ik;->f:[Lcom/flurry/sdk/ik;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 15
    iput p3, p0, Lcom/flurry/sdk/ik;->e:I

    return-void
.end method

.method public static a(I)Lcom/flurry/sdk/ik;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 31
    :pswitch_0
    sget-object p0, Lcom/flurry/sdk/ik;->d:Lcom/flurry/sdk/ik;

    return-object p0

    .line 29
    :pswitch_1
    sget-object p0, Lcom/flurry/sdk/ik;->c:Lcom/flurry/sdk/ik;

    return-object p0

    .line 27
    :pswitch_2
    sget-object p0, Lcom/flurry/sdk/ik;->b:Lcom/flurry/sdk/ik;

    return-object p0

    .line 25
    :pswitch_3
    sget-object p0, Lcom/flurry/sdk/ik;->a:Lcom/flurry/sdk/ik;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/flurry/sdk/ik;
    .locals 1

    .line 6
    const-class v0, Lcom/flurry/sdk/ik;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/flurry/sdk/ik;

    return-object p0
.end method

.method public static values()[Lcom/flurry/sdk/ik;
    .locals 1

    .line 6
    sget-object v0, Lcom/flurry/sdk/ik;->f:[Lcom/flurry/sdk/ik;

    invoke-virtual {v0}, [Lcom/flurry/sdk/ik;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/flurry/sdk/ik;

    return-object v0
.end method
