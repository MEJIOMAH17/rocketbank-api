.class final synthetic Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper$4;
.super Ljava/lang/Object;
.source "ServiceHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$samsung$android$sdk$samsungpay$v2$ServiceHelper$BindingResult:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 115
    invoke-static {}, Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper$BindingResult;->values()[Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper$BindingResult;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper$4;->$SwitchMap$com$samsung$android$sdk$samsungpay$v2$ServiceHelper$BindingResult:[I

    :try_start_0
    sget-object v0, Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper$4;->$SwitchMap$com$samsung$android$sdk$samsungpay$v2$ServiceHelper$BindingResult:[I

    sget-object v1, Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper$BindingResult;->BINDING_SERVICE:Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper$BindingResult;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper$BindingResult;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper$4;->$SwitchMap$com$samsung$android$sdk$samsungpay$v2$ServiceHelper$BindingResult:[I

    sget-object v1, Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper$BindingResult;->BINDING_SERVICE_ALREADY:Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper$BindingResult;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper$BindingResult;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper$4;->$SwitchMap$com$samsung$android$sdk$samsungpay$v2$ServiceHelper$BindingResult:[I

    sget-object v1, Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper$BindingResult;->CANNOT_BIND:Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper$BindingResult;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper$BindingResult;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper$4;->$SwitchMap$com$samsung$android$sdk$samsungpay$v2$ServiceHelper$BindingResult:[I

    sget-object v1, Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper$BindingResult;->EXIST_BINDER:Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper$BindingResult;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper$BindingResult;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method
