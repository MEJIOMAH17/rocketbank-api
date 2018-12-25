.class public final enum Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper$BindingResult;
.super Ljava/lang/Enum;
.source "ServiceHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BindingResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper$BindingResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper$BindingResult;

.field public static final enum BINDING_SERVICE:Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper$BindingResult;

.field public static final enum BINDING_SERVICE_ALREADY:Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper$BindingResult;

.field public static final enum CANNOT_BIND:Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper$BindingResult;

.field public static final enum DISCONNECTED_SERVICE:Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper$BindingResult;

.field public static final enum EXIST_BINDER:Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper$BindingResult;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 27
    new-instance v0, Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper$BindingResult;

    const-string v1, "EXIST_BINDER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper$BindingResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper$BindingResult;->EXIST_BINDER:Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper$BindingResult;

    new-instance v0, Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper$BindingResult;

    const-string v1, "BINDING_SERVICE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper$BindingResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper$BindingResult;->BINDING_SERVICE:Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper$BindingResult;

    new-instance v0, Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper$BindingResult;

    const-string v1, "BINDING_SERVICE_ALREADY"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper$BindingResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper$BindingResult;->BINDING_SERVICE_ALREADY:Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper$BindingResult;

    new-instance v0, Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper$BindingResult;

    const-string v1, "CANNOT_BIND"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper$BindingResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper$BindingResult;->CANNOT_BIND:Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper$BindingResult;

    new-instance v0, Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper$BindingResult;

    const-string v1, "DISCONNECTED_SERVICE"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper$BindingResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper$BindingResult;->DISCONNECTED_SERVICE:Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper$BindingResult;

    const/4 v0, 0x5

    .line 26
    new-array v0, v0, [Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper$BindingResult;

    sget-object v1, Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper$BindingResult;->EXIST_BINDER:Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper$BindingResult;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper$BindingResult;->BINDING_SERVICE:Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper$BindingResult;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper$BindingResult;->BINDING_SERVICE_ALREADY:Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper$BindingResult;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper$BindingResult;->CANNOT_BIND:Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper$BindingResult;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper$BindingResult;->DISCONNECTED_SERVICE:Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper$BindingResult;

    aput-object v1, v0, v6

    sput-object v0, Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper$BindingResult;->$VALUES:[Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper$BindingResult;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper$BindingResult;
    .locals 1

    .line 26
    const-class v0, Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper$BindingResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper$BindingResult;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper$BindingResult;
    .locals 1

    .line 26
    sget-object v0, Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper$BindingResult;->$VALUES:[Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper$BindingResult;

    invoke-virtual {v0}, [Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper$BindingResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper$BindingResult;

    return-object v0
.end method
