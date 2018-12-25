.class final Lcom/samsung/android/sdk/samsungpay/v2/SamsungPay$3;
.super Lcom/samsung/android/sdk/samsungpay/v2/PublicMethod;
.source "SamsungPay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/samsungpay/v2/SamsungPay;->activateSamsungPay()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/samsungpay/v2/SamsungPay;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/samsungpay/v2/SamsungPay;Landroid/content/Context;Lcom/samsung/android/sdk/samsungpay/v2/PartnerInfo;Ljava/lang/String;)V
    .locals 0

    .line 386
    iput-object p1, p0, Lcom/samsung/android/sdk/samsungpay/v2/SamsungPay$3;->this$0:Lcom/samsung/android/sdk/samsungpay/v2/SamsungPay;

    invoke-direct {p0, p2, p3, p4}, Lcom/samsung/android/sdk/samsungpay/v2/PublicMethod;-><init>(Landroid/content/Context;Lcom/samsung/android/sdk/samsungpay/v2/PartnerInfo;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final run(ILandroid/os/Bundle;)V
    .locals 2

    if-nez p1, :cond_0

    const-string p2, "SPAYSDK:SamsungPay"

    const-string v0, "activateSamsungPay init error "

    .line 390
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 393
    :cond_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 394
    iget-object p2, p0, Lcom/samsung/android/sdk/samsungpay/v2/SamsungPay$3;->this$0:Lcom/samsung/android/sdk/samsungpay/v2/SamsungPay;

    iget-object p2, p2, Lcom/samsung/android/sdk/samsungpay/v2/SamsungPay;->context:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    const-string v0, "com.samsung.android.spay"

    invoke-virtual {p2, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    .line 395
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p2

    .line 396
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.samsung.android.spay"

    invoke-direct {v0, v1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 p2, 0x10000000

    .line 397
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string p2, "activate_sp_from_sdk"

    const/4 v0, 0x1

    .line 398
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p2, "SPAYSDK:SamsungPay"

    const-string v0, "ACTIVATE_SP_FROM_SDK"

    .line 399
    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    :try_start_0
    iget-object p2, p0, Lcom/samsung/android/sdk/samsungpay/v2/SamsungPay$3;->this$0:Lcom/samsung/android/sdk/samsungpay/v2/SamsungPay;

    iget-object p2, p2, Lcom/samsung/android/sdk/samsungpay/v2/SamsungPay;->context:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "SPAYSDK:SamsungPay"

    const-string v0, "Samsung Pay Activity not found"

    .line 403
    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    invoke-virtual {p1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    return-void
.end method
