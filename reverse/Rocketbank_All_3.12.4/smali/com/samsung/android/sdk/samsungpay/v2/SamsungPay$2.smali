.class final Lcom/samsung/android/sdk/samsungpay/v2/SamsungPay$2;
.super Lcom/samsung/android/sdk/samsungpay/v2/PublicMethod;
.source "SamsungPay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/samsungpay/v2/SamsungPay;->goToUpdatePage()V
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

    .line 299
    iput-object p1, p0, Lcom/samsung/android/sdk/samsungpay/v2/SamsungPay$2;->this$0:Lcom/samsung/android/sdk/samsungpay/v2/SamsungPay;

    invoke-direct {p0, p2, p3, p4}, Lcom/samsung/android/sdk/samsungpay/v2/PublicMethod;-><init>(Landroid/content/Context;Lcom/samsung/android/sdk/samsungpay/v2/PartnerInfo;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final run(ILandroid/os/Bundle;)V
    .locals 2

    if-nez p1, :cond_0

    const-string p2, "SPAYSDK:SamsungPay"

    const-string v0, "goToUpdatePage init error "

    .line 303
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string p1, "SPAYSDK:SamsungPay"

    const-string p2, "goToUpdatePage"

    .line 309
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    :try_start_0
    iget-object p1, p0, Lcom/samsung/android/sdk/samsungpay/v2/SamsungPay$2;->this$0:Lcom/samsung/android/sdk/samsungpay/v2/SamsungPay;

    iget-object p1, p1, Lcom/samsung/android/sdk/samsungpay/v2/SamsungPay;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string p2, "com.samsung.android.spay"

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 314
    iget p1, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    const p2, 0x186a0

    div-int/2addr p1, p2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    const-string p2, "ro.csc.countryiso_code"

    .line 320
    invoke-static {p2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p2

    .line 322
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/16 v1, 0x834

    if-lt p1, v1, :cond_1

    const-string p1, "KR"

    .line 323
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "samsungpay://launch?action=aboutsamsungpay"

    const-string p2, "android.intent.action.VIEW"

    .line 325
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 326
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_0

    .line 328
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/sdk/samsungpay/v2/SamsungPay$2;->this$0:Lcom/samsung/android/sdk/samsungpay/v2/SamsungPay;

    iget-object p1, p1, Lcom/samsung/android/sdk/samsungpay/v2/SamsungPay;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string p2, "com.samsung.android.spay"

    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 330
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    .line 331
    new-instance p2, Landroid/content/ComponentName;

    const-string v1, "com.samsung.android.spay"

    invoke-direct {p2, v1, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :goto_0
    const p1, 0x10008000

    .line 333
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 335
    :try_start_1
    iget-object p1, p0, Lcom/samsung/android/sdk/samsungpay/v2/SamsungPay$2;->this$0:Lcom/samsung/android/sdk/samsungpay/v2/SamsungPay;

    iget-object p1, p1, Lcom/samsung/android/sdk/samsungpay/v2/SamsungPay;->context:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "SPAYSDK:SamsungPay"

    const-string v0, "Samsung Pay Activity not found"

    .line 337
    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    invoke-virtual {p1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    return-void

    :catch_1
    const-string p1, "SPAYSDK:SamsungPay"

    const-string p2, "SamsungPay App is not found."

    .line 316
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
