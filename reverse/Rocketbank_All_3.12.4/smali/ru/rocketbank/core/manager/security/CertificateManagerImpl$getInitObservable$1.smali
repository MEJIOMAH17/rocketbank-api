.class final Lru/rocketbank/core/manager/security/CertificateManagerImpl$getInitObservable$1;
.super Ljava/lang/Object;
.source "CertificateManagerImpl.kt"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/core/manager/security/CertificateManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe<",
        "TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCertificateManagerImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CertificateManagerImpl.kt\nru/rocketbank/core/manager/security/CertificateManagerImpl$getInitObservable$1\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,137:1\n10940#2,2:138\n*E\n*S KotlinDebug\n*F\n+ 1 CertificateManagerImpl.kt\nru/rocketbank/core/manager/security/CertificateManagerImpl$getInitObservable$1\n*L\n43#1,2:138\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/core/manager/security/CertificateManagerImpl;


# direct methods
.method constructor <init>(Lru/rocketbank/core/manager/security/CertificateManagerImpl;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/core/manager/security/CertificateManagerImpl$getInitObservable$1;->this$0:Lru/rocketbank/core/manager/security/CertificateManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)V
    .locals 9

    .line 28
    check-cast p1, Lrx/Subscriber;

    .line 1030
    :try_start_0
    iget-object v0, p0, Lru/rocketbank/core/manager/security/CertificateManagerImpl$getInitObservable$1;->this$0:Lru/rocketbank/core/manager/security/CertificateManagerImpl;

    invoke-static {v0}, Lru/rocketbank/core/manager/security/CertificateManagerImpl;->access$isInit$p(Lru/rocketbank/core/manager/security/CertificateManagerImpl;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1031
    invoke-virtual {p1, v1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    return-void

    .line 1035
    :cond_0
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    .line 1036
    iget-object v2, p0, Lru/rocketbank/core/manager/security/CertificateManagerImpl$getInitObservable$1;->this$0:Lru/rocketbank/core/manager/security/CertificateManagerImpl;

    invoke-static {v2}, Lru/rocketbank/core/manager/security/CertificateManagerImpl;->access$getKeystoreFile$p(Lru/rocketbank/core/manager/security/CertificateManagerImpl;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1037
    iget-object v2, p0, Lru/rocketbank/core/manager/security/CertificateManagerImpl$getInitObservable$1;->this$0:Lru/rocketbank/core/manager/security/CertificateManagerImpl;

    const-string v3, "keyStore"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v0}, Lru/rocketbank/core/manager/security/CertificateManagerImpl;->access$createCertificateStorage(Lru/rocketbank/core/manager/security/CertificateManagerImpl;Ljava/security/KeyStore;)V

    .line 1038
    invoke-static {}, Lru/rocketbank/core/manager/security/CertificateManagerImpl;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CertificateStorage created"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    goto/16 :goto_2

    .line 1041
    :cond_1
    :try_start_1
    iget-object v2, p0, Lru/rocketbank/core/manager/security/CertificateManagerImpl$getInitObservable$1;->this$0:Lru/rocketbank/core/manager/security/CertificateManagerImpl;

    invoke-virtual {v2}, Lru/rocketbank/core/manager/security/CertificateManagerImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-static {}, Lru/rocketbank/core/manager/security/CertificateManagerImpl;->access$getKEY_CERTIFICATES_HASH$cp()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 1043
    iget-object v3, p0, Lru/rocketbank/core/manager/security/CertificateManagerImpl$getInitObservable$1;->this$0:Lru/rocketbank/core/manager/security/CertificateManagerImpl;

    invoke-virtual {v3}, Lru/rocketbank/core/manager/security/CertificateManagerImpl;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-static {}, Lru/rocketbank/core/manager/security/CertificateManagerImpl;->access$getCERTIFICATES_FOLDER$cp()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const-string v5, "context.assets.list(CERTIFICATES_FOLDER)"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1138
    array-length v5, v3

    move v6, v4

    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v7, v3, v4

    .line 1044
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v7

    add-int/2addr v6, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    if-ne v6, v2, :cond_4

    .line 1048
    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Lru/rocketbank/core/manager/security/CertificateManagerImpl$getInitObservable$1;->this$0:Lru/rocketbank/core/manager/security/CertificateManagerImpl;

    invoke-static {v3}, Lru/rocketbank/core/manager/security/CertificateManagerImpl;->access$getKeystoreFile$p(Lru/rocketbank/core/manager/security/CertificateManagerImpl;)Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    check-cast v2, Ljava/io/Closeable;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    move-object v3, v2

    check-cast v3, Ljava/io/FileInputStream;

    .line 1049
    check-cast v3, Ljava/io/InputStream;

    invoke-static {}, Lru/rocketbank/core/manager/security/CertificateManagerImpl;->access$getCERTIFICATES_FILE$cp()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3

    new-instance v3, Lkotlin/TypeCastException;

    const-string v4, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v3, v4}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_3
    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    const-string v5, "(this as java.lang.String).toCharArray()"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 1050
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1048
    :try_start_3
    invoke-static {v2, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 1051
    invoke-static {}, Lru/rocketbank/core/manager/security/CertificateManagerImpl;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CertificatesStorage loaded"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catchall_0
    move-exception v3

    move-object v4, v1

    goto :goto_1

    :catch_0
    move-exception v3

    .line 1048
    :try_start_4
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v4

    move-object v8, v4

    move-object v4, v3

    move-object v3, v8

    :goto_1
    :try_start_5
    invoke-static {v2, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3

    .line 1053
    :cond_4
    new-instance v2, Lru/rocketbank/core/exceptions/RocketException;

    const-string v3, "Certificates changed"

    invoke-direct {v2, v3}, Lru/rocketbank/core/exceptions/RocketException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    .line 1056
    :catch_1
    :try_start_6
    iget-object v2, p0, Lru/rocketbank/core/manager/security/CertificateManagerImpl$getInitObservable$1;->this$0:Lru/rocketbank/core/manager/security/CertificateManagerImpl;

    invoke-static {v2}, Lru/rocketbank/core/manager/security/CertificateManagerImpl;->access$getKeystoreFile$p(Lru/rocketbank/core/manager/security/CertificateManagerImpl;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 1057
    iget-object v2, p0, Lru/rocketbank/core/manager/security/CertificateManagerImpl$getInitObservable$1;->this$0:Lru/rocketbank/core/manager/security/CertificateManagerImpl;

    const-string v3, "keyStore"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v0}, Lru/rocketbank/core/manager/security/CertificateManagerImpl;->access$createCertificateStorage(Lru/rocketbank/core/manager/security/CertificateManagerImpl;Ljava/security/KeyStore;)V

    .line 1058
    invoke-static {}, Lru/rocketbank/core/manager/security/CertificateManagerImpl;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CertificateStorage recreated"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    :goto_2
    iget-object v2, p0, Lru/rocketbank/core/manager/security/CertificateManagerImpl$getInitObservable$1;->this$0:Lru/rocketbank/core/manager/security/CertificateManagerImpl;

    new-instance v3, Lru/rocketbank/core/manager/security/RocketTrustManager;

    const-string v4, "keyStore"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v3, v0}, Lru/rocketbank/core/manager/security/RocketTrustManager;-><init>(Ljava/security/KeyStore;)V

    invoke-static {v2, v3}, Lru/rocketbank/core/manager/security/CertificateManagerImpl;->access$setRocketTrustManager$p(Lru/rocketbank/core/manager/security/CertificateManagerImpl;Lru/rocketbank/core/manager/security/RocketTrustManager;)V

    .line 1064
    iget-object v0, p0, Lru/rocketbank/core/manager/security/CertificateManagerImpl$getInitObservable$1;->this$0:Lru/rocketbank/core/manager/security/CertificateManagerImpl;

    invoke-static {v0}, Lru/rocketbank/core/manager/security/CertificateManagerImpl;->access$setInit$p$45b972aa(Lru/rocketbank/core/manager/security/CertificateManagerImpl;)V

    .line 1065
    invoke-virtual {p1, v1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2

    return-void

    :catch_2
    move-exception v0

    .line 1067
    invoke-virtual {p1, v0}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
