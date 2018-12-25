.class public final enum Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$SdkApiLevel;
.super Ljava/lang/Enum;
.source "SpaySdk.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SdkApiLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$SdkApiLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$SdkApiLevel;

.field public static final enum LEVEL_1_1:Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$SdkApiLevel;

.field public static final enum LEVEL_1_2:Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$SdkApiLevel;

.field public static final enum LEVEL_1_3:Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$SdkApiLevel;

.field public static final enum LEVEL_1_4:Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$SdkApiLevel;

.field public static final enum LEVEL_1_5:Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$SdkApiLevel;

.field public static final enum LEVEL_1_6:Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$SdkApiLevel;

.field public static final enum LEVEL_1_7:Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$SdkApiLevel;

.field public static final enum LEVEL_1_8:Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$SdkApiLevel;


# instance fields
.field private api_level:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 84
    new-instance v0, Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$SdkApiLevel;

    const-string v1, "LEVEL_1_1"

    const-string v2, "1.1"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$SdkApiLevel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$SdkApiLevel;->LEVEL_1_1:Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$SdkApiLevel;

    .line 85
    new-instance v0, Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$SdkApiLevel;

    const-string v1, "LEVEL_1_2"

    const-string v2, "1.2"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$SdkApiLevel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$SdkApiLevel;->LEVEL_1_2:Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$SdkApiLevel;

    .line 86
    new-instance v0, Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$SdkApiLevel;

    const-string v1, "LEVEL_1_3"

    const-string v2, "1.3"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$SdkApiLevel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$SdkApiLevel;->LEVEL_1_3:Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$SdkApiLevel;

    .line 87
    new-instance v0, Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$SdkApiLevel;

    const-string v1, "LEVEL_1_4"

    const-string v2, "1.4"

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v2}, Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$SdkApiLevel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$SdkApiLevel;->LEVEL_1_4:Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$SdkApiLevel;

    .line 88
    new-instance v0, Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$SdkApiLevel;

    const-string v1, "LEVEL_1_5"

    const-string v2, "1.5"

    const/4 v7, 0x4

    invoke-direct {v0, v1, v7, v2}, Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$SdkApiLevel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$SdkApiLevel;->LEVEL_1_5:Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$SdkApiLevel;

    .line 89
    new-instance v0, Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$SdkApiLevel;

    const-string v1, "LEVEL_1_6"

    const-string v2, "1.6"

    const/4 v8, 0x5

    invoke-direct {v0, v1, v8, v2}, Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$SdkApiLevel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$SdkApiLevel;->LEVEL_1_6:Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$SdkApiLevel;

    .line 90
    new-instance v0, Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$SdkApiLevel;

    const-string v1, "LEVEL_1_7"

    const-string v2, "1.7"

    const/4 v9, 0x6

    invoke-direct {v0, v1, v9, v2}, Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$SdkApiLevel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$SdkApiLevel;->LEVEL_1_7:Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$SdkApiLevel;

    .line 91
    new-instance v0, Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$SdkApiLevel;

    const-string v1, "LEVEL_1_8"

    const-string v2, "1.8"

    const/4 v10, 0x7

    invoke-direct {v0, v1, v10, v2}, Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$SdkApiLevel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$SdkApiLevel;->LEVEL_1_8:Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$SdkApiLevel;

    const/16 v0, 0x8

    .line 83
    new-array v0, v0, [Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$SdkApiLevel;

    sget-object v1, Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$SdkApiLevel;->LEVEL_1_1:Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$SdkApiLevel;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$SdkApiLevel;->LEVEL_1_2:Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$SdkApiLevel;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$SdkApiLevel;->LEVEL_1_3:Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$SdkApiLevel;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$SdkApiLevel;->LEVEL_1_4:Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$SdkApiLevel;

    aput-object v1, v0, v6

    sget-object v1, Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$SdkApiLevel;->LEVEL_1_5:Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$SdkApiLevel;

    aput-object v1, v0, v7

    sget-object v1, Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$SdkApiLevel;->LEVEL_1_6:Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$SdkApiLevel;

    aput-object v1, v0, v8

    sget-object v1, Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$SdkApiLevel;->LEVEL_1_7:Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$SdkApiLevel;

    aput-object v1, v0, v9

    sget-object v1, Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$SdkApiLevel;->LEVEL_1_8:Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$SdkApiLevel;

    aput-object v1, v0, v10

    sput-object v0, Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$SdkApiLevel;->$VALUES:[Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$SdkApiLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 95
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 96
    iput-object p3, p0, Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$SdkApiLevel;->api_level:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$SdkApiLevel;
    .locals 1

    .line 83
    const-class v0, Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$SdkApiLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$SdkApiLevel;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$SdkApiLevel;
    .locals 1

    .line 83
    sget-object v0, Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$SdkApiLevel;->$VALUES:[Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$SdkApiLevel;

    invoke-virtual {v0}, [Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$SdkApiLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$SdkApiLevel;

    return-object v0
.end method


# virtual methods
.method public final getLevel()Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/samsung/android/sdk/samsungpay/v2/SpaySdk$SdkApiLevel;->api_level:Ljava/lang/String;

    return-object v0
.end method
