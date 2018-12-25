.class public final Lru/rocketbank/core/manager/security/storage/FileTokenStorageImpl;
.super Ljava/lang/Object;
.source "FileTokenStorageImpl.kt"

# interfaces
.implements Lru/rocketbank/core/manager/security/storage/TouchTokenStorage;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/core/manager/security/storage/FileTokenStorageImpl$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFileTokenStorageImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FileTokenStorageImpl.kt\nru/rocketbank/core/manager/security/storage/FileTokenStorageImpl\n*L\n1#1,84:1\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lru/rocketbank/core/manager/security/storage/FileTokenStorageImpl$Companion;

.field private static final FILE_NAME:Ljava/lang/String; = "jumbomode_jet.r34"

.field private static final KEY_VERSION:Ljava/lang/String; = "KEY_VERSION"

.field private static final TAG:Ljava/lang/String; = "FileTokenStorageImpl"

.field private static final VERSION:I = 0x1


# instance fields
.field private final context:Landroid/content/Context;

.field private final preferences:Landroid/content/SharedPreferences;

.field private final tokenFile:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/core/manager/security/storage/FileTokenStorageImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/core/manager/security/storage/FileTokenStorageImpl$Companion;-><init>(B)V

    sput-object v0, Lru/rocketbank/core/manager/security/storage/FileTokenStorageImpl;->Companion:Lru/rocketbank/core/manager/security/storage/FileTokenStorageImpl$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/rocketbank/core/manager/security/storage/FileTokenStorageImpl;->context:Landroid/content/Context;

    .line 17
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lru/rocketbank/core/manager/security/storage/FileTokenStorageImpl;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    const-string v1, "context.filesDir"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lru/rocketbank/core/manager/security/storage/FileTokenStorageImpl;->FILE_NAME:Ljava/lang/String;

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lru/rocketbank/core/manager/security/storage/FileTokenStorageImpl;->tokenFile:Ljava/io/File;

    .line 18
    iget-object p1, p0, Lru/rocketbank/core/manager/security/storage/FileTokenStorageImpl;->context:Landroid/content/Context;

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/core/manager/security/storage/FileTokenStorageImpl;->preferences:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method public final hasValidToken()Z
    .locals 5

    .line 52
    iget-object v0, p0, Lru/rocketbank/core/manager/security/storage/FileTokenStorageImpl;->tokenFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/core/manager/security/storage/FileTokenStorageImpl;->tokenFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final invalidateToken()V
    .locals 1

    .line 55
    iget-object v0, p0, Lru/rocketbank/core/manager/security/storage/FileTokenStorageImpl;->tokenFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lru/rocketbank/core/manager/security/storage/FileTokenStorageImpl;->tokenFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method

.method public final readToken(Ljavax/crypto/Cipher;)Ljava/lang/String;
    .locals 5

    const-string v0, "cipher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lru/rocketbank/core/manager/security/storage/FileTokenStorageImpl;->tokenFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 1061
    iget-object v0, p0, Lru/rocketbank/core/manager/security/storage/FileTokenStorageImpl;->preferences:Landroid/content/SharedPreferences;

    sget-object v2, Lru/rocketbank/core/manager/security/storage/FileTokenStorageImpl;->KEY_VERSION:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    .line 1063
    :try_start_0
    iget-object v4, p0, Lru/rocketbank/core/manager/security/storage/FileTokenStorageImpl;->tokenFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    if-gtz v0, :cond_0

    .line 1064
    iget-object v4, p0, Lru/rocketbank/core/manager/security/storage/FileTokenStorageImpl;->tokenFile:Ljava/io/File;

    invoke-static {v4}, Lorg/apache/commons/io/FileUtils;->readFileToByteArray(Ljava/io/File;)[B

    move-result-object v4

    .line 1065
    invoke-static {v4, v3}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v3

    .line 1066
    iget-object v4, p0, Lru/rocketbank/core/manager/security/storage/FileTokenStorageImpl;->tokenFile:Ljava/io/File;

    invoke-static {v4, v3}, Lorg/apache/commons/io/FileUtils;->writeByteArrayToFile(Ljava/io/File;[B)V

    .line 1067
    sget-object v3, Lru/rocketbank/core/manager/security/storage/FileTokenStorageImpl;->TAG:Ljava/lang/String;

    const-string v4, "migration: ok"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    if-gtz v0, :cond_1

    .line 1073
    iget-object v0, p0, Lru/rocketbank/core/manager/security/storage/FileTokenStorageImpl;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v3, Lru/rocketbank/core/manager/security/storage/FileTokenStorageImpl;->KEY_VERSION:Ljava/lang/String;

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 40
    :cond_1
    :try_start_1
    iget-object v0, p0, Lru/rocketbank/core/manager/security/storage/FileTokenStorageImpl;->tokenFile:Ljava/io/File;

    invoke-static {v0}, Lorg/apache/commons/io/FileUtils;->readFileToByteArray(Ljava/io/File;)[B

    move-result-object v0

    .line 41
    invoke-virtual {p1, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    .line 42
    sget-object v0, Lru/rocketbank/core/manager/security/storage/FileTokenStorageImpl;->TAG:Ljava/lang/String;

    const-string v2, "token decode: ok"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "decoded"

    .line 43
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v1, v2

    goto :goto_0

    :catch_0
    move-exception p1

    .line 45
    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lru/rocketbank/core/manager/AnalyticsManager;->logException(Ljava/lang/Throwable;)V

    :goto_0
    return-object v1

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 1070
    :try_start_2
    new-instance v1, Lru/rocketbank/core/manager/security/RocketMigrationException;

    invoke-direct {v1, p1}, Lru/rocketbank/core/manager/security/RocketMigrationException;-><init>(Ljava/lang/Throwable;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    if-gtz v0, :cond_2

    .line 1073
    iget-object v0, p0, Lru/rocketbank/core/manager/security/storage/FileTokenStorageImpl;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lru/rocketbank/core/manager/security/storage/FileTokenStorageImpl;->KEY_VERSION:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_2
    throw p1

    :cond_3
    return-object v1
.end method

.method public final saveToken(Ljava/lang/String;Ljavax/crypto/Cipher;)V
    .locals 2

    const-string v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cipher"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    iget-object v0, p0, Lru/rocketbank/core/manager/security/storage/FileTokenStorageImpl;->tokenFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 24
    sget-object v0, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const-string v0, "(this as java.lang.String).getBytes(charset)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-virtual {p2, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    .line 26
    iget-object p2, p0, Lru/rocketbank/core/manager/security/storage/FileTokenStorageImpl;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    sget-object v0, Lru/rocketbank/core/manager/security/storage/FileTokenStorageImpl;->KEY_VERSION:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 29
    :try_start_0
    iget-object p2, p0, Lru/rocketbank/core/manager/security/storage/FileTokenStorageImpl;->tokenFile:Ljava/io/File;

    invoke-static {p2, p1}, Lorg/apache/commons/io/FileUtils;->writeByteArrayToFile(Ljava/io/File;[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 31
    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lru/rocketbank/core/manager/AnalyticsManager;->logException(Ljava/lang/Throwable;)V

    return-void
.end method
