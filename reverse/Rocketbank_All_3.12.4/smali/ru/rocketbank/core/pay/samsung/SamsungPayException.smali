.class public final Lru/rocketbank/core/pay/samsung/SamsungPayException;
.super Ljava/lang/RuntimeException;
.source "RxSPay.kt"


# instance fields
.field private final error:I

.field private final errorData:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(ILandroid/os/Bundle;)V
    .locals 0

    .line 185
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    iput p1, p0, Lru/rocketbank/core/pay/samsung/SamsungPayException;->error:I

    iput-object p2, p0, Lru/rocketbank/core/pay/samsung/SamsungPayException;->errorData:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final getError()I
    .locals 1

    .line 185
    iget v0, p0, Lru/rocketbank/core/pay/samsung/SamsungPayException;->error:I

    return v0
.end method

.method public final getErrorData()Landroid/os/Bundle;
    .locals 1

    .line 185
    iget-object v0, p0, Lru/rocketbank/core/pay/samsung/SamsungPayException;->errorData:Landroid/os/Bundle;

    return-object v0
.end method
