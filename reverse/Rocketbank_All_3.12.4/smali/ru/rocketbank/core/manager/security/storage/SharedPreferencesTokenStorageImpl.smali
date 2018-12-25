.class public final Lru/rocketbank/core/manager/security/storage/SharedPreferencesTokenStorageImpl;
.super Ljava/lang/Object;
.source "SharedPreferencesTokenStorageImpl.kt"

# interfaces
.implements Lru/rocketbank/core/manager/security/storage/TouchTokenStorage;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/core/manager/security/storage/SharedPreferencesTokenStorageImpl$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSharedPreferencesTokenStorageImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SharedPreferencesTokenStorageImpl.kt\nru/rocketbank/core/manager/security/storage/SharedPreferencesTokenStorageImpl\n*L\n1#1,52:1\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lru/rocketbank/core/manager/security/storage/SharedPreferencesTokenStorageImpl$Companion;

.field private static final KEY_VERSION:Ljava/lang/String; = "KEY_VERSION"

.field private static final PREFERENCES_NAME:Ljava/lang/String; = "jumbomode_jet.r34"

.field private static final TAG:Ljava/lang/String; = "SharedTokenStorageImpl"

.field private static final TOKEN_KEY:Ljava/lang/String; = "TOKEN_KEY"

.field private static final VERSION:I = 0x1


# instance fields
.field private final context:Landroid/content/Context;

.field private final preferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/core/manager/security/storage/SharedPreferencesTokenStorageImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/core/manager/security/storage/SharedPreferencesTokenStorageImpl$Companion;-><init>(B)V

    sput-object v0, Lru/rocketbank/core/manager/security/storage/SharedPreferencesTokenStorageImpl;->Companion:Lru/rocketbank/core/manager/security/storage/SharedPreferencesTokenStorageImpl$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/rocketbank/core/manager/security/storage/SharedPreferencesTokenStorageImpl;->context:Landroid/content/Context;

    .line 13
    iget-object p1, p0, Lru/rocketbank/core/manager/security/storage/SharedPreferencesTokenStorageImpl;->context:Landroid/content/Context;

    sget-object v0, Lru/rocketbank/core/manager/security/storage/SharedPreferencesTokenStorageImpl;->PREFERENCES_NAME:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/core/manager/security/storage/SharedPreferencesTokenStorageImpl;->preferences:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method public final hasValidToken()Z
    .locals 2

    .line 38
    iget-object v0, p0, Lru/rocketbank/core/manager/security/storage/SharedPreferencesTokenStorageImpl;->preferences:Landroid/content/SharedPreferences;

    sget-object v1, Lru/rocketbank/core/manager/security/storage/SharedPreferencesTokenStorageImpl;->TOKEN_KEY:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final invalidateToken()V
    .locals 2

    .line 41
    iget-object v0, p0, Lru/rocketbank/core/manager/security/storage/SharedPreferencesTokenStorageImpl;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lru/rocketbank/core/manager/security/storage/SharedPreferencesTokenStorageImpl;->TOKEN_KEY:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final readToken(Ljavax/crypto/Cipher;)Ljava/lang/String;
    .locals 3

    const-string v0, "cipher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 28
    :try_start_0
    iget-object v1, p0, Lru/rocketbank/core/manager/security/storage/SharedPreferencesTokenStorageImpl;->preferences:Landroid/content/SharedPreferences;

    sget-object v2, Lru/rocketbank/core/manager/security/storage/SharedPreferencesTokenStorageImpl;->TOKEN_KEY:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 32
    invoke-static {v1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 33
    invoke-virtual {p1, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    const-string v0, "decrypted"

    .line 35
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v1

    :catch_0
    return-object v0
.end method

.method public final saveToken(Ljava/lang/String;Ljavax/crypto/Cipher;)V
    .locals 3

    const-string v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cipher"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    sget-object v0, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const-string v1, "(this as java.lang.String).getBytes(charset)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-virtual {p2, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p2

    .line 18
    iget-object v0, p0, Lru/rocketbank/core/manager/security/storage/SharedPreferencesTokenStorageImpl;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 19
    sget-object v1, Lru/rocketbank/core/manager/security/storage/SharedPreferencesTokenStorageImpl;->TOKEN_KEY:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p2, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    .line 20
    sget-object v0, Lru/rocketbank/core/manager/security/storage/SharedPreferencesTokenStorageImpl;->KEY_VERSION:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 22
    sget-object p2, Lru/rocketbank/core/manager/security/storage/SharedPreferencesTokenStorageImpl;->TAG:Ljava/lang/String;

    const-string v0, "token saved "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
