.class public final Lru/rocketbank/core/utils/fs/ExternalFileImpl;
.super Ljava/lang/Object;
.source "ExternalFileImpl.kt"

# interfaces
.implements Lru/rocketbank/core/utils/fs/ExternalFileBase;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nExternalFileImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExternalFileImpl.kt\nru/rocketbank/core/utils/fs/ExternalFileImpl\n*L\n1#1,29:1\n*E\n"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;


# instance fields
.field private final file:Ljava/io/File;

.field private final uri$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lru/rocketbank/core/utils/fs/ExternalFileImpl;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass$4641416c(Ljava/lang/Class;)Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    move-result-object v2

    const-string v3, "uri"

    const-string v4, "getUri()Landroid/net/Uri;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lru/rocketbank/core/utils/fs/ExternalFileImpl;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lru/rocketbank/core/utils/AppConfig;Ljava/io/File;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appConfig"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "file"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lru/rocketbank/core/utils/fs/ExternalFileImpl;->file:Ljava/io/File;

    .line 18
    new-instance p3, Lru/rocketbank/core/utils/fs/ExternalFileImpl$uri$2;

    invoke-direct {p3, p0, p1, p2}, Lru/rocketbank/core/utils/fs/ExternalFileImpl$uri$2;-><init>(Lru/rocketbank/core/utils/fs/ExternalFileImpl;Landroid/content/Context;Lru/rocketbank/core/utils/AppConfig;)V

    check-cast p3, Lkotlin/jvm/functions/Function0;

    invoke-static {p3}, Lkotlin/ExceptionsKt__ExceptionsKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/core/utils/fs/ExternalFileImpl;->uri$delegate:Lkotlin/Lazy;

    return-void
.end method


# virtual methods
.method public final getAbsolutePath()Ljava/lang/String;
    .locals 2

    .line 16
    invoke-virtual {p0}, Lru/rocketbank/core/utils/fs/ExternalFileImpl;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file.absolutePath"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getFile()Ljava/io/File;
    .locals 1

    .line 14
    iget-object v0, p0, Lru/rocketbank/core/utils/fs/ExternalFileImpl;->file:Ljava/io/File;

    return-object v0
.end method

.method public final getUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/utils/fs/ExternalFileImpl;->uri$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    return-object v0
.end method
