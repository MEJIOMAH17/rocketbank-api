.class public final Lru/rocketbank/core/manager/security/Android23TouchProvider$FingerPrintListener;
.super Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;
.source "Android23TouchProvider.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/core/manager/security/Android23TouchProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "FingerPrintListener"
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/core/manager/security/Android23TouchProvider;


# direct methods
.method public constructor <init>(Lru/rocketbank/core/manager/security/Android23TouchProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 281
    iput-object p1, p0, Lru/rocketbank/core/manager/security/Android23TouchProvider$FingerPrintListener;->this$0:Lru/rocketbank/core/manager/security/Android23TouchProvider;

    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 3

    .line 283
    sget-object v0, Lru/rocketbank/core/manager/security/Android23TouchProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onAuthenticationError: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    iget-object v0, p0, Lru/rocketbank/core/manager/security/Android23TouchProvider$FingerPrintListener;->this$0:Lru/rocketbank/core/manager/security/Android23TouchProvider;

    invoke-virtual {v0}, Lru/rocketbank/core/manager/security/Android23TouchProvider;->getListener()Lru/rocketbank/core/manager/security/RocketFingerPrintListener;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1

    :cond_0
    const-string/jumbo p2, "\u0427\u0442\u043e-\u0442\u043e \u043f\u043e\u0448\u043b\u043e \u043d\u0435 \u0442\u0430\u043a"

    :cond_1
    invoke-interface {v0, p1, p2}, Lru/rocketbank/core/manager/security/RocketFingerPrintListener;->onAuthenticationError(ILjava/lang/String;)V

    return-void

    :cond_2
    return-void
.end method

.method public final onAuthenticationFailed()V
    .locals 2

    .line 305
    sget-object v0, Lru/rocketbank/core/manager/security/Android23TouchProvider;->TAG:Ljava/lang/String;

    const-string v1, "onAuthenticationFailed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    iget-object v0, p0, Lru/rocketbank/core/manager/security/Android23TouchProvider$FingerPrintListener;->this$0:Lru/rocketbank/core/manager/security/Android23TouchProvider;

    invoke-virtual {v0}, Lru/rocketbank/core/manager/security/Android23TouchProvider;->getListener()Lru/rocketbank/core/manager/security/RocketFingerPrintListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lru/rocketbank/core/manager/security/RocketFingerPrintListener;->onAuthenticationFailed()V

    return-void

    :cond_0
    return-void
.end method

.method public final onAuthenticationHelp(ILjava/lang/CharSequence;)V
    .locals 3

    const-string v0, "helpString"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 289
    sget-object v0, Lru/rocketbank/core/manager/security/Android23TouchProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onAuthenticationHelp: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    iget-object v0, p0, Lru/rocketbank/core/manager/security/Android23TouchProvider$FingerPrintListener;->this$0:Lru/rocketbank/core/manager/security/Android23TouchProvider;

    invoke-virtual {v0}, Lru/rocketbank/core/manager/security/Android23TouchProvider;->getListener()Lru/rocketbank/core/manager/security/RocketFingerPrintListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lru/rocketbank/core/manager/security/RocketFingerPrintListener;->onAuthenticationHelp(ILjava/lang/String;)V

    return-void

    :cond_0
    return-void
.end method

.method public final onAuthenticationSucceeded(Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;)V
    .locals 3

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 294
    sget-object v0, Lru/rocketbank/core/manager/security/Android23TouchProvider;->TAG:Ljava/lang/String;

    const-string v1, "onAuthenticationSucceeded"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    invoke-virtual {p1}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;->getCryptoObject()Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;

    move-result-object p1

    const-string v0, "result.cryptoObject"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;->getCipher()Ljavax/crypto/Cipher;

    move-result-object p1

    .line 296
    iget-object v0, p0, Lru/rocketbank/core/manager/security/Android23TouchProvider$FingerPrintListener;->this$0:Lru/rocketbank/core/manager/security/Android23TouchProvider;

    invoke-virtual {v0}, Lru/rocketbank/core/manager/security/Android23TouchProvider;->gotValidToken()Z

    move-result v0

    if-nez v0, :cond_1

    .line 297
    iget-object p1, p0, Lru/rocketbank/core/manager/security/Android23TouchProvider$FingerPrintListener;->this$0:Lru/rocketbank/core/manager/security/Android23TouchProvider;

    invoke-virtual {p1}, Lru/rocketbank/core/manager/security/Android23TouchProvider;->getListener()Lru/rocketbank/core/manager/security/RocketFingerPrintListener;

    move-result-object p1

    if-eqz p1, :cond_0

    const/16 v0, 0x1d

    iget-object v1, p0, Lru/rocketbank/core/manager/security/Android23TouchProvider$FingerPrintListener;->this$0:Lru/rocketbank/core/manager/security/Android23TouchProvider;

    invoke-virtual {v1}, Lru/rocketbank/core/manager/security/Android23TouchProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f110476

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "context.getString(R.string.token_need_refresh)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v0, v1}, Lru/rocketbank/core/manager/security/RocketFingerPrintListener;->onAuthenticationHelp(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 299
    :cond_1
    iget-object v0, p0, Lru/rocketbank/core/manager/security/Android23TouchProvider$FingerPrintListener;->this$0:Lru/rocketbank/core/manager/security/Android23TouchProvider;

    const-string v1, "cipher"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lru/rocketbank/core/manager/security/Android23TouchProvider;->access$getToken(Lru/rocketbank/core/manager/security/Android23TouchProvider;Ljavax/crypto/Cipher;)Ljava/lang/String;

    move-result-object p1

    .line 300
    iget-object v0, p0, Lru/rocketbank/core/manager/security/Android23TouchProvider$FingerPrintListener;->this$0:Lru/rocketbank/core/manager/security/Android23TouchProvider;

    invoke-virtual {v0}, Lru/rocketbank/core/manager/security/Android23TouchProvider;->getListener()Lru/rocketbank/core/manager/security/RocketFingerPrintListener;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Lru/rocketbank/core/manager/security/RocketFingerPrintListener;->onAuthenticationSucceeded(Ljava/lang/String;)V

    return-void

    :cond_2
    return-void
.end method
