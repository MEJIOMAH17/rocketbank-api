.class final Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity$SecurityCodeWebViewClient$onReceivedSslError$2;
.super Lkotlin/jvm/internal/FunctionReference;
.source "Enter3dSecActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity$SecurityCodeWebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReference;",
        "Lkotlin/jvm/functions/Function2<",
        "Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;",
        "Ljava/lang/Throwable;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity$SecurityCodeWebViewClient$onReceivedSslError$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity$SecurityCodeWebViewClient$onReceivedSslError$2;

    invoke-direct {v0}, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity$SecurityCodeWebViewClient$onReceivedSslError$2;-><init>()V

    sput-object v0, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity$SecurityCodeWebViewClient$onReceivedSslError$2;->INSTANCE:Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity$SecurityCodeWebViewClient$onReceivedSslError$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/FunctionReference;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final getName()Ljava/lang/String;
    .locals 1

    const-string v0, "onLocalSslError"

    return-object v0
.end method

.method public final getOwner()Lkotlin/reflect/KDeclarationContainer;
    .locals 1

    const-class v0, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass$4641416c(Ljava/lang/Class;)Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    move-result-object v0

    return-object v0
.end method

.method public final getSignature()Ljava/lang/String;
    .locals 1

    const-string v0, "onLocalSslError(Ljava/lang/Throwable;)V"

    return-object v0
.end method

.method public final bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 45
    check-cast p1, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;

    check-cast p2, Ljava/lang/Throwable;

    invoke-virtual {p0, p1, p2}, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity$SecurityCodeWebViewClient$onReceivedSslError$2;->invoke(Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;Ljava/lang/Throwable;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "p1"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "p2"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    invoke-static {p1, p2}, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;->access$onLocalSslError(Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;Ljava/lang/Throwable;)V

    return-void
.end method
